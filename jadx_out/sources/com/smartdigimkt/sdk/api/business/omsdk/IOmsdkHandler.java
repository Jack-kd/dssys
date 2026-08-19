package com.smartdigimkt.sdk.api.business.omsdk;

import android.content.Context;
import android.webkit.WebView;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.u1.a;

/* loaded from: classes5.dex */
public interface IOmsdkHandler {
    a createNativeAdSession(Context context, boolean z2, c cVar, com.smartdigimkt.l3.a aVar);

    a createWebViewAdSession(Context context, WebView webView, c cVar, com.smartdigimkt.l3.a aVar);

    String getOmsdkVersion();

    String injectScriptContentIntoHtml(String str, c cVar, com.smartdigimkt.l3.a aVar);

    boolean supportOmsdk();
}
