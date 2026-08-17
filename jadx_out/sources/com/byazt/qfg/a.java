package com.byazt.qfg;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.gy.j;
import com.byazt.jz.AdSdkInitializerHolder;
import com.byazt.jz.hq;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.pg.r;
import com.byazt.xci.f;
import com.byazt.xci.fi;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.ru;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 54})
/* loaded from: classes3.dex */
public class a extends com.byazt.kf.eb implements r.hp {
    public static boolean jx = true;

    /* renamed from: a, reason: collision with root package name */
    public f f24611a;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.vu.q f24612b;
    public com.byazt.qt.l cx;

    /* renamed from: d, reason: collision with root package name */
    public ru f24613d;
    public com.byazt.vu.q di;

    /* renamed from: e, reason: collision with root package name */
    public final ud f24614e;
    public String eb;
    public long ec;

    /* renamed from: f, reason: collision with root package name */
    public com.byazt.cx.w f24615f;
    public int gu;
    public com.byazt.vu.j hq;
    public int jl;

    /* renamed from: k, reason: collision with root package name */
    public hp f24617k;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.vu.a f24620n;
    public com.byazt.vu.s ns;

    /* renamed from: o, reason: collision with root package name */
    public ru f24621o;

    /* renamed from: q, reason: collision with root package name */
    public Context f24622q;
    public com.byazt.vu.a sz;

    /* renamed from: u, reason: collision with root package name */
    public long f24625u;

    /* renamed from: v, reason: collision with root package name */
    public long f24626v;
    public long vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.jt.l f24627w;
    public com.byazt.vu.j wv;
    public long xs;
    public com.byazt.vu.eb yr;
    public com.byazt.ocx.hp zy;

    /* renamed from: j, reason: collision with root package name */
    public int f24616j = 2;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.p000if.hp f24624s = null;
    public final AtomicBoolean ud = new AtomicBoolean(false);
    public final AtomicBoolean nu = new AtomicBoolean(false);
    public final AtomicBoolean dy = new AtomicBoolean(false);
    public final AtomicBoolean lv = new AtomicBoolean(false);

    /* renamed from: r, reason: collision with root package name */
    public final AtomicBoolean f24623r = new AtomicBoolean(false);
    public final AtomicBoolean pu = new AtomicBoolean(false);
    public final AtomicInteger ky = new AtomicInteger(0);
    public final AtomicBoolean xh = new AtomicBoolean(false);

    /* renamed from: ms, reason: collision with root package name */
    public final AtomicBoolean f24619ms = new AtomicBoolean(false);
    public final AtomicBoolean as = new AtomicBoolean(false);
    public final AtomicBoolean kg = new AtomicBoolean(false);
    public final AtomicInteger mp = new AtomicInteger(0);

    /* renamed from: m, reason: collision with root package name */
    public boolean f24618m = false;
    public final l rz = new l();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public class hp {

        /* renamed from: l, reason: collision with root package name */
        public final AtomicBoolean f24660l = new AtomicBoolean(false);

        public hp() {
        }

        private void j(final com.byazt.vu.eb ebVar) {
            if (ebVar == null) {
                return;
            }
            com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f24624s != null) {
                        a.this.f24624s.hp(ebVar.q(), new com.byazt.kd.jx(ebVar.j(), ebVar.w()));
                        com.byazt.kl.hp.hp("Splash_FullLink", "onSplashRenderFail回调 true " + ebVar.j());
                    }
                }
            });
            a.this.w();
        }

        public void jx(com.byazt.vu.eb ebVar) {
            a.this.gu();
            if (this.f24660l.get()) {
                return;
            }
            this.f24660l.set(true);
            eb.hp(ebVar.s(), a.this.l(ebVar.s()), a.this.f24627w, ebVar);
            j(ebVar);
            u.l("SplashLoadManager", "渲染失败 code " + ebVar.j() + " msg " + ebVar.w());
        }

        public void l(final com.byazt.vu.eb ebVar) {
            if (ebVar == null) {
                return;
            }
            a.this.gu();
            if (this.f24660l.get()) {
                return;
            }
            this.f24660l.set(true);
            a.this.hp(false);
            com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.hp.3
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f24624s != null) {
                        if (a.this.ky.get() > 0) {
                            a.this.f24624s.hp(null, new com.byazt.kd.jx(1, "load splash material fail"));
                            return;
                        }
                        com.byazt.kd.jx jxVar = new com.byazt.kd.jx(ebVar.j(), ebVar.w());
                        a.this.hp((String) null, false, jxVar);
                        a.this.f24624s.hp(jxVar);
                    }
                }
            });
            a.this.w();
            com.byazt.kl.hp.jx("Splash_FullLink", "onSplashLoadFail 素材加载加载失败 code: " + ebVar.j());
            eb.hp(ebVar.s(), a.this.l(ebVar.s()), a.this.f24627w, ebVar);
        }

        public void hp(final com.byazt.vu.eb ebVar) {
            if (ebVar == null) {
                return;
            }
            a.this.gu();
            if (!this.f24660l.get() && a.this.ky.get() <= 0) {
                this.f24660l.set(true);
                a.this.hp(false);
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.hp.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.f24624s != null) {
                            if (ebVar.j() == 22) {
                                ebVar.l(1);
                            }
                            com.byazt.kd.jx jxVar = new com.byazt.kd.jx(ebVar.j(), ebVar.w());
                            a.this.hp((String) null, false, jxVar);
                            a.this.f24624s.hp(jxVar);
                            com.byazt.kl.hp.hp("Splash_FullLink", "onSplashLoadFail 回调");
                        }
                    }
                });
                hp(false, true, (Object) null);
                a.this.w();
                com.byazt.kl.hp.hp("Splash_FullLink", "onLoadSplashAdFail回调 广告获取失败");
                eb.hp(ebVar.s(), a.this.l(ebVar.s()), a.this.f24627w, ebVar);
            }
        }

        public boolean jx() {
            return this.f24660l.get();
        }

        public void l() {
            if (this.f24660l.get()) {
                return;
            }
            com.byazt.kl.hp.hp("Splash_FullLink", "触发 buffer_time超时 开始给加载成功回调以及开始渲染");
            a.this.e();
        }

        public void hp(com.byazt.vu.s sVar) throws JSONException {
            if (this.f24660l.get()) {
                return;
            }
            if (a.this.ky.get() == 0) {
                a.this.hp(true);
            }
            if (sVar != null) {
                ru ruVar = sVar.gu() ? a.this.f24613d : a.this.f24621o;
                if (ruVar != null) {
                    ruVar.a(sVar.hp());
                    ruVar.vv(sVar.k());
                    ruVar.n(System.currentTimeMillis() - ruVar.b());
                }
                hp(a.this.f24624s, ruVar, sVar.l(), sVar.jl(), sVar.gu(), sVar.v());
            }
        }

        private void hp(com.byazt.p000if.hp hpVar, ru ruVar, mp mpVar, com.byazt.qt.l lVar, boolean z2, boolean z3) throws JSONException {
            if (hpVar == null || ruVar == null || a.this.ky.get() > 0) {
                return;
            }
            if (a.this.hp(mpVar)) {
                a aVar = a.this;
                eb.hp(z2 ? aVar.f24613d : aVar.f24621o, 2);
                a.this.gu();
            }
            a.this.as.set(z2);
            a.this.ky.set(1);
            long jCurrentTimeMillis = System.currentTimeMillis();
            hp(lVar, 1);
            a.this.hp(lVar.getLifecycleId(), true, (com.byazt.kd.jx) null);
            hpVar.hp(lVar);
            if (!TextUtils.isEmpty(a.this.eb) && mpVar != null) {
                mpVar.hp(a.this.eb);
                com.byazt.ktd.l.hp(mpVar, "splash_ad");
            }
            a.this.ky.set(2);
            com.byazt.kl.hp.hp("Splash_FullLink", "onSplashLoadSuccess() 媒体处理完成");
            hp(z2, false, (Object) lVar);
            ruVar.xs(System.currentTimeMillis() - jCurrentTimeMillis);
            if (z3) {
                eb.hp(a.this.f24622q, ruVar, mpVar, z2, jCurrentTimeMillis);
            }
        }

        public void hp(final com.byazt.vu.q qVar) throws JSONException {
            a.this.gu();
            if (this.f24660l.get()) {
                return;
            }
            this.f24660l.set(true);
            boolean z2 = qVar != null && qVar.jx();
            a.this.hp(qVar);
            a aVar = a.this;
            aVar.hp(z2, z2 ? aVar.f24613d : aVar.f24621o);
            com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.hp.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.vu.q qVar2;
                    if (a.this.f24624s == null || (qVar2 = qVar) == null) {
                        return;
                    }
                    hp.this.hp(qVar2.hp(), 2);
                    a.this.f24624s.l(qVar.hp());
                }
            });
        }

        public void hp() {
            com.byazt.kl.hp.hp("Splash_FullLink", "onTimeOut start");
            a.this.ud.set(true);
            if (this.f24660l.get()) {
                return;
            }
            this.f24660l.set(true);
            if (a.this.ky.get() == 0) {
                a.this.hp(false);
            }
            if (a.this.f24615f != null) {
                a.this.f24615f.hp();
            }
            com.byazt.kl.hp.hp("Splash_FullLink", "开屏超时");
            if (a.this.f24624s != null) {
                if (a.this.ky.get() > 0) {
                    a.this.f24624s.hp(null, new com.byazt.kd.jx(3, "load success but render fail"));
                } else {
                    com.byazt.kd.jx jxVar = new com.byazt.kd.jx(23, "load splash time out");
                    a.this.hp((String) null, false, jxVar);
                    a.this.f24624s.hp(jxVar);
                }
                a.this.w();
            }
            boolean z2 = a.this.f24618m;
            a aVar = a.this;
            eb.hp(z2, aVar.l(aVar.f24618m), a.this.f24627w, new com.byazt.vu.eb(23, "load splash time out", a.this.f24618m));
            boolean z3 = a.this.f24618m;
            a aVar2 = a.this;
            eb.hp(z3, aVar2.l(aVar2.f24618m), a.this.f24627w);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(com.byazt.qt.l lVar, int i2) {
            if (lVar instanceof com.byazt.rq.hp) {
                ((com.byazt.rq.hp) lVar).syncCallbackStatus(i2);
            }
        }

        private void hp(boolean z2, boolean z3, Object obj) {
            mp mpVarL = a.this.l(true);
            if (a.this.zy == null || mpVarL == null) {
                return;
            }
            String strNs = mpVarL.ns();
            a.this.zy.hp(a.this.f24627w.j(), strNs, z2, z3, obj);
        }
    }

    private a(Context context) {
        if (context != null) {
            this.f24622q = context.getApplicationContext();
        } else {
            this.f24622q = sz.getContext();
        }
        this.f24614e = new ud(Looper.getMainLooper(), this);
        this.f24617k = new hp();
        com.byazt.jz.s.u().e(false);
        zy();
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what == 2) {
            hp hpVar = this.f24617k;
            if (hpVar != null) {
                hpVar.hp();
            }
            ud udVar = this.f24614e;
            if (udVar != null) {
                udVar.removeMessages(2);
            }
        }
        if (message.what == 4) {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f24617k == null) {
            return;
        }
        if (l(l(true), true)) {
            AtomicBoolean atomicBoolean = this.nu;
            if (atomicBoolean == null || !atomicBoolean.get()) {
                return;
            }
            gu();
            com.byazt.kl.hp.hp("Splash_FullLink", "buffer_time超时-并发 缓存素材加载成功，开始给加载成功回调");
            com.byazt.vu.s sVar = this.ns;
            if (sVar != null) {
                sVar.hp(this.cx);
            }
            w.l(new Runnable() { // from class: com.byazt.qfg.a.11
                @Override // java.lang.Runnable
                public void run() {
                    final long jCurrentTimeMillis = System.currentTimeMillis();
                    com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.11.1
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            eb.j(a.this.f24613d, jCurrentTimeMillis);
                            a.this.q();
                        }
                    });
                }
            });
            return;
        }
        AtomicBoolean atomicBoolean2 = this.nu;
        if (atomicBoolean2 == null || !atomicBoolean2.get()) {
            return;
        }
        com.byazt.kl.hp.hp("Splash_FullLink", "buffer_time超时-串行 缓存素材加载成功，开始给加载成功回调以及开始渲染");
        gu();
        com.byazt.cx.hp hpVarL = l(this.f24620n, this.ns, this.f24617k);
        com.byazt.vu.s sVar2 = this.ns;
        if (sVar2 != null) {
            sVar2.hp(hpVarL.hp());
        }
        w.l(new Runnable() { // from class: com.byazt.qfg.a.12
            @Override // java.lang.Runnable
            public void run() {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.12.1
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        eb.j(a.this.f24613d, jCurrentTimeMillis);
                        a.this.f24617k.hp(a.this.ns);
                    }
                });
            }
        });
        hp(this.f24620n, hpVarL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gu() {
        ud udVar = this.f24614e;
        if (udVar != null) {
            udVar.removeMessages(4);
        }
        ud udVar2 = this.f24614e;
        if (udVar2 != null) {
            udVar2.removeMessages(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jl() {
        if (com.byazt.cx.w.hp(this.f24627w, this.f24611a)) {
            return;
        }
        this.zy.hp(new fi(this.sz.j(), this.sz.l(), null), this.f24627w, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        return this.f24616j == 2;
    }

    private boolean v() {
        return (com.byazt.lca.w.hp().gu() & 4) == 4;
    }

    private void zy() {
        this.f24621o = new ru();
        ru ruVar = new ru();
        this.f24613d = ruVar;
        eb.hp(this.f24621o, ruVar);
        this.wv = new com.byazt.vu.j();
        this.hq = new com.byazt.vu.j();
    }

    private void a() {
        com.byazt.ocx.hp hpVar = this.zy;
        if (hpVar != null) {
            hpVar.l(this.f24627w, this.f24611a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eb() {
        int iOptInt;
        com.byazt.vu.a aVar = this.f24620n;
        if (aVar != null && aVar.l() != null && this.f24620n.l().mk() != null && (iOptInt = this.f24620n.l().mk().optInt("real_drop_cache_type", 0)) == 1) {
            com.byazt.kl.hp.hp("SplashLoadManager", "loadCacheWhenRealAdDrop - 缓存兜底返回配置 realDropCacheType： " + iOptInt);
            s();
            return;
        }
        if (this.rz.hp()) {
            com.byazt.kl.hp.hp("SplashLoadManager", "loadCacheWhenRealAdDrop - 计分模式下允许兜底缓存： ");
            s();
        } else {
            hp hpVar = this.f24617k;
            if (hpVar != null) {
                hpVar.hp(this.yr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() throws JSONException {
        com.byazt.kl.hp.hp("Splash_FullLink", "startCallBackWhenBufferTimeout ");
        this.f24617k.hp(this.ns);
        this.f24619ms.set(true);
        if (!this.lv.get() || this.xh.get()) {
            return;
        }
        this.xh.set(true);
        com.byazt.kl.hp.hp("Splash_FullLink", "素材加载和渲染并发 buffer_time超时 缓存素材加载成功，渲染成功开始给 onRenderSplashSuccess回调");
        this.f24617k.hp(this.di);
    }

    private void s() {
        ud udVar = this.f24614e;
        if (udVar != null) {
            udVar.removeMessages(4);
        }
        hp hpVar = this.f24617k;
        if (hpVar != null) {
            hpVar.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        int i2;
        if (com.byazt.ocx.hp.hp(this.f24616j) && ((i2 = this.f24616j) == 1 || i2 == 3)) {
            return;
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2) {
        if (z2) {
            this.hq.jx(System.currentTimeMillis() - this.ec);
        } else {
            this.wv.jx(System.currentTimeMillis() - this.vv);
        }
    }

    private void j() {
        this.ud.set(false);
        this.nu.set(false);
        this.dy.set(false);
        this.lv.set(false);
        this.xh.set(false);
        this.f24619ms.set(false);
        this.f24623r.set(false);
        this.pu.set(false);
        this.as.set(false);
        this.kg.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean jx(boolean z2) {
        com.byazt.vu.a aVar;
        return (z2 || this.zy == null || (aVar = this.sz) == null || aVar.j() == null || this.sz.l() == null || !com.byazt.fe.w.hp(this.sz.l())) ? false : true;
    }

    private void l(com.byazt.jt.l lVar) {
        this.f22016l = UUID.randomUUID().toString();
        com.byazt.kt.l lVar2 = (com.byazt.kt.l) com.byazt.gy.w.hp(0);
        this.hp = lVar2;
        lVar2.l(this.f22016l, lVar.lv());
        this.hp.hp(this.f22016l, new com.byazt.tb.jx());
        if (com.byazt.un.a.hp().hp(3)) {
            this.hp.hp(this.f22016l, new com.byazt.un.jx());
        }
    }

    private void w(boolean z2) {
        if (z2) {
            this.ec = System.currentTimeMillis();
        } else {
            this.vv = System.currentTimeMillis();
        }
    }

    private int jx(mp mpVar) {
        return Math.max(com.byazt.lca.w.hp().k(), (this.jl - ((int) (System.currentTimeMillis() - this.f24626v))) - (mpVar != null ? hd.w(mpVar) : 100));
    }

    private void eb(boolean z2) {
        if (this.f24614e != null) {
            if (k()) {
                if (z2) {
                    return;
                } else {
                    this.f24614e.removeMessages(4);
                }
            }
            this.f24614e.removeMessages(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public mp l(boolean z2) {
        if (z2) {
            com.byazt.vu.a aVar = this.f24620n;
            if (aVar == null) {
                return null;
            }
            return aVar.l();
        }
        com.byazt.vu.a aVar2 = this.sz;
        if (aVar2 == null) {
            return null;
        }
        return aVar2.l();
    }

    private f jx(com.byazt.jt.l lVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        f fVar = new f();
        fVar.eb = 2;
        fVar.f27275s = jCurrentTimeMillis;
        fVar.f27271k = com.byazt.jz.s.u().su();
        Object obj = this.f24624s;
        if (obj != null && (obj instanceof com.byazt.de.l)) {
            fVar.f27274q = ((com.byazt.de.l) obj).l();
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(boolean z2) {
        return z2 && k();
    }

    private void l(com.byazt.vu.s sVar, long j2) {
        if (sVar.gu()) {
            if (this.pu.get()) {
                return;
            }
            this.hq.l(j2 - this.xs);
            this.f24613d.jx(sVar.a());
            this.f24613d.l(sVar.w());
            return;
        }
        if (this.f24623r.get()) {
            return;
        }
        this.wv.l(j2 - this.f24625u);
        this.f24621o.jx(sVar.a());
        this.f24621o.l(sVar.w());
    }

    public static a hp(Context context) {
        return new a(context);
    }

    public static boolean jx() {
        return (com.byazt.lca.w.hp().jl() & 256) == 256;
    }

    public void hp(final com.byazt.jt.l lVar, final com.byazt.p000if.hp hpVar, final int i2) {
        if (lVar != null && !TextUtils.isEmpty(lVar.n())) {
            this.hp = (com.byazt.kt.l) com.byazt.gy.w.hp(0);
        } else {
            l(lVar);
        }
        String string = UUID.randomUUID().toString();
        this.eb = string;
        com.byazt.ktd.l.hp(lVar, true, string);
        this.hp.hp(this.f22016l, new j.hp() { // from class: com.byazt.qfg.a.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar2) {
                com.byazt.jt.l lVar3;
                if (!(lVar2 instanceof com.byazt.kf.l) || (lVar3 = lVar) == null) {
                    return;
                }
                com.byazt.kf.l lVar4 = (com.byazt.kf.l) lVar2;
                lVar4.hp = lVar3;
                lVar4.f20630s = lVar3.j();
                lVar4.eb = 3;
            }
        });
        hp();
        if (!com.byazt.jkd.q.hp()) {
            com.byazt.kd.jx jxVar = new com.byazt.kd.jx(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            hp((String) null, false, jxVar);
            hpVar.hp(jxVar);
            return;
        }
        int iS = sz.l().s(ky.l(lVar));
        com.byazt.uid.eb ebVar = new com.byazt.uid.eb("loadSplashAd b") { // from class: com.byazt.qfg.a.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.byazt.jz.s.u().eb(1);
                    a.this.f24624s = hpVar;
                    a.this.hp(lVar, i2);
                } catch (Throwable th) {
                    com.byazt.kd.jx jxVar2 = new com.byazt.kd.jx(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    a.this.hp((String) null, false, jxVar2);
                    hpVar.hp(jxVar2);
                    u.hp("SplashLoadManager", "splash component maybe not exist, pls check1", th);
                }
            }
        };
        if (!vv.hp) {
            u.l("SplashLoadManager", hq.NOT_INIT_TIPS_MSG);
            com.byazt.kd.jx jxVar2 = new com.byazt.kd.jx(10000, hq.NOT_INIT_TIPS_MSG);
            hp((String) null, false, jxVar2);
            hpVar.hp(jxVar2);
            return;
        }
        if (AdSdkInitializerHolder.isSdkInitSuccess() && (iS == 4 || hp(lVar))) {
            ebVar.run();
        } else if (hq.canMultiThreadLoad()) {
            com.byazt.uid.w.j(ebVar);
        } else {
            com.byazt.uid.q.f26242l.jl().execute(ebVar);
        }
        com.byazt.evz.hp.hp().hp(3, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.vu.a aVar, hp hpVar) {
        if (aVar == null || hpVar == null) {
            return;
        }
        mp mpVarL = aVar.l();
        boolean zW = aVar.w();
        com.byazt.cx.hp hpVarHp = hp(aVar, new com.byazt.vu.s(mpVarL, zW), hpVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.byazt.vu.l lVar = new com.byazt.vu.l(mpVarL, zW);
        lVar.hp(zW);
        lVar.hp(aVar.j());
        lVar.hp(aVar.hp());
        lVar.hp(aVar.jx());
        com.byazt.cx.a aVarHp = hp(aVar, hpVar, hpVarHp.hp(), lVar, jElapsedRealtime);
        hpVarHp.hp(aVarHp);
        eb.jx(zW ? this.f24613d : this.f24621o, System.currentTimeMillis());
        aVarHp.l();
        hp(zW, 1);
        hp(aVar, hpVarHp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l(mp mpVar, boolean z2) {
        if (mpVar == null) {
            return false;
        }
        if (k() && z2 && v()) {
            return false;
        }
        if ((com.byazt.lca.w.hp().zy() & 1) == 1) {
            return true;
        }
        return s.l(mpVar) && l(mpVar) && mpVar.vt() == 1;
    }

    private boolean l(mp mpVar) {
        return mpVar != null && hd.hp(mpVar) == 2;
    }

    private com.byazt.cx.hp l(final com.byazt.vu.a aVar, com.byazt.vu.s sVar, final hp hpVar) {
        if (aVar == null || sVar == null || hpVar == null) {
            return null;
        }
        return new com.byazt.cx.hp(new com.byazt.vu.jx(this.f24622q, "splash_ad", aVar, sVar, this.f24627w, true), new com.byazt.cx.j<com.byazt.vu.q, com.byazt.vu.eb>() { // from class: com.byazt.qfg.a.6
            @Override // com.byazt.cx.j
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public void l(com.byazt.vu.q qVar) throws JSONException {
                a.this.a(aVar.w());
                if (a.this.as.get()) {
                    if (aVar.w()) {
                        hpVar.hp(qVar);
                    }
                } else {
                    if (aVar.w()) {
                        return;
                    }
                    hpVar.hp(qVar);
                }
            }

            @Override // com.byazt.cx.j
            public void hp(com.byazt.vu.eb ebVar) {
                hpVar.jx(ebVar);
            }

            @Override // com.byazt.cx.j
            public void hp() {
                a.this.l(aVar);
            }
        }, this.zy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.jt.l lVar, int i2) throws NumberFormatException {
        if (lVar == null) {
            return;
        }
        com.byazt.kl.hp.hp("Splash_FullLink", "加载开屏广告--begin ");
        this.f24626v = System.currentTimeMillis();
        f fVarJx = jx(lVar);
        this.f24611a = fVarJx;
        fVarJx.ec = this.eb;
        this.f24627w = lVar;
        this.gu = ky.l(lVar);
        this.zy = com.byazt.ocx.hp.hp();
        int iHp = this.rz.hp(this.f24627w, this.gu);
        this.f24616j = iHp;
        com.byazt.kl.hp.hp("Splash_FullLink", "当前rit位 " + this.gu);
        int iA = sz.l().a(lVar.j());
        hp(lVar.j(), iA, i2);
        f fVar = this.f24611a;
        long j2 = i2;
        fVar.f27269e = j2;
        fVar.gu = iA;
        fVar.jl = this.jl;
        eb.hp(lVar, j2);
        j();
        l();
        hp(lVar, this.f24611a, iHp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.vu.a aVar) {
        if (aVar == null || !aVar.w()) {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.jt.l lVar, f fVar, int i2) {
        eb.hp(this.f24621o, this.f24613d, fVar, this.f24616j, i2);
        hp(lVar, fVar, this.f24617k);
    }

    private void hp(final com.byazt.jt.l lVar, f fVar, final hp hpVar) {
        if (hpVar == null) {
            return;
        }
        com.byazt.ocx.w wVar = new com.byazt.ocx.w();
        wVar.hp = this.rz.f24682l;
        com.byazt.cx.w wVar2 = new com.byazt.cx.w(new com.byazt.vu.w(lVar, fVar, wVar), new com.byazt.cx.l<com.byazt.vu.a, com.byazt.vu.eb>() { // from class: com.byazt.qfg.a.10
            @Override // com.byazt.cx.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public void l(com.byazt.vu.a aVar) {
                com.byazt.jt.l lVar2;
                if (TextUtils.isEmpty(a.this.f22016l) && (lVar2 = lVar) != null && !TextUtils.isEmpty(lVar2.n()) && aVar != null && aVar.l() != null && a.this.hp != null) {
                    a aVar2 = a.this;
                    aVar2.f22016l = aVar2.hp.l(aVar.l().ns());
                }
                if (aVar == null || aVar.l() == null) {
                    hpVar.hp(new com.byazt.vu.eb(1, "no ad model", false));
                    return;
                }
                mp mpVarL = aVar.l();
                if (aVar.w()) {
                    a.this.mp.set(1);
                    a.this.f24620n = aVar;
                    if (!a.this.k()) {
                        a.this.f24618m = true;
                    }
                } else {
                    a.this.sz = aVar;
                    a.this.f24618m = false;
                }
                if (a.this.ud.get() || a.this.f24617k.jx() || a.this.ky.get() > 0) {
                    a.this.hp(aVar, aVar.w(), true);
                    return;
                }
                a.this.hp(aVar);
                if (a.this.l(mpVarL, aVar.w())) {
                    com.byazt.kl.hp.hp("Splash_FullLink", "开始并发加载素材 ");
                    a.this.l(aVar, hpVar);
                } else {
                    com.byazt.kl.hp.hp("Splash_FullLink", "开始串行加载素材 getReqId " + aVar.l().ns());
                    a.this.hp(aVar, hpVar);
                }
            }

            @Override // com.byazt.cx.l
            public void hp(com.byazt.vu.eb ebVar) {
                if (a.this.f24616j == 1 && a.this.rz.jx == 2) {
                    a.this.f24616j = 2;
                    a aVar = a.this;
                    aVar.hp(lVar, aVar.f24611a, a.this.f24616j);
                    return;
                }
                boolean zS = ebVar.s();
                if (zS) {
                    a.this.mp.set(-1);
                }
                if (a.this.j(zS)) {
                    if (a.this.kg.get()) {
                        hpVar.hp(a.this.yr);
                        return;
                    }
                    return;
                }
                a.this.yr = ebVar;
                if (a.this.k()) {
                    if (a.this.mp.get() != -1) {
                        if (a.this.mp.get() == 1) {
                            a.this.eb();
                        }
                    } else {
                        hpVar.hp(ebVar);
                    }
                    a.this.kg.set(true);
                    return;
                }
                hpVar.hp(ebVar);
            }
        }, this.zy, this.rz);
        this.f24615f = wVar2;
        wVar2.hp(this.f24616j);
    }

    private boolean hp(mp mpVar, boolean z2) {
        return (mpVar == null || z2 || mpVar.vx() != 3) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(mp mpVar) {
        return (mpVar != null ? mpVar.vx() : 0) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final boolean z2, final ru ruVar) {
        com.byazt.dnb.s.hp(new com.byazt.uid.eb("preloadSplash") { // from class: com.byazt.qfg.a.13
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.jx(z2)) {
                    a.this.jl();
                } else {
                    a.this.w();
                }
                ru ruVar2 = ruVar;
                boolean z3 = false;
                boolean z4 = ruVar2 != null && ruVar2.r();
                ru ruVar3 = ruVar;
                if (ruVar3 != null && ruVar3.dy()) {
                    z3 = true;
                }
                boolean z5 = z2;
                eb.hp(z5, a.this.l(z5), a.this.f24627w, z4, z3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.vu.a aVar) {
        boolean zW = aVar.w();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = jCurrentTimeMillis - this.f24626v;
        if (zW) {
            eb.hp(this.f24613d);
            this.hq.hp(hd.hp(l(zW)));
            this.hq.l(hd.l(l(zW)));
            this.hq.hp(j2);
            this.xs = jCurrentTimeMillis;
            com.byazt.kl.hp.hp("Splash_FullLink", "缓存加载物料--end 耗时S1： " + j2);
            return;
        }
        eb.hp(this.f24621o);
        this.wv.hp(hd.hp(l(zW)));
        this.wv.l(hd.l(l(zW)));
        this.wv.hp(j2);
        this.f24625u = jCurrentTimeMillis;
        eb.hp(this.f24621o, aVar);
        com.byazt.cm.w.hp().jx().hp(this.f24621o);
        com.byazt.kl.hp.hp("Splash_FullLink", "实时加载物料--end 耗时S1： " + j2);
    }

    private void hp(final com.byazt.vu.s sVar, com.byazt.vu.a aVar, final hp hpVar) {
        if (sVar != null && this.ky.get() <= 0) {
            final boolean zGu = sVar.gu();
            com.byazt.cx.hp hpVarL = l(aVar, sVar, hpVar);
            sVar.hp(hpVarL.hp());
            if (!j(sVar.gu())) {
                com.byazt.kl.hp.hp("Splash_FullLink", "不需要等待实时广告 isCacheAd " + zGu);
                if (jx()) {
                    w.l(new Runnable() { // from class: com.byazt.qfg.a.14
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            hp hpVar2 = hpVar;
                            if (hpVar2 != null) {
                                hpVar2.hp(sVar);
                            }
                        }
                    });
                    hp(aVar, hpVarL);
                    return;
                } else {
                    w.l(new Runnable() { // from class: com.byazt.qfg.a.15
                        @Override // java.lang.Runnable
                        public void run() {
                            final long jCurrentTimeMillis = System.currentTimeMillis();
                            com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.15.1
                                @Override // java.lang.Runnable
                                public void run() throws JSONException {
                                    AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                                    boolean z2 = zGu;
                                    a aVar2 = a.this;
                                    eb.j(z2 ? aVar2.f24613d : aVar2.f24621o, jCurrentTimeMillis);
                                    AnonymousClass15 anonymousClass152 = AnonymousClass15.this;
                                    hpVar.hp(sVar);
                                }
                            });
                        }
                    });
                    hp(aVar, hpVarL);
                    return;
                }
            }
            com.byazt.kl.hp.hp("Splash_FullLink", "缓存素材加载成功，等待实时广告 isCacheAd " + zGu);
            this.ns = sVar;
            this.cx = hpVarL.hp();
            this.nu.set(true);
            if (this.kg.get()) {
                eb();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.vu.a aVar, final hp hpVar) {
        if (aVar == null || hpVar == null) {
            return;
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        eb.jx(aVar.w() ? this.f24613d : this.f24621o, System.currentTimeMillis());
        com.byazt.vu.l lVar = new com.byazt.vu.l(aVar.l(), aVar.w());
        lVar.hp(aVar.j());
        lVar.hp(aVar.w());
        lVar.hp(aVar.hp());
        lVar.hp(aVar.jx());
        new com.byazt.cx.a(lVar, new com.byazt.cx.jx<com.byazt.vu.s, com.byazt.vu.eb>() { // from class: com.byazt.qfg.a.16

            /* renamed from: w, reason: collision with root package name */
            public com.byazt.vu.s f24639w;

            @Override // com.byazt.cx.jx
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public void jx(com.byazt.vu.s sVar) {
                this.f24639w = sVar;
                a.this.hp(sVar, aVar, hpVar, (com.byazt.qt.l) null, true);
            }

            @Override // com.byazt.cx.jx
            public void l(com.byazt.vu.s sVar) throws JSONException {
                com.byazt.vu.s sVar2 = this.f24639w;
                if (sVar2 != null) {
                    sVar2.w(true);
                }
                a.this.hp(sVar, aVar, hpVar, (com.byazt.qt.l) null, jElapsedRealtime, true);
            }

            @Override // com.byazt.cx.jx
            public void hp(com.byazt.vu.eb ebVar) {
                a.this.hp(aVar, ebVar, hpVar, jElapsedRealtime);
            }
        }).l();
        hp(aVar.w(), 0);
    }

    private void hp(final com.byazt.cx.hp hpVar, final boolean z2, final int i2) {
        w(z2);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.2
            @Override // java.lang.Runnable
            public void run() {
                eb.j(z2 ? a.this.f24613d : a.this.f24621o, jCurrentTimeMillis);
                if (hpVar == null) {
                    return;
                }
                System.currentTimeMillis();
                hpVar.hp(i2);
                hpVar.l();
            }
        });
    }

    private void hp(com.byazt.vu.s sVar, long j2) throws JSONException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zGu = sVar.gu();
        if (zGu) {
            eb.hp(this.f24613d, sVar);
            eb.hp(this.f24613d, sVar, j2, l(zGu));
            eb.hp(l(zGu), this.f24613d, sVar);
            hp(zGu, sVar, jCurrentTimeMillis - this.xs);
            com.byazt.vu.s sVar2 = this.ns;
            if (sVar2 != null) {
                sVar2.w(true);
            }
        } else {
            eb.hp(this.f24621o, sVar);
            eb.hp(this.f24621o, sVar, j2, l(zGu));
            eb.hp(l(zGu), this.f24621o, sVar);
            hp(zGu, sVar, jCurrentTimeMillis - this.f24625u);
        }
        l(sVar, jCurrentTimeMillis);
        if (this.ky.get() <= 0 || this.ud.get()) {
            return;
        }
        if (this.as.get()) {
            if (zGu) {
                eb.hp(this.f24622q, this.f24613d, sVar.l(), true, jCurrentTimeMillis);
            }
        } else {
            if (zGu) {
                return;
            }
            eb.hp(this.f24622q, this.f24621o, sVar.l(), false, jCurrentTimeMillis);
        }
    }

    private void hp(boolean z2, com.byazt.vu.s sVar, long j2) {
        String str = z2 ? "缓存广告" : "实时广告";
        if (sVar.w()) {
            if (sVar.e()) {
                com.byazt.kl.hp.hp("Splash_FullLink", str + "： 加载缓存视频素材--end, 耗时S2： " + j2);
                return;
            }
            com.byazt.kl.hp.hp("Splash_FullLink", str + "： 加载网络视频素材--end, 耗时S2： " + j2);
            return;
        }
        if (sVar.a()) {
            com.byazt.kl.hp.hp("Splash_FullLink", str + "： 加载缓存图片素材--end, 耗时S2： " + j2);
            return;
        }
        com.byazt.kl.hp.hp("Splash_FullLink", str + "： 加载网络图片素材--end, 耗时S2：" + j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.vu.s sVar, com.byazt.vu.a aVar, final hp hpVar, com.byazt.qt.l lVar) throws JSONException {
        if (sVar != null && this.ky.get() <= 0) {
            final boolean zGu = sVar.gu();
            if (!j(zGu)) {
                com.byazt.kl.hp.hp("Splash_FullLink", "实时素材加载成功，不需要等待实时广告, 此时渲染结果: " + this.dy.get());
                sVar.hp(lVar);
                if (jx()) {
                    hpVar.hp(sVar);
                    if (this.dy.get()) {
                        hpVar.hp(this.f24612b);
                    }
                } else {
                    final long jCurrentTimeMillis = System.currentTimeMillis();
                    com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.a.3
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            eb.j(zGu ? a.this.f24613d : a.this.f24621o, jCurrentTimeMillis);
                            hpVar.hp(sVar);
                            if (a.this.dy.get()) {
                                hpVar.hp(a.this.f24612b);
                            }
                        }
                    });
                }
            } else {
                com.byazt.kl.hp.hp("Splash_FullLink", "缓存广告: 素材加载成功，需要等待实时广告");
                this.ns = sVar;
                this.cx = lVar;
                this.nu.set(true);
                if (this.kg.get()) {
                    eb();
                }
            }
        }
    }

    private com.byazt.cx.a hp(final com.byazt.vu.a aVar, final hp hpVar, final com.byazt.qt.l lVar, com.byazt.vu.l lVar2, final long j2) {
        return new com.byazt.cx.a(lVar2, new com.byazt.cx.jx<com.byazt.vu.s, com.byazt.vu.eb>() { // from class: com.byazt.qfg.a.4

            /* renamed from: a, reason: collision with root package name */
            public com.byazt.vu.s f24646a;

            @Override // com.byazt.cx.jx
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public void jx(com.byazt.vu.s sVar) {
                this.f24646a = sVar;
                a.this.hp(sVar, aVar, hpVar, lVar, false);
            }

            @Override // com.byazt.cx.jx
            public void l(com.byazt.vu.s sVar) throws JSONException {
                com.byazt.vu.s sVar2 = this.f24646a;
                if (sVar2 != null) {
                    sVar2.w(true);
                }
                a.this.hp(sVar, aVar, hpVar, lVar, j2, false);
            }

            @Override // com.byazt.cx.jx
            public void hp(com.byazt.vu.eb ebVar) {
                a.this.hp(aVar, ebVar, hpVar, j2);
            }
        });
    }

    private com.byazt.cx.hp hp(final com.byazt.vu.a aVar, com.byazt.vu.s sVar, final hp hpVar) {
        return new com.byazt.cx.hp(new com.byazt.vu.jx(this.f24622q, "splash_ad", aVar, sVar, this.f24627w, false), new com.byazt.cx.j<com.byazt.vu.q, com.byazt.vu.eb>() { // from class: com.byazt.qfg.a.5
            @Override // com.byazt.cx.j
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public void l(com.byazt.vu.q qVar) throws JSONException {
                a.this.a(aVar.w());
                if (a.this.j(qVar.jx())) {
                    com.byazt.kl.hp.hp("Splash_FullLink", "缓存渲染成功 需要等待实时广告: ");
                    if (a.this.f24619ms.get() && !a.this.xh.get()) {
                        com.byazt.kl.hp.hp("Splash_FullLink", "已经超时走缓存广告");
                        a.this.xh.set(true);
                        hpVar.hp(qVar);
                    }
                    a.this.lv.set(true);
                    a.this.di = qVar;
                    return;
                }
                com.byazt.kl.hp.hp("Splash_FullLink", "createCSJSplashRenderParallel- 实时广告onSuccess");
                a.this.dy.set(true);
                a.this.f24612b = qVar;
                if (a.this.ky.get() == 2) {
                    if (!a.this.k()) {
                        hpVar.hp(qVar);
                    } else {
                        if (a.this.as.get()) {
                            return;
                        }
                        hpVar.hp(qVar);
                    }
                }
            }

            @Override // com.byazt.cx.j
            public void hp(com.byazt.vu.eb ebVar) {
                if (!a.this.j(ebVar.s())) {
                    a.this.dy.set(false);
                    hpVar.jx(ebVar);
                } else {
                    a.this.lv.set(false);
                }
            }

            @Override // com.byazt.cx.j
            public void hp() {
                a.this.l(aVar);
            }
        }, this.zy);
    }

    private void hp(com.byazt.vu.a aVar, com.byazt.cx.hp hpVar) {
        if (hpVar == null || this.ud.get()) {
            return;
        }
        int iJx = jx(l(aVar.w()));
        com.byazt.kl.hp.hp("Splash_FullLink", "开始渲染 isCache " + aVar.w() + ", 渲染超时设置：" + iJx);
        hp(hpVar, aVar.w(), iJx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.vu.q qVar) throws JSONException {
        if (qVar == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zJx = qVar.jx();
        if (zJx) {
            eb.hp(l(zJx), this.hq, qVar);
            this.hq.j(jCurrentTimeMillis - this.f24626v);
            this.hq.j(this.f24616j);
            this.hq.hp(zJx);
            eb.hp(l(zJx), this.hq);
            eb.l(l(zJx), this.hq);
        } else {
            eb.hp(l(zJx), this.wv, qVar);
            this.wv.j(jCurrentTimeMillis - this.f24626v);
            this.wv.j(this.f24616j);
            this.wv.hp(zJx);
            eb.hp(l(zJx), this.wv);
            eb.l(l(zJx), this.wv);
            com.byazt.kl.hp.hp("Splash_FullLink", "开屏广告渲染--end, 耗时S3： " + (jCurrentTimeMillis - this.vv));
        }
        StringBuilder sb = new StringBuilder("渲染成功回调 开屏广告类型： ");
        sb.append(zJx ? "缓存" : "实时");
        com.byazt.kl.hp.hp("Splash_FullLink", sb.toString());
        com.byazt.kl.hp.hp("Splash_FullLink", "加载开屏广告--end，总耗时： " + (jCurrentTimeMillis - this.f24626v));
        com.byazt.kl.hp.hp("Splash_FullLink", "加载开屏广告--end，getReqId： " + l(zJx).ns());
    }

    private void hp(String str, int i2, int i3) {
        int iK = sz.l().k(str);
        if (iK == 1) {
            this.jl = i2 > 0 ? Math.min(i2, i3) : Math.max(i3, 500);
        } else if (iK != 2) {
            this.jl = i2 > 0 ? Math.max(i2, i3) : Math.max(i3, 500);
        } else {
            this.jl = i2 > 0 ? i2 : Math.max(i3, 500);
        }
        int iCurrentTimeMillis = (int) (this.jl - (System.currentTimeMillis() - this.f24611a.f27274q));
        if (iCurrentTimeMillis <= 0) {
            iCurrentTimeMillis = this.jl;
        }
        this.jl = iCurrentTimeMillis;
        com.byazt.kl.hp.hp("Splash_FullLink", "splashTimeOutControlType = " + iK + "; devTimeOut = " + i3 + "; cloudTimeOut = " + i2 + "; realTimeOut = " + this.jl);
        this.f24614e.sendEmptyMessageDelayed(2, (long) this.jl);
        hp(this.jl);
    }

    private void hp(int i2) {
        int iQ = sz.l().q(this.gu);
        if (iQ >= i2 || iQ <= 0 || !k() || this.f24614e == null) {
            return;
        }
        int i3 = i2 - iQ;
        com.byazt.kl.hp.hp("Splash_FullLink", "buffer time: " + iQ + "  减去buffer time后超时时间：" + i3);
        this.f24614e.sendEmptyMessageDelayed(4, (long) i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.vu.s sVar, final com.byazt.vu.a aVar, final hp hpVar, final com.byazt.qt.l lVar, boolean z2) {
        if (this.ud.get()) {
            return;
        }
        l(sVar, System.currentTimeMillis());
        if (sVar.gu()) {
            com.byazt.kl.hp.hp("Splash_FullLink", "缓存广告： 素材首包回调");
            this.pu.set(true);
        } else {
            com.byazt.kl.hp.hp("Splash_FullLink", "实时广告： 素材首包回调");
            this.f24623r.set(true);
        }
        eb.hp(sVar.gu() ? this.f24613d : this.f24621o, 3);
        eb(sVar.gu());
        if (z2) {
            hp(sVar, aVar, hpVar);
        } else {
            w.l(new Runnable() { // from class: com.byazt.qfg.a.7
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    a.this.hp(sVar, aVar, hpVar, lVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.vu.s sVar, final com.byazt.vu.a aVar, final hp hpVar, final com.byazt.qt.l lVar, long j2, boolean z2) throws JSONException {
        if (sVar == null) {
            return;
        }
        hp(aVar, aVar.w(), false);
        if (this.ud.get()) {
            return;
        }
        if (lVar instanceof com.byazt.rq.hp) {
            ((com.byazt.rq.hp) lVar).updateSplashResourceModel(sVar, false);
        }
        hp(sVar, j2);
        if (sVar.gu() && this.pu.get()) {
            return;
        }
        if (sVar.gu() || !this.f24623r.get()) {
            if (hp(sVar.l(), sVar.w()) || hp(aVar.l())) {
                eb.hp(sVar.gu() ? this.f24613d : this.f24621o, 2);
                eb(sVar.gu());
            }
            if (z2) {
                hp(sVar, aVar, hpVar);
            } else {
                w.l(new Runnable() { // from class: com.byazt.qfg.a.8
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        a.this.hp(sVar, aVar, hpVar, lVar);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.vu.a aVar, com.byazt.vu.eb ebVar, hp hpVar, long j2) {
        if (ebVar == null) {
            return;
        }
        boolean zS = ebVar.s();
        if (!j(zS)) {
            com.byazt.kl.hp.hp("Splash_FullLink", "实时cac广告: 素材加载失败，直接给回调");
            hpVar.l(ebVar);
        } else {
            com.byazt.kl.hp.hp("Splash_FullLink", "缓存广告: 素材加载失败");
            this.nu.set(false);
            if (this.kg.get()) {
                hpVar.l(ebVar);
            }
        }
        hp(aVar, zS, false);
        int i2 = ebVar.a() ? -14 : -7;
        if (!ebVar.a()) {
            s.hp(j2, false, false, l(ebVar.s()), i2, ebVar.w());
        }
        com.byazt.kl.hp.hp("Splash_FullLink", (zS ? "缓存广告" : "实时广告") + "加载素材失败 " + ebVar.j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.vu.a aVar, boolean z2, boolean z3) {
        if (z2) {
            return;
        }
        try {
            if (this.ky.get() > 0 && !this.as.get()) {
                com.byazt.kl.hp.hp("lqmt", "该实时广告已回调媒体");
            } else {
                if (com.byazt.cx.w.hp(this.f24627w, this.f24611a)) {
                    return;
                }
                if (this.ky.get() > 0 || this.f24617k.jx()) {
                    this.zy.hp(aVar, this.f24627w, z3, this.f24616j);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void hp(boolean z2, int i2) {
        (z2 ? this.hq : this.wv).w(i2);
    }

    public static boolean hp(com.byazt.jt.l lVar) {
        return com.byazt.cx.w.hp(lVar, new f()) && (com.byazt.lca.w.hp().jl() & 4) == 4;
    }
}
