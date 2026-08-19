package com.baidu.oauth.sdkbqt.auth;

import android.app.AlertDialog;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* loaded from: classes2.dex */
public class y extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f11841a;

    public y(i iVar) {
        this.f11841a = iVar;
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i2, String str2) {
        o.d.b(str + " -- From line " + i2 + " of " + str2, new Object[0]);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(this.f11841a.getContext()).setTitle("JavaScript Message").setMessage(str2).setPositiveButton("ok", new z(this, jsResult));
        positiveButton.setCancelable(false);
        positiveButton.create();
        positiveButton.show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        this.f11841a.post(new A(this, str2, jsPromptResult, new String[]{""}));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i2) {
        if (this.f11841a.f11802j != null) {
            if (i2 == 100) {
                this.f11841a.f11802j.setVisibility(8);
            } else {
                if (this.f11841a.f11802j.getVisibility() == 8) {
                    this.f11841a.f11802j.setVisibility(0);
                }
                this.f11841a.f11802j.setProgress(i2);
            }
        }
        super.onProgressChanged(webView, i2);
    }
}
