package com.ubix.ssp.ad.j;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.ubix.ssp.ad.a;
import com.ubix.ssp.ad.e.a0.b0.a;
import com.ubix.ssp.ad.e.a0.g;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.ad.e.z.h;
import com.ubix.ssp.ad.g.k.i;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public class b extends com.ubix.ssp.ad.k.b implements i {

    /* renamed from: Z, reason: collision with root package name */
    public static final String f48312Z = "b";

    /* renamed from: a0, reason: collision with root package name */
    private com.ubix.ssp.ad.g.i f48313a0;

    /* renamed from: b0, reason: collision with root package name */
    private Context f48314b0;

    /* renamed from: c0, reason: collision with root package name */
    private com.ubix.ssp.ad.b f48315c0;

    /* renamed from: d0, reason: collision with root package name */
    private int f48316d0;

    /* renamed from: e0, reason: collision with root package name */
    private int f48317e0;

    /* renamed from: f0, reason: collision with root package name */
    private volatile boolean f48318f0;

    /* renamed from: g0, reason: collision with root package name */
    private volatile boolean f48319g0;

    /* renamed from: h0, reason: collision with root package name */
    private AtomicInteger f48320h0;

    /* renamed from: i0, reason: collision with root package name */
    private com.ubix.ssp.ad.e.a0.g f48321i0;

    /* renamed from: j0, reason: collision with root package name */
    private transient boolean f48322j0;

    /* renamed from: k0, reason: collision with root package name */
    private int f48323k0;

    /* renamed from: l0, reason: collision with root package name */
    private long f48324l0;

    /* renamed from: m0, reason: collision with root package name */
    private boolean f48325m0;

    /* renamed from: n0, reason: collision with root package name */
    private HashMap<String, String> f48326n0;

    /* renamed from: o0, reason: collision with root package name */
    private boolean f48327o0;

    public class a implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f48328a;

        public a(boolean z2) {
            this.f48328a = z2;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            if (this.f48328a) {
                b.this.q(0);
            }
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            if (this.f48328a) {
                b.this.a(0, adError);
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.j.b$b, reason: collision with other inner class name */
    public class C0848b implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f48330a;

        public C0848b(boolean z2) {
            this.f48330a = z2;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            if (this.f48330a) {
                b.this.q(0);
            }
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            u.a("onFailure " + adError.getErrorMessage());
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.a(((com.ubix.ssp.ad.a) b.this).f45539c, "ubix_sp_gold", "dc" + ((com.ubix.ssp.ad.a) b.this).f45540d, ((com.ubix.ssp.ad.a) b.this).f45538B);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f48333a;

        public d(HashMap map) {
            this.f48333a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (b.this.f48320h0.decrementAndGet() == 0) {
                    this.f48333a.put("__CLICK_AREA__", "14");
                    this.f48333a.put("__CLICK_TRIGGER__", "14");
                    this.f48333a.put("__CLICK_UNREAL_TRIGGER__", "14");
                }
                b bVar = b.this;
                bVar.a(((com.ubix.ssp.ad.k.b) bVar).f48423F, b.this.f48315c0, ((com.ubix.ssp.ad.k.b) b.this).f48431N, (HashMap<String, String>) this.f48333a);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.a(((com.ubix.ssp.ad.a) b.this).f45539c, "ubix_sp_gold", "lsat" + ((com.ubix.ssp.ad.a) b.this).f45540d, System.currentTimeMillis());
            u.e("set lsat by CLICK_TRIGGER_AREA_OOPS_CLICK");
        }
    }

    public class f implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ long[] f48336a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f48337b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ float[] f48338c;

        public f(long[] jArr, int i2, float[] fArr) {
            this.f48336a = jArr;
            this.f48337b = i2;
            this.f48338c = fArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (b.this.f48315c0 != null && b.this.f48315c0.getRootView() != null) {
                    long[] jArr = this.f48336a;
                    long j2 = jArr[0] + 5 + this.f48337b;
                    jArr[0] = j2;
                    long jCurrentTimeMillis = this.f48337b + System.currentTimeMillis();
                    float[] fArr = this.f48338c;
                    MotionEvent motionEventObtain = MotionEvent.obtain(j2 + j2, jCurrentTimeMillis, 1, fArr[0], fArr[1], 0);
                    b.this.f48315c0.getRootView().dispatchTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                b.this.f48320h0.incrementAndGet();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class g implements g.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f48340a;

        public g(HashMap map) {
            this.f48340a = map;
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a() {
            u.e("1111 onFinish");
            try {
                b bVar = b.this;
                bVar.a(((com.ubix.ssp.ad.k.b) bVar).f48423F, 1, (HashMap<String, String>) this.f48340a, ((com.ubix.ssp.ad.k.b) b.this).f48423F.f45773o, ((com.ubix.ssp.ad.k.b) b.this).f48431N.o() == 1, (com.ubix.ssp.ad.g.c) null);
                b.this.r();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
            u.e("1111 onTick=" + j2);
        }
    }

    public class h extends a.C0786a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f48342a;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (com.ubix.ssp.ad.e.a0.b0.b.a() != 1 && h.this.f48342a.get()) {
                        h.this.f48342a.set(false);
                        if (b.this.f48321i0.b()) {
                            b.this.f48321i0.d();
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public h(AtomicBoolean atomicBoolean) {
            this.f48342a = atomicBoolean;
        }

        @Override // com.ubix.ssp.ad.e.a0.b0.a.C0786a
        public void c(Activity activity) {
            super.c(activity);
            try {
                activity.getWindow().getDecorView().post(new a());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.b0.a.C0786a
        public void e(Activity activity) {
            super.e(activity);
            try {
                if (com.ubix.ssp.ad.e.a0.b0.b.a() == 1) {
                    this.f48342a.set(true);
                    if (b.this.f48321i0.b()) {
                        return;
                    }
                    b.this.f48321i0.c();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public b(Context context, String str) {
        super(context, str);
        this.f48316d0 = 5000;
        this.f48317e0 = 5000;
        this.f48318f0 = false;
        this.f48319g0 = false;
        this.f48320h0 = new AtomicInteger(0);
        this.f48322j0 = false;
        this.f48323k0 = 500;
        this.f48324l0 = 0L;
        this.f48325m0 = false;
        this.f48326n0 = null;
        this.f48327o0 = false;
        this.f48314b0 = context;
        this.f45545i = 1;
    }

    private boolean T() {
        com.ubix.ssp.ad.e.y.a.a aVar;
        if (this.f48315c0 != null) {
            return true;
        }
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null || aVar.f47442d == null) {
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("TEMPLATE_ID", this.f48423F.f45759a.f47442d.f47489s);
        bundle.putInt("SKIP_VIEW_STYLE", this.f48431N.f0());
        bundle.putInt("SKIP_COUNT_TIME", this.f48431N.g0() == -1 ? this.f48317e0 : this.f48431N.g0() * 1000);
        bundle.putBoolean("IS_DOWNLOAD", com.ubix.ssp.ad.e.a0.c.a(this.f48423F.f45759a.f47442d));
        bundle.putInt("VIDEO_RENDER_TYPE", this.f48431N.k0());
        bundle.putBoolean("SUPPORT_FEED_BACK", this.f48423F.f45759a.f47449k);
        bundle.putInt("S_A_T", this.f48431N.c0());
        bundle.putLong("S_A_T_I", this.f48431N.d0());
        bundle.putLong("G_B_U", this.f48431N.K());
        StringBuilder sb = new StringBuilder();
        sb.append("get lsat by renderAd= ");
        sb.append(v.c(this.f48314b0, "ubix_sp_gold", "lsat" + this.f45540d));
        u.e(sb.toString());
        bundle.putLong("L_S_A_T_I", v.c(this.f48314b0, "ubix_sp_gold", "lsat" + this.f45540d));
        bundle.putBoolean("IS_UNNAMED", this.f48431N.G0());
        com.ubix.ssp.ad.b bVarA = com.ubix.ssp.ad.b.a(this.f48314b0, bundle, 1, false);
        this.f48315c0 = bVarA;
        if (bVarA == null) {
            a(0, com.ubix.ssp.ad.e.a0.a0.a.g(6, "创建ViewClass失败，请勿重试"));
            return false;
        }
        bVarA.setInnerListener(this);
        return true;
    }

    private void p(com.ubix.ssp.ad.d.a aVar) {
        super.v();
        c(aVar.f45759a);
        c(aVar.f45759a, true);
        if (this.f48313a0 == null || this.f48318f0) {
            return;
        }
        this.f48313a0.onAdResponseSucceed();
        T();
    }

    private boolean t(int i2) {
        int i3;
        if (this.f48327o0) {
            return true;
        }
        Bundle bundle = new Bundle();
        u.a(f48312Z, "showAdWithType type:" + i2);
        if (i2 == 1002 || i2 == 1005) {
            bundle = a(this.f48423F.f45759a.f47442d.f47481k.f47537c);
            bundle.putString("VIDEO_URL", this.f48423F.f45759a.f47442d.f47481k.f47536b);
            bundle.putBoolean("IS_VIDEO", true);
            bundle.putBoolean("AUTO_MUTE", false);
            bundle.putInt("VIDEO_RENDER_TYPE", this.f48431N.k0());
        } else if (i2 == 1001 || i2 == 1004) {
            bundle = a(this.f48423F.f45759a.f47442d.f47480j[0].f47499c);
            bundle.putBoolean("IS_VIDEO", false);
        }
        if (this.f48431N.b()) {
            bundle.putString("AD_SOURCE", this.f48423F.f45759a.f47442d.f47490t);
        }
        a.b.f fVar = this.f48423F.f45759a.f47442d.f47464L;
        if (fVar != null && (i3 = fVar.f47516b) != 0) {
            bundle.putInt("RENDER_MODE", i3);
            bundle.putFloat("SCALE_IGNORE_PERCENT", (this.f48423F.f45759a.f47442d.f47464L.f47517c * 1.0f) / 100.0f);
            bundle.putInt("SCALE_HORIZONTAL_MARGIN", this.f48423F.f45759a.f47442d.f47464L.f47518d);
            bundle.putInt("SCALE_VERTICAL_MARGIN", this.f48423F.f45759a.f47442d.f47464L.f47519e);
        }
        bundle.putBoolean("IS_UNNAMED", this.f48431N.G0());
        bundle.putInt("SKIP_VIEW_STYLE", this.f48431N.f0());
        bundle.putInt("SKIP_COUNT_TIME", this.f48431N.g0() == -1 ? this.f48317e0 : this.f48431N.g0() * 1000);
        com.ubix.ssp.ad.b bVar = this.f48315c0;
        if (bVar != null) {
            bVar.b(bundle);
        }
        this.f48327o0 = true;
        return true;
    }

    @Override // com.ubix.ssp.ad.k.b
    public String B() {
        return l(1);
    }

    @Override // com.ubix.ssp.ad.k.b
    public ParamsReview C() {
        return super.a(this.f48423F.f45759a, this.f48431N.x0(), this.f48431N.H0());
    }

    @Override // com.ubix.ssp.ad.k.b
    public long D() {
        return super.g(this.f48423F);
    }

    @Override // com.ubix.ssp.ad.k.b
    public String E() {
        return super.E();
    }

    @Override // com.ubix.ssp.ad.k.b
    public void O() {
        this.f45542f.sendEmptyMessage(3);
        super.m(1);
    }

    public com.ubix.ssp.ad.d.a b(com.ubix.ssp.ad.d.a aVar, boolean z2) {
        if (aVar != null && a(aVar, z2)) {
            return aVar;
        }
        return null;
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void f(int i2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null || aVar.f47442d == null) {
            return;
        }
        if (this.f48431N.y() != 1) {
            com.ubix.ssp.ad.e.a0.f.a(this.f48314b0, this.f48423F.f45759a.f47442d.f47455C, 1, this.f48431N, this.f45540d, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("TYPE", 6);
        bundle.putString("TITLE", "权限");
        bundle.putString("TARGET_URL", this.f48423F.f45759a.f47442d.f47455C);
        com.ubix.ssp.ad.e.a0.c.a(this.f48314b0, bundle, (h.c) null, (h.b) null);
    }

    @Override // com.ubix.ssp.ad.k.b
    public void q(int i2) {
        super.w();
        this.f45542f.removeMessages(3);
        this.f45542f.removeMessages(4);
        t(this.f48423F.f45759a.f47442d.f47489s);
        if (this.f48313a0 == null || this.f48319g0) {
            return;
        }
        this.f48319g0 = true;
        super.u();
        this.f48313a0.onAdLoadSucceed();
    }

    public void r(int i2) {
        String str;
        if (this.f45542f.hasMessages(3)) {
            str = "Timer has been started,set it ahead of loadAd()";
        } else {
            if (i2 >= 3000 && i2 <= 30000) {
                this.f48316d0 = i2;
                return;
            }
            str = "Timeout must between 3*1000 and 30*1000 milliseconds";
        }
        u.a(str);
    }

    public void s(int i2) {
        if (i2 < 3000) {
            this.f48317e0 = 3000;
        } else if (i2 > 30000) {
            this.f48317e0 = KSImageLoader.InnerImageLoadingListener.MAX_DURATION;
        } else {
            this.f48317e0 = i2;
        }
    }

    private void d(String str, boolean z2) {
        if (TextUtils.isEmpty(this.f48423F.f45759a.f47442d.f47481k.f47537c)) {
            q(0);
        } else {
            c(this.f48423F.f45759a.f47442d.f47481k.f47537c, z2);
        }
    }

    private void m(com.ubix.ssp.ad.d.a aVar) {
        this.f48427J = true;
        p(aVar);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public void c(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        super.c(context, intent, j2, broadcastReceiver);
        a(3, new Object[0]);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void e(int i2) {
        com.ubix.ssp.ad.b bVar = this.f48315c0;
        if (bVar != null) {
            bVar.i();
        }
        com.ubix.ssp.ad.d.a aVar = this.f48423F;
        b(aVar.f45759a, super.a(aVar, 5000L, this.f48424G, 5000L));
        com.ubix.ssp.ad.g.i iVar = this.f48313a0;
        if (iVar != null) {
            iVar.onAdClosed();
        }
        n();
        if (this.f48322j0) {
            a(this.f48431N.n() + this.f48431N.l(), this.f48326n0);
        }
        this.f48313a0 = null;
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public void h() {
        ViewGroup viewGroup;
        super.h();
        try {
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f45555s;
            if (softReference != null && softReference.get() != null && !this.f45555s.get().c()) {
                this.f45555s.get().a();
            }
            if (this.f48315c0 != null) {
                if (com.ubix.ssp.ad.d.b.f45791J && (viewGroup = (ViewGroup) this.f48315c0.getParent()) != null) {
                    viewGroup.removeView(this.f48315c0);
                }
                this.f48315c0.i();
                this.f48315c0.j();
                this.f48315c0 = null;
            }
            this.f48313a0 = null;
        } catch (Exception unused) {
        }
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void i(int i2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null || aVar.f47442d == null) {
            return;
        }
        if (this.f48431N.y() != 1) {
            com.ubix.ssp.ad.e.a0.f.a(this.f48314b0, this.f48423F.f45759a.f47442d.f47454B, 1, this.f48431N, this.f45540d, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("TYPE", 6);
        bundle.putString("TITLE", "隐私");
        bundle.putString("TARGET_URL", this.f48423F.f45759a.f47442d.f47454B);
        com.ubix.ssp.ad.e.a0.c.a(this.f48314b0, bundle, (h.c) null, (h.b) null);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public AdError j(com.ubix.ssp.ad.d.a aVar) {
        int i2;
        String str;
        a.b.C0834b c0834b;
        a.b bVar = aVar.f45759a.f47442d;
        int i3 = bVar.f47489s;
        if (i3 == 1001 || i3 == 1004) {
            a.b.C0834b[] c0834bArr = bVar.f47480j;
            if (c0834bArr != null && c0834bArr.length != 0 && (c0834b = c0834bArr[0]) != null && !TextUtils.isEmpty(c0834b.f47499c)) {
                return null;
            }
            i2 = 10;
            str = "图片资源链接异常";
        } else if (i3 == 1002 || i3 == 1005) {
            a.b.l lVar = bVar.f47481k;
            if (lVar == null || TextUtils.isEmpty(lVar.f47537c)) {
                i2 = 13;
                str = "封面图资源链接异常";
            } else {
                a.b.l lVar2 = aVar.f45759a.f47442d.f47481k;
                if (lVar2 != null && !TextUtils.isEmpty(lVar2.f47536b)) {
                    return null;
                }
                i2 = 12;
                str = "视频资源链接异常";
            }
        } else {
            i2 = 16;
            str = "广告模板Id异常,或资源与模板不匹配";
        }
        return com.ubix.ssp.ad.e.a0.a0.a.k(i2, str);
    }

    private String a(String str, boolean z2, boolean z3) {
        File file = new File(k.f(com.ubix.ssp.ad.e.a0.c.e()), str.hashCode() + "");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        if (!z2) {
            return null;
        }
        e(str, z3);
        return null;
    }

    private void c(com.ubix.ssp.ad.e.y.a.a aVar) {
        if (aVar != null) {
            try {
                this.f48431N = a(aVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private boolean d(HashMap<String, String> map) {
        return "14".equals(map.get("__CLICK_UNREAL_TRIGGER__")) || "6".equals(map.get("__CLICK_AREA__")) || "3".equals(map.get("__CLICK_AREA__"));
    }

    private void e(String str, boolean z2) {
        com.ubix.ssp.ad.e.v.e.c().a(str, new C0848b(z2));
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void b(int i2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null || aVar.f47442d == null) {
            return;
        }
        if (this.f48431N.y() != 1) {
            com.ubix.ssp.ad.e.a0.f.a(this.f48314b0, this.f48423F.f45759a.f47442d.f47458F, 1, this.f48431N, this.f45540d, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("TYPE", 6);
        bundle.putString("TITLE", "应用介绍");
        bundle.putString("TARGET_URL", this.f48423F.f45759a.f47442d.f47458F);
        com.ubix.ssp.ad.e.a0.c.a(this.f48314b0, bundle, (h.c) null, (h.b) null);
    }

    public void h(AdError adError) {
        super.a(adError);
        this.f45542f.removeMessages(3);
        this.f45542f.removeMessages(4);
        com.ubix.ssp.ad.g.i iVar = this.f48313a0;
        if (iVar != null) {
            iVar.onAdLoadFailed(adError);
        }
        this.f48313a0 = null;
    }

    private void c(String str, boolean z2) {
        com.ubix.ssp.ad.e.v.e.b().a(str, 5, new a(z2));
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void a(int i2) {
        a(this.f48423F, this.f48431N);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void b(int i2, View view, HashMap<String, String> map) {
        if (this.f45553q) {
            return;
        }
        if (map == null) {
            map = this.f48315c0.getClickMap();
            map.put("__CLICK_TRIGGER__", "");
        }
        if ("15".equals(map.get("__CLICK_TRIGGER__"))) {
            com.ubix.ssp.ad.e.a0.c.y();
            com.ubix.ssp.ad.e.a0.c.f46115d.execute(new e());
        }
        a(this.f48423F, this.f48315c0, this.f48431N, map);
    }

    @Override // com.ubix.ssp.ad.k.b
    public void h(String str) {
        if (TextUtils.isEmpty(str)) {
            b(com.ubix.ssp.ad.e.a0.a0.a.j(10, "竞价广告体为空或解析异常，请检查传入的参数是否正确"));
        } else {
            e(str);
        }
    }

    private void c(HashMap<String, String> map) {
        com.ubix.ssp.ad.b bVar = this.f48315c0;
        if (bVar != null) {
            bVar.postDelayed(new d(map), 100L);
        }
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.j
    public void a(int i2, long j2, long j3) {
        super.a(i2, j2, j3);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public void b(int i2, com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.b bVar;
        super.b(i2, aVar);
        if (i2 == 3) {
            com.ubix.ssp.ad.b bVar2 = this.f48315c0;
            if (bVar2 != null) {
                bVar2.o();
            }
            a(2, new Object[0]);
            return;
        }
        if (i2 != 2 || (bVar = this.f48315c0) == null) {
            return;
        }
        bVar.o();
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void a(int i2, Bundle bundle) {
        super.a(bundle);
    }

    @Override // com.ubix.ssp.ad.a
    public void b(AdError adError) {
        super.b(adError);
        super.a(adError);
        this.f45542f.removeMessages(3);
        this.f45542f.removeMessages(4);
        com.ubix.ssp.ad.g.i iVar = this.f48313a0;
        if (iVar != null) {
            iVar.onAdLoadFailed(adError);
        }
        this.f48313a0 = null;
    }

    public boolean c(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2) {
        String str;
        StringBuilder sb;
        try {
            a.b bVar = aVar.f47442d;
            int i2 = bVar.f47489s;
            if (i2 == 1002 || i2 == 1005) {
                d(bVar.f47481k.f47536b, z2);
                str = f48312Z;
                sb = new StringBuilder();
                sb.append("material preloadVideo:");
                sb.append(aVar.f47442d.f47481k.f47536b);
            } else {
                if (i2 != 1001 && i2 != 1004) {
                    return true;
                }
                c(bVar.f47480j[0].f47499c, z2);
                str = f48312Z;
                sb = new StringBuilder();
                sb.append("material preloadImage:");
                sb.append(aVar.f47442d.f47480j[0].f47499c);
            }
            u.e(str, sb.toString());
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            u.d("------preLoadImg Exception " + e2.getMessage());
            AdError adErrorG = com.ubix.ssp.ad.e.a0.a0.a.g(5, "图片资源链接异常");
            a(0, adErrorG);
            u.c(f48312Z, "ad is material fail code:" + adErrorG.getErrorCode() + "msg:" + adErrorG.getErrorMessage());
            return false;
        }
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.g.k.b
    public void a(int i2, View view) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        String str;
        y();
        d(this.f48423F);
        c(this.f48423F);
        com.ubix.ssp.ad.g.i iVar = this.f48313a0;
        if (iVar != null) {
            iVar.onAdExposed();
        }
        b(this.f48315c0, this.f48431N);
        a(this.f48315c0, this.f48431N);
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null || (bVar = aVar.f47442d) == null || (str = bVar.f47479i) == null) {
            return;
        }
        f(str);
    }

    @Override // com.ubix.ssp.ad.k.b
    public void b(HashMap<String, String> map) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, map);
    }

    @Override // com.ubix.ssp.ad.g.k.i
    public void a(int i2, View view, HashMap<String, String> map) {
        long jCurrentTimeMillis;
        boolean z2;
        if (this.f45553q) {
            return;
        }
        if (map == null) {
            map = this.f48315c0.getClickMap();
            map.put("__CLICK_TRIGGER__", "");
        }
        u.e("onAdClicked =" + map.get("__CLICK_TRIGGER__"));
        try {
            boolean zM0 = this.f48431N.m0();
            jCurrentTimeMillis = System.currentTimeMillis();
            z2 = zM0 && this.f48431N.q0() && d(map) && !this.f48423F.f45781w && jCurrentTimeMillis - this.f45538B > this.f48431N.m() && !map.containsKey("__MULTI_CLICK_KEY__");
            u.e("是否满足条件：" + z2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (z2) {
            this.f45538B = jCurrentTimeMillis;
            this.f48322j0 = true;
            map.put("__CLICK_AREA__", "22");
            map.remove("__CLICK_UNREAL_TRIGGER__");
            if (!this.f48325m0) {
                this.f48325m0 = true;
                q();
            }
            this.f48326n0 = map;
            com.ubix.ssp.ad.e.a0.c.y();
            com.ubix.ssp.ad.e.a0.c.f46115d.execute(new c());
            return;
        }
        if (("3".equals(map.get("__CLICK_TRIGGER__")) || "6".equals(map.get("__CLICK_TRIGGER__"))) && System.currentTimeMillis() - this.f48324l0 > this.f48323k0) {
            this.f48324l0 = System.currentTimeMillis();
            if (this.f48431N.b0() == 1) {
                a(map, (Rect) null);
                return;
            } else if (this.f48431N.b0() == 2 && this.f48431N.a0() != null) {
                a(map, this.f48431N.a0());
                if (this.f48315c0 != null) {
                    c(map);
                    return;
                }
            }
        }
        a(this.f48423F, this.f48315c0, this.f48431N, map);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public boolean b(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        if (i()) {
            map.remove("__CLICK_AREA__");
            map.remove("__CLICK_TRIGGER__");
            map.remove("__CLICK_UNREAL_TRIGGER__");
        } else {
            super.b(aVar, map);
            com.ubix.ssp.ad.b bVar = this.f48315c0;
            if (bVar != null) {
                bVar.k();
                if (com.ubix.ssp.ad.d.b.f45786E == 1 && this.f48315c0.m()) {
                    this.f48315c0.a(this.f48431N.B(), this.f48431N.A());
                }
            }
            int iA = a(aVar, 1, map, aVar.f45773o, this.f48431N.o() == 1, (com.ubix.ssp.ad.g.c) null);
            map.remove("__CLICK_AREA__");
            map.remove("__CLICK_UNREAL_TRIGGER__");
            if (iA == 4 || iA == 6) {
                com.ubix.ssp.ad.b bVar2 = this.f48315c0;
                if (bVar2 != null) {
                    bVar2.o();
                }
                a(4, new Object[0]);
            } else if (iA == 2 || iA == 31) {
                if (iA == 31) {
                    g((String) null);
                }
                this.f48315c0.c(iA, this.f48431N.M());
                a(this.f48315c0.getContext(), aVar, map);
                a(this.f48315c0.getContext(), this.f48431N.y0(), this.f48431N.k());
                if (com.ubix.ssp.ad.d.b.f45815v) {
                    String str = aVar.f45759a.f47442d.f47462J;
                    a(this.f48315c0.getContext(), str, c(str));
                }
            } else if (iA == 22) {
                this.f48315c0.c(iA, this.f48431N.M());
                b(this.f48315c0.getContext(), aVar, map, this.f48431N.q());
            } else if (iA == 23) {
                a(this.f48315c0.getContext(), aVar, map, this.f48431N.q());
                a(2, new Object[0]);
            } else if (iA == 3) {
                b(this.f48314b0.getApplicationContext());
            } else if (iA == 5) {
                a(this.f48315c0.getContext(), aVar, map);
            } else if (iA == 33) {
                a(33, new Object[0]);
            } else {
                a(1, new Object[0]);
            }
            this.f48322j0 = false;
            a(0, new Object[0]);
            map.put("__MULTI_CLICK_KEY__", "TRUE");
        }
        return true;
    }

    private boolean b(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2) {
        return a(aVar, z2);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public void a(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.a(i2, aVar);
        try {
            a(this.f48315c0.getContext(), this.f48431N.y0(), this.f48431N.k());
            if (com.ubix.ssp.ad.d.b.f45815v) {
                a(this.f48315c0.getContext(), this.f48423F, this.f48315c0.getClickMap());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.k.b
    public void a(int i2, AdError adError) {
        super.c(adError);
        this.f48318f0 = true;
        this.f45542f.removeMessages(3);
        this.f45542f.removeMessages(4);
        if (this.f48313a0 == null || this.f48319g0) {
            return;
        }
        this.f48319g0 = true;
        super.a(adError);
        this.f48313a0.onAdLoadFailed(adError);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public void a(int i2, Object... objArr) {
        if (this.f48431N.n0() && i2 != 0) {
            super.a(i2, objArr);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("runClickCallback ");
        sb.append(i2);
        sb.append(";canRun=");
        sb.append((!this.f48431N.n0() && i2 == 0) || (this.f48431N.n0() && i2 != 0));
        u.e(sb.toString());
        if (((this.f48431N.n0() || i2 != 0) && (!this.f48431N.n0() || i2 == 0)) || this.f48313a0 == null || this.f48431N.m0()) {
            return;
        }
        this.f48313a0.onAdClicked(null);
    }

    @Override // com.ubix.ssp.ad.k.b
    public void a(long j2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, j2);
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public void a(Message message) {
        int i2 = message.what;
        if (i2 == 3) {
            Message message2 = new Message();
            message2.what = 4;
            message2.setAsynchronous(true);
            this.f45542f.sendMessageDelayed(message2, this.f48316d0);
            u.e(f48312Z, "ad is start requestTimeout:" + this.f48316d0 + "ms");
            return;
        }
        if (i2 == 4) {
            h(com.ubix.ssp.ad.e.a0.a0.a.k(3, "请求超时"));
            u.e(f48312Z, "ad is timeout");
            return;
        }
        if (i2 != 5) {
            if (i2 != 6) {
                switch (i2) {
                    case 12:
                        m();
                        break;
                }
                return;
            }
            b((AdError) message.obj);
            return;
        }
        com.ubix.ssp.ad.d.a aVar = (com.ubix.ssp.ad.d.a) ((List) message.obj).get(0);
        this.f48423F = aVar;
        com.ubix.ssp.ad.d.a aVarB = b(aVar, true);
        this.f48423F = aVarB;
        if (aVarB != null && aVarB.f45760b) {
            if (a(aVarB, false)) {
                m(this.f48423F);
                u.c(f48312Z, "ad is loadSuccess:");
                return;
            }
            AdError adErrorH = com.ubix.ssp.ad.e.a0.a0.a.h(1, "加载本地文件失败");
            b(adErrorH);
            u.c(f48312Z, "ad is loadFail code:" + adErrorH.getErrorCode() + ";msg:" + adErrorH.getErrorMessage());
            return;
        }
        com.ubix.ssp.ad.d.a aVarB2 = b(aVarB, true);
        this.f48423F = aVarB2;
        if (aVarB2 != null) {
            m(aVarB2);
            u.c(f48312Z, "ad is loadSuccess:");
            return;
        }
        AdError adErrorK = com.ubix.ssp.ad.e.a0.a0.a.k(3, "加载本地文件失败");
        a(0, adErrorK);
        u.c(f48312Z, "ad is renderFail code:" + adErrorK.getErrorCode() + ";msg:" + adErrorK.getErrorMessage());
    }

    public void a(ViewGroup viewGroup) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        x();
        if (viewGroup == null) {
            AdError adErrorB = com.ubix.ssp.ad.e.a0.a0.a.b(5, "广告外层为空或者广告不可见");
            d(adErrorB);
            com.ubix.ssp.ad.g.i iVar = this.f48313a0;
            if (iVar != null) {
                iVar.onAdExposeFailed(adErrorB);
            }
            this.f48313a0 = null;
            return;
        }
        if (this.f48318f0) {
            AdError adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(6, "加载本地文件失败");
            d(adErrorD);
            com.ubix.ssp.ad.g.i iVar2 = this.f48313a0;
            if (iVar2 != null) {
                iVar2.onAdExposeFailed(adErrorD);
                return;
            }
            return;
        }
        if (J()) {
            AdError adErrorC = com.ubix.ssp.ad.e.a0.a0.a.c(3, "广告重复展示");
            d(adErrorC);
            com.ubix.ssp.ad.g.i iVar3 = this.f48313a0;
            if (iVar3 != null) {
                iVar3.onAdExposeFailed(adErrorC);
                return;
            }
            return;
        }
        if (!K()) {
            AdError adErrorD2 = com.ubix.ssp.ad.e.a0.a0.a.d(5, "内容加载失败");
            d(adErrorD2);
            com.ubix.ssp.ad.g.i iVar4 = this.f48313a0;
            if (iVar4 != null) {
                iVar4.onAdExposeFailed(adErrorD2);
                return;
            }
            return;
        }
        if (I()) {
            AdError adErrorD3 = com.ubix.ssp.ad.e.a0.a0.a.d(4, "文件已经过期");
            d(adErrorD3);
            com.ubix.ssp.ad.g.i iVar5 = this.f48313a0;
            if (iVar5 != null) {
                iVar5.onAdExposeFailed(adErrorD3);
            }
            this.f48313a0 = null;
            return;
        }
        if (this.f48315c0 == null) {
            T();
        }
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null || (bVar = aVar.f47442d) == null || !t(bVar.f47489s)) {
            AdError adErrorD4 = com.ubix.ssp.ad.e.a0.a0.a.d(9, "内容加载失败");
            d(adErrorD4);
            com.ubix.ssp.ad.g.i iVar6 = this.f48313a0;
            if (iVar6 != null) {
                iVar6.onAdExposeFailed(adErrorD4);
            }
            this.f48313a0 = null;
            return;
        }
        a.b bVar2 = this.f48423F.f45759a.f47442d;
        try {
            if (com.ubix.ssp.ad.e.a0.c.a(bVar2)) {
                this.f48315c0.a(bVar2.f47477g, bVar2.f47453A, bVar2.f47496z, bVar2.f47478h, bVar2.f47460H, bVar2.f47461I, bVar2.f47459G);
            }
            if (this.f48313a0 != null && !this.f48319g0) {
                this.f48319g0 = true;
                this.f45542f.removeMessages(3);
                this.f45542f.removeMessages(4);
                super.u();
                this.f48313a0.onAdLoadSucceed();
            }
            try {
                viewGroup.addView(this.f48315c0);
            } catch (Throwable unused) {
                AdError adErrorC2 = com.ubix.ssp.ad.e.a0.a0.a.c(3, "广告重复展示");
                d(adErrorC2);
                com.ubix.ssp.ad.g.i iVar7 = this.f48313a0;
                if (iVar7 != null) {
                    iVar7.onAdExposeFailed(adErrorC2);
                }
            }
            this.f48428K = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            AdError adErrorD5 = com.ubix.ssp.ad.e.a0.a0.a.d(10, "合规六要素创建失败");
            d(adErrorD5);
            com.ubix.ssp.ad.g.i iVar8 = this.f48313a0;
            if (iVar8 != null) {
                iVar8.onAdExposeFailed(adErrorD5);
            }
            this.f48313a0 = null;
        }
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public void a(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        super.a(aVar, map);
        try {
            this.f45543g = false;
            this.f48315c0.o();
        } catch (Exception unused) {
        }
    }

    public void a(com.ubix.ssp.ad.g.i iVar) {
        this.f48313a0 = iVar;
    }

    @Override // com.ubix.ssp.ad.g.k.i
    public boolean a(int i2, long j2) {
        u.e("onAdSkipped =" + this.f48313a0);
        com.ubix.ssp.ad.b bVar = this.f48315c0;
        if (bVar != null) {
            bVar.i();
        }
        com.ubix.ssp.ad.d.a aVar = this.f48423F;
        b(aVar.f45759a, super.a(aVar, this.f48425H, this.f48424G, 5000L));
        com.ubix.ssp.ad.g.i iVar = this.f48313a0;
        if (iVar != null) {
            iVar.onAdSkipped();
        }
        p();
        if (this.f48322j0) {
            a(this.f48431N.n() + this.f48431N.l(), this.f48326n0);
        }
        this.f48313a0 = null;
        return false;
    }

    private boolean a(long j2, HashMap<String, String> map) {
        try {
            if (this.f48321i0 != null) {
                return false;
            }
            com.ubix.ssp.ad.e.a0.g gVar = new com.ubix.ssp.ad.e.a0.g(j2);
            this.f48321i0 = gVar;
            gVar.a(new g(map));
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.f48321i0.e();
            new com.ubix.ssp.ad.e.a0.b0.a((Application) this.f48314b0.getApplicationContext()).a(new h(atomicBoolean));
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    private boolean a(com.ubix.ssp.ad.d.a aVar, boolean z2) {
        if (aVar == null) {
            return false;
        }
        com.ubix.ssp.ad.e.y.a.a aVar2 = aVar.f45759a;
        a.b bVar = aVar2.f47442d;
        switch (bVar.f47489s) {
            case 1001:
            case 1004:
                a.b.C0834b c0834b = bVar.f47480j[0];
                if (c0834b == null || TextUtils.isEmpty(c0834b.f47499c)) {
                }
                break;
            case 1002:
            case 1005:
                b(aVar2, z2);
                break;
        }
        return false;
    }

    @Override // com.ubix.ssp.ad.k.b, com.ubix.ssp.ad.a
    public boolean a(com.ubix.ssp.ad.d.a aVar, boolean z2, HashMap<String, String> map) {
        try {
            int iB = com.ubix.ssp.ad.e.s.b.c().b(aVar.f45773o);
            b(aVar);
            if (iB == 47) {
                this.f45554r = null;
            }
            if (!z2 && iB == 44) {
                com.ubix.ssp.ad.e.s.b.c().a(this.f45539c, aVar.f45773o);
                SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f45555s;
                if (softReference != null && softReference.get() != null) {
                    ((com.ubix.ssp.ad.e.z.e) this.f45555s.get()).setText("下载继续");
                }
                return false;
            }
            if (iB == 45) {
                com.ubix.ssp.ad.e.s.b.c().b(this.f45539c, aVar.f45773o);
                if (this.f45554r == null) {
                    this.f45554r = a(map, this.f45541e.indexOf(aVar), this.f45561y);
                }
                com.ubix.ssp.ad.e.s.c.a().a(this.f45554r);
                return false;
            }
            if (iB == 43 || iB == 46) {
                if (this.f45554r == null) {
                    this.f45554r = a(map, this.f45541e.indexOf(aVar), this.f45561y);
                }
                com.ubix.ssp.ad.e.s.c.a().a(this.f45554r);
            }
            if (this.f45554r != null) {
                return true;
            }
            com.ubix.ssp.ad.e.s.c cVarA = com.ubix.ssp.ad.e.s.c.a();
            a.z zVarA = a(map, this.f45541e.indexOf(aVar), this.f45561y);
            this.f45554r = zVarA;
            cVarA.a(zVarA);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean a(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2) {
        a.b.l lVar = aVar.f47442d.f47481k;
        if (lVar != null && !TextUtils.isEmpty(lVar.f47536b)) {
            if (z2) {
                com.ubix.ssp.ad.e.v.e.b().a(aVar.f47442d.f47481k.f47537c, (e.b) null);
            }
            if (a(aVar.f47442d.f47481k.f47536b, z2, false) != null) {
                return true;
            }
        }
        return false;
    }

    private boolean a(HashMap<String, String> map, Rect rect) {
        float[] fArr;
        View viewFindViewById;
        StringBuilder sb;
        boolean z2;
        com.ubix.ssp.ad.b bVar;
        boolean z3 = false;
        try {
            fArr = new float[2];
            if (rect != null) {
                if (this.f48315c0 != null) {
                    Rect rect2 = new Rect();
                    this.f48315c0.getGlobalVisibleRect(rect2);
                    int iWidth = rect2.width();
                    int iHeight = rect2.height();
                    int i2 = (int) (rect2.left + ((rect.left * iWidth) / 100.0f));
                    rect2.left = i2;
                    rect2.top = (int) (rect2.top + ((rect.top * iHeight) / 100.0f));
                    rect2.right = (int) (rect2.right - ((iWidth * rect.right) / 100.0f));
                    rect2.bottom = (int) (rect2.bottom - ((iHeight * rect.bottom) / 100.0f));
                    float fWidth = (float) (i2 + (rect2.width() * Math.random()));
                    float fHeight = (float) (rect2.top + (rect2.height() * Math.random()));
                    fArr[0] = fWidth;
                    fArr[1] = fHeight;
                    sb = new StringBuilder();
                    sb.append("visibleRect use rect =");
                    sb.append(rect2);
                    sb.append(fWidth);
                    sb.append(";ry=");
                    sb.append(fHeight);
                    sb.append(";SystemClock.uptimeMillis()=");
                    sb.append(SystemClock.uptimeMillis());
                    u.e(sb.toString());
                    z2 = true;
                }
                z2 = false;
            } else {
                com.ubix.ssp.ad.b bVar2 = this.f48315c0;
                if (bVar2 != null && (viewFindViewById = bVar2.findViewById(910301)) != null) {
                    Rect rect3 = new Rect();
                    viewFindViewById.getGlobalVisibleRect(rect3);
                    float fWidth2 = (float) (rect3.left + (rect3.width() * 0.15f) + (rect3.width() * 0.7f * Math.random()));
                    float fHeight2 = (float) (rect3.top + (rect3.height() * 0.15f) + (rect3.height() * 0.7f * Math.random()));
                    fArr[0] = fWidth2;
                    fArr[1] = fHeight2;
                    sb = new StringBuilder();
                    sb.append("visibleRect=");
                    sb.append(rect3);
                    sb.append(";rx=");
                    sb.append(fWidth2);
                    sb.append(";ry=");
                    sb.append(fHeight2);
                    sb.append(";SystemClock.uptimeMillis()=");
                    sb.append(SystemClock.uptimeMillis());
                    u.e(sb.toString());
                    z2 = true;
                }
                z2 = false;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            long[] jArr = {SystemClock.uptimeMillis()};
            if (!z2 || (bVar = this.f48315c0) == null || bVar.getRootView() == null) {
                return z2;
            }
            map.put("__CLICK_AREA__", "14");
            map.put("__CLICK_TRIGGER__", "14");
            map.put("__CLICK_UNREAL_TRIGGER__", "14");
            int iRandom = ((int) (Math.random() * 40.0d)) + 10;
            long j2 = jArr[0];
            MotionEvent motionEventObtain = MotionEvent.obtain(j2, j2, 0, fArr[0], fArr[1], 0);
            this.f48315c0.getRootView().dispatchTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f48315c0.postDelayed(new f(jArr, iRandom, fArr), iRandom);
            return z2;
        } catch (Throwable th2) {
            th = th2;
            z3 = z2;
            th.printStackTrace();
            return z3;
        }
    }
}
