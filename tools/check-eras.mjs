// Checks the five starting eras in index.html.
// Run: node tools/check-eras.mjs
import fs from 'fs';
import path from 'path';
import vm from 'vm';
import { fileURLToPath } from 'url';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const html = fs.readFileSync(path.join(root, 'index.html'), 'utf8');
const blocks = [...html.matchAll(/<script>([\s\S]*?)<\/script>/g)].map(match => match[1]);
const script = blocks.sort((a, b) => b.length - a.length)[0];
if (!script || !script.includes('const HIST_POP')) {
    console.error('Could not find the app script in index.html');
    process.exit(1);
}
const code = script.split('const formatNumberDisplay')[0] + `
globalThis.__atlas = {
  countries: rawWorkingCountries,
  projectCountries,
  settings: projectSettings,
  FLAGS
};
`;
const context = {
    console,
    navigator: { language: 'ru' },
    localStorage: { getItem: () => null, setItem: () => {} },
    document: { addEventListener() {} },
    setTimeout,
    clearTimeout
};
context.globalThis = context;
vm.createContext(context);
vm.runInContext(code, context, { filename: 'index.html' });

const { countries, projectCountries, settings, FLAGS } = context.__atlas;
const ERAS = [1800, 1900, 1950, 2000, 2026];
const TOTALS = {
    1800: [0.90e9, 1.10e9],
    1900: [1.45e9, 1.80e9],
    1950: [2.30e9, 2.70e9],
    2000: [5.80e9, 6.40e9],
    2026: [7.90e9, 8.50e9]
};
const failures = [];
const report = [];

function valueAt(data, year) {
    if (data[year] != null && Number.isFinite(+data[year])) return +data[year];
    const years = Object.keys(data).map(Number).filter(yearKey => !Number.isNaN(yearKey)).sort((a, b) => a - b);
    if (!years.length) return NaN;
    if (year <= years[0]) return +data[years[0]];
    if (year >= years.at(-1)) return +data[years.at(-1)];
    for (let i = 0; i < years.length - 1; i++) {
        if (year >= years[i] && year <= years[i + 1]) {
            const t = (year - years[i]) / (years[i + 1] - years[i]);
            return +data[years[i]] * (1 - t) + +data[years[i + 1]] * t;
        }
    }
    return NaN;
}

function hasEmojiFlag(flag) {
    const codes = [...String(flag || '')].map(char => char.codePointAt(0)).filter(code => code >= 0x1F1E6 && code <= 0x1F1FF);
    return codes.length === 2;
}

function svgBody(uri) {
    const comma = String(uri || '').indexOf(',');
    if (comma < 0 || !String(uri).startsWith('data:image/svg+xml')) return '';
    try { return decodeURIComponent(uri.slice(comma + 1)); } catch { return ''; }
}

settings.language = 'ru';
for (const era of ERAS) {
    settings.era = era;
    const rows = projectCountries(countries, era);
    let sum = 0;
    const names = new Set();
    for (const row of rows) {
        const name = row.eraName || row.name;
        const population = valueAt(row.data, era);
        sum += Number.isFinite(population) ? population : 0;
        if (names.has(name)) failures.push(`${era}: duplicate entity ${name}`);
        names.add(name);
        if (!Number.isFinite(population) || population < 500 || population > 1.7e9) {
            failures.push(`${era}: bad population for ${name}: ${population}`);
        }
        const svg = svgBody(row.flagSvg);
        const emoji = hasEmojiFlag(row.flag);
        if (svg) {
            if (!svg.includes('<svg') || !svg.includes('viewBox') || !/<(rect|path|circle|polygon|ellipse)\b/.test(svg)) {
                failures.push(`${era}: broken SVG for ${name}`);
            }
        } else if (!emoji) {
            failures.push(`${era}: missing flag for ${name}`);
        }
        if (era !== 1950 && row.flagSvg && row.flagSvg === FLAGS.ussr) {
            failures.push(`${era}: USSR flag on ${name}`);
        }
    }
    const [low, high] = TOTALS[era];
    if (rows.length < 100) failures.push(`${era}: only ${rows.length} entities (need >= 100)`);
    if (sum < low || sum > high) failures.push(`${era}: world total ${Math.round(sum)} outside ${low}..${high}`);
    report.push({ era, count: rows.length, total: sum });
}

for (const line of report) {
    console.log(`${line.era}: ${line.count} entities, total ${(line.total / 1e9).toFixed(3)} billion`);
}
if (failures.length) {
    console.error(`\n${failures.length} check(s) failed:`);
    failures.slice(0, 40).forEach(failure => console.error(' - ' + failure));
    process.exit(1);
}
console.log('OK');
