package com.ubix.ssp.ad.k;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.work.WorkRequest;
import com.sigmob.sdk.base.mta.PointType;
import com.ubix.ssp.ad.a;
import com.ubix.ssp.ad.e.a0.d;
import com.ubix.ssp.ad.e.a0.e0.a;
import com.ubix.ssp.ad.e.a0.m;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.ad.e.z.h;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.video.UBiXRewardVideoExtra;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class b extends com.ubix.ssp.ad.a implements com.ubix.ssp.ad.g.k.h {

    /* renamed from: C, reason: collision with root package name */
    private com.ubix.ssp.ad.g.j f48420C;

    /* renamed from: D, reason: collision with root package name */
    private Context f48421D;

    /* renamed from: E, reason: collision with root package name */
    private SoftReference<Activity> f48422E;

    /* renamed from: F, reason: collision with root package name */
    protected com.ubix.ssp.ad.d.a f48423F;

    /* renamed from: G, reason: collision with root package name */
    protected long f48424G;

    /* renamed from: H, reason: collision with root package name */
    protected long f48425H;

    /* renamed from: I, reason: collision with root package name */
    private com.ubix.ssp.ad.b f48426I;

    /* renamed from: J, reason: collision with root package name */
    protected boolean f48427J;

    /* renamed from: K, reason: collision with root package name */
    protected boolean f48428K;

    /* renamed from: L, reason: collision with root package name */
    private volatile boolean f48429L;

    /* renamed from: M, reason: collision with root package name */
    private boolean f48430M;

    /* renamed from: N, reason: collision with root package name */
    protected com.ubix.ssp.ad.d.l f48431N;

    /* renamed from: O, reason: collision with root package name */
    private boolean f48432O;

    /* renamed from: P, reason: collision with root package name */
    private boolean f48433P;

    /* renamed from: Q, reason: collision with root package name */
    private boolean f48434Q;

    /* renamed from: R, reason: collision with root package name */
    private boolean f48435R;

    /* renamed from: S, reason: collision with root package name */
    boolean f48436S;

    /* renamed from: T, reason: collision with root package name */
    private long f48437T;

    /* renamed from: U, reason: collision with root package name */
    private long f48438U;

    /* renamed from: V, reason: collision with root package name */
    private com.ubix.ssp.ad.g.h f48439V;

    /* renamed from: W, reason: collision with root package name */
    private final AtomicBoolean f48440W;

    /* renamed from: X, reason: collision with root package name */
    private int f48441X;

    /* renamed from: Y, reason: collision with root package name */
    protected SoftReference<com.ubix.ssp.ad.e.z.h> f48442Y;

    public class a implements h.b {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void a() {
            b bVar;
            com.ubix.ssp.ad.d.a aVar;
            com.ubix.ssp.ad.e.y.a.a aVar2;
            if (b.this.f48422E == null || b.this.f48422E.get() == null || (aVar = (bVar = b.this).f48423F) == null || (aVar2 = aVar.f45759a) == null || aVar2.f47442d == null) {
                return;
            }
            Context context = (Context) bVar.f48422E.get();
            b bVar2 = b.this;
            String str = bVar2.f48423F.f45759a.f47442d.f47454B;
            int iJ0 = bVar2.f48431N.j0();
            String str2 = ((com.ubix.ssp.ad.a) b.this).f45540d;
            b bVar3 = b.this;
            com.ubix.ssp.ad.e.a0.f.a(context, str, 0, iJ0, str2, bVar3.f48423F.f45759a, false, bVar3.f48430M);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void b() {
            b bVar;
            com.ubix.ssp.ad.d.a aVar;
            com.ubix.ssp.ad.e.y.a.a aVar2;
            if (b.this.f48422E == null || b.this.f48422E.get() == null || (aVar = (bVar = b.this).f48423F) == null || (aVar2 = aVar.f45759a) == null || aVar2.f47442d == null) {
                return;
            }
            Context context = (Context) bVar.f48422E.get();
            b bVar2 = b.this;
            String str = bVar2.f48423F.f45759a.f47442d.f47458F;
            int iJ0 = bVar2.f48431N.j0();
            String str2 = ((com.ubix.ssp.ad.a) b.this).f45540d;
            b bVar3 = b.this;
            com.ubix.ssp.ad.e.a0.f.a(context, str, 0, iJ0, str2, bVar3.f48423F.f45759a, false, bVar3.f48430M);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void c() {
            b bVar;
            com.ubix.ssp.ad.d.a aVar;
            com.ubix.ssp.ad.e.y.a.a aVar2;
            if (b.this.f48422E == null || b.this.f48422E.get() == null || (aVar = (bVar = b.this).f48423F) == null || (aVar2 = aVar.f45759a) == null || aVar2.f47442d == null) {
                return;
            }
            Context context = (Context) bVar.f48422E.get();
            b bVar2 = b.this;
            String str = bVar2.f48423F.f45759a.f47442d.f47455C;
            int iJ0 = bVar2.f48431N.j0();
            String str2 = ((com.ubix.ssp.ad.a) b.this).f45540d;
            b bVar3 = b.this;
            com.ubix.ssp.ad.e.a0.f.a(context, str, 0, iJ0, str2, bVar3.f48423F.f45759a, false, bVar3.f48430M);
        }
    }

    /* renamed from: com.ubix.ssp.ad.k.b$b, reason: collision with other inner class name */
    public class C0850b implements a.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f48444a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ HashMap f48445b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f48446c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f48447d;

        public C0850b(HashMap map, HashMap map2, long j2, int i2) {
            this.f48444a = map;
            this.f48445b = map2;
            this.f48446c = j2;
            this.f48447d = i2;
        }

        @Override // com.ubix.ssp.ad.e.a0.e0.a.c
        public void a(AdError adError, String str, String str2) {
            b bVar;
            b.this.f48441X = 3;
            boolean z2 = true;
            if (b.this.f48431N.N() == 1) {
                bVar = b.this;
            } else {
                bVar = b.this;
                z2 = false;
            }
            bVar.f48429L = z2;
            if (!TextUtils.isEmpty(str2)) {
                this.f48444a.put("tx_server_extra", str2);
            }
            u.e("notifyRewardDialogStatus,denied=" + adError.getErrorMessage() + ";extra=" + str2);
            this.f48445b.put("EVENT_DURATION", Long.valueOf(SystemClock.elapsedRealtime() - this.f48446c));
            this.f48445b.put("EVENT_STATUS_MSG", str);
            com.ubix.ssp.ad.e.w.f.a(((com.ubix.ssp.ad.a) b.this).f45539c).a(com.ubix.ssp.ad.e.w.j.RewardFail, this.f48445b, b.this.o(this.f48447d), str);
            b.this.a(adError, str2);
            b.this.P();
        }

        @Override // com.ubix.ssp.ad.e.a0.e0.a.c
        public void a(String str) {
            b.this.f48441X = 3;
            b.this.f48429L = true;
            if (!TextUtils.isEmpty(str)) {
                this.f48444a.put("tx_server_extra", str);
            }
            u.e("notifyRewardDialogStatus,confirmed=" + b.this.f48441X + ";" + b.this.f48429L);
            this.f48445b.put("EVENT_DURATION", Long.valueOf(SystemClock.elapsedRealtime() - this.f48446c));
            com.ubix.ssp.ad.e.w.f.a(((com.ubix.ssp.ad.a) b.this).f45539c).a(com.ubix.ssp.ad.e.w.j.RewardSucc, this.f48445b, b.this.o(this.f48447d), "");
            b.this.i(str);
            b.this.P();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f48426I != null) {
                Bundle bundle = new Bundle();
                bundle.putString("type", "reward");
                b.this.f48426I.a(bundle);
            }
        }
    }

    public class d implements com.ubix.ssp.ad.g.h {
        public d() {
        }

        @Override // com.ubix.ssp.ad.g.h
        public boolean a() {
            b.this.a(3, false);
            return false;
        }
    }

    public class e implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f48451a;

        public e(boolean z2) {
            this.f48451a = z2;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            if (this.f48451a) {
                b.this.q(0);
            }
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            if (this.f48451a) {
                b.this.a(0, adError);
            }
        }
    }

    public class f implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f48453a;

        public f(boolean z2) {
            this.f48453a = z2;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            if (this.f48453a) {
                b.this.Q();
            }
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            u.a("onFailure " + adError.getErrorMessage());
            if (this.f48453a) {
                b.this.f(adError);
            }
        }
    }

    public class g extends a.z {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ HashMap f48455f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(HashMap map, int i2, com.ubix.ssp.ad.e.s.e eVar, HashMap map2) {
            super(map, i2, eVar);
            this.f48455f = map2;
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2) {
            super.a(i2);
            u.e(com.ubix.ssp.ad.a.f45536b, "onStart " + i2);
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void b(int i2, int i3) {
            u.e(com.ubix.ssp.ad.a.f45536b, "onResume " + i2);
            super.b(i2, i3);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = b.this.f48442Y;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            if (b.this.f48442Y.get() instanceof com.ubix.ssp.ad.e.z.e) {
                ((com.ubix.ssp.ad.e.z.e) b.this.f48442Y.get()).setText("下载中" + i3 + "%");
                return;
            }
            ((com.ubix.ssp.ad.e.z.g) b.this.f48442Y.get()).a("下载中" + i3 + "%", i3);
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void c(int i2, int i3) {
            super.c(i2, i3);
            u.e(com.ubix.ssp.ad.a.f45536b, "onUpdate " + i3);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = b.this.f48442Y;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            if (b.this.f48442Y.get() instanceof com.ubix.ssp.ad.e.z.e) {
                ((com.ubix.ssp.ad.e.z.e) b.this.f48442Y.get()).a(i3);
            } else {
                ((com.ubix.ssp.ad.e.z.g) b.this.f48442Y.get()).b(i3);
            }
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2, int i3) {
            u.e(com.ubix.ssp.ad.a.f45536b, "onPause " + i2);
            super.a(i2, i3);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = b.this.f48442Y;
            if (softReference != null && softReference.get() != null) {
                if (b.this.f48442Y.get() instanceof com.ubix.ssp.ad.e.z.e) {
                    ((com.ubix.ssp.ad.e.z.e) b.this.f48442Y.get()).setText("继续下载" + i3 + "%");
                } else {
                    ((com.ubix.ssp.ad.e.z.g) b.this.f48442Y.get()).a("继续下载" + i3 + "%", i3);
                }
            }
            com.ubix.ssp.ad.e.s.c.a().a(this, null);
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2, AdError adError, String str) {
            u.e(com.ubix.ssp.ad.a.f45536b, "onFail " + i2);
            super.a(i2, adError, str);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = b.this.f48442Y;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            if (b.this.f48442Y.get() instanceof com.ubix.ssp.ad.e.z.e) {
                ((com.ubix.ssp.ad.e.z.e) b.this.f48442Y.get()).setText("重新下载");
            } else {
                ((com.ubix.ssp.ad.e.z.g) b.this.f48442Y.get()).a("重新下载", -999);
            }
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2, String str) {
            u.e(com.ubix.ssp.ad.a.f45536b, "onComplete " + i2);
            super.a(i2, str);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = b.this.f48442Y;
            if (softReference != null && softReference.get() != null) {
                if (b.this.f48442Y.get() instanceof com.ubix.ssp.ad.e.z.e) {
                    ((com.ubix.ssp.ad.e.z.e) b.this.f48442Y.get()).setText("立即安装");
                } else {
                    ((com.ubix.ssp.ad.e.z.g) b.this.f48442Y.get()).a("立即安装", -999);
                }
            }
            try {
                if (this.f48455f.containsKey("__NO_CLICK_CONFIRM_KEY__")) {
                    return;
                }
                this.f48455f.put("__NO_CLICK_CONFIRM_KEY__", "TRUE");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class h implements d.c {
        public h() {
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void a(long j2) {
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void b(long j2) {
            u.e("onReturned=" + j2);
            int i2 = 2;
            if (b.this.f48431N.S() != 2 && b.this.f48431N.S() != 4) {
                i2 = 5;
                if (b.this.f48431N.S() != 5 && b.this.f48431N.S() != 6) {
                    return;
                }
                b.a(b.this, j2);
                if (!b.this.f48429L && b.this.f48438U > 0) {
                    try {
                        SoftReference<com.ubix.ssp.ad.e.z.h> softReference = b.this.f48442Y;
                        if (softReference == null || softReference.get() == null) {
                            return;
                        }
                        ((com.ubix.ssp.ad.e.z.g) b.this.f48442Y.get()).a(b.this.c());
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
                if (b.this.f48429L) {
                    return;
                }
                b bVar = b.this;
                bVar.f48436S = true;
                if (bVar.f48420C == null) {
                    return;
                }
            } else {
                if (b.this.f48429L) {
                    return;
                }
                b bVar2 = b.this;
                bVar2.f48436S = true;
                if (bVar2.f48420C == null) {
                    return;
                }
            }
            b.this.p(i2);
            b.this.P();
        }
    }

    public class i implements a.a0 {
        public i() {
        }

        @Override // com.ubix.ssp.ad.a.a0
        public void a(int i2) {
            if (i2 == 3) {
                try {
                    b bVar = b.this;
                    bVar.b(((Activity) bVar.f48422E.get()).getApplicationContext());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public class j implements a.a0 {
        public j() {
        }

        @Override // com.ubix.ssp.ad.a.a0
        public void a(int i2) {
            try {
                b bVar = b.this;
                bVar.b(((Activity) bVar.f48422E.get()).getApplicationContext());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                b.this.a(0, false);
                b.this.P();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class l implements h.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f48461a;

        public l(int i2) {
            this.f48461a = i2;
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar) {
            try {
                int i2 = this.f48461a;
                if (i2 != 2 && i2 != 3) {
                    if (b.this.f48426I != null && (com.ubix.ssp.ad.d.b.f45786E != 1 || !b.this.f48426I.m())) {
                        b.this.f48426I.a((ImageView) null);
                    }
                    b.this.f48430M = true;
                    b.this.n();
                    if (b.this.f48420C != null) {
                        if (b.this.L() && !b.this.f48429L && b.this.f48441X == 2) {
                            b.this.a(com.ubix.ssp.ad.e.a0.a0.a.a(4, "关闭广告时尚未收到验证结果"), "");
                        }
                        b.this.f48420C.onAdClosed();
                        b.this.f48420C = null;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void b(com.ubix.ssp.ad.e.z.h hVar) {
            u.e("onViewInitialized onClosed onClosed");
            b bVar = b.this;
            bVar.f48442Y = null;
            if (this.f48461a == 2) {
                bVar.f48434Q = true;
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void c(com.ubix.ssp.ad.e.z.h hVar) {
            u.e("onViewInitialized new showRewardPopDialog");
            b.this.f48442Y = new SoftReference<>(hVar);
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar, HashMap<String, String> map) {
            b bVar;
            com.ubix.ssp.ad.d.a aVar;
            com.ubix.ssp.ad.b bVar2;
            try {
                if (b.this.f48426I != null) {
                    if (com.ubix.ssp.ad.d.b.f45786E != 1 || !b.this.f48426I.m()) {
                        b.this.f48426I.a((ImageView) null);
                    }
                    HashMap<String, String> clickMap = b.this.f48426I.getClickMap();
                    int i2 = this.f48461a;
                    if (i2 != 1) {
                        if (i2 == 0) {
                            clickMap.put("__CLICK_TRIGGER__", "18");
                            clickMap.put("__CLICK_AREA__", "18");
                        } else if (i2 == 2) {
                            clickMap.put("__CLICK_TRIGGER__", "16");
                            clickMap.put("__CLICK_AREA__", "16");
                        } else if (i2 == 3) {
                            clickMap.put("__CLICK_TRIGGER__", "19");
                            clickMap.put("__CLICK_AREA__", "19");
                        }
                        bVar = b.this;
                        aVar = bVar.f48423F;
                        bVar2 = bVar.f48426I;
                    } else {
                        if (b.this.f48431N.S() == 0) {
                            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = b.this.f48442Y;
                            if (softReference == null || softReference.get() == null || b.this.f48442Y.get().c()) {
                                return;
                            }
                            b.this.f48442Y.get().a();
                            return;
                        }
                        clickMap.put("__CLICK_TRIGGER__", PointType.LOAD_READY);
                        clickMap.put("__CLICK_AREA__", PointType.LOAD_READY);
                        bVar = b.this;
                        aVar = bVar.f48423F;
                        bVar2 = bVar.f48426I;
                    }
                    bVar.b(aVar, bVar2.getClickMap());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public b(Context context, String str) {
        super(context, str);
        this.f48427J = false;
        this.f48428K = false;
        this.f48429L = false;
        this.f48430M = false;
        this.f48432O = false;
        this.f48433P = true;
        this.f48434Q = false;
        this.f48435R = false;
        this.f48436S = false;
        this.f48437T = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        this.f48438U = 10000L;
        this.f48439V = new d();
        this.f48440W = new AtomicBoolean(false);
        this.f48441X = 0;
        this.f48421D = context;
        this.f45545i = 9;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean H() {
        /*
            r9 = this;
            r0 = 0
            android.os.Bundle r1 = new android.os.Bundle     // Catch: java.lang.Throwable -> L57
            r1.<init>()     // Catch: java.lang.Throwable -> L57
            android.content.Context r2 = r9.f48421D     // Catch: java.lang.Throwable -> L57
            if (r2 != 0) goto Lb
            return r0
        Lb:
            com.ubix.ssp.ad.d.a r2 = r9.f48423F     // Catch: java.lang.Throwable -> L57
            if (r2 == 0) goto Le4
            com.ubix.ssp.ad.e.y.a.a r2 = r2.f45759a     // Catch: java.lang.Throwable -> L57
            if (r2 == 0) goto Le4
            com.ubix.ssp.ad.e.y.a.a$b r2 = r2.f47442d     // Catch: java.lang.Throwable -> L57
            if (r2 != 0) goto L19
            goto Le4
        L19:
            boolean r2 = com.ubix.ssp.ad.e.a0.c.a(r2)     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = "IS_DOWNLOAD"
            r1.putBoolean(r3, r2)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "COUNTDOWN_STATUS"
            com.ubix.ssp.ad.d.l r3 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            int r3 = r3.g()     // Catch: java.lang.Throwable -> L57
            r1.putInt(r2, r3)     // Catch: java.lang.Throwable -> L57
            com.ubix.ssp.ad.d.l r2 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            long r2 = r2.P()     // Catch: java.lang.Throwable -> L57
            r9.f48437T = r2     // Catch: java.lang.Throwable -> L57
            com.ubix.ssp.ad.d.l r2 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            int r2 = r2.Q()     // Catch: java.lang.Throwable -> L57
            com.ubix.ssp.ad.d.l r3 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = r3.O()     // Catch: java.lang.Throwable -> L57
            com.ubix.ssp.ad.d.l r4 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            int r4 = r4.S()     // Catch: java.lang.Throwable -> L57
            r5 = 1
            switch(r4) {
                case 0: goto L6e;
                case 1: goto L63;
                case 2: goto L5a;
                case 3: goto L70;
                case 4: goto L70;
                case 5: goto L4c;
                case 6: goto L70;
                default: goto L4b;
            }     // Catch: java.lang.Throwable -> L57
        L4b:
            goto L7a
        L4c:
            r9.f48436S = r5     // Catch: java.lang.Throwable -> L57
            boolean r6 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L57
            if (r6 == 0) goto L7a
            java.lang.String r3 = "点击广告并停留%s秒获取奖励"
            goto L7a
        L57:
            r1 = move-exception
            goto Le5
        L5a:
            r9.f48436S = r5     // Catch: java.lang.Throwable -> L57
            boolean r6 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L57
            if (r6 == 0) goto L7a
            goto L6b
        L63:
            r9.f48436S = r5     // Catch: java.lang.Throwable -> L57
            boolean r6 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L57
            if (r6 == 0) goto L7a
        L6b:
            java.lang.String r3 = "点击并跳转获取奖励"
            goto L7a
        L6e:
            r9.f48434Q = r5     // Catch: java.lang.Throwable -> L57
        L70:
            r9.f48436S = r0     // Catch: java.lang.Throwable -> L57
            boolean r6 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L57
            if (r6 == 0) goto L7a
            java.lang.String r3 = "获取奖励"
        L7a:
            java.lang.String r6 = "REWARD_GUIDE_START_TIME"
            com.ubix.ssp.ad.d.l r7 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            long r7 = r7.u()     // Catch: java.lang.Throwable -> L57
            r1.putLong(r6, r7)     // Catch: java.lang.Throwable -> L57
            java.lang.String r6 = "REWARD_GUIDE_AUTO_CLOSE_TIME"
            com.ubix.ssp.ad.d.l r7 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            long r7 = r7.t()     // Catch: java.lang.Throwable -> L57
            r1.putLong(r6, r7)     // Catch: java.lang.Throwable -> L57
            java.lang.String r6 = "REWARD_TASK_TIME"
            com.ubix.ssp.ad.d.l r7 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            long r7 = r7.R()     // Catch: java.lang.Throwable -> L57
            r9.f48438U = r7     // Catch: java.lang.Throwable -> L57
            r1.putLong(r6, r7)     // Catch: java.lang.Throwable -> L57
            java.lang.String r6 = "REWARD_PLAY_PERCENT"
            r1.putInt(r6, r2)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "REWARD_TYPE"
            r1.putInt(r2, r4)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "REWARD_DURATION"
            long r6 = r9.f48437T     // Catch: java.lang.Throwable -> L57
            r1.putLong(r2, r6)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "REWARD_DESCRIPTION"
            r1.putString(r2, r3)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "VIDEO_RENDER_TYPE"
            com.ubix.ssp.ad.d.l r3 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            int r3 = r3.k0()     // Catch: java.lang.Throwable -> L57
            r1.putInt(r2, r3)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "SUPPORT_FEED_BACK"
            com.ubix.ssp.ad.d.a r3 = r9.f48423F     // Catch: java.lang.Throwable -> L57
            com.ubix.ssp.ad.e.y.a.a r3 = r3.f45759a     // Catch: java.lang.Throwable -> L57
            boolean r3 = r3.f47449k     // Catch: java.lang.Throwable -> L57
            r1.putBoolean(r2, r3)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "IS_UNNAMED"
            com.ubix.ssp.ad.d.l r3 = r9.f48431N     // Catch: java.lang.Throwable -> L57
            boolean r3 = r3.G0()     // Catch: java.lang.Throwable -> L57
            r1.putBoolean(r2, r3)     // Catch: java.lang.Throwable -> L57
            android.content.Context r2 = r9.f48421D     // Catch: java.lang.Throwable -> L57
            r3 = 9
            com.ubix.ssp.ad.b r1 = com.ubix.ssp.ad.b.a(r2, r1, r3, r0)     // Catch: java.lang.Throwable -> L57
            r9.f48426I = r1     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto Le8
            r1.setInnerListener(r9)     // Catch: java.lang.Throwable -> L57
            return r5
        Le4:
            return r0
        Le5:
            r1.printStackTrace()
        Le8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.k.b.H():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean L() {
        a.b bVar;
        a.b.g gVar;
        com.ubix.ssp.ad.d.a aVar = this.f48423F;
        if (aVar == null || (bVar = aVar.f45759a.f47442d) == null || (gVar = bVar.f47469Q) == null) {
            return false;
        }
        return gVar.f47523e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            jVar.onVideoCached();
        }
    }

    private void R() {
        com.ubix.ssp.ad.b bVar;
        SoftReference<Activity> softReference = this.f48422E;
        if (softReference == null || softReference.get() == null) {
            return;
        }
        if (TextUtils.isEmpty(this.f48423F.f45759a.f47442d.f47483m) || this.f48431N.J0()) {
            if (this.f48422E.get() == null || this.f48422E.get().isFinishing() || (bVar = this.f48426I) == null) {
                return;
            }
            bVar.postDelayed(new k(), 100L);
            return;
        }
        try {
            if (this.f48435R) {
                n();
                if (this.f48420C != null) {
                    if (L() && !this.f48429L && this.f48441X == 2) {
                        a(com.ubix.ssp.ad.e.a0.a0.a.a(4, "关闭广告时尚未收到验证结果"), "");
                    }
                    this.f48420C.onAdClosed();
                    this.f48420C = null;
                    return;
                }
                return;
            }
            String strA = this.f48423F.f45759a.f47442d.f47483m;
            try {
                com.ubix.ssp.ad.e.w.k kVarA = com.ubix.ssp.ad.e.w.k.a(this.f48421D.getApplicationContext());
                a.b bVar2 = this.f48423F.f45759a.f47442d;
                strA = kVarA.a(0, bVar2.f47465M, bVar2.f47468P, this.f48426I.getClickMap(), this.f48423F.f45759a.f47442d.f47483m);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            com.ubix.ssp.ad.e.a0.f.a(this.f48422E.get(), strA, 9, 0, this.f45540d, this.f48423F.f45759a, true, this.f48430M || this.f48429L);
            this.f48435R = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            n();
            if (this.f48420C != null) {
                if (L() && !this.f48429L && this.f48441X == 2) {
                    a(com.ubix.ssp.ad.e.a0.a0.a.a(4, "关闭广告时尚未收到验证结果"), "");
                }
                this.f48420C.onAdClosed();
                this.f48420C = null;
            }
        }
    }

    private void S() {
        String str;
        try {
            com.ubix.ssp.ad.e.s.g.c cVarA = com.ubix.ssp.ad.e.s.b.c().a(this.f48423F.f45773o);
            if (cVarA == null || cVarA.b() == null || cVarA.b().b().b() != 46) {
                return;
            }
            u.e("download complete");
            String strA = com.ubix.ssp.ad.e.a0.c.a(this.f48421D, cVarA.b().b().e());
            if (TextUtils.isEmpty(strA)) {
                str = "download file is not valid";
            } else {
                u.e("download file is valid");
                this.f48423F.f45779u = strA;
                if (com.ubix.ssp.ad.e.a0.c.g(strA)) {
                    u.e("install complete");
                    try {
                        SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f48442Y;
                        if (softReference == null || softReference.get() == null) {
                            return;
                        }
                        ((com.ubix.ssp.ad.e.z.g) ((this.f48431N.S() == 5 || this.f48431N.S() == 6) ? this.f48442Y.get() : this.f48442Y.get())).a("打开应用", -999);
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
                str = "install not complete";
            }
            u.e(str);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String o(int i2) {
        return i2 != -2 ? i2 != -1 ? i2 != 1 ? i2 != 2 ? i2 != 5 ? "01501" : "01504" : "01503" : "01502" : "01506" : "01505";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(int i2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        a.b.g gVar;
        com.ubix.ssp.ad.e.y.a.a aVar2;
        a.b bVar2;
        a.b.g gVar2;
        if (!this.f48440W.getAndSet(true)) {
            HashMap<String, Object> map = new HashMap<>(j());
            HashMap map2 = new HashMap();
            map.put("EVENT_ATTRS", map2);
            com.ubix.ssp.ad.d.a aVar3 = this.f48423F;
            if (aVar3 != null && (aVar2 = aVar3.f45759a) != null && (bVar2 = aVar2.f47442d) != null && (gVar2 = bVar2.f47469Q) != null && !TextUtils.isEmpty(gVar2.f47520b)) {
                map2.put("tx_trans_id", this.f48423F.f45759a.f47442d.f47469Q.f47520b);
            }
            UBiXRewardVideoExtra uBiXRewardVideoExtra = this.f45558v;
            if (uBiXRewardVideoExtra != null) {
                if (!TextUtils.isEmpty(uBiXRewardVideoExtra.userId)) {
                    map2.put("tx_user_id", this.f45558v.userId);
                }
                if (!TextUtils.isEmpty(this.f45558v.extra)) {
                    map2.put("tx_local_extra", this.f45558v.extra);
                }
            }
            if (!L()) {
                this.f48429L = true;
                this.f48441X = 3;
                com.ubix.ssp.ad.e.w.f.a(this.f45539c).a(com.ubix.ssp.ad.e.w.j.RewardOffline, map, o(i2), "");
                i((String) null);
                P();
                return;
            }
            com.ubix.ssp.ad.d.a aVar4 = this.f48423F;
            if (aVar4 != null && (aVar = aVar4.f45759a) != null && (bVar = aVar.f47442d) != null && (gVar = bVar.f47469Q) != null) {
                com.ubix.ssp.ad.e.a0.e0.a aVar5 = new com.ubix.ssp.ad.e.a0.e0.a(gVar.f47524f, 10000);
                aVar5.a(new C0850b(map2, map, SystemClock.elapsedRealtime(), i2));
                this.f48441X = 2;
                aVar5.a();
                com.ubix.ssp.ad.e.w.f.a(this.f45539c).a(com.ubix.ssp.ad.e.w.j.RewardStart, map, o(i2), "");
            }
        }
    }

    public String B() {
        return l(9);
    }

    public ParamsReview C() {
        return super.a(this.f48423F.f45759a, this.f48431N.x0(), this.f48431N.H0());
    }

    public long D() {
        return super.g(this.f48423F);
    }

    public String E() {
        return this.f45547k;
    }

    public String F() {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        a.b.g gVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        return (aVar2 == null || (aVar = aVar2.f45759a) == null || (bVar = aVar.f47442d) == null || (gVar = bVar.f47469Q) == null) ? "" : gVar.f47520b;
    }

    public View G() {
        return this.f48426I;
    }

    public boolean I() {
        com.ubix.ssp.ad.d.l lVar;
        return this.f48423F != null && (lVar = this.f48431N) != null && lVar.l0() && System.currentTimeMillis() / 1000 > this.f48423F.f45768j;
    }

    public boolean J() {
        return this.f48428K;
    }

    public boolean K() {
        return this.f48427J;
    }

    public boolean M() {
        return (!K() || J() || I()) ? false : true;
    }

    public boolean N() {
        int i2 = this.f48423F.f45759a.f47442d.f47489s;
        return i2 == 9001 || i2 == 9002;
    }

    public void O() {
        super.m(9);
    }

    public void P() {
        try {
            u.e("notifyRewardDialogStatus=" + this.f48441X + ";" + this.f48429L);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f48442Y;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            int i2 = this.f48441X;
            if (i2 == 0) {
                ((com.ubix.ssp.ad.e.z.g) this.f48442Y.get()).a(this.f48429L);
            } else if (i2 == 3) {
                ((com.ubix.ssp.ad.e.z.g) this.f48442Y.get()).b(this.f48429L);
            } else {
                ((com.ubix.ssp.ad.e.z.g) this.f48442Y.get()).f();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.g.k.h
    public int c() {
        long j2 = this.f48438U;
        if (j2 < 0 || j2 >= 1000) {
            return (int) (j2 / 1000);
        }
        return 1;
    }

    @Override // com.ubix.ssp.ad.g.k.h
    public int d() {
        return this.f48441X;
    }

    @Override // com.ubix.ssp.ad.g.k.h
    public void e() {
    }

    public void q(int i2) {
        super.w();
        super.u();
        try {
            com.ubix.ssp.ad.g.j jVar = this.f48420C;
            if (jVar != null) {
                jVar.onAdLoadSucceed();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (N()) {
            o(this.f48423F);
        } else {
            Q();
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void x() {
        super.x();
    }

    public static /* synthetic */ long a(b bVar, long j2) {
        long j3 = bVar.f48438U - j2;
        bVar.f48438U = j3;
        return j3;
    }

    private void m(com.ubix.ssp.ad.d.a aVar) {
        this.f48427J = true;
        this.f48431N = a(aVar.f45759a);
        n(aVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0032. Please report as an issue. */
    private Bundle n(int i2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        long j2;
        int i3;
        int iC;
        long j3;
        int i4;
        Bundle bundle = new Bundle();
        bundle.putInt("TYPE", i2);
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 != null && (aVar = aVar2.f45759a) != null && (bVar = aVar.f47442d) != null) {
            if (i2 == 1) {
                int iQ = this.f48431N.Q();
                switch (this.f48431N.S()) {
                    case 0:
                        long jMin = Math.min(this.f48437T, (this.f48424G * iQ) / 100);
                        this.f48437T = jMin;
                        j2 = jMin - this.f48425H;
                        bundle.putInt("TITLE_TEMP", 0);
                        iC = (((int) j2) / 1000) + 1;
                        bundle.putString("ELAPSE", String.valueOf(iC));
                        break;
                    case 1:
                        bundle.putInt("TITLE_TEMP", 1);
                        bundle.putString("ELAPSE", "");
                        break;
                    case 2:
                        bundle.putInt("TITLE_TEMP", 3);
                        bundle.putString("ELAPSE", "");
                        break;
                    case 3:
                        long jMin2 = Math.min(this.f48437T, (this.f48424G * iQ) / 100);
                        this.f48437T = jMin2;
                        j2 = jMin2 - this.f48425H;
                        i3 = 5;
                        bundle.putInt("TITLE_TEMP", i3);
                        iC = (((int) j2) / 1000) + 1;
                        bundle.putString("ELAPSE", String.valueOf(iC));
                        break;
                    case 4:
                        long jMin3 = Math.min(this.f48437T, (this.f48424G * iQ) / 100);
                        this.f48437T = jMin3;
                        j2 = jMin3 - this.f48425H;
                        i3 = 8;
                        bundle.putInt("TITLE_TEMP", i3);
                        iC = (((int) j2) / 1000) + 1;
                        bundle.putString("ELAPSE", String.valueOf(iC));
                        break;
                    case 5:
                        j3 = 1000;
                        this.f48437T = Math.min(this.f48437T, (this.f48424G * iQ) / 100);
                        i4 = 9;
                        bundle.putInt("TITLE_TEMP", i4);
                        bundle.putString("TASK_TIME", String.valueOf(this.f48431N.R() / j3));
                        iC = c();
                        bundle.putString("ELAPSE", String.valueOf(iC));
                        break;
                    case 6:
                        j3 = 1000;
                        this.f48437T = Math.min(this.f48437T, (this.f48424G * iQ) / 100);
                        i4 = 10;
                        bundle.putInt("TITLE_TEMP", i4);
                        bundle.putString("TASK_TIME", String.valueOf(this.f48431N.R() / j3));
                        iC = c();
                        bundle.putString("ELAPSE", String.valueOf(iC));
                        break;
                }
            }
            if (i2 == 0) {
                bundle.putBoolean("HAS_INDICATE", true);
            }
            bundle.putString("TITLE", bVar.f47475e);
            bundle.putString("SUB_TITLE", bVar.f47476f);
            bundle.putString("ICON_URL", bVar.f47479i);
            bundle.putString("BUTTON_TEXT", bVar.f47457E);
            bundle.putBoolean("GOT_VIDEO_CACHE", this.f48424G != 0);
            boolean zA = com.ubix.ssp.ad.e.a0.c.a(bVar);
            bundle.putBoolean("IS_DOWNLOAD", zA);
            if (zA) {
                bundle.putString("DOWNLOAD_APP_NAME", bVar.f47477g);
                bundle.putString("DOWNLOAD_APP_VERSION", bVar.f47453A);
                bundle.putString("DOWNLOAD_APP_PUBLISHER", bVar.f47496z);
                bundle.putLong("DOWNLOAD_APP_SIZE", bVar.f47459G);
                bundle.putString("DOWNLOAD_APP_ICP_NUMBER", bVar.f47460H);
                bundle.putString("DOWNLOAD_APP_SUITABLE_AGE", bVar.f47461I);
            }
        }
        return bundle;
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void c(int i2) {
        com.ubix.ssp.ad.g.j jVar;
        this.f48430M = true;
        o();
        com.ubix.ssp.ad.d.a aVar = this.f48423F;
        com.ubix.ssp.ad.e.y.a.a aVar2 = aVar.f45759a;
        long j2 = this.f48425H;
        long j3 = this.f48424G;
        b(aVar2, a(aVar, j2, j3, j3));
        R();
        if (!N() || (jVar = this.f48420C) == null) {
            return;
        }
        jVar.onVideoPlayCompleted();
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(int r7) {
        /*
            r6 = this;
            com.ubix.ssp.ad.d.l r7 = r6.f48431N
            boolean r7 = r7.A0()
            r0 = 3
            if (r7 != 0) goto L37
            boolean r7 = r6.f48429L
            if (r7 != 0) goto L11
            int r7 = r6.f48441X
            if (r7 != r0) goto L15
        L11:
            boolean r7 = r6.f48436S
            if (r7 != 0) goto L37
        L15:
            boolean r7 = r6.f48430M
            if (r7 != 0) goto L37
            java.lang.ref.SoftReference<android.app.Activity> r7 = r6.f48422E
            if (r7 == 0) goto L37
            java.lang.Object r7 = r7.get()
            if (r7 == 0) goto L37
            java.lang.ref.SoftReference<android.app.Activity> r7 = r6.f48422E
            java.lang.Object r7 = r7.get()
            android.app.Activity r7 = (android.app.Activity) r7
            boolean r7 = r7.isFinishing()
            if (r7 != 0) goto L37
            r7 = 1
            r0 = 0
            r6.a(r7, r0)
            return
        L37:
            com.ubix.ssp.ad.d.l r7 = r6.f48431N
            boolean r7 = r7.A0()
            r1 = 0
            java.lang.String r2 = ""
            java.lang.String r3 = "关闭广告时尚未收到验证结果"
            r4 = 4
            r5 = 2
            if (r7 != 0) goto L93
            boolean r7 = r6.f48429L
            if (r7 != 0) goto L6a
            int r7 = r6.f48441X
            if (r7 != r0) goto L4f
            goto L6a
        L4f:
            boolean r7 = r6.f45553q
            if (r7 != 0) goto L57
            r6.R()
            return
        L57:
            com.ubix.ssp.ad.g.j r7 = r6.f48420C
            if (r7 == 0) goto Lb3
            boolean r7 = r6.L()
            if (r7 == 0) goto Lac
            boolean r7 = r6.f48429L
            if (r7 != 0) goto Lac
            int r7 = r6.f48441X
            if (r7 != r5) goto Lac
            goto La5
        L6a:
            boolean r7 = r6.f45543g
            if (r7 != 0) goto L72
            r6.R()
            return
        L72:
            com.ubix.ssp.ad.g.j r7 = r6.f48420C
            if (r7 == 0) goto Lb3
            boolean r7 = r6.L()
            if (r7 == 0) goto L8b
            boolean r7 = r6.f48429L
            if (r7 != 0) goto L8b
            int r7 = r6.f48441X
            if (r7 != r5) goto L8b
            com.ubix.ssp.open.AdError r7 = com.ubix.ssp.ad.e.a0.a0.a.a(r4, r3)
            r6.a(r7, r2)
        L8b:
            com.ubix.ssp.ad.g.j r7 = r6.f48420C
            r7.onAdClosed()
            r6.f48420C = r1
            return
        L93:
            com.ubix.ssp.ad.g.j r7 = r6.f48420C
            if (r7 == 0) goto Lb3
            boolean r7 = r6.L()
            if (r7 == 0) goto Lac
            boolean r7 = r6.f48429L
            if (r7 != 0) goto Lac
            int r7 = r6.f48441X
            if (r7 != r5) goto Lac
        La5:
            com.ubix.ssp.open.AdError r7 = com.ubix.ssp.ad.e.a0.a0.a.a(r4, r3)
            r6.a(r7, r2)
        Lac:
            com.ubix.ssp.ad.g.j r7 = r6.f48420C
            r7.onAdClosed()
            r6.f48420C = r1
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.k.b.e(int):void");
    }

    @Override // com.ubix.ssp.ad.g.k.h
    public void f() {
        if (!this.f48436S) {
            this.f48436S = true;
        }
        if ((this.f48431N.S() != 0 && this.f48431N.S() != 4 && this.f48431N.S() != 3 && this.f48431N.S() != 6) || this.f48429L || this.f48420C == null) {
            return;
        }
        p(0);
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void g(int i2) {
    }

    @Override // com.ubix.ssp.ad.a
    public void h() {
        super.h();
        try {
            try {
                u.e("onActivityCreated destroy" + this.f48426I);
                com.ubix.ssp.ad.b bVar = this.f48426I;
                if (bVar != null) {
                    ViewGroup viewGroup = (ViewGroup) bVar.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.f48426I);
                    }
                    this.f48426I.j();
                    this.f48426I = null;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.f48420C = null;
        } catch (Throwable th) {
            this.f48420C = null;
            throw th;
        }
    }

    public void i(int i2) {
        com.ubix.ssp.ad.d.a aVar;
        com.ubix.ssp.ad.e.y.a.a aVar2;
        a.b bVar;
        Context context = this.f48421D;
        if (context == null || (aVar = this.f48423F) == null || (aVar2 = aVar.f45759a) == null || (bVar = aVar2.f47442d) == null) {
            return;
        }
        com.ubix.ssp.ad.e.a0.f.a(context, bVar.f47454B, 0, this.f48431N, this.f45540d, null);
    }

    @Override // com.ubix.ssp.ad.a
    public AdError j(com.ubix.ssp.ad.d.a aVar) {
        int i2;
        String str;
        a.b.C0834b c0834b;
        a.b bVar = aVar.f45759a.f47442d;
        int i3 = bVar.f47489s;
        if (i3 == 9003 || i3 == 9004) {
            a.b.C0834b[] c0834bArr = bVar.f47480j;
            if (c0834bArr != null && c0834bArr.length != 0 && (c0834b = c0834bArr[0]) != null && !TextUtils.isEmpty(c0834b.f47499c)) {
                if (TextUtils.isEmpty(aVar.f45759a.f47442d.f47479i)) {
                    return com.ubix.ssp.ad.e.a0.a0.a.k(14, "ICON资源链接异常");
                }
                if (TextUtils.isEmpty(aVar.f45759a.f47442d.f47475e)) {
                    return com.ubix.ssp.ad.e.a0.a0.a.k(15, "标题内容异常");
                }
                return null;
            }
            i2 = 10;
            str = "图片资源链接异常";
        } else if (i3 == 9001 || i3 == 9002) {
            a.b.l lVar = bVar.f47481k;
            if (lVar == null || TextUtils.isEmpty(lVar.f47537c)) {
                i2 = 13;
                str = "封面图资源链接异常";
            } else {
                a.b.l lVar2 = aVar.f45759a.f47442d.f47481k;
                if (lVar2 != null && !TextUtils.isEmpty(lVar2.f47536b)) {
                    if (TextUtils.isEmpty(aVar.f45759a.f47442d.f47479i)) {
                        return com.ubix.ssp.ad.e.a0.a0.a.k(14, "ICON资源链接异常");
                    }
                    if (TextUtils.isEmpty(aVar.f45759a.f47442d.f47475e)) {
                        return com.ubix.ssp.ad.e.a0.a0.a.k(15, "标题内容异常");
                    }
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

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void c(int r12, int r13) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.k.b.c(int, int):void");
    }

    private void g(AdError adError) {
        super.b(adError);
        super.a(adError);
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            jVar.onError(adError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String str) {
        String str2;
        int i2;
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        a.b.g gVar;
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            jVar.onVideoRewarded();
            com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
            if (aVar2 == null || (aVar = aVar2.f45759a) == null || (bVar = aVar.f47442d) == null || (gVar = bVar.f47469Q) == null) {
                str2 = "";
                i2 = 0;
            } else {
                str2 = gVar.f47521c;
                i2 = gVar.f47522d;
            }
            this.f48420C.a(true, str2, i2, str, null);
        }
        if (this.f48426I != null) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "reward");
            this.f48426I.a(bundle);
        }
    }

    private void n(com.ubix.ssp.ad.d.a aVar) {
        super.v();
        if (!H()) {
            a(0, com.ubix.ssp.ad.e.a0.a0.a.g(6, "创建ViewClass失败，请勿重试"));
            return;
        }
        a.b bVar = aVar.f45759a.f47442d;
        int i2 = bVar.f47489s;
        if (i2 == 9004 || i2 == 9003) {
            a(bVar.f47480j[0].f47499c, true);
        } else if (i2 == 9002 || i2 == 9001) {
            a(bVar.f47481k.f47537c, true);
        } else {
            a(0, com.ubix.ssp.ad.e.a0.a0.a.g(16, "广告模板Id异常,或资源与模板不匹配"));
        }
    }

    @Override // com.ubix.ssp.ad.a
    public a.z a(HashMap<String, String> map, int i2, com.ubix.ssp.ad.e.s.e eVar) {
        return this.f45545i != 9 ? super.a(map, i2, eVar) : new g(map, i2, eVar, map);
    }

    @Override // com.ubix.ssp.ad.g.k.h
    public void b() {
        SoftReference<Activity> softReference = this.f48422E;
        if (softReference == null || softReference.get() == null || this.f48422E.get().isFinishing() || this.f48431N.S() == 0 || this.f48429L || this.f48441X == 3) {
            return;
        }
        a(2, false);
    }

    public void e(AdError adError) {
        super.d(adError);
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            jVar.onError(adError);
        }
    }

    public void f(int i2) {
        com.ubix.ssp.ad.d.a aVar;
        com.ubix.ssp.ad.e.y.a.a aVar2;
        a.b bVar;
        Context context = this.f48421D;
        if (context == null || (aVar = this.f48423F) == null || (aVar2 = aVar.f45759a) == null || (bVar = aVar2.f47442d) == null) {
            return;
        }
        com.ubix.ssp.ad.e.a0.f.a(context, bVar.f47455C, 0, this.f48431N, this.f45540d, null);
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void h(int i2) {
        com.ubix.ssp.ad.g.j jVar;
        if (!N() || (jVar = this.f48420C) == null) {
            return;
        }
        jVar.onVideoPlayStarted();
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void j(int i2) {
    }

    public boolean o(com.ubix.ssp.ad.d.a aVar) {
        b(aVar.f45759a.f47442d.f47481k.f47536b, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(AdError adError) {
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            jVar.onError(adError);
        }
    }

    public void b(int i2) {
        com.ubix.ssp.ad.d.a aVar;
        com.ubix.ssp.ad.e.y.a.a aVar2;
        a.b bVar;
        Context context = this.f48421D;
        if (context == null || (aVar = this.f48423F) == null || (aVar2 = aVar.f45759a) == null || (bVar = aVar2.f47442d) == null) {
            return;
        }
        com.ubix.ssp.ad.e.a0.f.a(context, bVar.f47458F, 0, this.f48431N, this.f45540d, null);
    }

    @Override // com.ubix.ssp.ad.a
    public void c(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        super.c(context, intent, j2, broadcastReceiver);
        if (this.f45545i == 9) {
            a(3, new Object[0]);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.h
    public boolean g() {
        if (!this.f48433P || !this.f48434Q || this.f48429L) {
            return false;
        }
        this.f48433P = false;
        return true;
    }

    public void h(String str) {
        if (TextUtils.isEmpty(str)) {
            b(com.ubix.ssp.ad.e.a0.a0.a.j(10, "竞价广告体为空或解析异常，请检查传入的参数是否正确"));
        } else {
            e(str);
        }
    }

    private void c(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        if (this.f45553q) {
            return;
        }
        int iA = a(aVar, 9, map, this.f48431N.L(), aVar.f45773o, 0, this.f48431N.o() == 1, null, this.f48439V);
        if ((this.f48431N.S() == 1 || this.f48431N.S() == 3) && !this.f48429L) {
            this.f48436S = true;
            if (this.f48420C != null) {
                p(iA == 1 ? -1 : 1);
                P();
            }
        }
        c(iA, this.f48430M ? 1 : 0);
    }

    public void a(int i2) {
        a(this.f48423F, this.f48431N);
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void b(int i2, int i3) {
        u.e("onVideoVisibilityChange =" + i3);
        if (i3 == 0 && this.f48432O) {
            if (this.f48422E.get() != null) {
                this.f48422E.get().finish();
            }
        } else if (i3 == 0) {
            S();
        }
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void a(int i2, int i3) {
        u.a("onVideoPlayError :" + i3);
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            jVar.onError(com.ubix.ssp.ad.e.a0.a0.a.d(3, "缓冲超时"));
        }
        if (this.f48429L) {
            return;
        }
        p(-2);
        R();
    }

    public void b(int i2, View view, HashMap<String, String> map) {
        if (this.f45553q) {
            return;
        }
        if (map == null) {
            map = this.f48426I.getClickMap();
            map.put("__CLICK_TRIGGER__", "");
        }
        a(this.f48423F, this.f48426I, this.f48431N, map);
    }

    public void a(int i2, long j2, long j3) {
        if (j3 > 0) {
            long j4 = this.f45545i == 1 ? 5000L : 0L;
            this.f48424G = j3;
            this.f48425H = j2;
            a(this.f48423F, i2, j2, j3, j4);
            com.ubix.ssp.ad.d.l lVar = this.f48431N;
            if (lVar == null || lVar.S() != 0 || !this.f48436S || this.f48429L || this.f48420C == null) {
                return;
            }
            p(0);
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void b(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.b(i2, aVar);
        if (i2 == 3) {
            a(2, new Object[0]);
        }
    }

    public void a(int i2, Bundle bundle) {
        super.a(bundle);
    }

    @Override // com.ubix.ssp.ad.a
    public void b(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        super.b(context, intent, j2, broadcastReceiver);
        StringBuilder sb = new StringBuilder();
        sb.append("landing page rewarded ? ");
        boolean booleanExtra = intent.getBooleanExtra("error", false);
        sb.append(booleanExtra);
        u.e(sb.toString());
        if (this.f48431N.S() == 0 || this.f48431N.S() == 6 || this.f48431N.S() == 5 || booleanExtra) {
            return;
        }
        m.a(context).a(broadcastReceiver);
        if (this.f48429L) {
            return;
        }
        this.f48436S = true;
        if (this.f48420C != null) {
            p(2);
            P();
        }
    }

    public void a(int i2, View view) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        String str;
        super.y();
        d(this.f48423F);
        c(this.f48423F);
        try {
            com.ubix.ssp.ad.g.j jVar = this.f48420C;
            if (jVar != null) {
                jVar.onAdExposed();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 != null && (aVar = aVar2.f45759a) != null && (bVar = aVar.f47442d) != null && (str = bVar.f47479i) != null) {
            f(str);
        }
        b(this.f48426I, this.f48431N);
    }

    private void b(String str, boolean z2) {
        com.ubix.ssp.ad.e.v.e.c().a(str, new f(z2));
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.a(i2, aVar);
        if (com.ubix.ssp.ad.d.b.f45815v) {
            a(this.f48426I.getContext(), this.f48423F, this.f48426I.getClickMap());
        }
    }

    public void a(int i2, AdError adError) {
        super.c(adError);
        this.f48427J = false;
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            jVar.onError(adError);
        }
    }

    public void b(HashMap<String, String> map) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, boolean z2) {
        if (this.f48442Y != null) {
            return;
        }
        Bundle bundleN = n(1);
        bundleN.putInt("REWARD_VIDEO_DIALOG_TYPE", i2);
        bundleN.putInt("REWARD_GUIDE_AUTO_CLOSE_TIME", (int) (this.f48431N.t() / 1000));
        bundleN.putBoolean("REWARD_VIDEO_DIALOG_AUTO_CLOSE", z2);
        bundleN.putBoolean("IS_REWARDED", this.f48429L);
        if (this.f48431N.S() == 0 && i2 == 1 && this.f45554r != null) {
            com.ubix.ssp.ad.e.s.c.a().a(this.f45554r, null);
        }
        com.ubix.ssp.ad.e.a0.c.a(this.f48422E.get(), bundleN, new l(i2), new a());
    }

    @Override // com.ubix.ssp.ad.a
    public boolean b(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        if (this.f45545i != 9) {
            super.b(aVar, map);
        }
        if (this.f45545i == 9) {
            map.put("__NO_CLICK_CONFIRM_KEY__", "TRUE");
            map.put("__CAN_RUN_ACTIVE_KEY__", "TRUE");
            super.b(this.f48423F, map);
            com.ubix.ssp.ad.b bVar = this.f48426I;
            if (bVar != null && com.ubix.ssp.ad.d.b.f45786E == 1 && bVar.m()) {
                this.f48426I.a(this.f48431N.B(), this.f48431N.A());
            }
            com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
            if (aVar2.f45772n) {
                map.put("__AUCTION_PRICE__", aVar2.f45771m);
            }
            a(this.f48423F.f45759a, map, 201);
            map.put("__MULTI_CLICK_KEY__", "TRUE");
            try {
                a(0, new Object[0]);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", "cancel");
            this.f48426I.k();
            this.f48426I.a(bundle);
            c(this.f48423F, map);
        }
        return true;
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, Object... objArr) {
        if (this.f48431N.n0() && i2 != 0) {
            super.a(i2, objArr);
        }
        if (this.f45545i == 9) {
            StringBuilder sb = new StringBuilder();
            sb.append("runClickCallback ");
            sb.append(i2);
            sb.append(";canRun=");
            sb.append((!this.f48431N.n0() && i2 == 0) || (this.f48431N.n0() && i2 != 0));
            u.e(sb.toString());
            if (((this.f48431N.n0() || i2 != 0) && (!this.f48431N.n0() || i2 == 0)) || this.f48420C == null || this.f48431N.m0()) {
                return;
            }
            this.f48420C.onVideoClicked();
        }
    }

    public void a(long j2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, j2);
    }

    public void a(Activity activity) {
        String str;
        AdError adErrorD;
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        int i2;
        if (activity != null) {
            this.f48422E = new SoftReference<>(activity);
            com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
            if (aVar2 == null || (aVar = aVar2.f45759a) == null || (bVar = aVar.f47442d) == null || bVar.f47481k == null || this.f48426I == null) {
                activity.finish();
                adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(9, "内容加载失败");
            } else if (J()) {
                activity.finish();
                adErrorD = com.ubix.ssp.ad.e.a0.a0.a.c(3, "广告重复展示");
            } else if (!K()) {
                activity.finish();
                adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(5, "内容加载失败");
            } else {
                if (!I()) {
                    int iR = 0;
                    Bundle bundleN = n(0);
                    if (N()) {
                        bundleN.putStringArray("IMAGE_URL", new String[]{this.f48423F.f45759a.f47442d.f47481k.f47537c});
                        bundleN.putString("VIDEO_URL", this.f48423F.f45759a.f47442d.f47481k.f47536b);
                        bundleN.putBoolean("AUTO_MUTE", this.f48431N.K0());
                    } else {
                        bundleN.putStringArray("IMAGE_URL", new String[]{this.f48423F.f45759a.f47442d.f47480j[0].f47499c});
                    }
                    bundleN.putBoolean("IS_VIDEO", N());
                    bundleN.putInt("TEMPLATE_ID", 99001);
                    bundleN.putBoolean("IS_UNNAMED", this.f48431N.G0());
                    if (this.f48431N.b()) {
                        bundleN.putString("AD_SOURCE", this.f48423F.f45759a.f47442d.f47490t);
                    }
                    a.b.f fVar = this.f48423F.f45759a.f47442d.f47464L;
                    if (fVar != null && (i2 = fVar.f47516b) != 0) {
                        bundleN.putInt("RENDER_MODE", i2);
                        bundleN.putFloat("SCALE_IGNORE_PERCENT", (this.f48423F.f45759a.f47442d.f47464L.f47517c * 1.0f) / 100.0f);
                        bundleN.putInt("SCALE_HORIZONTAL_MARGIN", this.f48423F.f45759a.f47442d.f47464L.f47518d);
                        bundleN.putInt("SCALE_VERTICAL_MARGIN", this.f48423F.f45759a.f47442d.f47464L.f47519e);
                    }
                    boolean z2 = this.f48431N.S() == 0 || this.f48431N.S() == 4 || this.f48431N.S() == 3 || this.f48431N.S() == 6;
                    if (!this.f48423F.f45781w && (this.f48431N.r() != 2 || z2)) {
                        iR = this.f48431N.r();
                    }
                    bundleN.putInt("VIDEO_ECTR", iR);
                    bundleN.putString("DOWNLOAD_APP_NAME", bVar.f47477g);
                    this.f48426I.b(bundleN);
                    this.f48426I.setShowCloseBtnDelay(this.f48431N.e0());
                    if (com.ubix.ssp.ad.e.a0.c.a(bVar)) {
                        this.f48426I.a(bVar.f47477g, bVar.f47453A, bVar.f47496z, bVar.f47478h, bVar.f47460H, bVar.f47461I, bVar.f47459G);
                    }
                    this.f48428K = true;
                    return;
                }
                activity.finish();
                str = "文件已经过期";
            }
            e(adErrorD);
        }
        str = "Activity/Context为空";
        adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(4, str);
        e(adErrorD);
    }

    @Override // com.ubix.ssp.ad.a
    public void a(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        super.a(context, intent, j2, broadcastReceiver);
        if (this.f48431N.S() == 6 || this.f48431N.S() == 5) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
            u.e("duration=" + this.f48438U + ";" + jElapsedRealtime);
            this.f48438U = this.f48438U - jElapsedRealtime;
            if (this.f48429L || this.f48438U <= 0) {
                if (this.f48429L) {
                    return;
                }
                this.f48436S = true;
                if (this.f48420C != null) {
                    p(5);
                    P();
                    return;
                }
                return;
            }
            try {
                SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f48442Y;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                ((com.ubix.ssp.ad.e.z.g) this.f48442Y.get()).a(c());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void a(Message message) {
        int i2 = message.what;
        if (i2 != 5) {
            if (i2 != 6) {
                if (i2 != 10) {
                    if (i2 != 11) {
                        return;
                    }
                }
            }
            g((AdError) message.obj);
            return;
        }
        com.ubix.ssp.ad.d.a aVar = (com.ubix.ssp.ad.d.a) ((List) message.obj).get(0);
        this.f48423F = aVar;
        aVar.f45763e = 9;
        m(aVar);
    }

    @Override // com.ubix.ssp.ad.a
    public void a(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        super.a(aVar, map);
    }

    public void a(com.ubix.ssp.ad.g.j jVar) {
        this.f48420C = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdError adError, String str) {
        String str2;
        int i2;
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        a.b.g gVar;
        com.ubix.ssp.ad.g.j jVar = this.f48420C;
        if (jVar != null) {
            com.ubix.ssp.ad.d.a aVar2 = this.f48423F;
            if (aVar2 == null || (aVar = aVar2.f45759a) == null || (bVar = aVar.f47442d) == null || (gVar = bVar.f47469Q) == null) {
                str2 = "";
                i2 = 0;
            } else {
                str2 = gVar.f47521c;
                i2 = gVar.f47522d;
            }
            jVar.a(false, str2, i2, str, adError);
        }
        com.ubix.ssp.ad.b bVar2 = this.f48426I;
        if (bVar2 != null) {
            bVar2.postDelayed(new c(), 100L);
        }
    }

    public void a(UBiXRewardVideoExtra uBiXRewardVideoExtra) {
        this.f45558v = uBiXRewardVideoExtra;
    }

    private void a(String str, boolean z2) {
        com.ubix.ssp.ad.e.v.e.b().a(str, new e(z2));
    }

    @Override // com.ubix.ssp.ad.a
    public void a(HashMap<String, String> map) {
        this.f45562z = map;
    }

    @Override // com.ubix.ssp.ad.g.k.h
    public boolean a() {
        return this.f48429L;
    }

    @Override // com.ubix.ssp.ad.a
    public boolean a(com.ubix.ssp.ad.d.a aVar, boolean z2, HashMap<String, String> map) {
        if (this.f45545i != 9) {
            return super.a(aVar, z2, map);
        }
        try {
            int iB = com.ubix.ssp.ad.e.s.b.c().b(aVar.f45773o);
            if (iB == 47) {
                this.f45554r = null;
            }
            u.e("triggerGlobalDownloadWindow status=" + iB + ";" + this.f45555s);
            if (!z2 && iB == 44) {
                com.ubix.ssp.ad.e.s.b.c().a(this.f45539c, aVar.f45773o);
                SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f48442Y;
                if (softReference != null && softReference.get() != null) {
                    ((com.ubix.ssp.ad.e.z.g) this.f48442Y.get()).a("下载继续", -999);
                }
                if (this.f45554r != null) {
                    com.ubix.ssp.ad.e.s.c.a().a(this.f45554r, null);
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
}
