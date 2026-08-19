package com.smartdigimkt.c5;

import android.text.TextUtils;
import android.webkit.WebView;
import com.anythink.core.common.d.i;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public abstract class j {
    public static String a() {
        return TextUtils.isEmpty("UA_6.5.77") ? "UA_0.0.0" : "UA_6.5.77";
    }

    public static void a(WebView webView) {
        if (webView == null) {
            return;
        }
        webView.removeJavascriptInterface("searchBoxjavaBridge_");
        webView.removeJavascriptInterface("accessibility");
        webView.removeJavascriptInterface("accessibilityTraversal");
        webView.getSettings().setAllowFileAccess(false);
        webView.getSettings().setAllowFileAccessFromFileURLs(false);
        webView.getSettings().setAllowUniversalAccessFromFileURLs(false);
        webView.getSettings().setSavePassword(false);
    }

    public static String a(com.smartdigimkt.m3.c cVar) {
        com.smartdigimkt.m3.e eVar;
        String string = cVar.f41822m + cVar.f41806a;
        boolean z2 = cVar instanceof com.smartdigimkt.m3.k;
        if (z2 && (eVar = cVar.f41832w) != null) {
            if (eVar.f41991z0 != 2) {
                StringBuilder sb = new StringBuilder();
                sb.append(z2 ? ((com.smartdigimkt.m3.k) cVar).f42054o0 : "");
                sb.append(cVar.f41822m);
                sb.append(cVar.f41806a);
                string = sb.toString();
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z2 ? ((com.smartdigimkt.m3.k) cVar).f42054o0 : "");
                sb2.append(cVar.f41822m);
                string = sb2.toString();
            }
        }
        return i.b(string + (SDKContext.getInstance().d() != null ? SDKContext.getInstance().d().getPackageName() : ""));
    }

    public static String a(String str) {
        str.getClass();
        switch (str) {
            case "0":
                return i.o.f2697a;
            case "1":
                return i.o.f2698b;
            case "2":
                return i.o.f2699c;
            case "3":
                return "Interstitial";
            case "4":
                return "Splash";
            default:
                return "";
        }
    }
}
