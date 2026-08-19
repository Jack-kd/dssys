package com.meishu.sdk.core.webview;

import android.content.Context;
import android.content.ContextWrapper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.r0;
import com.meishu.sdk.core.webview.b;
import com.meishu.sdk.core.webview.o;
import java.util.List;

/* loaded from: classes4.dex */
public class o {

    public class a implements com.meishu.sdk.core.webview.listener.g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ b f32137a;

        public a(b bVar) {
            this.f32137a = bVar;
        }

        @Override // com.meishu.sdk.core.webview.listener.g
        public boolean onPageFinished(String str, boolean z2, boolean z3, int i2) {
            if (z2 && !z3) {
                b bVar = this.f32137a;
                bVar.getClass();
                SdkHandler.runOnMainThread(new c(bVar, false, 1));
            }
            return false;
        }

        @Override // com.meishu.sdk.core.webview.listener.g
        public void onPageStarted(String str) {
        }
    }

    public static s a(Context context, String str, final com.meishu.sdk.platform.ms.c cVar, n nVar, com.meishu.sdk.core.webview.listener.a aVar, com.meishu.sdk.core.webview.listener.d dVar) {
        Integer num;
        try {
            final boolean z2 = (cVar instanceof com.meishu.sdk.meishu_ad.nativ.d) && AdType.REWARD.value() == ((com.meishu.sdk.meishu_ad.nativ.d) cVar).f32371a;
            final b bVar = new b(new b.InterfaceC0679b() { // from class: O0.c
                @Override // com.meishu.sdk.core.webview.b.InterfaceC0679b
                public final void a(boolean z3, int i2) {
                    o.a(cVar, z2, z3, i2);
                }
            });
            WebView webView = new WebView(new ContextWrapper(context));
            webView.setScrollBarStyle(0);
            WebSettings settings = webView.getSettings();
            settings.setSavePassword(false);
            settings.setCacheMode(-1);
            settings.setJavaScriptEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setAllowFileAccess(false);
            settings.setAppCachePath(context.getCacheDir().getAbsolutePath());
            settings.setAppCacheEnabled(true);
            settings.setMixedContentMode(0);
            g gVar = new g(str);
            gVar.a(aVar);
            gVar.a(new a(bVar));
            webView.setDownloadListener(d.a(context));
            f fVar = new f(context, str, gVar);
            fVar.f32114f = false;
            webView.setWebViewClient(fVar);
            webView.setWebChromeClient(new e(str, gVar));
            if (nVar != null && (num = nVar.f32136a) != null) {
                webView.setBackgroundColor(num.intValue());
            }
            com.meishu.sdk.core.webview.a aVar2 = new com.meishu.sdk.core.webview.a(cVar, webView, gVar, z2);
            aVar2.f32092g = dVar;
            aVar2.f32091f = new com.meishu.sdk.core.webview.listener.c() { // from class: O0.d
                @Override // com.meishu.sdk.core.webview.listener.c
                public final void a(boolean z3) {
                    o.a(bVar, z3);
                }
            };
            webView.addJavascriptInterface(aVar2, "ADMateJSBridge");
            a(cVar, z2, 26, 0);
            a(webView, str);
            return new s(webView, fVar, gVar, bVar);
        } catch (Throwable th) {
            th.printStackTrace();
            if (!(aVar instanceof com.meishu.sdk.core.webview.listener.g)) {
                return null;
            }
            ((com.meishu.sdk.core.webview.listener.g) aVar).onPageFinished(str, true, false, -1);
            return null;
        }
    }

    public static /* synthetic */ void a(com.meishu.sdk.platform.ms.c cVar, boolean z2, boolean z3, int i2) {
        if (z3) {
            return;
        }
        a(cVar, z2, 28, i2);
    }

    public static void a(b bVar, boolean z2) {
        int i2 = z2 ? 0 : 2;
        bVar.getClass();
        SdkHandler.runOnMainThread(new c(bVar, z2, i2));
    }

    public static void a(com.meishu.sdk.platform.ms.c cVar, boolean z2, int i2, int i3) {
        try {
            BaseAdSlot baseAdSlot = (BaseAdSlot) cVar.a();
            int webTempId = baseAdSlot.getWebTempId();
            if (z2 && webTempId <= 0) {
                webTempId = baseAdSlot.getRewardTmpId();
            }
            p1.a(baseAdSlot.getEventUrl(), i2, i3, "{\"web_temp_id\":" + webTempId + "}");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(@org.jetbrains.annotations.NotNull android.webkit.WebView r7, @org.jetbrains.annotations.NotNull java.lang.String r8) throws java.lang.Throwable {
        /*
            java.lang.String r0 = com.meishu.sdk.core.utils.d1.a(r8)     // Catch: java.lang.Throwable -> L38
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L38
            if (r1 == 0) goto Lb
            goto L46
        Lb:
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L38
            java.io.File r2 = com.meishu.sdk.core.utils.d1.a()     // Catch: java.lang.Throwable -> L38
            r1.<init>(r2, r0)     // Catch: java.lang.Throwable -> L38
            boolean r0 = r1.exists()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L46
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38
            r0.<init>()     // Catch: java.lang.Throwable -> L38
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L38
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L38
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L38
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L38
        L29:
            java.lang.String r1 = r2.readLine()     // Catch: java.lang.Throwable -> L38
            if (r1 == 0) goto L3a
            r0.append(r1)     // Catch: java.lang.Throwable -> L38
            java.lang.String r1 = "\n"
            r0.append(r1)     // Catch: java.lang.Throwable -> L38
            goto L29
        L38:
            r0 = move-exception
            goto L43
        L3a:
            r2.close()     // Catch: java.lang.Throwable -> L38
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L38
        L41:
            r3 = r0
            goto L48
        L43:
            r0.printStackTrace()
        L46:
            r0 = 0
            goto L41
        L48:
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            if (r0 != 0) goto L60
            java.lang.String r0 = "o"
            java.lang.String r1 = "use local webView"
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r1)
            java.lang.String r5 = "UTF-8"
            r6 = 0
            java.lang.String r4 = "text/html"
            r1 = r7
            r2 = r8
            r1.loadDataWithBaseURL(r2, r3, r4, r5, r6)
            return
        L60:
            r1 = r7
            r2 = r8
            r1.loadUrl(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.o.a(android.webkit.WebView, java.lang.String):void");
    }

    public static boolean a(String str) {
        List<String> list;
        try {
            if (!TextUtils.isEmpty(str) && (list = r0.f31985p) != null && !list.isEmpty()) {
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2) && str.toLowerCase().startsWith(str2.toLowerCase())) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
