package com.atlas.simulationstudio;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public final class MainActivity extends Activity {
    private WebView appView;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        appView = new WebView(this);
        WebSettings settings = appView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        settings.setSupportZoom(false);
        appView.setWebViewClient(new WebViewClient());
        appView.setWebChromeClient(new WebChromeClient());
        setContentView(appView);
        appView.loadUrl("file:///android_asset/public/index.html");
    }

    @Override
    public void onBackPressed() {
        if (appView != null && appView.canGoBack()) appView.goBack();
        else super.onBackPressed();
    }
}
