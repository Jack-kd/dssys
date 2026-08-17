package com.smartdigimkt.s2;

import android.webkit.WebView;
import com.smartdigimkt.m3.q;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;

/* loaded from: classes5.dex */
public interface b {
    void callbackClickResult(q qVar);

    com.smartdigimkt.m3.c getBaseAdContent();

    com.smartdigimkt.l3.a getBaseAdRequestInfo();

    String getOriginalUrl();

    WebProgressBarView getWebProgressBarView();

    void onWebFinish();

    void onWebPageFinish(WebView webView, String str);

    void onWebPageLoadError(WebView webView, String str);

    void onWebPageStart(WebView webView, String str);

    void recordRedirectUrl(String str);

    boolean supportDeeplinkJump();
}
