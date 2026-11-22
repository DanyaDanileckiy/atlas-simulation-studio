const { app, BrowserWindow } = require('electron');
const path = require('node:path');
function openApp() {
  const win = new BrowserWindow({width:1440,height:960,minWidth:720,minHeight:540,backgroundColor:'#0f172a',autoHideMenuBar:true,icon:path.join(__dirname,'icon.ico'),webPreferences:{contextIsolation:true,nodeIntegration:false}});
  win.loadFile(path.join(__dirname,'..','index.html'));
}
app.whenReady().then(()=>{openApp();app.on('activate',()=>{if(BrowserWindow.getAllWindows().length===0)openApp()})});
app.on('window-all-closed',()=>{if(process.platform!=='darwin')app.quit()});
