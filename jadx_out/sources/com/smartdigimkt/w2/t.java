package com.smartdigimkt.w2;

import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class t extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public c f44903a;

    /* renamed from: b, reason: collision with root package name */
    public g f44904b;

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) throws com.smartdigimkt.b3.a {
        if (consoleMessage == null || consoleMessage.messageLevel() == null) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i2 = s.f44902a[consoleMessage.messageLevel().ordinal()];
        if (i2 == 1 || i2 == 2 || i2 != 3) {
            Objects.toString(consoleMessage.messageLevel());
            consoleMessage.message();
        } else {
            Objects.toString(consoleMessage.messageLevel());
            consoleMessage.message();
        }
        if (consoleMessage.messageLevel() != ConsoleMessage.MessageLevel.LOG) {
            return super.onConsoleMessage(consoleMessage);
        }
        if (this.f44904b == null) {
            return super.onConsoleMessage(consoleMessage);
        }
        String strMessage = consoleMessage.message();
        if (!TextUtils.isEmpty(strMessage) && strMessage.startsWith("atwt:")) {
            g gVar = this.f44904b;
            gVar.getClass();
            if (h.f44887a[0].equals("atwt:")) {
                gVar.f44884a = h.f44888b;
                this.f44904b.a(strMessage);
                return true;
            }
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i2) {
        super.onProgressChanged(webView, i2);
        c cVar = this.f44903a;
        if (cVar != null) {
            cVar.a(webView, i2);
        }
    }
}
