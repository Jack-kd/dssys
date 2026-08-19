package com.byazt.cf;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.byazt.jdb.a;
import com.byazt.jz.s;
import com.byazt.jz.ud;
import com.byazt.xci.r;
import com.byazt.zn.sz;

@com.byazt.kj.hp(hp = {0, 1, 864, 30})
/* loaded from: classes2.dex */
public class jx extends WebChromeClient {
    public static final String hp = WebChromeClient.class.getSimpleName();
    public a jx;

    /* renamed from: l, reason: collision with root package name */
    public final ud f18839l;

    public jx(ud udVar) {
        this.f18839l = udVar;
    }

    private boolean hp(String str) {
        s.u().f();
        try {
            Uri uri = Uri.parse(str);
            if (!"bytedance".equals(uri.getScheme().toLowerCase())) {
                return false;
            }
            sz.hp(uri, this.f18839l);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        return Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i2, String str2) {
        if (!TextUtils.isEmpty(str)) {
            hp(str);
        }
        super.onConsoleMessage(str, i2, str2);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (!r.hp(this.f18839l, 1, str2)) {
            return false;
        }
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        if (!r.hp(this.f18839l, 4, str2)) {
            return false;
        }
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (!r.hp(this.f18839l, 2, str2)) {
            return false;
        }
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (!r.hp(this.f18839l, 3, str2)) {
            return false;
        }
        jsPromptResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i2) {
        a aVar;
        super.onProgressChanged(webView, i2);
        a aVar2 = this.jx;
        if (aVar2 != null) {
            aVar2.hp(webView, i2);
        }
        if (i2 <= 90 || (aVar = this.jx) == null) {
            return;
        }
        aVar.hp(webView);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        super.onShowCustomView(view, customViewCallback);
    }

    public jx(ud udVar, a aVar) {
        this.f18839l = udVar;
        this.jx = aVar;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage == null || TextUtils.isEmpty(consoleMessage.message()) || !hp(consoleMessage.message())) {
            return super.onConsoleMessage(consoleMessage);
        }
        return true;
    }
}
