package com.sigmob.sdk.mraid2;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.exceptions.IntentNotResolvableException;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.DownloadItem;
import com.czhj.volley.toolbox.FileDownloadRequest;
import com.sigmob.sdk.base.common.C1256g;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1280t;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AdSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.sdk.mraid.AbstractC1322n;
import com.sigmob.sdk.mraid.C1315g;
import com.sigmob.sdk.mraid.C1320l;
import com.sigmob.sdk.mraid2.C1326d;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid2.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1325c extends x {

    /* renamed from: b, reason: collision with root package name */
    private static final String f38128b = "Mraid2AdContainer";

    /* renamed from: r, reason: collision with root package name */
    private static final HashMap<String, C1325c> f38129r = new LinkedHashMap();

    /* renamed from: c, reason: collision with root package name */
    private final C1325c f38130c;

    /* renamed from: d, reason: collision with root package name */
    private C1326d f38131d;

    /* renamed from: e, reason: collision with root package name */
    private C1325c f38132e;

    /* renamed from: f, reason: collision with root package name */
    private final String f38133f;

    /* renamed from: g, reason: collision with root package name */
    private InterfaceC1343v f38134g;

    /* renamed from: h, reason: collision with root package name */
    private InterfaceC1341t f38135h;

    /* renamed from: i, reason: collision with root package name */
    private InterfaceC1323a f38136i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f38137j;

    /* renamed from: k, reason: collision with root package name */
    private FrameLayout f38138k;

    /* renamed from: l, reason: collision with root package name */
    private LinearLayout f38139l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f38140m;

    /* renamed from: n, reason: collision with root package name */
    private JSONObject f38141n;

    /* renamed from: o, reason: collision with root package name */
    private BaseAdUnit f38142o;

    /* renamed from: p, reason: collision with root package name */
    private final C1331i f38143p;

    /* renamed from: q, reason: collision with root package name */
    private C1256g f38144q;

    /* renamed from: s, reason: collision with root package name */
    private final HashMap<String, C1339q> f38145s;

    /* renamed from: t, reason: collision with root package name */
    private final InterfaceC1333k f38146t;

    /* renamed from: com.sigmob.sdk.mraid2.c$1, reason: invalid class name */
    public class AnonymousClass1 extends C1331i {
        public AnonymousClass1() {
        }

        private void a() {
            if (C1325c.this.f38131d != null) {
                if (C1325c.this.f38141n != null) {
                    C1325c.this.f38131d.a(C1325c.this.f38141n);
                }
                C1325c.this.f38131d.d();
            }
            if (C1325c.this.f38130c != null && C1325c.this.f38130c.getMraidBridge() != null && com.sigmob.sdk.base.utils.s.b(C1325c.this.f38133f)) {
                C1325c.this.f38130c.getMraidBridge().c(C1325c.this.f38133f);
            }
            if (C1325c.this.f38137j) {
                return;
            }
            C1325c.this.f38137j = true;
            if (C1325c.this.f38136i != null) {
                C1325c.this.f38136i.a(C1325c.this.f38132e);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            Objects.toString(C1325c.this.f38141n);
            if (C1325c.this.f38131d.b()) {
                a();
            } else {
                C1325c.this.f38131d.a(C1329g.INJECTION_JAVASCRIPT, new ValueCallback() { // from class: com.sigmob.sdk.mraid2.y
                    @Override // android.webkit.ValueCallback
                    public final void onReceiveValue(Object obj) {
                        this.f38261a.a(obj);
                    }
                });
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            C1326d mraidBridge;
            ad.a("h5_error", "mraid2", i2, str2 + " error:" + str, (WindAdRequest) null, (LoadAdRequest) null, C1325c.this.getAdUnitList().get(0), (ad.a) null);
            if (C1325c.this.f38130c == null || com.sigmob.sdk.base.utils.s.a((CharSequence) C1325c.this.f38133f) || (mraidBridge = C1325c.this.f38130c.getMraidBridge()) == null) {
                return;
            }
            mraidBridge.a(C1325c.this.f38133f, i2, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            ad.a("h5_error", "mraid2", webResourceResponse.getStatusCode(), webResourceRequest.getUrl().toString(), (WindAdRequest) null, (LoadAdRequest) null, C1325c.this.getAdUnitList().get(0), (ad.a) null);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Objects.toString(renderProcessGoneDetail);
            WindAdError windAdError = Build.VERSION.SDK_INT < 26 ? null : (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? WindAdError.RENDER_PROCESS_GONE_UNSPECIFIED : WindAdError.RENDER_PROCESS_GONE_WITH_CRASH;
            SigmobLog.e("handleRenderProcessGone " + windAdError);
            if (com.sigmob.sdk.base.utils.v.b(C1325c.this.f38136i)) {
                C1325c.this.f38136i.a(windAdError);
            }
            C1325c.this.b();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
                return false;
            }
            if (str.startsWith("http") || str.startsWith("https")) {
                webView.loadUrl(str);
                return true;
            }
            try {
                if (C1325c.this.f38142o != null) {
                    C1325c c1325c = C1325c.this;
                    c1325c.a(str, c1325c.f38142o);
                    return true;
                }
                List<BaseAdUnit> adUnitList = C1325c.this.getAdUnitList();
                if (com.sigmob.sdk.base.utils.f.a(adUnitList)) {
                    return true;
                }
                for (int i2 = 0; i2 < adUnitList.size(); i2++) {
                    if (C1325c.this.a(str, adUnitList.get(i2))) {
                        return true;
                    }
                }
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj) {
            a();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            C1326d mraidBridge;
            SigmobLog.i("onReceivedError:" + webResourceError.toString());
            ad.a("h5_error", "mraid2", 0, webResourceRequest.getUrl() + " error:" + ((Object) webResourceError.getDescription()), (WindAdRequest) null, (LoadAdRequest) null, C1325c.this.getAdUnitList().get(0), (ad.a) null);
            if (C1325c.this.f38130c == null || com.sigmob.sdk.base.utils.s.a((CharSequence) C1325c.this.f38133f) || (mraidBridge = C1325c.this.f38130c.getMraidBridge()) == null) {
                return;
            }
            mraidBridge.a(C1325c.this.f38133f, webResourceError.getErrorCode(), "" + ((Object) webResourceError.getDescription()));
        }
    }

    /* renamed from: com.sigmob.sdk.mraid2.c$a */
    public class a {
        private a() {
        }

        @JavascriptInterface
        public boolean canInstallByVid(String str, String str2) {
            BaseAdUnit baseAdUnit;
            String str3;
            List<BaseAdUnit> adUnitList = C1325c.this.getAdUnitList();
            if (com.sigmob.sdk.base.utils.f.a(adUnitList)) {
                return false;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= adUnitList.size()) {
                    baseAdUnit = null;
                    break;
                }
                baseAdUnit = adUnitList.get(i2);
                if (baseAdUnit.getAd().vid.equals(str)) {
                    break;
                }
                i2++;
            }
            if (baseAdUnit == null) {
                return false;
            }
            if (!com.sigmob.sdk.base.utils.s.b(str2)) {
                str2 = baseAdUnit.getApkName();
                String apkMd5 = baseAdUnit.getApkMd5();
                if (!com.sigmob.sdk.base.utils.s.b(str2)) {
                    if (com.sigmob.sdk.base.utils.s.a((CharSequence) apkMd5)) {
                        str3 = "";
                    } else {
                        str3 = apkMd5 + ".apk";
                    }
                    str2 = str3;
                }
            }
            return baseAdUnit.canInstall(str2);
        }

        @JavascriptInterface
        public boolean canOpen(String str) {
            return com.sigmob.sdk.base.o.a().b(str).booleanValue();
        }

        @JavascriptInterface
        public boolean canOpenByVid(String str, String str2) {
            BaseAdUnit baseAdUnit;
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) str2)) {
                List<BaseAdUnit> adUnitList = C1325c.this.getAdUnitList();
                int i2 = 0;
                if (com.sigmob.sdk.base.utils.f.a(adUnitList)) {
                    return false;
                }
                while (true) {
                    if (i2 >= adUnitList.size()) {
                        baseAdUnit = null;
                        break;
                    }
                    baseAdUnit = adUnitList.get(i2);
                    if (baseAdUnit.getAd().vid.equals(str)) {
                        break;
                    }
                    i2++;
                }
                if (baseAdUnit != null) {
                    return baseAdUnit.canOpen();
                }
            }
            return com.sigmob.sdk.base.o.a().b(str2).booleanValue();
        }

        @JavascriptInterface
        public void hideSystemUI() {
            ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.sigmob.sdk.mraid2.A
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38082b.a();
                }
            });
        }

        @JavascriptInterface
        public boolean isOpenListReport() {
            com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
            return (oVarA.S().isEmpty() || com.sigmob.sdk.base.services.b.a() || !oVarA.L().booleanValue()) ? false : true;
        }

        @JavascriptInterface
        public void onOpenListReport() {
            com.sigmob.sdk.base.services.b.c();
        }

        @JavascriptInterface
        public void showSystemUI() {
            ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.sigmob.sdk.mraid2.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38262b.b();
                }
            });
        }

        public /* synthetic */ a(C1325c c1325c, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            Activity activityC = com.sigmob.sdk.base.utils.w.c(C1325c.this);
            if (activityC == null) {
                return;
            }
            C1383c.h((Context) activityC);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            Activity activityC = com.sigmob.sdk.base.utils.w.c(C1325c.this);
            if (activityC == null) {
                return;
            }
            C1383c.j(activityC);
        }
    }

    public C1325c(Context context, List<BaseAdUnit> list, FrameLayout frameLayout) {
        this(context, list, frameLayout, null, null);
        a(new a(this, null), "sigandroidh5");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(String str) {
        String strUtf8;
        List<MaterialMeta> list;
        MaterialMeta materialMeta;
        Template template;
        for (int i2 = 0; i2 < getAdUnitList().size(); i2++) {
            BaseAdUnit baseAdUnit = getAdUnitList().get(i2);
            if (baseAdUnit != null) {
                Template template2 = baseAdUnit.scene;
                if (template2 == null || !str.equals(template2.templateId)) {
                    Ad ad = baseAdUnit.getAd();
                    if (ad != null && (list = ad.materials) != null && (materialMeta = list.get(0)) != null) {
                        Template template3 = materialMeta.main_template;
                        if (template3 == null || !str.equals(template3.templateId)) {
                            Template template4 = materialMeta.sub_template;
                            if (template4 != null && str.equals(template4.templateId)) {
                                template = materialMeta.sub_template;
                            }
                        } else {
                            template = materialMeta.main_template;
                        }
                    }
                } else {
                    template = baseAdUnit.scene;
                }
                strUtf8 = template.context.utf8();
                break;
            }
        }
        strUtf8 = null;
        if (com.sigmob.sdk.base.utils.s.b(strUtf8)) {
            a(strUtf8);
        }
    }

    public static HashMap<String, C1325c> getMraidWebViews() {
        return f38129r;
    }

    private Template getTemplate() {
        BaseAdUnit baseAdUnit;
        List<BaseAdUnit> adUnitList = getAdUnitList();
        if (com.sigmob.sdk.base.utils.f.a(adUnitList) || (baseAdUnit = adUnitList.get(0)) == null) {
            return null;
        }
        Template template = baseAdUnit.scene;
        MaterialMeta material = baseAdUnit.getMaterial();
        if (template == null && material == null) {
            return null;
        }
        if (com.sigmob.sdk.base.utils.v.b(template)) {
            return template;
        }
        Template template2 = material.main_template;
        return template2 == null ? material.sub_template : template2;
    }

    public C1256g getAdSize() {
        return this.f38144q;
    }

    @Override // com.sigmob.sdk.mraid2.x
    public List<BaseAdUnit> getAdUnitList() {
        C1326d c1326d = this.f38131d;
        if (c1326d == null) {
            return null;
        }
        return c1326d.c();
    }

    public C1326d getMraidBridge() {
        return this.f38131d;
    }

    public InterfaceC1343v getScrollTouchListener() {
        return this.f38134g;
    }

    public String getUniqueId() {
        return this.f38133f;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        C1326d c1326d = this.f38131d;
        if (c1326d == null) {
            return;
        }
        c1326d.a(i2 == 0);
    }

    public void setAdSize(C1256g c1256g) {
        this.f38144q = c1256g;
    }

    public void setLoadListener(InterfaceC1323a interfaceC1323a) {
        this.f38136i = interfaceC1323a;
    }

    public void setNextWebViewListener(InterfaceC1341t interfaceC1341t) {
        this.f38135h = interfaceC1341t;
    }

    public void setScrollTouchListener(InterfaceC1343v interfaceC1343v) {
        this.f38134g = interfaceC1343v;
    }

    public C1325c(Context context, List<BaseAdUnit> list, FrameLayout frameLayout, C1325c c1325c, JSONObject jSONObject) {
        super(context);
        this.f38140m = false;
        this.f38143p = new AnonymousClass1();
        this.f38145s = new LinkedHashMap();
        this.f38146t = new InterfaceC1333k() { // from class: com.sigmob.sdk.mraid2.c.3
            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void a() {
                if (C1325c.this.f38135h == null) {
                    return;
                }
                C1325c.this.f38135h.a(C1325c.this.f38132e);
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void b() {
                for (AbstractC1322n abstractC1322n : x.f38255a.values()) {
                    if (com.sigmob.sdk.base.utils.s.a((CharSequence) abstractC1322n.c(), (CharSequence) C1325c.this.f38133f)) {
                        com.sigmob.sdk.base.utils.w.a(abstractC1322n.a());
                        abstractC1322n.b();
                    }
                }
                com.sigmob.sdk.base.utils.w.a(C1325c.this.f38132e);
                if (com.sigmob.sdk.base.utils.f.b(C1325c.this.f38145s)) {
                    Iterator it = C1325c.this.f38145s.values().iterator();
                    while (it.hasNext()) {
                        ((C1339q) it.next()).c();
                    }
                    C1325c.this.f38145s.clear();
                }
                if (C1325c.this.f38132e != null) {
                    C1325c.this.f38132e = null;
                }
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void c() {
                if (C1325c.this.f38135h == null) {
                    return;
                }
                C1325c.this.f38135h.b(C1325c.this.f38132e);
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void d() {
                if (C1325c.this.f38135h == null) {
                    return;
                }
                C1325c.this.f38135h.a();
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void e(JSONObject jSONObject2) {
                if (C1325c.this.f38135h == null) {
                    return;
                }
                C1325c.this.f38135h.b(C1325c.this.f38132e, jSONObject2);
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void f(JSONObject jSONObject2) {
                C1330h c1330h;
                SigmobLog.d("onMotionEvent: json = " + jSONObject2);
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("args");
                String strOptString = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString)) {
                    SigmobLog.e("onMotionViewEvent: uniqueId is null.");
                }
                AbstractC1322n abstractC1322n = x.f38255a.get(strOptString);
                c1330h = abstractC1322n instanceof C1330h ? (C1330h) abstractC1322n : null;
                String strOptString2 = jSONObject2.optString("subEvent");
                strOptString2.getClass();
                switch (strOptString2) {
                    case "init_sensitivity_raw":
                        String strOptString3 = jSONObjectOptJSONObject.optString("type", "");
                        int iOptInt = jSONObjectOptJSONObject.optInt(C1315g.f37907d, 0);
                        C1330h c1330h2 = new C1330h(strOptString, strOptString3);
                        c1330h2.a(new InterfaceC1332j() { // from class: com.sigmob.sdk.mraid2.c.3.3
                            @Override // com.sigmob.sdk.mraid2.InterfaceC1332j
                            public void a(String str, String str2, String str3, HashMap<String, Object> map) {
                                if (C1325c.this.f38131d == null) {
                                    return;
                                }
                                C1325c.this.f38131d.a(str, str2, str3, map);
                            }
                        });
                        c1330h2.b(iOptInt);
                        c1330h2.d();
                        x.f38255a.put(strOptString, c1330h2);
                        break;
                    case "init":
                        String strOptString4 = jSONObjectOptJSONObject.optString("type", "");
                        int iOptInt2 = jSONObjectOptJSONObject.optInt(C1315g.f37906c, 0);
                        int iOptInt3 = jSONObjectOptJSONObject.optInt(C1315g.f37909f, 0);
                        int iOptInt4 = jSONObjectOptJSONObject.optInt(C1315g.f37910g, 0);
                        int iOptInt5 = jSONObjectOptJSONObject.optInt(C1315g.f37911h, 0);
                        SigmobLog.d("onMotionEvent: type = " + strOptString4 + ", level = " + iOptInt2);
                        C1330h c1330h3 = new C1330h(strOptString, strOptString4);
                        c1330h3.a(new InterfaceC1332j() { // from class: com.sigmob.sdk.mraid2.c.3.2
                            @Override // com.sigmob.sdk.mraid2.InterfaceC1332j
                            public void a(String str, String str2, String str3, HashMap<String, Object> map) {
                                if (C1325c.this.f38131d == null) {
                                    return;
                                }
                                C1325c.this.f38131d.a(str, str2, str3, map);
                            }
                        });
                        c1330h3.a(new SensorEntity(iOptInt2, iOptInt3, iOptInt4, iOptInt5));
                        c1330h3.d();
                        x.f38255a.put(strOptString, c1330h3);
                        break;
                    case "destroy":
                        if (c1330h != null) {
                            c1330h.b();
                        }
                        x.f38255a.remove(strOptString);
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void g(JSONObject jSONObject2) {
                C1320l c1320l;
                String strOptString;
                SigmobLog.d("onMotionViewEvent: json = " + jSONObject2);
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("args");
                String strOptString2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString2)) {
                    SigmobLog.e("onMotionViewEvent: uniqueId is null.");
                }
                AbstractC1322n abstractC1322n = x.f38255a.get(strOptString2);
                c1320l = abstractC1322n instanceof C1320l ? (C1320l) abstractC1322n : null;
                strOptString = jSONObject2.optString("subEvent");
                strOptString.getClass();
                switch (strOptString) {
                    case "shakeTimeThreshold":
                        if (c1320l != null) {
                            c1320l.e(jSONObjectOptJSONObject.optInt(strOptString));
                            break;
                        }
                        break;
                    case "widgetIntervalTime":
                        if (c1320l != null) {
                            c1320l.d(jSONObjectOptJSONObject.optInt(strOptString));
                            break;
                        }
                        break;
                    case "hidden":
                        if (c1320l != null) {
                            c1320l.a(jSONObjectOptJSONObject.optBoolean("hidden"));
                            break;
                        }
                        break;
                    case "init":
                        C1320l c1320l2 = new C1320l(com.sigmob.sdk.b.e(), strOptString2, jSONObjectOptJSONObject.optInt("type"), C1325c.this.f38142o);
                        c1320l2.a(new InterfaceC1332j() { // from class: com.sigmob.sdk.mraid2.c.3.4
                            @Override // com.sigmob.sdk.mraid2.InterfaceC1332j
                            public void a(String str, String str2, String str3, HashMap<String, Object> map) {
                                if (C1325c.this.f38131d == null) {
                                    return;
                                }
                                C1325c.this.f38131d.a(str, str2, str3, map);
                            }
                        });
                        x.f38255a.put(strOptString2, c1320l2);
                        break;
                    case "frame":
                        if (c1320l != null) {
                            c1320l.a(jSONObjectOptJSONObject);
                            break;
                        }
                        break;
                    case "start":
                        if (c1320l != null) {
                            c1320l.d();
                            break;
                        }
                        break;
                    case "sensitivity":
                        if (c1320l != null) {
                            c1320l.a(jSONObjectOptJSONObject.optInt(strOptString));
                            break;
                        }
                        break;
                    case "destroy":
                        if (c1320l != null) {
                            c1320l.b();
                        }
                        x.f38255a.remove(strOptString2);
                        break;
                    case "sensitivity_raw":
                        if (c1320l != null) {
                            c1320l.b(jSONObjectOptJSONObject.optInt(strOptString));
                            break;
                        }
                        break;
                    case "shakeTriggerType":
                        if (c1320l != null) {
                            c1320l.c(jSONObjectOptJSONObject.optInt(strOptString));
                            break;
                        }
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void a(BaseAdUnit baseAdUnit, JSONObject jSONObject2) {
                if (C1325c.this.f38135h == null) {
                    return;
                }
                C1325c.this.f38135h.a(C1325c.this.f38132e, baseAdUnit, jSONObject2);
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void b(String str, JSONObject jSONObject2) {
                C1339q c1339q;
                SigmobLog.d(" onTimerEvent :" + str + ":" + jSONObject2);
                String strOptString = jSONObject2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString)) {
                    return;
                }
                c1339q = (C1339q) C1325c.this.f38145s.get(strOptString);
                str.getClass();
                switch (str) {
                    case "invalidate":
                        if (c1339q != null) {
                            c1339q.c();
                        }
                        C1325c.this.f38145s.remove(strOptString);
                        break;
                    case "fire":
                        if (c1339q != null) {
                            c1339q.b();
                            break;
                        }
                        break;
                    case "init":
                        C1325c.this.f38145s.put(strOptString, new C1339q(C1325c.this.f38131d, jSONObject2));
                        break;
                    case "pause":
                        if (c1339q != null) {
                            c1339q.a();
                            break;
                        }
                        break;
                }
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Removed duplicated region for block: B:7:0x0042  */
            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void c(java.lang.String r7, org.json.JSONObject r8) {
                /*
                    Method dump skipped, instructions count: 418
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid2.C1325c.AnonymousClass3.c(java.lang.String, org.json.JSONObject):void");
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void d(JSONObject jSONObject2) {
                C1325c.this.f38140m = true;
                int iOptInt = jSONObject2.optInt("flag");
                if (C1325c.this.f38135h != null && C1325c.this.f38139l == null) {
                    C1325c c1325c2 = C1325c.this;
                    c1325c2.f38139l = c1325c2.f38135h.a(C1325c.this.f38132e, iOptInt);
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < C1325c.this.f38138k.getChildCount(); i2++) {
                        View childAt = C1325c.this.f38138k.getChildAt(i2);
                        if (childAt instanceof com.sigmob.sdk.mraid.r) {
                            arrayList.add((com.sigmob.sdk.mraid.r) childAt);
                        }
                    }
                    arrayList.size();
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        com.sigmob.sdk.mraid.r rVar = (com.sigmob.sdk.mraid.r) arrayList.get(i3);
                        rVar.setX(0.0f);
                        rVar.setY(0.0f);
                        com.sigmob.sdk.base.utils.w.a(rVar);
                        C1325c.this.f38139l.addView(rVar);
                    }
                }
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void a(String str) {
                List<BaseAdUnit> adUnitList = C1325c.this.getAdUnitList();
                if (com.sigmob.sdk.base.utils.s.b(str) && com.sigmob.sdk.base.utils.f.a(adUnitList)) {
                    for (int i2 = 0; i2 < adUnitList.size(); i2++) {
                        C1325c.this.f38142o = adUnitList.get(i2);
                        if (str.equals(C1325c.this.f38142o.getVid())) {
                            break;
                        }
                    }
                }
                if (C1325c.this.f38142o == null) {
                    return;
                }
                C1258h.g().j(C1325c.this.f38142o.getCamp_id());
                C1258h.g().i(C1325c.this.f38142o.getCrid());
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void b(JSONObject jSONObject2) {
                ViewGroup viewGroup;
                String strOptString = jSONObject2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString)) {
                    return;
                }
                AbstractC1322n abstractC1322n = x.f38255a.get(strOptString);
                if (com.sigmob.sdk.base.utils.v.b(abstractC1322n)) {
                    abstractC1322n.a(C1325c.this.f38133f);
                    View viewA = abstractC1322n.a();
                    if (com.sigmob.sdk.base.utils.v.b(viewA)) {
                        com.sigmob.sdk.base.utils.w.a(viewA);
                        if (!C1325c.this.f38140m || C1325c.this.f38139l == null) {
                            viewGroup = C1325c.this.f38138k;
                        } else {
                            viewA.setX(0.0f);
                            viewA.setY(0.0f);
                            viewGroup = C1325c.this.f38139l;
                        }
                        viewGroup.addView(viewA);
                    }
                }
                C1325c c1325c2 = (C1325c) C1325c.f38129r.get(strOptString);
                if (c1325c2 == null) {
                    return;
                }
                com.sigmob.sdk.base.utils.w.a(c1325c2);
                C1325c.this.f38138k.addView(c1325c2);
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void c(JSONObject jSONObject2) {
                String strOptString = jSONObject2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString)) {
                    return;
                }
                AbstractC1322n abstractC1322n = x.f38255a.get(strOptString);
                if (com.sigmob.sdk.base.utils.v.b(abstractC1322n)) {
                    abstractC1322n.a(C1325c.this.f38133f);
                    View viewA = abstractC1322n.a();
                    if (com.sigmob.sdk.base.utils.v.b(viewA)) {
                        com.sigmob.sdk.base.utils.w.a(viewA);
                        if (!C1325c.this.f38140m || C1325c.this.f38139l == null) {
                            C1325c.this.f38138k.addView(viewA);
                            C1325c.this.f38138k.bringChildToFront(C1325c.this.f38132e);
                        } else {
                            viewA.setX(0.0f);
                            viewA.setY(0.0f);
                            C1325c.this.f38139l.addView(viewA);
                        }
                    }
                }
                C1325c c1325c2 = (C1325c) C1325c.f38129r.get(strOptString);
                if (c1325c2 == null) {
                    return;
                }
                com.sigmob.sdk.base.utils.w.a(c1325c2);
                C1325c.this.f38138k.addView(c1325c2);
                C1325c.this.f38138k.bringChildToFront(C1325c.this.f38132e);
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            public void a(String str, JSONObject jSONObject2) {
                com.sigmob.sdk.mraid.t tVar;
                SigmobLog.d("onVpaidEvent: subEvent = " + str + ", args = " + jSONObject2);
                String strOptString = jSONObject2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) strOptString)) {
                    return;
                }
                AbstractC1322n abstractC1322n = x.f38255a.get(strOptString);
                tVar = abstractC1322n instanceof com.sigmob.sdk.mraid.t ? (com.sigmob.sdk.mraid.t) abstractC1322n : null;
                str.getClass();
                switch (str) {
                    case "replay":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.c(jSONObject2);
                            break;
                        }
                        break;
                    case "assetURL":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.a(jSONObject2);
                            break;
                        }
                        break;
                    case "init":
                        C1325c.this.a(strOptString, jSONObject2);
                        break;
                    case "play":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.b(jSONObject2);
                            break;
                        }
                        break;
                    case "seek":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.g(jSONObject2);
                            break;
                        }
                        break;
                    case "stop":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.e(jSONObject2);
                            tVar.b();
                            Iterator<Map.Entry<String, AbstractC1322n>> it = x.f38255a.entrySet().iterator();
                            while (it.hasNext()) {
                                if (it.next().getValue() == tVar) {
                                    it.remove();
                                    break;
                                }
                            }
                            break;
                        }
                        break;
                    case "frame":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.h(jSONObject2);
                            break;
                        }
                        break;
                    case "muted":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.f(jSONObject2);
                            break;
                        }
                        break;
                    case "pause":
                        if (com.sigmob.sdk.base.utils.v.b(tVar)) {
                            tVar.d(jSONObject2);
                            break;
                        }
                        break;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x0154  */
            @Override // com.sigmob.sdk.mraid2.InterfaceC1333k
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void a(org.json.JSONObject r29) {
                /*
                    Method dump skipped, instructions count: 445
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid2.C1325c.AnonymousClass3.a(org.json.JSONObject):void");
            }
        };
        this.f38132e = this;
        this.f38138k = frameLayout;
        this.f38130c = c1325c;
        this.f38137j = false;
        if (jSONObject == null) {
            String str = "wv_" + UUID.randomUUID().toString();
            this.f38133f = str;
            f38129r.put(str, this);
        } else {
            try {
                this.f38141n = new JSONObject(jSONObject.optString("args"));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            this.f38133f = jSONObject.optString("uniqueId");
        }
        a(true);
        setBackgroundColor(0);
        com.sigmob.sdk.base.utils.j.a(f38128b, getSettings());
        this.f38143p.a(com.sigmob.sdk.base.o.a().ad());
        BaseAdUnit baseAdUnit = list.get(0);
        if (com.sigmob.sdk.base.utils.v.b(baseAdUnit)) {
            this.f38143p.b(baseAdUnit.isDisablexRequestWith());
        }
        setWebViewClient(this.f38143p);
        C1326d c1326d = new C1326d(list);
        this.f38131d = c1326d;
        c1326d.a(this.f38146t);
        this.f38131d.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return;
        }
        a(new C1326d.a(this.f38131d), "sigandroid");
        String strMd5 = Md5Util.md5(str);
        File fileF = com.sigmob.sdk.base.utils.n.f(com.sigmob.sdk.base.utils.n.f36611c);
        if (fileF == null) {
            return;
        }
        final File file = new File(fileF.getAbsolutePath() + File.separator + strMd5, "endcard.html");
        file.exists();
        file.getAbsolutePath();
        if (file.exists()) {
            c("file://" + file.getAbsolutePath());
            return;
        }
        File file2 = new File(fileF, strMd5 + ".tgz");
        DownloadItem downloadItem = new DownloadItem();
        downloadItem.url = str;
        downloadItem.filePath = file2.getAbsolutePath();
        downloadItem.type = DownloadItem.FileType.FILE;
        C1280t.a().add(downloadItem, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.mraid2.c.2
            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void downloadProgress(DownloadItem downloadItem2, long j2, long j3) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onCancel(DownloadItem downloadItem2) {
                String str2 = downloadItem2.url;
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onErrorResponse(DownloadItem downloadItem2) {
                String str2 = downloadItem2.url;
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onSuccess(DownloadItem downloadItem2) {
                String str2 = downloadItem2.url;
                try {
                    com.sigmob.sdk.base.utils.g.a(new File(downloadItem2.filePath), new File(downloadItem2.filePath.replace(".tgz", ServiceReference.DELIMITER)));
                    if (file.exists()) {
                        C1325c.this.f38132e.c("file://" + file.getAbsolutePath());
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    @Override // com.sigmob.sdk.mraid2.x
    public void b() {
        try {
            setLoadListener(null);
            setNextWebViewListener(null);
            setScrollTouchListener(null);
            if (this.f38132e != null) {
                this.f38132e = null;
            }
            C1326d c1326d = this.f38131d;
            if (c1326d != null) {
                c1326d.g();
                this.f38131d = null;
            }
            super.b();
        } catch (Throwable unused) {
        }
    }

    public void b(String str) {
        a(new C1326d.a(this.f38131d), "sigandroid");
        c(str);
    }

    public void a() {
        Template template = getTemplate();
        if (template == null) {
            return;
        }
        String strUtf8 = template.context.utf8();
        int iIntValue = template.type.intValue();
        if (iIntValue == 1) {
            b(strUtf8);
            return;
        }
        if (iIntValue == 2) {
            a(strUtf8);
            return;
        }
        if (iIntValue == 3) {
            e(strUtf8);
            return;
        }
        SigmobLog.e("template type error:" + template.type);
    }

    public void a(String str) {
        a(new C1326d.a(this.f38131d), "sigandroid");
        File fileB = com.sigmob.sdk.base.utils.n.b(str, Md5Util.md5(str) + ".html");
        if (com.sigmob.sdk.base.utils.v.b(fileB) && com.sigmob.sdk.base.utils.s.b(fileB.getAbsolutePath())) {
            c("file://" + fileB.getAbsolutePath());
            return;
        }
        a(Networking.getBaseUrlScheme() + "://localhost/", str, "text/html", "UTF-8", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, JSONObject jSONObject) {
        com.sigmob.sdk.mraid.t tVar = new com.sigmob.sdk.mraid.t(str);
        tVar.a(new com.sigmob.sdk.mraid.u() { // from class: com.sigmob.sdk.mraid2.c.4
            @Override // com.sigmob.sdk.mraid.u
            public void a(String str2, int i2) {
                if (C1325c.this.f38131d == null) {
                    return;
                }
                C1325c.this.f38131d.a(str2, i2);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void b(String str2, int i2) {
                if (C1325c.this.f38131d == null) {
                    return;
                }
                C1325c.this.f38131d.b(str2, i2);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String str2, int i2, String str3) {
                ad.a("video", i2, str3, C1325c.this.f38142o, (ad.a) null);
                if (C1325c.this.f38131d == null) {
                    return;
                }
                C1325c.this.f38131d.a(str2, "code:" + i2 + ", msg:" + str3);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String str2, long j2) {
                if (C1325c.this.f38131d == null) {
                    return;
                }
                C1325c.this.f38131d.c(str2, (int) j2);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String str2, long j2, int i2, int i3) {
                if (C1325c.this.f38131d == null) {
                    return;
                }
                C1325c.this.f38131d.a(str2, (int) j2, i2, i3);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String str2, long j2, long j3) {
                if (C1325c.this.f38131d == null) {
                    return;
                }
                C1325c.this.f38131d.a(str2, (int) j2, (int) j3);
            }
        });
        tVar.a(getContext(), jSONObject);
        View viewA = tVar.a();
        if (com.sigmob.sdk.base.utils.v.b(viewA)) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(1, 1);
            layoutParams.topMargin = 0;
            layoutParams.rightMargin = 0;
            viewA.setLayoutParams(layoutParams);
        }
        x.f38255a.put(str, tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, BaseAdUnit baseAdUnit) throws IntentNotResolvableException {
        if (!com.sigmob.sdk.base.utils.s.a((CharSequence) str) && baseAdUnit != null) {
            AdSetting adSetting = baseAdUnit.getAdSetting();
            List<String> list = adSetting == null ? null : adSetting.scheme_white_list;
            if (com.sigmob.sdk.base.utils.f.a(list)) {
                return false;
            }
            for (int i2 = 0; i2 < list.size(); i2++) {
                String str2 = list.get(i2);
                if (str.startsWith(str2) || str2.equals("*")) {
                    com.sigmob.sdk.base.utils.h.a(getContext(), Uri.parse(str));
                    return true;
                }
            }
        }
        return false;
    }
}
