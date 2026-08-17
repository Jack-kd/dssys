package com.byazt.es;

import android.os.Build;

@com.byazt.kj.hp(hp = {0, 1, 155, 150})
/* loaded from: classes2.dex */
public class q {
    public static void hp(com.byazt.ikh.j jVar) {
        l(jVar);
        try {
            jVar.setJavaScriptEnabled(true);
            jVar.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th) {
            eb.hp("WebViewSettings", "setJavaScriptEnabled error", th);
        }
        try {
            jVar.setSupportZoom(false);
        } catch (Throwable th2) {
            eb.hp("WebViewSettings", "setSupportZoom error", th2);
        }
        jVar.setLoadWithOverviewMode(true);
        jVar.setUseWideViewPort(true);
        jVar.setDomStorageEnabled(true);
        jVar.setAllowFileAccess(false);
        jVar.setBlockNetworkImage(false);
        jVar.setDisplayZoomControls(false);
        int i2 = Build.VERSION.SDK_INT;
        jVar.setAllowFileAccessFromFileURLs(false);
        jVar.setAllowUniversalAccessFromFileURLs(false);
        jVar.setSavePassword(false);
        boolean z2 = i2 >= 28;
        try {
        } catch (Throwable th3) {
            eb.hp("WebViewSettings", "setLayerType error", th3);
        }
        if (z2) {
            if (z2) {
                jVar.setLayerType(2, null);
            }
            jVar.setMixedContentMode(0);
        }
        jVar.setLayerType(0, null);
        jVar.setMixedContentMode(0);
    }

    private static void l(com.byazt.ikh.j jVar) {
        try {
            jVar.removeJavascriptInterface("searchBoxJavaBridge_");
            jVar.removeJavascriptInterface("accessibility");
            jVar.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            eb.hp("WebViewSettings", "removeJavascriptInterfacesSafe error", th);
        }
    }
}
