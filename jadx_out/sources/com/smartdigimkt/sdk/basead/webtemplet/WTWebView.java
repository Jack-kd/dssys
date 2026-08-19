package com.smartdigimkt.sdk.basead.webtemplet;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebSettings;
import com.anythink.core.common.f.p;
import com.smartdigimkt.c5.d;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.b;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;
import com.smartdigimkt.sdk.basead.webtemplet.adformat.WTCommonJSBridgePlugin;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.w2.e;
import com.smartdigimkt.w2.g;
import com.smartdigimkt.w2.j;
import com.smartdigimkt.w2.k;
import com.smartdigimkt.w2.l;
import com.smartdigimkt.w2.m;
import com.smartdigimkt.w2.n;
import com.smartdigimkt.w2.o;
import com.smartdigimkt.w2.q;
import com.smartdigimkt.w2.r;
import com.smartdigimkt.w2.t;
import com.smartdigimkt.w2.u;
import com.smartdigimkt.x2.f;
import com.smartdigimkt.y3.h;
import com.smartdigimkt.z.b0;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class WTWebView extends BaseWebView {

    /* renamed from: B, reason: collision with root package name */
    public static final /* synthetic */ int f44072B = 0;

    /* renamed from: A, reason: collision with root package name */
    public m f44073A;

    /* renamed from: c, reason: collision with root package name */
    public long f44074c;

    /* renamed from: d, reason: collision with root package name */
    public n f44075d;

    /* renamed from: e, reason: collision with root package name */
    public c f44076e;

    /* renamed from: f, reason: collision with root package name */
    public a f44077f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f44078g;

    /* renamed from: h, reason: collision with root package name */
    public u f44079h;

    /* renamed from: i, reason: collision with root package name */
    public t f44080i;

    /* renamed from: j, reason: collision with root package name */
    public com.smartdigimkt.w2.c f44081j;

    /* renamed from: k, reason: collision with root package name */
    public Object f44082k;

    /* renamed from: l, reason: collision with root package name */
    public e f44083l;

    /* renamed from: m, reason: collision with root package name */
    public r f44084m;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f44085n;

    /* renamed from: o, reason: collision with root package name */
    public volatile boolean f44086o;

    /* renamed from: p, reason: collision with root package name */
    public final Object f44087p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f44088q;

    /* renamed from: r, reason: collision with root package name */
    public final List f44089r;

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f44090s;

    /* renamed from: t, reason: collision with root package name */
    public String f44091t;

    /* renamed from: u, reason: collision with root package name */
    public long f44092u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f44093v;

    /* renamed from: w, reason: collision with root package name */
    public long f44094w;

    /* renamed from: x, reason: collision with root package name */
    public long f44095x;

    /* renamed from: y, reason: collision with root package name */
    public long f44096y;

    /* renamed from: z, reason: collision with root package name */
    public long f44097z;

    public WTWebView(Context context) {
        super(context);
        this.f44074c = 3000L;
        this.f44085n = false;
        this.f44086o = false;
        this.f44087p = new Object();
        this.f44088q = false;
        this.f44089r = Collections.synchronizedList(new ArrayList());
        this.f44090s = false;
        this.f44091t = "";
        this.f44093v = false;
        this.f44094w = 0L;
        this.f44095x = 0L;
        this.f44096y = 0L;
        this.f44097z = 0L;
        this.f44073A = new m(this);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.web.BaseWebView
    public final void a() {
        Class cls = Boolean.TYPE;
        super.a();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        requestFocus();
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(true);
        settings.setBuiltInZoomControls(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDomStorageEnabled(true);
        settings.setSupportZoom(false);
        settings.setSavePassword(false);
        settings.setDatabaseEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setTextZoom(100);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                settings.setSafeBrowsingEnabled(false);
            }
        } catch (Throwable unused) {
        }
        settings.setMediaPlaybackRequiresUserGesture(false);
        try {
            settings.setAllowUniversalAccessFromFileURLs(false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            settings.setMixedContentMode(1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            Method declaredMethod = WebSettings.class.getDeclaredMethod(d.a("c2V0TWl4ZWRDb250ZW50TW9kZQ=="), Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(settings, 0);
        } catch (Throwable unused2) {
        }
        settings.setDatabaseEnabled(true);
        String str = SDKContext.getInstance().f44110I;
        settings.setDatabasePath(str);
        settings.setGeolocationEnabled(true);
        settings.setGeolocationDatabasePath(str);
        try {
            Method declaredMethod2 = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", cls);
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(settings, Boolean.FALSE);
        } catch (Throwable unused3) {
        }
        try {
            Method declaredMethod3 = WebSettings.class.getDeclaredMethod(d.a("c2V0QWxsb3dVbml2ZXJzYWxBY2Nlc3NGcm9tRmlsZVVSTHM="), cls);
            declaredMethod3.setAccessible(true);
            declaredMethod3.invoke(settings, Boolean.TRUE);
        } catch (Throwable unused4) {
        }
        t tVar = new t();
        this.f44080i = tVar;
        tVar.f44904b = new g(this);
        setWebChromeClient(this.f44080i);
        u uVar = new u();
        this.f44079h = uVar;
        uVar.f44906b = new g(this);
        setWebViewClient(this.f44079h);
        this.f44083l = new e(this);
        setWebViewTransparent();
    }

    public final void b() {
        r rVar;
        synchronized (this.f44087p) {
            try {
                if (this.f44085n && this.f44086o && (rVar = this.f44084m) != null) {
                    k kVar = ((j) rVar).f44891a.f44068c;
                    if (kVar != null) {
                        kVar.a();
                    }
                    this.f44084m = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Object getJsCommunicationObject() {
        return this.f44082k;
    }

    public Object getJsObject(String str) {
        e eVar = this.f44083l;
        if (eVar == null) {
            return null;
        }
        if (e.f44881b == null) {
            e.f44881b = new HashMap();
        }
        WTWebView wTWebView = eVar.f44882a;
        Class cls = (Class) e.f44881b.get(str);
        if (cls != null) {
            try {
                if (WTCommonJSBridgePlugin.class.isAssignableFrom(cls)) {
                    WTCommonJSBridgePlugin wTCommonJSBridgePlugin = (WTCommonJSBridgePlugin) cls.newInstance();
                    wTCommonJSBridgePlugin.initialize(wTWebView);
                    return wTCommonJSBridgePlugin;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public void h5ShowException(String str) {
        String strOptString;
        if (this.f44075d != null) {
            com.smartdigimkt.x3.g.a().a(this.f44075d);
            this.f44075d = null;
        }
        int iOptInt = 0;
        try {
            JSONObject jSONObject = new JSONObject(str);
            iOptInt = jSONObject.optInt("error_code", 0);
            strOptString = jSONObject.optString("error_message", "");
        } catch (Throwable unused) {
            strOptString = "unknown";
        }
        a(iOptInt == -999 ? 3 : 2, iOptInt + "," + strOptString);
        StringBuilder sb = new StringBuilder();
        sb.append(iOptInt);
        sb.append("");
        a(sb.toString(), strOptString);
        com.smartdigimkt.w2.c cVar = this.f44081j;
        if (cVar != null) {
            cVar.a(this, iOptInt, strOptString, getUrl());
        }
    }

    public void initData(c cVar, a aVar, boolean z2) {
        com.smartdigimkt.m3.e eVar;
        this.f44076e = cVar;
        this.f44077f = aVar;
        this.f44078g = z2;
        if (aVar == null || (eVar = aVar.f41644r) == null) {
            return;
        }
        this.f44074c = eVar.f41855F1;
    }

    public boolean isPreload() {
        return this.f44078g;
    }

    public void jsCallInitSuccess() {
        this.f44095x = System.currentTimeMillis();
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (TextUtils.isEmpty(this.f44091t)) {
            this.f44091t = str;
            this.f44092u = System.currentTimeMillis();
            if (this.f44075d == null) {
                this.f44075d = new n(this);
                com.smartdigimkt.x3.g gVarA = com.smartdigimkt.x3.g.a();
                gVarA.f45120a.a(this.f44075d, this.f44074c);
            }
        }
        super.loadUrl(str);
    }

    public void notifyInnerAdEvent(int i2, Map<String, Object> map) {
        if (this.f44090s) {
            com.smartdigimkt.b4.e.a().a(new q(this, i2, map), 0L, 2);
            return;
        }
        synchronized (this.f44089r) {
            this.f44089r.add(new l(i2, map));
        }
    }

    public void offerDataInject() {
        c cVar;
        int i2;
        this.f44096y = System.currentTimeMillis();
        String string = "";
        try {
            Context context = getContext();
            if (context == null) {
                context = SDKContext.getInstance().d();
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject(this.f44076e.f41811c0);
            if (SDMSDK.getInstance().isUseLocalLogo()) {
                String strA = a(context);
                if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strA)) {
                    try {
                        jSONObject2.put("tp_logo_u", strA);
                        jSONObject2.put("a_c_u", strA);
                        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("seatbid");
                        if (jSONArrayOptJSONArray != null) {
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i3);
                                if (jSONObjectOptJSONObject != null) {
                                    jSONObjectOptJSONObject.put("tp_logo_u", strA);
                                    jSONObjectOptJSONObject.put("a_c_u", strA);
                                }
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
            jSONObject.put(p.a.f3380g, jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            String str = this.f44076e.f41815f;
            if (!TextUtils.isEmpty(str)) {
                if (this.f44076e.c() > 0 || this.f44076e.b() > 0) {
                    jSONObject3.put("image_width", this.f44076e.c());
                    jSONObject3.put("image_height", this.f44076e.b());
                } else {
                    com.smartdigimkt.b4.e.a().getClass();
                    if (!com.smartdigimkt.b4.e.b()) {
                        b0.a().getClass();
                        int[] iArrA = com.smartdigimkt.d5.d.a(b0.a(1, str));
                        if (iArrA != null) {
                            jSONObject3.put("image_width", iArrA[0]);
                            jSONObject3.put("image_height", iArrA[1]);
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(this.f44076e.f41818i) && (i2 = (cVar = this.f44076e).f41790K) > 0 && cVar.f41791L > 0) {
                jSONObject3.put("video_width", i2);
                jSONObject3.put("video_height", this.f44076e.f41791L);
            }
            jSONObject.put("material_info", jSONObject3);
            string = jSONObject.toString();
        } catch (Throwable unused2) {
        }
        com.smartdigimkt.a3.a.a().a(this, "offer_data_inject", string);
        this.f44097z = System.currentTimeMillis();
        this.f44090s = true;
        synchronized (this.f44089r) {
            try {
                if (!this.f44089r.isEmpty()) {
                    for (l lVar : this.f44089r) {
                        notifyInnerAdEvent(lVar.f44892a, lVar.f44893b);
                    }
                    this.f44089r.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.web.BaseWebView, android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f44088q) {
            return;
        }
        this.f44088q = true;
        notifyInnerAdEvent(301, null);
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("wt_view_width", Integer.valueOf(i2));
            map.put("wt_view_height", Integer.valueOf(i3));
            notifyInnerAdEvent(305, map);
        } catch (Throwable unused) {
        }
    }

    public void prepare(r rVar) {
        this.f44084m = rVar;
        getViewTreeObserver().addOnPreDrawListener(new o(this));
    }

    public void release() {
        try {
            if (this.f44075d != null) {
                com.smartdigimkt.x3.g.a().a(this.f44075d);
                this.f44075d = null;
            }
            setVisibility(8);
            setDownloadListener(null);
            this.f44082k = null;
            if (this.f44073A != null) {
                this.f44073A = null;
            }
            if (this.f44081j != null) {
                this.f44081j = null;
            }
            destroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void renderSuccess() {
        if (this.f44075d != null) {
            com.smartdigimkt.x3.g.a().a(this.f44075d);
            this.f44075d = null;
        }
        this.f44086o = true;
        com.smartdigimkt.w2.c cVar = this.f44081j;
        if (cVar != null) {
            cVar.b(this);
        }
        b();
        a(1, "");
        if (!this.f44076e.h() || TextUtils.isEmpty(this.f44076e.f41817h)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("cta_text", this.f44076e.f41817h);
        notifyInnerAdEvent(UMErrorCode.E_UM_BE_EMPTY_URL_PATH, map);
    }

    public void sendEventDA(String str) {
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.w2.p(this, str));
    }

    public void setJsCommunicationObject(Object obj) {
        this.f44082k = obj;
    }

    public void setWebViewListener(com.smartdigimkt.w2.c cVar) {
        this.f44081j = cVar;
        t tVar = this.f44080i;
        if (tVar != null) {
            tVar.f44903a = this.f44073A;
        }
        u uVar = this.f44079h;
        if (uVar != null) {
            uVar.f44905a = this.f44073A;
        }
    }

    public void setWebViewTransparent() {
        setBackgroundColor(0);
        setBackgroundDrawable(null);
        setBackground(null);
    }

    public WTWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44074c = 3000L;
        this.f44085n = false;
        this.f44086o = false;
        this.f44087p = new Object();
        this.f44088q = false;
        this.f44089r = Collections.synchronizedList(new ArrayList());
        this.f44090s = false;
        this.f44091t = "";
        this.f44093v = false;
        this.f44094w = 0L;
        this.f44095x = 0L;
        this.f44096y = 0L;
        this.f44097z = 0L;
        this.f44073A = new m(this);
    }

    public WTWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f44074c = 3000L;
        this.f44085n = false;
        this.f44086o = false;
        this.f44087p = new Object();
        this.f44088q = false;
        this.f44089r = Collections.synchronizedList(new ArrayList());
        this.f44090s = false;
        this.f44091t = "";
        this.f44093v = false;
        this.f44094w = 0L;
        this.f44095x = 0L;
        this.f44096y = 0L;
        this.f44097z = 0L;
        this.f44073A = new m(this);
    }

    public static String a(Context context) {
        Bitmap bitmapDecodeResource;
        if (context == null) {
            return "";
        }
        try {
            int iA = com.smartdigimkt.c5.k.a(context, "myoffer_ad_logo_default", "drawable");
            if (iA == 0 || (bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), iA)) == null) {
                return "";
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bitmapDecodeResource.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                bitmapDecodeResource.recycle();
                String strA = d.a(byteArrayOutputStream.toByteArray());
                if (TextUtils.isEmpty(strA)) {
                    return "";
                }
                return "data:image/png;base64," + strA;
            } catch (Throwable th) {
                bitmapDecodeResource.recycle();
                throw th;
            }
        } catch (Throwable th2) {
            th2.getMessage();
            return "";
        }
    }

    public final void a(String str, String str2) {
        com.smartdigimkt.x2.a aVar;
        Object obj = this.f44082k;
        if (obj == null || !(obj instanceof f) || (aVar = ((f) obj).f45103a) == null) {
            return;
        }
        aVar.a(str, str2);
    }

    public final synchronized void a(int i2, String str) {
        String str2;
        String strA;
        String strA2;
        String strA3;
        String strA4;
        try {
            if (!this.f44093v && !this.f44029a) {
                this.f44093v = true;
                c cVar = this.f44076e;
                a aVar = this.f44077f;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j2 = this.f44092u;
                long j3 = jCurrentTimeMillis - j2;
                long j4 = this.f44094w;
                long j5 = this.f44095x;
                long j6 = this.f44096y;
                long j7 = this.f44097z;
                String str3 = this.f44091t;
                if (cVar != null && aVar != null) {
                    com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
                    cVar2.f42817a = "1004762";
                    cVar2.a(aVar);
                    cVar2.f42828l = cVar.f41806a;
                    if (cVar instanceof b) {
                        cVar2.f42829m = ((b) cVar).f42054o0;
                    }
                    cVar2.f42830n = String.valueOf(i2);
                    cVar2.f42831o = String.valueOf(j3);
                    com.smartdigimkt.m3.e eVar = cVar.f41832w;
                    if (eVar != null) {
                        str2 = eVar.f41980v1;
                    } else {
                        str2 = "";
                    }
                    cVar2.f42832p = str2;
                    if (eVar != null) {
                        strA = com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41977u1, "");
                    } else {
                        strA = "";
                    }
                    cVar2.f42833q = strA;
                    if (cVar.f41832w != null) {
                        strA2 = com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41989y1, "");
                    } else {
                        strA2 = "";
                    }
                    cVar2.f42834r = strA2;
                    if (cVar.f41832w != null) {
                        strA3 = com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41992z1, "");
                    } else {
                        strA3 = "";
                    }
                    cVar2.f42835s = strA3;
                    cVar2.f42836t = str;
                    cVar2.f42837u = String.valueOf(j4);
                    cVar2.f42838v = String.valueOf(j5);
                    cVar2.f42839w = String.valueOf(j6);
                    cVar2.f42840x = String.valueOf(j7);
                    cVar2.f42841y = String.valueOf(j2);
                    cVar2.f42842z = str3;
                    if (cVar.f41832w != null) {
                        strA4 = com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41840A1, "");
                    } else {
                        strA4 = "";
                    }
                    cVar2.f42795A = strA4;
                    h.a(cVar2);
                }
            }
        } finally {
        }
    }
}
