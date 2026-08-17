package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1272o;
import com.sigmob.sdk.base.common.C1276q;
import com.sigmob.sdk.base.common.InterfaceC1246b;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.views.C1295g;
import com.sigmob.sdk.base.views.at;
import com.sigmob.sdk.mraid.AbstractC1322n;
import com.sigmob.sdk.nativead.APKStatusBroadcastReceiver;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class x extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public static HashMap<String, AbstractC1322n> f38255a = new LinkedHashMap();

    /* renamed from: b, reason: collision with root package name */
    private static final String f38256b = "WebAdContainer";

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, APKStatusBroadcastReceiver> f38257c;

    /* renamed from: d, reason: collision with root package name */
    private C1295g f38258d;

    public class a {
        public a() {
        }

        @JavascriptInterface
        public int cancelDownloadTaskByVid(String str) {
            BaseAdUnit baseAdUnitA = x.this.a(str);
            com.sigmob.sdk.base.utils.k.c(x.f38256b, "cancelDownloadTaskByVid: vid = " + str + ", adUnit = " + baseAdUnitA, new Object[0]);
            Context context = x.this.getContext();
            if (context == null || baseAdUnitA == null || baseAdUnitA.getApkDownloadType() == 0) {
                return -1;
            }
            return C1272o.c(context, baseAdUnitA);
        }

        @JavascriptInterface
        public int getApKDownloadProcessId(String str) {
            BaseAdUnit baseAdUnitA = x.this.a(str);
            List<BaseAdUnit> adUnitList = x.this.getAdUnitList();
            if (baseAdUnitA == null && com.sigmob.sdk.base.utils.f.b(adUnitList)) {
                baseAdUnitA = adUnitList.get(0);
            }
            com.sigmob.sdk.base.utils.k.c(x.f38256b, "getApKDownloadProcessId: vid = " + str + ", adUnit = " + baseAdUnitA, new Object[0]);
            Context context = x.this.getContext();
            if (context == null || baseAdUnitA == null) {
                return -1;
            }
            long[] jArrA = baseAdUnitA.getApkDownloadType() == 0 ? C1276q.a(context, baseAdUnitA.getDownloadId()) : C1272o.d(context, baseAdUnitA);
            int i2 = (int) jArrA[2];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 4) {
                        return i2 != 8 ? -1 : 100;
                    }
                    return -2;
                }
                long j2 = jArrA[0];
                long j3 = jArrA[1];
                if (j3 != 0 && j2 != 0) {
                    return (int) ((j2 * 100) / j3);
                }
            }
            return 0;
        }

        @JavascriptInterface
        public int pauseDownloadByVid(String str) {
            BaseAdUnit baseAdUnitA = x.this.a(str);
            com.sigmob.sdk.base.utils.k.c(x.f38256b, "pauseDownloadByVid: vid = " + str + ", adUnit = " + baseAdUnitA, new Object[0]);
            if (x.this.getContext() == null || baseAdUnitA == null || baseAdUnitA.getApkDownloadType() == 0) {
                return -1;
            }
            return C1272o.a(x.this.getContext(), baseAdUnitA);
        }

        @JavascriptInterface
        public void registerDownloadEvent(String str) {
            BaseAdUnit baseAdUnitA = x.this.a(str);
            List<BaseAdUnit> adUnitList = x.this.getAdUnitList();
            if (baseAdUnitA == null && com.sigmob.sdk.base.utils.f.b(adUnitList)) {
                baseAdUnitA = adUnitList.get(0);
            }
            com.sigmob.sdk.base.utils.k.c(x.f38256b, "registerDownloadEvent: vid = " + str + ", adUnit = " + baseAdUnitA, new Object[0]);
            x.this.a(baseAdUnitA);
        }

        @JavascriptInterface
        public int resumeDownloadByVid(String str) {
            BaseAdUnit baseAdUnitA = x.this.a(str);
            com.sigmob.sdk.base.utils.k.c(x.f38256b, "resumeDownloadByVid: vid = " + str, new Object[0]);
            Context context = x.this.getContext();
            if (context == null || baseAdUnitA == null || baseAdUnitA.getApkDownloadType() == 0) {
                return -1;
            }
            return C1272o.b(context, baseAdUnitA);
        }
    }

    public x(Context context) {
        super(context);
        this.f38257c = new HashMap();
        C1295g c1295gA = at.a().a(context);
        this.f38258d = c1295gA;
        if (c1295gA == null) {
            this.f38258d = new C1295g(context);
        }
        this.f38258d.addJavascriptInterface(new a(), "sigandroidapk");
        addView(this.f38258d, new FrameLayout.LayoutParams(-1, -1));
    }

    public void c(String str) {
        this.f38258d.loadUrl(str);
    }

    public void d() {
        d("download_start");
    }

    public void e() {
        d("download_fail");
    }

    public void f() {
        d("download_pause");
    }

    public void g() {
        d(PointCategory.DOWNLOAD_END);
    }

    public abstract List<BaseAdUnit> getAdUnitList();

    public WebSettings getSettings() {
        return this.f38258d.getSettings();
    }

    public void h() {
        d(C1244a.f35653E);
    }

    public void i() {
        d("install_end");
    }

    public void j() {
        C1295g c1295g = this.f38258d;
        if (c1295g == null) {
            return;
        }
        c1295g.reload();
    }

    public void k() {
        C1295g c1295g = this.f38258d;
        if (c1295g == null) {
            return;
        }
        c1295g.stopLoading();
    }

    public void l() {
        this.f38258d.resumeTimers();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        super.setBackground(drawable);
        this.f38258d.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        super.setBackgroundColor(i2);
        this.f38258d.setBackgroundColor(i2);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        C1295g c1295g = this.f38258d;
        if (c1295g == null) {
            return;
        }
        c1295g.setWebChromeClient(webChromeClient);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        C1295g c1295g = this.f38258d;
        if (c1295g == null) {
            return;
        }
        c1295g.setWebViewClient(webViewClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseAdUnit a(String str) {
        Ad ad;
        List<BaseAdUnit> adUnitList = getAdUnitList();
        if (!com.sigmob.sdk.base.utils.f.b(adUnitList)) {
            return null;
        }
        for (BaseAdUnit baseAdUnit : adUnitList) {
            if (baseAdUnit != null && (ad = baseAdUnit.getAd()) != null && com.sigmob.sdk.base.utils.s.a((CharSequence) ad.vid, (CharSequence) str)) {
                return baseAdUnit;
            }
        }
        return null;
    }

    public void b() {
        if (com.sigmob.sdk.base.utils.f.b(this.f38257c)) {
            for (APKStatusBroadcastReceiver aPKStatusBroadcastReceiver : this.f38257c.values()) {
                aPKStatusBroadcastReceiver.b(aPKStatusBroadcastReceiver);
            }
            this.f38257c.clear();
        }
        if (com.sigmob.sdk.base.utils.f.b(f38255a)) {
            for (AbstractC1322n abstractC1322n : f38255a.values()) {
                if (abstractC1322n != null) {
                    abstractC1322n.b();
                }
            }
            f38255a.clear();
        }
        if (this.f38258d != null) {
            at.a().a(this.f38258d);
            this.f38258d = null;
        }
        removeAllViews();
    }

    public void d(final String str) {
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.W
            @Override // java.lang.Runnable
            public final void run() {
                this.f38124b.b(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        a("mraidbridge.notifyApkDownloadStateEvent(\"" + str + "\");", (ValueCallback) null);
    }

    public void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return;
        }
        String uuid = baseAdUnit.getUuid();
        if (this.f38257c.get(uuid) == null) {
            APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = new APKStatusBroadcastReceiver(new InterfaceC1246b() { // from class: com.sigmob.sdk.mraid2.x.1
                @Override // com.sigmob.sdk.base.common.InterfaceC1246b
                public void a(boolean z2) {
                    if (z2) {
                        x.this.h();
                    } else {
                        x.this.e();
                    }
                }

                @Override // com.sigmob.sdk.base.common.InterfaceC1246b
                public void b(boolean z2) {
                    if (z2) {
                        x.this.i();
                    } else {
                        x.this.e();
                    }
                }

                @Override // com.sigmob.sdk.base.common.InterfaceC1246b
                public void c(boolean z2, long j2) {
                    x.this.f();
                }

                @Override // com.sigmob.sdk.base.common.InterfaceC1246b
                public void a(boolean z2, long j2) {
                    if (z2) {
                        x.this.d();
                    } else {
                        x.this.e();
                    }
                }

                @Override // com.sigmob.sdk.base.common.InterfaceC1246b
                public void b(boolean z2, long j2) {
                    if (z2) {
                        x.this.g();
                    } else {
                        x.this.e();
                    }
                }
            }, uuid);
            aPKStatusBroadcastReceiver.a(aPKStatusBroadcastReceiver);
            this.f38257c.put(uuid, aPKStatusBroadcastReceiver);
        }
    }

    public void a(Object obj, String str) {
        this.f38258d.addJavascriptInterface(obj, str);
    }

    public void b(String str, ValueCallback valueCallback) {
        C1295g c1295g = this.f38258d;
        if (c1295g == null) {
            return;
        }
        c1295g.evaluateJavascript(str, valueCallback);
    }

    public void a(String str, ValueCallback valueCallback) {
        if (this.f38258d == null) {
            return;
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView:\n\t" + str);
        this.f38258d.evaluateJavascript(str, valueCallback);
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        C1295g c1295g = this.f38258d;
        if (c1295g == null) {
            return;
        }
        c1295g.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public void a(boolean z2) {
        C1295g c1295g = this.f38258d;
        if (c1295g == null) {
            return;
        }
        c1295g.a(z2);
    }
}
