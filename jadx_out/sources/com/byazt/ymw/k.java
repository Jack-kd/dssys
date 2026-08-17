package com.byazt.ymw;

import android.annotation.TargetApi;
import android.os.Looper;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 68, 42})
/* loaded from: classes3.dex */
public class k {
    public static final hp hp = new l();

    @com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID})
    public static class hp {
        private hp() {
        }

        public void hp(final WebView webView, final String str) {
            if (webView == null) {
                return;
            }
            k.l(new Runnable() { // from class: com.byazt.ymw.k.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        webView.loadUrl(str);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 68, 1943})
    @TargetApi(19)
    public static class l extends hp {
        private l() {
            super();
        }

        @Override // com.byazt.ymw.k.hp
        public void hp(final WebView webView, final String str) {
            if (webView == null) {
                return;
            }
            k.l(new Runnable() { // from class: com.byazt.ymw.k.l.1
                @Override // java.lang.Runnable
                public void run() {
                    String str2 = str;
                    if (str2 != null && str2.startsWith("javascript:")) {
                        try {
                            webView.evaluateJavascript(str, null);
                            return;
                        } catch (Throwable th) {
                            boolean z2 = th instanceof IllegalStateException;
                        }
                    }
                    try {
                        webView.loadUrl(str);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            e.l().post(runnable);
        }
    }

    @Deprecated
    public static void hp(WebView webView, String str) {
        hp.hp(webView, str);
    }

    public static void hp(com.byazt.ikh.j jVar, String str) {
        hp.hp(jVar.getWebView(), str);
    }
}
