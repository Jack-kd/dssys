package com.ubix.ssp.ad.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.ubix.ssp.ad.d.l;
import com.ubix.ssp.ad.e.a0.f;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdSize;
import com.ubix.ssp.open.ParamsReview;
import java.lang.ref.SoftReference;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class b extends com.ubix.ssp.ad.a implements com.ubix.ssp.ad.g.k.a {

    /* renamed from: C, reason: collision with root package name */
    private static volatile int f45665C = -1;

    /* renamed from: D, reason: collision with root package name */
    private static volatile String f45666D = "";

    /* renamed from: E, reason: collision with root package name */
    private int f45667E;

    /* renamed from: F, reason: collision with root package name */
    private boolean f45668F;

    /* renamed from: G, reason: collision with root package name */
    private boolean f45669G;

    /* renamed from: H, reason: collision with root package name */
    private com.ubix.ssp.ad.g.a f45670H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f45671I;

    /* renamed from: J, reason: collision with root package name */
    private SoftReference<RelativeLayout> f45672J;

    /* renamed from: K, reason: collision with root package name */
    public ScheduledExecutorService f45673K;

    /* renamed from: L, reason: collision with root package name */
    private SoftReference<Context> f45674L;

    /* renamed from: M, reason: collision with root package name */
    private com.ubix.ssp.ad.d.a f45675M;

    /* renamed from: N, reason: collision with root package name */
    private AdSize f45676N;

    /* renamed from: O, reason: collision with root package name */
    private l f45677O;

    /* renamed from: P, reason: collision with root package name */
    private com.ubix.ssp.ad.g.c f45678P;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f45679a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f45680b;

        public a(Context context, String str) {
            this.f45679a = context;
            this.f45680b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                v.b(this.f45679a.getApplicationContext(), "ubix_sp_capacity", "b_cur", b.f45665C);
                v.b(this.f45679a.getApplicationContext(), "ubix_sp_capacity", "b_cur_time", this.f45680b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.c.b$b, reason: collision with other inner class name */
    public class ThreadFactoryC0784b implements ThreadFactory {
        public ThreadFactoryC0784b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.OtherRequestExecuteThread");
        }
    }

    public class c implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bundle f45683a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.b f45684b;

        public c(Bundle bundle, com.ubix.ssp.ad.b bVar) {
            this.f45683a = bundle;
            this.f45684b = bVar;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            Bundle bundleA = b.this.a(str);
            bundleA.putAll(this.f45683a);
            if (b.this.f45675M == null || b.this.f45675M.f45759a == null || b.this.f45675M.f45759a.f47442d == null) {
                AdError adErrorG = com.ubix.ssp.ad.e.a0.a0.a.g(12, "参数异常");
                b bVar = b.this;
                bVar.o(bVar.f45667E);
                b.this.a(0, adErrorG);
                return;
            }
            if (b.this.f45677O.b()) {
                bundleA.putString("AD_SOURCE", b.this.f45675M.f45759a.f47442d.f47490t);
            }
            this.f45684b.b(bundleA);
            a.b bVar2 = b.this.f45675M.f45759a.f47442d;
            if (com.ubix.ssp.ad.e.a0.c.a(bVar2)) {
                this.f45684b.a(bVar2.f47477g, bVar2.f47453A, bVar2.f47496z, bVar2.f47478h, bVar2.f47460H, bVar2.f47461I, bVar2.f47459G);
            }
            b.this.n(0);
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            b bVar = b.this;
            bVar.o(bVar.f45667E);
            b.this.a(0, adError);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private int f45686a;

        public d(int i2) {
            this.f45686a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f45671I) {
                return;
            }
            u.b("run into RequestRunnable, refreshTime is " + this.f45686a);
            ((com.ubix.ssp.ad.a) b.this).f45547k = UUID.randomUUID().toString().replace("-", "");
            b bVar = b.this;
            bVar.m(bVar.f45667E);
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private int f45688a;

        public e(int i2) {
            this.f45688a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.o(this.f45688a);
        }
    }

    public b(Context context, String str) {
        this(context, str, new AdSize(0, 0));
    }

    private void F() {
        ScheduledExecutorService scheduledExecutorService = this.f45673K;
        if (scheduledExecutorService == null || scheduledExecutorService.isTerminated()) {
            this.f45673K = Executors.newScheduledThreadPool(1, new ThreadFactoryC0784b());
        }
    }

    private boolean G() {
        l lVar;
        return this.f45675M != null && (lVar = this.f45677O) != null && lVar.l0() && System.currentTimeMillis() / 1000 > this.f45675M.f45768j;
    }

    private void J() {
        com.ubix.ssp.ad.g.a aVar = this.f45670H;
        if (aVar != null) {
            aVar.onAdLoadSucceed();
        }
    }

    private void K() {
        com.ubix.ssp.ad.e.y.a.a aVar;
        String str;
        Bundle bundle = new Bundle();
        bundle.putInt("AD_WIDTH", this.f45676N.getWidth());
        bundle.putInt("AD_HEIGHT", this.f45676N.getHeight());
        bundle.putInt("VIDEO_RENDER_TYPE", this.f45677O.k0());
        bundle.putBoolean("IS_UNNAMED", this.f45677O.G0());
        com.ubix.ssp.ad.d.a aVar2 = this.f45675M;
        if (aVar2 != null && (aVar = aVar2.f45759a) != null && aVar.f47442d != null) {
            bundle.putInt("AUTO_PLAY", this.f45677O.c());
            bundle.putInt("TEMPLATE_ID", this.f45675M.f45759a.f47442d.f47489s);
            bundle.putBoolean("IS_DOWNLOAD", com.ubix.ssp.ad.e.a0.c.a(this.f45675M.f45759a.f47442d));
            bundle.putString("TITLE", TextUtils.isEmpty(this.f45675M.f45759a.f47442d.f47476f) ? TextUtils.isEmpty(this.f45675M.f45759a.f47442d.f47475e) ? "" : this.f45675M.f45759a.f47442d.f47475e : this.f45675M.f45759a.f47442d.f47476f);
            a.b.l lVar = this.f45675M.f45759a.f47442d.f47481k;
            if (lVar != null && (str = lVar.f47536b) != null) {
                bundle.putString("VIDEO_URL", str);
            }
        }
        SoftReference<Context> softReference = this.f45674L;
        if (softReference == null || softReference.get() == null) {
            a(0, com.ubix.ssp.ad.e.a0.a0.a.g(4, "Activity/Context为空"));
            return;
        }
        com.ubix.ssp.ad.b bVarA = com.ubix.ssp.ad.b.a(this.f45674L.get(), bundle, 4, true);
        bVarA.setInnerListener(this);
        bVarA.setShowCloseBtnDelay(0);
        SoftReference<RelativeLayout> softReference2 = this.f45672J;
        if (softReference2 == null || softReference2.get() == null) {
            a(0, com.ubix.ssp.ad.e.a0.a0.a.g(5, "广告外层为空或者广告不可见"));
            return;
        }
        this.f45672J.get().removeAllViews();
        this.f45672J.get().addView(bVarA, -2, -2);
        com.ubix.ssp.ad.e.v.e.b().a(b(this.f45675M.f45759a) ? this.f45675M.f45759a.f47442d.f47481k.f47537c : this.f45675M.f45759a.f47442d.f47480j[0].f47499c, new c(bundle, bVarA));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o(int i2) {
        u.b("run into rotateAd, refreshTime is " + i2);
        ScheduledExecutorService scheduledExecutorService = this.f45673K;
        if (scheduledExecutorService != null && !scheduledExecutorService.isTerminated()) {
            if (((ScheduledThreadPoolExecutor) this.f45673K).getQueue().size() > 0) {
                u.b("queue only need 1 thread,returned.");
                return;
            }
            if (i2 <= 0) {
                u.b("run into rotateAd, need to stop  is " + i2);
                return;
            }
            if (this.f45671I) {
                return;
            }
            SoftReference<RelativeLayout> softReference = this.f45672J;
            if (softReference != null && softReference.get() != null && this.f45672J.get().getParent() != null) {
                SoftReference<RelativeLayout> softReference2 = this.f45672J;
                if (softReference2 == null || softReference2.get() == null || this.f45672J.get().isShown()) {
                    F();
                    this.f45673K.schedule(new d(i2), i2, TimeUnit.SECONDS);
                    return;
                } else {
                    F();
                    this.f45673K.schedule(new e(i2), i2, TimeUnit.SECONDS);
                    return;
                }
            }
            u.b("banner lost parent, terminal.");
            L();
            return;
        }
        u.b("may be terminated");
    }

    private void p(int i2) {
        if (i2 <= 0) {
            i2 = -1;
        }
        if (i2 > 0 && i2 < 30) {
            i2 = 30;
        }
        if (i2 >= 120) {
            i2 = 120;
        }
        this.f45667E = i2;
    }

    public View C() {
        SoftReference<RelativeLayout> softReference = this.f45672J;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    public ParamsReview D() {
        return super.a(this.f45675M.f45759a, this.f45677O.x0(), this.f45677O.H0());
    }

    public long E() {
        return super.g(this.f45675M);
    }

    public boolean H() {
        return this.f45669G && !G();
    }

    public void I() {
        m(-1);
    }

    public void L() {
        try {
            u.b("stopRequest " + this.f45671I);
            this.f45671I = true;
            ScheduledExecutorService scheduledExecutorService = this.f45673K;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
                this.f45673K = null;
            }
            SoftReference<RelativeLayout> softReference = this.f45672J;
            if (softReference != null && softReference.get() != null) {
                ViewParent parent = this.f45672J.get().getParent();
                if (parent != null) {
                    ((ViewGroup) parent).removeView(this.f45672J.get());
                }
                this.f45672J.get().removeAllViews();
            }
            if (this.f45554r != null) {
                com.ubix.ssp.ad.e.s.c.a().a(this.f45554r, "");
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void e(int i2) {
        com.ubix.ssp.ad.g.a aVar = this.f45670H;
        if (aVar != null) {
            aVar.onAdClosed();
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void f(int i2) {
        f.a(this.f45539c, this.f45541e.get(i2).f45759a.f47442d.f47455C, 0, this.f45677O, this.f45540d, null);
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void i(int i2) {
        f.a(this.f45539c, this.f45541e.get(i2).f45759a.f47442d.f47454B, 0, this.f45677O, this.f45540d, null);
    }

    @Override // com.ubix.ssp.ad.a
    public AdError j(com.ubix.ssp.ad.d.a aVar) {
        int i2;
        String str;
        a.b.C0834b c0834b;
        a.b bVar = aVar.f45759a.f47442d;
        int i3 = bVar.f47489s;
        if (i3 == 4003) {
            a.b.C0834b[] c0834bArr = bVar.f47480j;
            if (c0834bArr != null && c0834bArr.length != 0 && (c0834b = c0834bArr[0]) != null && !TextUtils.isEmpty(c0834b.f47499c)) {
                return null;
            }
            i2 = 10;
            str = "图片资源链接异常";
        } else if (i3 == 4004) {
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

    @Override // com.ubix.ssp.ad.a
    public void m(int i2) {
        p(i2);
        super.m(4);
    }

    public void n(int i2) {
        this.f45669G = true;
        J();
    }

    public b(Context context, String str, AdSize adSize) {
        super(context, str);
        this.f45668F = true;
        this.f45669G = false;
        this.f45674L = new SoftReference<>(context);
        this.f45545i = 4;
        this.f45676N = adSize == null ? new AdSize(0, 0) : adSize;
        if (f45665C == -1) {
            f45665C = v.a(context.getApplicationContext(), "ubix_sp_capacity", "b_cur", 0);
        }
        if (TextUtils.isEmpty(f45666D)) {
            f45666D = v.a(context.getApplicationContext(), "ubix_sp_capacity", "b_cur_time", Calendar.getInstance().get(1) + ServiceReference.DELIMITER + Calendar.getInstance().get(2) + ServiceReference.DELIMITER + Calendar.getInstance().get(5));
        }
        this.f45672J = new SoftReference<>(new RelativeLayout(context));
        F();
    }

    private void e(AdError adError) {
        com.ubix.ssp.ad.g.a aVar = this.f45670H;
        if (aVar != null) {
            aVar.onAdLoadFailed(adError);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void b(int i2) {
        f.a(this.f45539c, this.f45541e.get(i2).f45759a.f47442d.f47458F, 0, this.f45677O, this.f45540d, null);
    }

    @Override // com.ubix.ssp.ad.a
    public void c(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        a(3, new Object[0]);
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void b(int i2, View view, HashMap<String, String> map) {
        if (map == null) {
            try {
                map = ((com.ubix.ssp.ad.b) this.f45672J.get().getChildAt(0)).getClickMap();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        b(this.f45675M, map);
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void a(int i2, View view) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        String str;
        if (!H()) {
            o(this.f45667E);
            AdError adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(4, "文件已经过期");
            com.ubix.ssp.ad.g.a aVar2 = this.f45670H;
            if (aVar2 != null) {
                aVar2.onAdExposeFailed(adErrorD);
                return;
            }
            return;
        }
        d(this.f45675M);
        c(this.f45675M);
        o(this.f45667E);
        com.ubix.ssp.ad.g.a aVar3 = this.f45670H;
        if (aVar3 != null) {
            aVar3.onAdExposed();
        }
        com.ubix.ssp.ad.d.a aVar4 = this.f45675M;
        if (aVar4 == null || (aVar = aVar4.f45759a) == null || (bVar = aVar.f47442d) == null || (str = bVar.f47479i) == null) {
            return;
        }
        f(str);
    }

    @Override // com.ubix.ssp.ad.a
    public void b(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.b(i2, aVar);
        if (i2 == 3) {
            a(2, new Object[0]);
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.b bVar;
        super.a(i2, aVar);
        try {
            if (com.ubix.ssp.ad.d.b.f45815v) {
                SoftReference<RelativeLayout> softReference = this.f45672J;
                if (softReference == null || softReference.get() == null) {
                    bVar = null;
                } else {
                    for (int i3 = 0; i3 < this.f45672J.get().getChildCount(); i3++) {
                        if (this.f45672J.get().getChildAt(i3) instanceof com.ubix.ssp.ad.b) {
                            bVar = (com.ubix.ssp.ad.b) this.f45672J.get().getChildAt(i3);
                            break;
                        }
                    }
                    bVar = null;
                }
                if (bVar != null) {
                    a(this.f45539c, this.f45675M, bVar.getClickMap());
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b(HashMap<String, String> map) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f45675M;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, map);
    }

    public void a(int i2, AdError adError) {
        this.f45669G = false;
        e(adError);
    }

    @Override // com.ubix.ssp.ad.a
    public boolean b(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        super.b(aVar, map);
        if (!i()) {
            map.put("__CLICK_AREA__", "1");
            int iA = a(aVar, 4, map, aVar.f45773o, false, this.f45678P);
            if (iA == 4 || iA == 6) {
                a(4, new Object[0]);
                if (com.ubix.ssp.ad.e.s.b.c().b(aVar.f45773o) == 44 && this.f45554r == null) {
                    this.f45554r = a(map, this.f45541e.indexOf(aVar), this.f45561y);
                    com.ubix.ssp.ad.e.s.c.a().a(this.f45554r);
                }
            } else if (iA == 2 || iA == 5 || iA == 31) {
                if (iA == 31) {
                    g((String) null);
                }
                a(this.f45539c, aVar, map);
            } else if (iA == 22) {
                b(this.f45539c, aVar, map, this.f45677O.q());
            } else if (iA == 23) {
                a(this.f45539c, aVar, map, this.f45677O.q());
                a(2, new Object[0]);
            } else if (iA == 3) {
                b(this.f45539c);
            } else if (iA == 33) {
                a(33, new Object[0]);
            } else {
                a(1, new Object[0]);
            }
        }
        a(0, new Object[0]);
        return true;
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, Object... objArr) {
        com.ubix.ssp.ad.g.a aVar;
        if (this.f45677O.n0() && i2 != 0) {
            super.a(i2, objArr);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("runClickCallback ");
        sb.append(i2);
        sb.append(";canRun=");
        sb.append((!this.f45677O.n0() && i2 == 0) || (this.f45677O.n0() && i2 != 0));
        u.e(sb.toString());
        if (((this.f45677O.n0() || i2 != 0) && (!this.f45677O.n0() || i2 == 0)) || (aVar = this.f45670H) == null) {
            return;
        }
        aVar.onAdClicked();
    }

    public void a(long j2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f45675M;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, j2);
    }

    @Override // com.ubix.ssp.ad.a
    public void a(Message message) {
        int i2 = message.what;
        if (i2 != 5) {
            if (i2 != 6) {
                return;
            }
            o(this.f45667E);
            e((AdError) message.obj);
            return;
        }
        com.ubix.ssp.ad.d.a aVar = (com.ubix.ssp.ad.d.a) ((List) message.obj).get(0);
        this.f45675M = aVar;
        l lVarA = a(aVar.f45759a);
        this.f45677O = lVarA;
        if (this.f45675M.f45759a.f47442d.f47466N) {
            p(lVarA.d());
        } else {
            this.f45667E = -1;
        }
        K();
    }

    @Override // com.ubix.ssp.ad.a
    public void a(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        super.a(aVar, map);
        if (this.f45554r != null) {
            com.ubix.ssp.ad.e.s.c.a().a(this.f45554r, null);
            this.f45554r = null;
        }
    }

    public void a(com.ubix.ssp.ad.g.a aVar) {
        this.f45670H = aVar;
    }

    @Override // com.ubix.ssp.ad.a
    public boolean a(Context context) {
        String str = Calendar.getInstance().get(1) + ServiceReference.DELIMITER + Calendar.getInstance().get(2) + ServiceReference.DELIMITER + Calendar.getInstance().get(5);
        if (!str.equals(f45666D)) {
            f45665C = 0;
            f45666D = str;
        }
        boolean z2 = f45665C + 1 > com.ubix.ssp.ad.d.b.f45782A;
        if (!z2) {
            f45665C++;
        }
        try {
            com.ubix.ssp.ad.e.a0.c.z();
            com.ubix.ssp.ad.e.a0.c.f46116e.execute(new a(context, str));
            return z2;
        } catch (Throwable th) {
            th.printStackTrace();
            return z2;
        }
    }
}
