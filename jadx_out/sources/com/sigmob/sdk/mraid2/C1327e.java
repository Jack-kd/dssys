package com.sigmob.sdk.mraid2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1256g;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.mraid2.C1327e;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.WindAdError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid2.e, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1327e {

    /* renamed from: a, reason: collision with root package name */
    private final FrameLayout f38174a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f38175b = false;

    /* renamed from: c, reason: collision with root package name */
    private InterfaceC1335m f38176c;

    /* renamed from: d, reason: collision with root package name */
    private C1325c f38177d;

    /* renamed from: e, reason: collision with root package name */
    private LinearLayout f38178e;

    /* renamed from: f, reason: collision with root package name */
    private InterfaceC1337o f38179f;

    /* renamed from: g, reason: collision with root package name */
    private a f38180g;

    /* renamed from: h, reason: collision with root package name */
    private final List<C1325c> f38181h;

    /* renamed from: i, reason: collision with root package name */
    private final List<BaseAdUnit> f38182i;

    /* renamed from: j, reason: collision with root package name */
    private C1256g f38183j;

    /* renamed from: k, reason: collision with root package name */
    private WindowInsets f38184k;

    /* renamed from: l, reason: collision with root package name */
    private final Handler f38185l;

    /* renamed from: m, reason: collision with root package name */
    private final InterfaceC1341t f38186m;

    /* renamed from: com.sigmob.sdk.mraid2.e$2, reason: invalid class name */
    public class AnonymousClass2 implements InterfaceC1341t {
        public AnonymousClass2() {
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1341t
        public LinearLayout a(C1325c c1325c, int i2) {
            if (C1327e.this.f38178e == null) {
                C1327e.this.f38178e = new LinearLayout(C1327e.this.f());
            }
            if (C1327e.this.f38179f == null) {
                if (i2 == 1) {
                    C1327e.this.f38179f = new C1334l(C1327e.this.f());
                    C1327e.this.f38178e.setOrientation(0);
                } else {
                    C1327e.this.f38179f = new r(C1327e.this.f());
                    C1327e.this.f38178e.setOrientation(1);
                }
                C1327e.this.f38179f.setPageChangedListener(new InterfaceC1342u() { // from class: com.sigmob.sdk.mraid2.K
                    @Override // com.sigmob.sdk.mraid2.InterfaceC1342u
                    public final void onPageChanged(C1325c c1325c2, int i3, int i4) throws JSONException {
                        C1327e.AnonymousClass2.a(c1325c2, i3, i4);
                    }
                });
                C1327e.this.f38179f.getView().addView(C1327e.this.f38178e, new ViewGroup.LayoutParams(-1, -1));
                C1327e.this.f38174a.addView(C1327e.this.f38179f.getView(), 0, new ViewGroup.LayoutParams(-1, -1));
            }
            if (c1325c != null && c1325c.getScrollTouchListener() == null) {
                c1325c.setScrollTouchListener(new InterfaceC1343v() { // from class: com.sigmob.sdk.mraid2.e.2.1
                    @Override // com.sigmob.sdk.mraid2.InterfaceC1343v
                    public void a(C1325c c1325c2, JSONObject jSONObject) {
                        if (C1327e.this.f38179f == null) {
                            return;
                        }
                        C1327e.this.f38179f.a(c1325c2, Dips.asIntPixels(jSONObject.optInt("x"), C1327e.this.f()), Dips.asIntPixels(jSONObject.optInt("y"), C1327e.this.f()));
                    }

                    @Override // com.sigmob.sdk.mraid2.InterfaceC1343v
                    public void b(JSONObject jSONObject) {
                        if (C1327e.this.f38179f == null) {
                            return;
                        }
                        C1327e.this.f38179f.b(Dips.asIntPixels(jSONObject.optInt("x"), C1327e.this.f()), Dips.asIntPixels(jSONObject.optInt("y"), C1327e.this.f()));
                    }

                    @Override // com.sigmob.sdk.mraid2.InterfaceC1343v
                    public void a(JSONObject jSONObject) {
                        if (C1327e.this.f38179f == null) {
                            return;
                        }
                        C1327e.this.f38179f.a(Dips.asIntPixels(jSONObject.optInt("x"), C1327e.this.f()), Dips.asIntPixels(jSONObject.optInt("y"), C1327e.this.f()));
                    }
                });
            }
            return C1327e.this.f38178e;
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1341t
        public C1325c a(C1325c c1325c, JSONObject jSONObject) {
            C1327e c1327e = C1327e.this;
            C1325c c1325cA = c1327e.a(c1327e.f(), c1325c, jSONObject);
            C1327e.this.f38181h.add(c1325cA);
            return c1325cA;
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1341t
        public void b(C1325c c1325c) {
            if (C1327e.this.f38176c == null) {
                return;
            }
            C1327e.this.f38176c.c();
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1341t
        public void a() {
            if (C1327e.this.f38176c == null) {
                return;
            }
            C1327e.this.f38176c.d();
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1341t
        public void b(C1325c c1325c, JSONObject jSONObject) {
            C1327e.this.f38175b = jSONObject.optBoolean("flag");
            if (C1327e.this.f38176c == null) {
                return;
            }
            C1327e.this.f38176c.a(C1327e.this.f38175b);
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1341t
        public void a(C1325c c1325c) {
            if (C1327e.this.f38176c != null) {
                C1327e.this.f38176c.b();
            }
            if (C1327e.this.f38181h.isEmpty()) {
                return;
            }
            for (int i2 = 0; i2 < C1327e.this.f38181h.size(); i2++) {
                ((C1325c) C1327e.this.f38181h.get(i2)).b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(C1325c c1325c, int i2, int i3) throws JSONException {
            C1326d mraidBridge;
            if (c1325c == null || (mraidBridge = c1325c.getMraidBridge()) == null) {
                return;
            }
            mraidBridge.a(i2, i3);
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1341t
        public void a(C1325c c1325c, BaseAdUnit baseAdUnit, JSONObject jSONObject) {
            if (C1327e.this.f38176c == null) {
                return;
            }
            C1327e.this.f38176c.a(c1325c, baseAdUnit, jSONObject);
        }
    }

    /* renamed from: com.sigmob.sdk.mraid2.e$a */
    public class a extends BroadcastReceiver {

        /* renamed from: b, reason: collision with root package name */
        private Context f38191b;

        /* renamed from: c, reason: collision with root package name */
        private int f38192c = -1;

        public a() {
        }

        public void a() {
            Context context = this.f38191b;
            if (context == null) {
                return;
            }
            context.unregisterReceiver(this);
            this.f38191b = null;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws JSONException {
            int screenOrientation;
            if (this.f38191b == null || !"android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) || (screenOrientation = ClientMetadata.getInstance().getScreenOrientation(C1327e.this.f())) == this.f38192c) {
                return;
            }
            this.f38192c = screenOrientation;
            C1327e.this.a(screenOrientation);
        }

        public void a(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f38191b = applicationContext;
            if (applicationContext == null) {
                return;
            }
            com.sigmob.sdk.base.utils.h.a(applicationContext, this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
    }

    public C1327e(Context context, List<BaseAdUnit> list) {
        ArrayList arrayList = new ArrayList();
        this.f38181h = arrayList;
        this.f38185l = new Handler(Looper.getMainLooper());
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.f38186m = anonymousClass2;
        Preconditions.checkNotNull(context);
        this.f38182i = list;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f38174a = frameLayout;
        frameLayout.setBackgroundColor(0);
        a aVar = new a();
        this.f38180g = aVar;
        aVar.a(context);
        C1325c c1325c = new C1325c(context, list, frameLayout);
        this.f38177d = c1325c;
        c1325c.setLoadListener(new InterfaceC1323a() { // from class: com.sigmob.sdk.mraid2.e.1
            @Override // com.sigmob.sdk.mraid2.InterfaceC1323a
            public void a(C1325c c1325c2) {
                if (C1327e.this.f38176c == null) {
                    return;
                }
                try {
                    C1327e.this.f38176c.a(C1327e.this.f38177d);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1323a
            public void a(WindAdError windAdError) {
                if (C1327e.this.f38176c == null) {
                    return;
                }
                try {
                    C1327e.this.f38176c.a(windAdError);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        this.f38177d.setNextWebViewListener(anonymousClass2);
        arrayList.clear();
        arrayList.add(this.f38177d);
        frameLayout.addView(this.f38177d, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context f() {
        FrameLayout frameLayout = this.f38174a;
        if (frameLayout == null) {
            return null;
        }
        return frameLayout.getContext();
    }

    public FrameLayout e() {
        return this.f38174a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C1325c a(Context context, C1325c c1325c, JSONObject jSONObject) {
        C1325c c1325c2 = new C1325c(context, this.f38182i, this.f38174a, c1325c, jSONObject);
        c1325c2.setAdSize(this.f38183j);
        c1325c2.setNextWebViewListener(this.f38186m);
        return c1325c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        SigmobLog.d("onShow end");
        InterfaceC1335m interfaceC1335m = this.f38176c;
        if (interfaceC1335m == null) {
            return;
        }
        interfaceC1335m.a(this.f38175b);
    }

    public void b() {
        if (com.sigmob.sdk.base.utils.f.a(this.f38181h)) {
            return;
        }
        for (int i2 = 0; i2 < this.f38181h.size(); i2++) {
            C1325c c1325c = this.f38181h.get(i2);
            c1325c.l();
            C1326d mraidBridge = c1325c.getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.a(true);
            }
        }
    }

    public C1325c c() {
        return this.f38177d;
    }

    public void d() {
        a aVar = this.f38180g;
        if (aVar != null) {
            aVar.a();
            this.f38180g = null;
        }
        try {
            Iterator<C1325c> it = this.f38181h.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            this.f38181h.clear();
            this.f38177d = null;
            this.f38176c = null;
        } catch (Throwable unused) {
        }
        this.f38185l.removeCallbacksAndMessages(null);
    }

    public void a() {
        if (com.sigmob.sdk.base.utils.f.a(this.f38181h)) {
            return;
        }
        for (int i2 = 0; i2 < this.f38181h.size(); i2++) {
            C1326d mraidBridge = this.f38181h.get(i2).getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.a(false);
            }
        }
    }

    public void a(int i2) throws JSONException {
        SigmobLog.i("handleOrientationChange " + i2);
        if (com.sigmob.sdk.base.utils.f.a(this.f38181h)) {
            return;
        }
        for (int i3 = 0; i3 < this.f38181h.size(); i3++) {
            C1326d mraidBridge = this.f38181h.get(i3).getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.e();
                mraidBridge.a(this.f38183j);
            }
        }
    }

    public void a(WindowInsets windowInsets, boolean z2) {
        this.f38184k = windowInsets;
        SigmobLog.d("updateWindowInsets " + windowInsets);
        if (!z2 || com.sigmob.sdk.base.utils.f.a(this.f38181h)) {
            return;
        }
        com.sigmob.sdk.base.utils.l lVarA = C1383c.a(windowInsets);
        for (int i2 = 0; i2 < this.f38181h.size(); i2++) {
            C1326d mraidBridge = this.f38181h.get(i2).getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.a(lVarA.a(), lVarA.b(), lVarA.c(), lVarA.d());
            }
        }
    }

    public void a(C1256g c1256g) {
        this.f38183j = c1256g;
        this.f38177d.setAdSize(c1256g);
        this.f38177d.a();
    }

    public void a(BaseAdUnit baseAdUnit) {
        SigmobLog.d("onShow start");
        this.f38185l.postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid2.J
            @Override // java.lang.Runnable
            public final void run() {
                this.f38096b.g();
            }
        }, 5 * 1000);
    }

    public void a(InterfaceC1328f interfaceC1328f) {
        this.f38177d.getMraidBridge().a(interfaceC1328f);
    }

    public void a(InterfaceC1335m interfaceC1335m) {
        this.f38176c = interfaceC1335m;
    }
}
