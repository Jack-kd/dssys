package com.sigmob.sdk.mraid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.widget.FrameLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1256g;
import com.sigmob.sdk.base.common.C1282v;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.CurrentAppOrientation;
import com.sigmob.sdk.base.models.ExposureChange;
import com.sigmob.sdk.base.models.MraidEnv;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.VideoItem;
import com.sigmob.sdk.base.models.ViewState;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.mraid.C1310b;
import com.sigmob.sdk.mraid2.C1330h;
import com.sigmob.sdk.mraid2.InterfaceC1332j;
import com.sigmob.sdk.nativead.APKStatusBroadcastReceiver;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid.h, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1316h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37912a = "MraidController";

    /* renamed from: A, reason: collision with root package name */
    private APKStatusBroadcastReceiver f37913A;

    /* renamed from: B, reason: collision with root package name */
    private boolean f37914B;

    /* renamed from: C, reason: collision with root package name */
    private C1256g f37915C;

    /* renamed from: D, reason: collision with root package name */
    private WindowInsets f37916D;

    /* renamed from: b, reason: collision with root package name */
    private final PlacementType f37917b;

    /* renamed from: c, reason: collision with root package name */
    private final BaseAdUnit f37918c;

    /* renamed from: d, reason: collision with root package name */
    private final FrameLayout f37919d;

    /* renamed from: e, reason: collision with root package name */
    private final d f37920e;

    /* renamed from: f, reason: collision with root package name */
    private final q f37921f;

    /* renamed from: g, reason: collision with root package name */
    private final C1311c f37922g;

    /* renamed from: h, reason: collision with root package name */
    private final C1321m f37923h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f37924i;

    /* renamed from: j, reason: collision with root package name */
    private Integer f37925j;

    /* renamed from: k, reason: collision with root package name */
    private String f37926k;

    /* renamed from: l, reason: collision with root package name */
    private ViewGroup f37927l;

    /* renamed from: m, reason: collision with root package name */
    private ViewState f37928m;

    /* renamed from: n, reason: collision with root package name */
    private a f37929n;

    /* renamed from: o, reason: collision with root package name */
    private e f37930o;

    /* renamed from: p, reason: collision with root package name */
    private x f37931p;

    /* renamed from: q, reason: collision with root package name */
    private f f37932q;

    /* renamed from: r, reason: collision with root package name */
    private v f37933r;

    /* renamed from: s, reason: collision with root package name */
    private c f37934s;

    /* renamed from: t, reason: collision with root package name */
    private Integer f37935t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f37936u;

    /* renamed from: v, reason: collision with root package name */
    private p f37937v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f37938w;

    /* renamed from: x, reason: collision with root package name */
    private final HashMap<String, AbstractC1322n> f37939x;

    /* renamed from: y, reason: collision with root package name */
    private final InterfaceC1313e f37940y;

    /* renamed from: z, reason: collision with root package name */
    private final InterfaceC1312d f37941z;

    /* renamed from: com.sigmob.sdk.mraid.h$a */
    public interface a {
        void a();

        void a(float f2);

        void a(int i2, int i3, int i4, int i5, C1310b.a aVar, boolean z2);

        void a(View view);

        void a(WindAdError windAdError);

        void a(String str);

        void a(URI uri, int i2, String str);

        void a(boolean z2);

        void b();

        void b(float f2);

        void c();

        void d();

        void e();

        void f();

        void g();

        void h();
    }

    /* renamed from: com.sigmob.sdk.mraid.h$b */
    public interface b {
        void onReady(v vVar, C1282v c1282v);
    }

    /* renamed from: com.sigmob.sdk.mraid.h$c */
    public class c extends BroadcastReceiver {

        /* renamed from: b, reason: collision with root package name */
        private Context f37949b;

        /* renamed from: c, reason: collision with root package name */
        private int f37950c = -1;

        public c() {
        }

        public void a() {
            Context context = this.f37949b;
            if (context == null) {
                return;
            }
            context.unregisterReceiver(this);
            this.f37949b = null;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int iX;
            if (this.f37949b == null || C1316h.this.f37938w || !"android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) || (iX = C1316h.this.x()) == this.f37950c) {
                return;
            }
            this.f37950c = iX;
            C1316h.this.a(iX);
        }

        public void a(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f37949b = applicationContext;
            if (applicationContext == null) {
                return;
            }
            com.sigmob.sdk.base.utils.h.a(applicationContext, this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
    }

    /* renamed from: com.sigmob.sdk.mraid.h$d */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private final Handler f37951a = new Handler();

        /* renamed from: b, reason: collision with root package name */
        private a f37952b;

        /* renamed from: com.sigmob.sdk.mraid.h$d$a */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            int f37953a;

            /* renamed from: b, reason: collision with root package name */
            private final View[] f37954b;

            /* renamed from: c, reason: collision with root package name */
            private final Handler f37955c;

            /* renamed from: d, reason: collision with root package name */
            private Runnable f37956d;

            /* renamed from: e, reason: collision with root package name */
            private final Runnable f37957e;

            private a(Handler handler, View[] viewArr) {
                this.f37957e = new Runnable() { // from class: com.sigmob.sdk.mraid.h.d.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (final View view : a.this.f37954b) {
                            if (view.getHeight() > 0 || view.getWidth() > 0) {
                                a.this.b();
                            } else {
                                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.sigmob.sdk.mraid.h.d.a.1.1
                                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                    public boolean onPreDraw() {
                                        view.getViewTreeObserver().removeOnPreDrawListener(this);
                                        a.this.b();
                                        return true;
                                    }
                                });
                            }
                        }
                    }
                };
                this.f37955c = handler;
                this.f37954b = viewArr;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b() {
                Runnable runnable;
                int i2 = this.f37953a - 1;
                this.f37953a = i2;
                if (i2 != 0 || (runnable = this.f37956d) == null) {
                    return;
                }
                runnable.run();
                this.f37956d = null;
            }

            public void a() {
                this.f37955c.removeCallbacks(this.f37957e);
                this.f37956d = null;
            }

            public void a(Runnable runnable) {
                this.f37956d = runnable;
                this.f37953a = this.f37954b.length;
                this.f37955c.post(this.f37957e);
            }
        }

        public a a(View... viewArr) {
            a aVar = new a(this.f37951a, viewArr);
            this.f37952b = aVar;
            return aVar;
        }

        public void a() {
            a aVar = this.f37952b;
            if (aVar == null) {
                return;
            }
            aVar.a();
            this.f37952b = null;
        }
    }

    /* renamed from: com.sigmob.sdk.mraid.h$e */
    public interface e {
        void useCustomCloseChanged(boolean z2);
    }

    /* renamed from: com.sigmob.sdk.mraid.h$f */
    public interface f {
        void a();

        void a(Integer num);

        void a(Map<String, String> map);

        void b();

        void b(Map<String, String> map);

        void c();

        void d();

        void e();

        void f();

        void g();

        void h();
    }

    public C1316h(Context context, BaseAdUnit baseAdUnit, PlacementType placementType) {
        this(context, baseAdUnit, placementType, new C1311c(baseAdUnit, placementType), null, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A() {
        e eVar = this.f37930o;
        if (eVar == null) {
            return;
        }
        eVar.useCustomCloseChanged(this.f37924i);
    }

    private Context w() {
        FrameLayout frameLayout = this.f37919d;
        if (frameLayout == null) {
            return null;
        }
        return frameLayout.getContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int x() {
        return ClientMetadata.getInstance().getScreenOrientation(w());
    }

    private void y() {
        C1311c c1311c = this.f37922g;
        if (c1311c == null || this.f37933r == null) {
            return;
        }
        c1311c.b();
        try {
            this.f37933r.stopLoading();
            this.f37933r.removeAllViews();
            this.f37933r.destroy();
            com.sigmob.sdk.base.utils.w.a(this.f37933r);
        } catch (Exception e2) {
            com.sigmob.sdk.base.utils.k.f(f37912a, "detachMraidWebView: error = " + e2.getMessage(), new Object[0]);
        }
        this.f37933r = null;
    }

    private ViewGroup z() {
        ViewGroup viewGroup = this.f37927l;
        if (viewGroup != null) {
            return viewGroup;
        }
        View viewA = com.sigmob.sdk.base.utils.w.a(w(), this.f37919d);
        ViewGroup viewGroup2 = viewA instanceof ViewGroup ? (ViewGroup) viewA : this.f37919d;
        this.f37927l = viewGroup2;
        return viewGroup2;
    }

    public v g() {
        return this.f37933r;
    }

    public void l() {
        this.f37938w = false;
        v vVar = this.f37933r;
        if (vVar != null) {
            vVar.onResume();
        }
    }

    public void m() {
        this.f37920e.a();
        this.f37930o = null;
        this.f37929n = null;
        Iterator<AbstractC1322n> it = this.f37939x.values().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        try {
            if (com.sigmob.sdk.base.utils.v.b(this.f37934s)) {
                this.f37934s.a();
                this.f37934s = null;
            }
        } catch (Throwable th) {
            com.sigmob.sdk.base.utils.k.f(f37912a, "destroy: error = " + th.getMessage(), new Object[0]);
        }
        try {
            if (com.sigmob.sdk.base.utils.v.b(this.f37913A)) {
                APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = this.f37913A;
                aPKStatusBroadcastReceiver.b(aPKStatusBroadcastReceiver);
                this.f37913A = null;
            }
        } catch (Throwable th2) {
            com.sigmob.sdk.base.utils.k.f(f37912a, "destroy: error = " + th2.getMessage(), new Object[0]);
        }
        if (!this.f37938w) {
            d(true);
        }
        y();
        p();
        this.f37929n = null;
        this.f37932q = null;
        this.f37930o = null;
        this.f37931p = null;
        this.f37920e.a();
        this.f37939x.clear();
        com.sigmob.sdk.base.utils.w.a(this.f37927l);
        this.f37927l = null;
    }

    public void n() {
        ViewState viewState;
        ViewState viewState2;
        if (this.f37933r == null || (viewState = this.f37928m) == ViewState.LOADING || viewState == (viewState2 = ViewState.HIDDEN)) {
            return;
        }
        ViewState viewState3 = ViewState.EXPANDED;
        if (viewState == viewState3 || this.f37917b == PlacementType.INTERSTITIAL) {
            p();
        }
        ViewState viewState4 = this.f37928m;
        if (viewState4 == ViewState.RESIZED || viewState4 == viewState3) {
            this.f37919d.addView(this.f37933r, new FrameLayout.LayoutParams(-1, -1));
            this.f37919d.setVisibility(0);
            b(ViewState.DEFAULT);
        } else if (viewState4 == ViewState.DEFAULT) {
            this.f37919d.setVisibility(4);
            b(viewState2);
        }
    }

    public void o() throws C1314f {
        int iA;
        p pVar = this.f37937v;
        if (pVar != p.NONE) {
            iA = pVar.a();
        } else {
            if (this.f37936u) {
                p();
                return;
            }
            Activity activityC = com.sigmob.sdk.base.utils.w.c(this.f37919d);
            if (activityC == null) {
                throw new C1314f("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
            }
            iA = ClientMetadata.getInstance().getScreenOrientation(activityC);
        }
        b(iA);
    }

    public void p() {
        Integer num;
        try {
            Activity activityC = com.sigmob.sdk.base.utils.w.c(this.f37919d);
            if (activityC != null && (num = this.f37935t) != null) {
                activityC.setRequestedOrientation(num.intValue());
            }
            this.f37935t = null;
        } catch (Exception e2) {
            SigmobLog.e("unApplyOrientation: " + e2.getMessage());
        }
    }

    public FrameLayout q() {
        return this.f37919d;
    }

    @Deprecated
    public ViewState r() {
        return this.f37928m;
    }

    @Deprecated
    public Integer s() {
        return this.f37935t;
    }

    @Deprecated
    public boolean t() {
        return this.f37936u;
    }

    @Deprecated
    public p u() {
        return this.f37937v;
    }

    @Deprecated
    public v v() {
        return this.f37933r;
    }

    public C1316h(Context context, BaseAdUnit baseAdUnit, PlacementType placementType, C1311c c1311c, C1311c c1311c2, d dVar) {
        this.f37924i = false;
        ViewState viewState = ViewState.LOADING;
        this.f37928m = viewState;
        this.f37934s = new c();
        this.f37936u = true;
        this.f37937v = p.NONE;
        this.f37938w = false;
        this.f37939x = new HashMap<>();
        InterfaceC1313e interfaceC1313e = new InterfaceC1313e() { // from class: com.sigmob.sdk.mraid.h.1
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
            @Override // com.sigmob.sdk.mraid.InterfaceC1313e
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void a(java.lang.String r6, org.json.JSONObject r7) {
                /*
                    Method dump skipped, instructions count: 410
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid.C1316h.AnonymousClass1.a(java.lang.String, org.json.JSONObject):void");
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1313e
            public void b(String str, JSONObject jSONObject) {
                AbstractC1322n abstractC1322n;
                String strOptString = jSONObject.optString("uniqueId");
                if (TextUtils.isEmpty(strOptString) || (abstractC1322n = (AbstractC1322n) C1316h.this.f37939x.get(strOptString)) == null || abstractC1322n.a() == null) {
                    return;
                }
                C1316h.this.f37919d.bringChildToFront(C1316h.this.f37933r);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1313e
            public void c(String str, JSONObject jSONObject) {
                AbstractC1322n abstractC1322n;
                View viewA;
                String strOptString = jSONObject.optString("uniqueId");
                if (TextUtils.isEmpty(strOptString) || (abstractC1322n = (AbstractC1322n) C1316h.this.f37939x.get(strOptString)) == null || (viewA = abstractC1322n.a()) == null) {
                    return;
                }
                com.sigmob.sdk.base.utils.w.a(viewA);
                C1316h.this.f37919d.addView(viewA);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1313e
            public void d(String str, JSONObject jSONObject) {
                C1330h c1330h;
                SigmobLog.d("postMessage subEvent data:" + jSONObject);
                String strOptString = jSONObject.optString("uniqueId");
                if (TextUtils.isEmpty(strOptString)) {
                    SigmobLog.e("onMotionViewEvent uniqueId is null:" + jSONObject);
                }
                AbstractC1322n abstractC1322n = (AbstractC1322n) C1316h.this.f37939x.get(strOptString);
                c1330h = abstractC1322n instanceof C1330h ? (C1330h) abstractC1322n : null;
                str.getClass();
                switch (str) {
                    case "init_sensitivity_raw":
                        String strOptString2 = jSONObject.optString("type", "");
                        int iOptInt = jSONObject.optInt(C1315g.f37907d, 0);
                        C1330h c1330h2 = new C1330h(strOptString, strOptString2);
                        c1330h2.a(new InterfaceC1332j() { // from class: com.sigmob.sdk.mraid.h.1.3
                            @Override // com.sigmob.sdk.mraid2.InterfaceC1332j
                            public void a(String str2, String str3, String str4, HashMap<String, Object> map) throws JSONException {
                                if (C1316h.this.f37922g == null) {
                                    return;
                                }
                                C1316h.this.f37922g.a(str2, str3, str4, map);
                            }
                        });
                        c1330h2.b(iOptInt);
                        c1330h2.d();
                        C1316h.this.f37939x.put(strOptString, c1330h2);
                        break;
                    case "init":
                        String strOptString3 = jSONObject.optString("type", "");
                        int iOptInt2 = jSONObject.optInt(C1315g.f37906c, 0);
                        int iOptInt3 = jSONObject.optInt(C1315g.f37909f, 0);
                        int iOptInt4 = jSONObject.optInt(C1315g.f37910g, 0);
                        int iOptInt5 = jSONObject.optInt(C1315g.f37911h, 0);
                        C1330h c1330h3 = new C1330h(strOptString, strOptString3);
                        c1330h3.a(new InterfaceC1332j() { // from class: com.sigmob.sdk.mraid.h.1.2
                            @Override // com.sigmob.sdk.mraid2.InterfaceC1332j
                            public void a(String str2, String str3, String str4, HashMap<String, Object> map) throws JSONException {
                                if (C1316h.this.f37922g == null) {
                                    return;
                                }
                                C1316h.this.f37922g.a(str2, str3, str4, map);
                            }
                        });
                        c1330h3.a(new SensorEntity(iOptInt2, iOptInt3, iOptInt4, iOptInt5));
                        c1330h3.d();
                        C1316h.this.f37939x.put(strOptString, c1330h3);
                        break;
                    case "destroy":
                        if (c1330h != null) {
                            c1330h.b();
                        }
                        C1316h.this.f37939x.remove(strOptString);
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1313e
            public void e(String str, JSONObject jSONObject) {
                C1320l c1320l;
                SigmobLog.d("onMotionViewEvent event:" + str);
                SigmobLog.d("postMessage args:" + jSONObject);
                String strOptString = jSONObject.optString("uniqueId");
                if (TextUtils.isEmpty(strOptString)) {
                    SigmobLog.e("onMotionViewEvent uniqueId is null:" + jSONObject);
                }
                AbstractC1322n abstractC1322n = (AbstractC1322n) C1316h.this.f37939x.get(strOptString);
                c1320l = (com.sigmob.sdk.base.utils.v.b(abstractC1322n) && (abstractC1322n instanceof C1320l)) ? (C1320l) abstractC1322n : null;
                str.getClass();
                switch (str) {
                    case "shakeTimeThreshold":
                        if (c1320l != null) {
                            c1320l.e(jSONObject.optInt(str));
                            break;
                        }
                        break;
                    case "widgetIntervalTime":
                        if (c1320l != null) {
                            c1320l.d(jSONObject.optInt(str));
                            break;
                        }
                        break;
                    case "hidden":
                        if (c1320l != null) {
                            c1320l.a(jSONObject.optBoolean("hidden"));
                            break;
                        }
                        break;
                    case "init":
                        C1320l c1320l2 = new C1320l(com.sigmob.sdk.b.e(), strOptString, jSONObject.optInt("type"), C1316h.this.f37918c);
                        c1320l2.a(new InterfaceC1332j() { // from class: com.sigmob.sdk.mraid.h.1.4
                            @Override // com.sigmob.sdk.mraid2.InterfaceC1332j
                            public void a(String str2, String str3, String str4, HashMap<String, Object> map) throws JSONException {
                                if (C1316h.this.f37922g == null) {
                                    return;
                                }
                                C1316h.this.f37922g.a(str2, str3, str4, map);
                            }
                        });
                        C1316h.this.f37939x.put(strOptString, c1320l2);
                        break;
                    case "frame":
                        if (c1320l != null) {
                            c1320l.a(jSONObject);
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
                            c1320l.a(jSONObject.optInt(str));
                            break;
                        }
                        break;
                    case "destroy":
                        if (c1320l != null) {
                            c1320l.b();
                        }
                        C1316h.this.f37939x.remove(strOptString);
                        break;
                    case "sensitivity_raw":
                        if (c1320l != null) {
                            c1320l.b(jSONObject.optInt(str));
                            break;
                        }
                        break;
                    case "shakeTriggerType":
                        if (c1320l != null) {
                            c1320l.c(jSONObject.optInt(str));
                            break;
                        }
                        break;
                }
            }
        };
        this.f37940y = interfaceC1313e;
        InterfaceC1312d interfaceC1312d = new InterfaceC1312d() { // from class: com.sigmob.sdk.mraid.h.2
            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a() {
                C1316h.this.k();
                if (C1316h.this.f37929n != null) {
                    C1316h.this.f37929n.a(C1316h.this.f37919d);
                }
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void b() {
                C1316h.this.j();
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void c() {
                if (C1316h.this.f37929n != null) {
                    C1316h.this.f37929n.e();
                }
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void d() {
                C1316h.this.n();
                C1316h.this.f37929n.h();
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void e() {
                if (C1316h.this.f37929n != null) {
                    C1316h.this.f37929n.f();
                }
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void f() {
                if (C1316h.this.f37929n != null) {
                    C1316h.this.f37929n.g();
                }
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void g() {
                if (C1316h.this.f37929n != null) {
                    C1316h.this.f37929n.c();
                }
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(int i2, int i3, int i4, int i5, C1310b.a aVar, boolean z2) {
                if (C1316h.this.f37929n != null) {
                    C1316h.this.f37929n.a(i2, i3, i4, i5, aVar, z2);
                }
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void b(String str, Map<String, String> map) {
                C1316h.this.a(str, map);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(WindAdError windAdError) {
                C1316h.this.a(windAdError);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void b(boolean z2) {
                C1316h.this.e(z2);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(String str, Map<String, String> map) {
                C1316h.this.b(str, map);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(URI uri) {
                C1316h.this.a(uri.toString());
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(URI uri, int i2, String str) {
                C1316h.this.a(uri, i2, str);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(URI uri, boolean z2) throws C1314f {
                C1316h.this.a(uri, z2);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(boolean z2) {
                C1316h.this.f37922g.a(z2);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public void a(boolean z2, p pVar) throws C1314f {
                C1316h.this.a(z2, pVar);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public boolean a(ConsoleMessage consoleMessage) {
                return C1316h.this.a(consoleMessage);
            }

            @Override // com.sigmob.sdk.mraid.InterfaceC1312d
            public boolean a(String str, JsResult jsResult) {
                return C1316h.this.a(str, jsResult);
            }
        };
        this.f37941z = interfaceC1312d;
        Preconditions.checkNotNull(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f37919d = frameLayout;
        this.f37918c = baseAdUnit;
        this.f37917b = placementType;
        this.f37922g = c1311c;
        this.f37920e = dVar;
        this.f37928m = viewState;
        this.f37921f = new q(context, context.getResources().getDisplayMetrics().density);
        frameLayout.setBackgroundColor(0);
        new View(context).setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.mraid.F
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C1316h.a(view, motionEvent);
            }
        });
        this.f37934s.a(context);
        c1311c.a(interfaceC1312d);
        c1311c.a(interfaceC1313e);
        this.f37923h = new C1321m();
    }

    private float a(String str, float f2) {
        if (TextUtils.isEmpty(str)) {
            return f2;
        }
        try {
            return Float.parseFloat(str);
        } catch (Throwable unused) {
            return f2;
        }
    }

    public void b() {
        this.f37938w = true;
        this.f37922g.a(false);
    }

    public void c() {
        v vVar = this.f37933r;
        if (vVar != null) {
            vVar.resumeTimers();
        }
        if (this.f37938w) {
            this.f37922g.a(true);
        }
        this.f37938w = false;
    }

    public void d() {
        this.f37922g.a(new ExposureChange(100.0f, new Rect(0, 0, z().getWidth(), z().getHeight()), null));
    }

    public C1311c e() {
        return this.f37922g;
    }

    public Integer f() {
        Integer num = this.f37925j;
        if (num != null) {
            return num;
        }
        this.f37922g.b(new ValueCallback() { // from class: com.sigmob.sdk.mraid.H
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                this.f37851a.c((String) obj);
            }
        });
        return 0;
    }

    public boolean h() {
        Activity activityC = com.sigmob.sdk.base.utils.w.c(this.f37919d);
        if (activityC == null || g() == null) {
            return false;
        }
        if (this.f37917b != PlacementType.INLINE) {
            return true;
        }
        return this.f37923h.a(activityC, g());
    }

    public void i() {
        Context contextW = w();
        if (contextW == null) {
            return;
        }
        String str = ClientMetadata.getInstance().getOrientationInt().intValue() == 1 ? "portrait" : "landscape";
        DisplayMetrics displayMetrics = contextW.getResources().getDisplayMetrics();
        C1256g c1256g = this.f37915C;
        if (c1256g == null) {
            this.f37921f.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
        } else {
            this.f37921f.a(c1256g.a(), this.f37915C.b());
        }
        ViewGroup viewGroupZ = z();
        int measuredWidth = viewGroupZ.getMeasuredWidth();
        int measuredHeight = viewGroupZ.getMeasuredHeight();
        this.f37921f.a(0, 0, measuredWidth, measuredHeight);
        this.f37921f.c(0, 0, measuredWidth, measuredHeight);
        this.f37921f.b(0, 0, measuredWidth, measuredHeight);
        this.f37922g.a(new CurrentAppOrientation(str, true));
        this.f37922g.a(this.f37921f);
    }

    @SuppressLint({"JavascriptInterface"})
    public void j() {
        final Context contextW = w();
        if (contextW == null) {
            return;
        }
        WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.mraid.E
            @Override // java.lang.Runnable
            public final void run() {
                this.f37848b.a(contextW);
            }
        });
    }

    @SuppressLint({"JavascriptInterface"})
    public void k() {
        try {
            this.f37914B = true;
            i();
            b(ViewState.DEFAULT);
            d();
            this.f37922g.e();
            this.f37922g.a(true);
            try {
                this.f37922g.j();
                o();
                DeviceContext deviceContextB = com.sigmob.sdk.b.b();
                this.f37922g.a(deviceContextB == null ? ClientMetadata.getInstance().getLocation() : deviceContextB.getLocation());
            } catch (Throwable unused) {
                SigmobLog.e("Failed to apply orientation.");
            }
        } catch (Throwable th) {
            SigmobLog.e("handlePageLoad error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        Float fValueOf;
        try {
            if (str.equalsIgnoreCase("null") || str.equalsIgnoreCase("undefined") || (fValueOf = Float.valueOf(str)) == null || fValueOf.floatValue() <= 1.0E-5d) {
                return;
            }
            Integer numValueOf = Integer.valueOf((int) (fValueOf.floatValue() * 1000.0f));
            this.f37925j = numValueOf;
            f fVar = this.f37932q;
            if (fVar != null) {
                fVar.a(numValueOf);
            }
        } catch (Throwable unused) {
        }
    }

    public int a(int i2, int i3, int i4) {
        return Math.max(i2, Math.min(i3, i4));
    }

    public void b(int i2) throws C1314f {
        Activity activityC = com.sigmob.sdk.base.utils.w.c(this.f37919d);
        if (activityC == null || !a(this.f37937v)) {
            throw new C1314f("Attempted to lock orientation to unsupported value: " + this.f37937v.name());
        }
        if (this.f37935t == null) {
            this.f37935t = Integer.valueOf(activityC.getRequestedOrientation());
        }
        try {
            activityC.setRequestedOrientation(i2);
        } catch (Exception e2) {
            SigmobLog.e("lockOrientation: " + e2.getMessage());
        }
    }

    public void d(boolean z2) {
        this.f37938w = true;
        v vVar = this.f37933r;
        if (vVar != null) {
            vVar.b(z2);
        }
    }

    public void e(boolean z2) {
        this.f37924i = z2;
        e eVar = this.f37930o;
        if (eVar == null) {
            return;
        }
        eVar.useCustomCloseChanged(z2);
    }

    private void b(ViewState viewState) {
        SigmobLog.d("MRAID state set to " + viewState);
        ViewState viewState2 = this.f37928m;
        this.f37928m = viewState;
        this.f37922g.a(viewState);
        a aVar = this.f37929n;
        if (aVar != null) {
            a(aVar, viewState2, viewState);
        }
        SigmobLog.d("setViewState state set to " + viewState);
        a((Runnable) null);
    }

    public void c(boolean z2) {
        if (z2) {
            this.f37922g.i();
        }
    }

    public String a() {
        return this.f37922g.a();
    }

    public void a(int i2) {
        SigmobLog.i("handleOrientationChange " + i2);
        a((Runnable) null);
    }

    public void b(String str) {
        this.f37922g.c(str);
    }

    @Deprecated
    public void a(int i2, int i3) {
        this.f37921f.a(0, 0, i2, i3);
    }

    public void b(String str, b bVar) {
        v vVar = new v(w());
        this.f37933r = vVar;
        vVar.a(true);
        this.f37933r.setBackgroundColor(0);
        if (bVar != null) {
            bVar.onReady(this.f37933r, (C1282v) this.f37918c.getSessionManager());
        }
        this.f37922g.a(this.f37933r);
        this.f37919d.addView(this.f37933r, new FrameLayout.LayoutParams(-1, -1));
        this.f37922g.b(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, Map<String, String> map) {
        if (this.f37932q == null) {
            return;
        }
        str.getClass();
        switch (str) {
            case "AdPaused":
                this.f37932q.b();
                break;
            case "AdImpression":
                this.f37932q.a();
                break;
            case "AdVideoThirdQuartile":
                this.f37932q.f();
                break;
            case "AdVideoMidpoint":
                this.f37932q.g();
                break;
            case "AdVideoComplete":
                this.f37932q.d();
                break;
            case "AdVideoFirstQuartile":
                this.f37932q.e();
                break;
            case "AdError":
                this.f37932q.b(map);
                break;
            case "AdVideoStart":
                this.f37932q.h();
                break;
            case "AdClickThru":
                this.f37932q.a(map);
                break;
            case "AdPlaying":
                this.f37932q.c();
                break;
        }
    }

    public void a(int i2, int i3, int i4, int i5, C1310b.a aVar, boolean z2) throws C1314f {
    }

    public void a(Activity activity) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid.G
            @Override // java.lang.Runnable
            public final void run() {
                this.f37850b.A();
            }
        }, 5000);
    }

    public void b(boolean z2) {
        if (z2) {
            this.f37922g.h();
        } else {
            this.f37922g.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        try {
            this.f37922g.a(new MraidEnv());
            this.f37922g.a(this.f37923h.b(context), this.f37923h.a(context), C1321m.d(context), C1321m.c(context), h(), true, true);
            this.f37922g.a(this.f37917b);
            this.f37922g.a(this.f37918c.getRvAdSetting());
            WindowInsets windowInsets = this.f37916D;
            if (windowInsets != null) {
                com.sigmob.sdk.base.utils.l lVarA = C1383c.a(windowInsets);
                this.f37922g.a(lVarA.a(), lVarA.b(), lVarA.c(), lVarA.d());
            }
            if (!TextUtils.isEmpty(this.f37918c.getVideo_url())) {
                String proxyVideoUrl = this.f37918c.getProxyVideoUrl();
                this.f37922g.a(this.f37918c.getMaterial().video_size != null ? new VideoItem(proxyVideoUrl, this.f37918c.getMaterial().video_size.width.intValue(), this.f37918c.getMaterial().video_size.height.intValue()) : new VideoItem(proxyVideoUrl, 0, 0));
                f();
            }
            MaterialMeta.Builder builderNewBuilder = this.f37918c.getMaterial().newBuilder();
            if (!this.f37918c.getMaterial().has_companion_endcard.booleanValue()) {
                builderNewBuilder.companion(null);
            }
            this.f37922g.a(builderNewBuilder.html_snippet(null).html_url(null).deeplink_url(null).landing_page(null).web_event_handle(null).endcard_url(null).build());
            this.f37922g.a(this.f37918c.getAd().newBuilder().materials(new LinkedList()).ad_tracking(new LinkedList()).build(), this.f37918c.getSlotAdSetting());
        } catch (Throwable th) {
            SigmobLog.e("handleMraidLoad", th);
        }
        if (this.f37914B) {
            k();
        }
    }

    public void a(WindowInsets windowInsets) {
        this.f37916D = windowInsets;
        SigmobLog.d("updateWindowInsets " + windowInsets);
        if (this.f37914B) {
            com.sigmob.sdk.base.utils.l lVarA = C1383c.a(windowInsets);
            C1311c c1311c = this.f37922g;
            if (c1311c == null) {
                return;
            }
            c1311c.a(lVarA.a(), lVarA.b(), lVarA.c(), lVarA.d());
        }
    }

    public void a(ValueCallback valueCallback) {
        this.f37922g.a(valueCallback);
    }

    public void a(C1256g c1256g) {
        this.f37915C = c1256g;
    }

    @Deprecated
    public void a(ViewState viewState) {
        this.f37928m = viewState;
    }

    public void a(a aVar) {
        this.f37929n = aVar;
    }

    public static void a(a aVar, ViewState viewState, ViewState viewState2) {
        Preconditions.checkNotNull(aVar);
        Preconditions.checkNotNull(viewState);
        Preconditions.checkNotNull(viewState2);
    }

    @Deprecated
    public void a(c cVar) {
        this.f37934s = cVar;
    }

    public void a(e eVar) {
        this.f37930o = eVar;
    }

    public void a(f fVar) {
        this.f37932q = fVar;
    }

    public void a(x xVar) {
        this.f37931p = xVar;
    }

    public void a(WindAdError windAdError) {
        a aVar = this.f37929n;
        if (aVar == null) {
            return;
        }
        aVar.a(windAdError);
    }

    private void a(Runnable runnable) {
        this.f37920e.a();
        Context contextW = w();
        v vVarG = g();
        if (contextW == null || vVarG == null || this.f37938w) {
            return;
        }
        DisplayMetrics displayMetrics = contextW.getResources().getDisplayMetrics();
        C1256g c1256g = this.f37915C;
        if (c1256g == null) {
            this.f37921f.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
        } else {
            this.f37921f.a(c1256g.a(), this.f37915C.b());
        }
        int[] iArr = new int[2];
        ViewGroup viewGroupZ = z();
        viewGroupZ.getLocationOnScreen(iArr);
        this.f37921f.a(iArr[0], iArr[1], viewGroupZ.getWidth(), viewGroupZ.getHeight());
        this.f37921f.c(iArr[0], iArr[1], viewGroupZ.getWidth(), viewGroupZ.getHeight());
        vVarG.getLocationOnScreen(iArr);
        this.f37921f.b(iArr[0], iArr[1], vVarG.getWidth(), vVarG.getHeight());
        this.f37922g.a(new CurrentAppOrientation(ClientMetadata.getInstance().getOrientationInt().intValue() == 1 ? "portrait" : "landscape", true));
        this.f37922g.a(this.f37921f);
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(String str) {
    }

    public void a(String str, b bVar) {
        v vVar = new v(w());
        this.f37933r = vVar;
        vVar.a(true);
        this.f37933r.setBackgroundColor(0);
        if (bVar != null) {
            bVar.onReady(this.f37933r, (C1282v) this.f37918c.getSessionManager());
        }
        this.f37922g.a(this.f37933r);
        this.f37919d.addView(this.f37933r, new FrameLayout.LayoutParams(-1, -1));
        this.f37922g.a(w(), str);
    }

    public void a(String str, String str2) {
        this.f37922g.a(str, str2);
    }

    public void a(String str, String str2, String str3, HashMap<String, Object> map) throws JSONException {
        this.f37922g.a(str, str2, str3, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11) {
        /*
            r9 = this;
            com.sigmob.sdk.mraid.h$a r0 = r9.f37929n
            if (r0 != 0) goto L6
            goto Lc5
        L6:
            java.lang.String r0 = "ext"
            java.lang.Object r0 = r11.get(r0)     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r0 = com.sigmob.sdk.mraid.C1311c.a(r0)     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = "ctime"
            java.lang.Object r1 = r11.get(r1)     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = com.sigmob.sdk.mraid.C1311c.a(r1)     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r2 = "state"
            java.lang.Object r11 = r11.get(r2)     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r11 = (java.lang.String) r11     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r11 = com.sigmob.sdk.mraid.C1311c.a(r11)     // Catch: java.lang.Throwable -> Lc5
            int r2 = r10.hashCode()     // Catch: java.lang.Throwable -> Lc5
            r3 = 3
            r4 = 4
            r5 = 0
            r6 = 2
            r7 = 5
            r8 = 1
            switch(r2) {
                case -1610203128: goto L6a;
                case -1102513700: goto L60;
                case -934326481: goto L56;
                case -900560382: goto L4c;
                case 112386354: goto L42;
                case 1293469449: goto L38;
                default: goto L37;
            }     // Catch: java.lang.Throwable -> Lc5
        L37:
            goto L74
        L38:
            java.lang.String r2 = "showSkipTime"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto L74
            r10 = r7
            goto L75
        L42:
            java.lang.String r2 = "voice"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto L74
            r10 = r6
            goto L75
        L4c:
            java.lang.String r2 = "skipAd"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto L74
            r10 = r5
            goto L75
        L56:
            java.lang.String r2 = "reward"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto L74
            r10 = r8
            goto L75
        L60:
            java.lang.String r2 = "companionClick"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto L74
            r10 = r4
            goto L75
        L6a:
            java.lang.String r2 = "endcardShow"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto L74
            r10 = r3
            goto L75
        L74:
            r10 = -1
        L75:
            r2 = 0
            if (r10 == 0) goto Lbc
            if (r10 == r8) goto Lb2
            if (r10 == r6) goto L95
            if (r10 == r3) goto L8f
            if (r10 == r4) goto L89
            if (r10 == r7) goto L83
            goto Lc5
        L83:
            com.sigmob.sdk.mraid.h$a r10 = r9.f37929n     // Catch: java.lang.Throwable -> Lc5
            r10.b()     // Catch: java.lang.Throwable -> Lc5
            return
        L89:
            com.sigmob.sdk.mraid.h$a r10 = r9.f37929n     // Catch: java.lang.Throwable -> Lc5
            r10.a(r0)     // Catch: java.lang.Throwable -> Lc5
            return
        L8f:
            com.sigmob.sdk.mraid.h$a r10 = r9.f37929n     // Catch: java.lang.Throwable -> Lc5
            r10.a()     // Catch: java.lang.Throwable -> Lc5
            return
        L95:
            boolean r10 = com.sigmob.sdk.base.utils.v.b(r11)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto Lc5
            java.lang.String r10 = "true"
            boolean r10 = r11.equalsIgnoreCase(r10)     // Catch: java.lang.Throwable -> Lc5
            if (r10 != 0) goto Lab
            java.lang.String r10 = "1"
            boolean r10 = r11.equalsIgnoreCase(r10)     // Catch: java.lang.Throwable -> Lc5
            if (r10 == 0) goto Lac
        Lab:
            r5 = r8
        Lac:
            com.sigmob.sdk.mraid.h$a r10 = r9.f37929n     // Catch: java.lang.Throwable -> Lc5
            r10.a(r5)     // Catch: java.lang.Throwable -> Lc5
            return
        Lb2:
            float r10 = r9.a(r1, r2)     // Catch: java.lang.Throwable -> Lc5
            com.sigmob.sdk.mraid.h$a r11 = r9.f37929n     // Catch: java.lang.Throwable -> Lc5
            r11.a(r10)     // Catch: java.lang.Throwable -> Lc5
            return
        Lbc:
            float r10 = r9.a(r1, r2)     // Catch: java.lang.Throwable -> Lc5
            com.sigmob.sdk.mraid.h$a r11 = r9.f37929n     // Catch: java.lang.Throwable -> Lc5
            r11.b(r10)     // Catch: java.lang.Throwable -> Lc5
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid.C1316h.a(java.lang.String, java.util.Map):void");
    }

    public void a(URI uri, int i2, String str) {
        a aVar = this.f37929n;
        if (aVar == null) {
            return;
        }
        aVar.a(uri, i2, str);
    }

    public void a(URI uri, boolean z2) throws C1314f {
    }

    public void a(boolean z2) {
        if (z2) {
            this.f37922g.f();
        } else {
            this.f37922g.g();
        }
    }

    public void a(boolean z2, p pVar) throws C1314f {
        if (!a(pVar)) {
            throw new C1314f("Unable to force orientation to " + pVar);
        }
        this.f37936u = z2;
        this.f37937v = pVar;
        if (this.f37928m == ViewState.EXPANDED || (this.f37917b == PlacementType.INTERSTITIAL && !this.f37938w)) {
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    public boolean a(ConsoleMessage consoleMessage) {
        x xVar = this.f37931p;
        if (xVar == null) {
            return true;
        }
        return xVar.a(consoleMessage);
    }

    public boolean a(p pVar) {
        if (pVar == p.NONE) {
            return true;
        }
        Activity activityC = com.sigmob.sdk.base.utils.w.c(this.f37919d);
        if (activityC == null) {
            return false;
        }
        try {
            int i2 = activityC.getPackageManager().getActivityInfo(new ComponentName(activityC, activityC.getClass()), 0).screenOrientation;
            return i2 == -1 || i2 == pVar.a();
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public boolean a(String str, JsResult jsResult) {
        x xVar = this.f37931p;
        if (xVar != null) {
            return xVar.a(str, jsResult);
        }
        jsResult.confirm();
        return true;
    }
}
