package com.byazt.qk;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.byazt.fb.l;
import com.byazt.fub.e;
import com.byazt.fub.zy;
import com.byazt.go.j;
import com.byazt.jz.dy;
import com.byazt.jz.ud;
import com.byazt.ql.q;
import com.byazt.su.jx;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.b;
import com.byazt.xci.hd;
import com.byazt.xci.hq;
import com.byazt.xci.mp;
import com.byazt.xci.pc;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, 2207})
/* loaded from: classes3.dex */
public class NativeExpressView extends FrameLayout implements com.byazt.wsc.j, com.byazt.fub.s, com.byazt.fub.v, com.byazt.ek.hp, gu, u, com.byazt.ci.l {
    public static int ec = 500;

    /* renamed from: a, reason: collision with root package name */
    public final Context f24781a;
    public com.byazt.fub.q an;
    public FrameLayout as;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.go.l f24782b;
    public View bu;
    public com.byazt.go.hp cx;

    /* renamed from: d, reason: collision with root package name */
    public float f24783d;
    public final AtomicBoolean di;
    public com.byazt.xn.hp dy;

    /* renamed from: e, reason: collision with root package name */
    public String f24784e;
    public com.byazt.fub.l ea;
    public String eb;

    /* renamed from: f, reason: collision with root package name */
    public final Runnable f24785f;
    public com.byazt.fub.zy fi;
    public boolean gd;
    public ExpressVideoView gu;
    public com.byazt.fb.eb hd;
    public boolean hp;
    public com.byazt.tq.hp hq;

    /* renamed from: j, reason: collision with root package name */
    public Dialog f24786j;
    public float jd;
    public jx.j jl;
    public com.byazt.ih.l jx;

    /* renamed from: k, reason: collision with root package name */
    public FrameLayout f24787k;
    public Runnable kg;
    public final com.byazt.jdb.w ky;

    /* renamed from: l, reason: collision with root package name */
    public int f24788l;
    public FrameLayout lv;

    /* renamed from: m, reason: collision with root package name */
    public final Runnable f24789m;
    public final ViewTreeObserver.OnScrollChangedListener mp;

    /* renamed from: ms, reason: collision with root package name */
    public final AtomicBoolean f24790ms;

    /* renamed from: n, reason: collision with root package name */
    public FrameLayout f24791n;
    public o nd;
    public xs nr;
    public boolean ns;
    public pc nu;

    /* renamed from: o, reason: collision with root package name */
    public String f24792o;
    public com.byazt.fub.j<? extends View> pc;
    public FrameLayout pu;

    /* renamed from: q, reason: collision with root package name */
    public mp f24793q;
    public float qh;
    public volatile com.byazt.fub.k qu;

    /* renamed from: r, reason: collision with root package name */
    public FrameLayout f24794r;
    public boolean rk;
    public com.byazt.xse.jx ru;
    public com.byazt.fb.a rv;
    public ThemeStatusBroadcastReceiver rz;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.jt.l f24795s;
    public com.byazt.fub.a su;
    public boolean sz;

    /* renamed from: t, reason: collision with root package name */
    public float f24796t;
    public float tw;

    /* renamed from: u, reason: collision with root package name */
    public boolean f24797u;
    public boolean ud;

    /* renamed from: v, reason: collision with root package name */
    public boolean f24798v;
    public com.byazt.fub.u vq;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public hp f24799w;
    public ns wt;
    public float wv;

    /* renamed from: x, reason: collision with root package name */
    public long f24800x;
    public final AtomicBoolean xh;
    public com.byazt.fub.jx xs;

    /* renamed from: y, reason: collision with root package name */
    public List<com.byazt.fub.e> f24801y;
    public SparseArray<j.hp> yj;
    public final Runnable yr;
    public e.hp zx;
    public jx.InterfaceC0367jx zy;

    public NativeExpressView(Context context, mp mpVar, com.byazt.jt.l lVar, String str) throws JSONException {
        super(context);
        this.hp = true;
        this.f24788l = 0;
        this.eb = com.byazt.ih.l.AD_TAG_FEED;
        this.di = new AtomicBoolean(false);
        this.f24792o = null;
        this.f24797u = false;
        this.vv = false;
        this.sz = false;
        this.ud = false;
        this.xh = new AtomicBoolean(false);
        this.ns = false;
        this.f24790ms = new AtomicBoolean(false);
        this.mp = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.qk.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f24789m);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f24789m, 500L);
            }
        };
        this.f24789m = new Runnable() { // from class: com.byazt.qk.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!dy.l(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.eb(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.eb(nativeExpressView.getVisibility());
                }
            }
        };
        this.f24785f = new Runnable() { // from class: com.byazt.qk.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(0);
            }
        };
        this.yr = new Runnable() { // from class: com.byazt.qk.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(8);
            }
        };
        this.yj = new SparseArray<>();
        this.tw = -1.0f;
        this.jd = -1.0f;
        this.qh = -1.0f;
        this.f24796t = -1.0f;
        this.f24800x = 0L;
        this.eb = str;
        this.f24781a = context;
        this.f24793q = mpVar;
        this.ky = new com.byazt.jdb.w(mpVar, str);
        this.f24795s = lVar;
        gu();
    }

    private void b() {
        try {
            if (this.rz == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.bytedance.openadsdk.themeTypeChangeReceiver");
            this.f24781a.registerReceiver(this.rz, intentFilter, ky.d(), null);
        } catch (Throwable unused) {
        }
    }

    private void cx() {
        com.byazt.jt.l lVar;
        if (TextUtils.equals(this.eb, "splash_ad") && (lVar = this.f24795s) != null && this.wv == lVar.eb() && this.f24783d == this.f24795s.a()) {
            this.wv = xh.j(this.f24781a, this.wv);
            int iJ = xh.j(this.f24781a);
            if (this.f24783d < iJ) {
                this.f24783d = xh.j(this.f24781a, r0);
            } else {
                this.f24783d = xh.j(this.f24781a, r1);
            }
        }
    }

    private boolean d() {
        if (TextUtils.equals(this.eb, "rewarded_video") || TextUtils.equals(this.eb, "fullscreen_interstitial_ad")) {
            return this.f24793q.jc();
        }
        return true;
    }

    private void di() throws JSONException {
        zy.hp hpVar;
        List<com.byazt.xci.dy> listVi;
        com.byazt.xci.dy dyVar;
        boolean zS = hd.s(this.f24793q);
        JSONObject jSONObjectHp = null;
        if (!k()) {
            boolean z2 = hd.l(this.f24793q) == 9 || hd.l(this.f24793q) == 0;
            if (zS) {
                jSONObjectHp = com.byazt.yp.l.hp(this.f24793q, com.byazt.yp.l.hp(this.f24783d, this.wv, this.f24797u), com.byazt.yp.l.hp(this.f24793q), false, this.f24784e, z2);
            } else if (!hd.e(this.f24793q)) {
                jSONObjectHp = com.byazt.yp.l.hp(this.f24783d, this.wv, this.f24797u, this.f24793q, z2);
            } else if (hd.a(this.f24793q) != null && !TextUtils.isEmpty(hd.a(this.f24793q).q())) {
                jSONObjectHp = com.byazt.la.e.hp(hd.a(this.f24793q).q(), hd.a(this.f24793q).e(), (com.byazt.la.jx) null);
            }
            if (hd.a(this.f24793q) != null) {
                com.byazt.jz.j.hp().hp(hd.a(this.f24793q).l());
            }
            if (hd.eb(this.f24793q) != null) {
                com.byazt.jz.j.hp().hp(hd.eb(this.f24793q).hp());
            }
        }
        this.hq = l(jSONObjectHp);
        if (k()) {
            this.an = new sz();
        } else {
            this.an = new e(this.hq, this.eb, this.f24793q, this.f24792o);
        }
        boolean zD = d();
        if (hd.e(this.f24793q) || hd.jl(this.f24793q) || com.byazt.tj.hp.l(this.f24793q) || o()) {
            l.hp hpVar2 = new l.hp();
            hpVar2.w(com.byazt.la.e.hp(this.f24793q, (View) this, false));
            hpVar2.hp((com.byazt.ql.ns) this.an);
            hpVar2.hp(this.f24783d);
            hpVar2.l(this.wv);
            hpVar2.w(o());
            hpVar2.gu(1);
            hpVar = hpVar2;
        } else {
            hpVar = new zy.hp();
        }
        hpVar.jx(zS);
        if (TextUtils.equals(this.eb, "splash_ad")) {
            hpVar.a(com.byazt.dnb.gu.w());
        }
        if (hd.l(this.f24793q) == 3 && com.byazt.nwu.hp.j(this.f24793q) && (listVi = this.f24793q.vi()) != null && !listVi.isEmpty() && (dyVar = listVi.get(0)) != null) {
            hpVar.q(dyVar.hp());
            hpVar.hp(new UpieImageView(this.f24781a, com.byazt.nwu.hp.q(this.f24793q), com.byazt.fbd.hp.hp(this.f24793q), com.byazt.nwu.hp.e(this.f24793q)));
        }
        this.fi = hpVar.hp(this.eb).l(this.f24793q.j()).jx(ky.sz(this.f24793q)).j(this.f24793q.w_()).hp(jSONObjectHp).hp(this.an).hp(com.byazt.jz.sz.l().hp(this.eb, hd.l(this.f24793q))).l(zD).l(this.f24793q.h()).jx(this.f24793q.q()).w(com.byazt.yp.l.j(this.f24793q)).hp(com.byazt.yp.l.w(this.f24793q)).j(getRenderThread()).w(this.f24793q.rm()).a(this.f24793q.kq()).eb(this.f24793q.aj()).l(this.f24793q.ki()).jx(this.f24793q.wj()).j(this.f24793q.sf()).q(this.f24793q.gv()).s(this.f24793q.cs()).eb(this.f24793q.nn()).s("https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/").hp(com.byazt.jz.s.u().j()).e(this.f24793q.nu()).j(com.byazt.jz.sz.l().oh()).hp();
    }

    private boolean dy() {
        mp mpVar = this.f24793q;
        return mpVar != null && mpVar.xv() == 1 && mp.jx(this.f24793q);
    }

    private int getRenderThread() {
        if ((wv() && com.byazt.jz.sz.l().s(ky.zy(this.f24793q)) == 4) || (com.byazt.lca.w.hp().jl() & 2) == 2) {
            return 1;
        }
        return hd.j(this.f24793q);
    }

    private void hq() {
        this.f24788l = hd.l(this.f24793q);
        if (wv() && hd.hp(this.f24793q) == 1) {
            this.f24788l = 1000;
        }
        com.byazt.uyv.hp hpVar = new com.byazt.uyv.hp(this.f24793q, new WeakReference(this));
        int i2 = this.f24788l;
        if (i2 == 3) {
            com.byazt.fub.l lVar = new com.byazt.fub.l(this.f24781a, this.fi, this.rz, this.sz, new com.byazt.yj.eb(), this, hpVar);
            this.ea = lVar;
            this.f24801y.add(lVar);
            this.ea.hp(com.byazt.jz.sz.l().rp());
        } else if (i2 == 7) {
            com.byazt.fb.w wVar = new com.byazt.fb.w(this.f24781a, this.f24793q, (com.byazt.fb.l) this.fi, this);
            this.ud = wVar.e();
            com.byazt.fb.a aVar = new com.byazt.fb.a(this.f24781a, wVar, this, this.fi, this);
            this.rv = aVar;
            this.f24801y.add(aVar);
        } else if (i2 == 10) {
            com.byazt.fb.eb ebVar = new com.byazt.fb.eb(this.f24781a, this.f24793q, (com.byazt.fb.l) this.fi, this);
            this.hd = ebVar;
            this.ud = ebVar.e();
            this.rv = new com.byazt.fb.a(this.f24781a, this.hd, this, this.fi, this);
            if (hd.hp(ky.jl(this.f24793q))) {
                this.hd.hp(new com.byazt.ql.s() { // from class: com.byazt.qk.NativeExpressView.8
                    @Override // com.byazt.ql.s
                    public void hp(q.hp hpVar2) {
                        try {
                            j.hp(hpVar2.w(), NativeExpressView.this.fi.w());
                        } catch (Exception unused) {
                        }
                    }

                    @Override // com.byazt.ql.s
                    public void l(q.hp hpVar2) {
                    }
                });
            }
            this.f24801y.add(this.rv);
        } else if (i2 != 1000) {
            o oVar = new o(this.f24781a, this.fi, this.rz, this.hq, this.f24793q, this.an, this);
            this.nd = oVar;
            com.byazt.fub.u uVar = new com.byazt.fub.u(this.f24781a, this.fi, oVar, this);
            this.vq = uVar;
            this.f24801y.add(uVar);
        }
        int iJx = hd.jx(this.f24793q);
        if (iJx > 0 && o() && TextUtils.equals(this.eb, com.byazt.ih.l.AD_TAG_FEED)) {
            this.f24801y.add(new com.byazt.fb.a(this.f24781a, new com.byazt.tj.jx(this.f24781a, this.f24793q, (com.byazt.fb.l) this.fi, this), this, this.fi, this));
        } else {
            boolean z2 = iJx == 1;
            this.hp = z2;
            if (z2 || this.f24788l == 1000) {
                com.byazt.fub.a aVar2 = new com.byazt.fub.a(this.f24781a, this.fi, new ec(this, this.rz, this.fi));
                this.su = aVar2;
                this.f24801y.add(aVar2);
            } else if (com.byazt.tj.hp.l(this.f24793q)) {
                this.f24801y.add(new com.byazt.fb.a(this.f24781a, new com.byazt.tj.jx(this.f24781a, this.f24793q, (com.byazt.fb.l) this.fi, this), this, this.fi, this));
            }
        }
        this.zx = new com.byazt.fub.jl(this.f24801y, this.an);
    }

    private boolean k() {
        return wv() && hd.hp(this.f24793q) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nu() {
        com.byazt.tq.hp hpVar = this.hq;
        if (hpVar instanceof com.byazt.jdb.e) {
            ((com.byazt.jdb.e) hpVar).l(this.fi.s());
        }
        this.hq.hp();
        this.zx.hp(this);
        this.zx.hp();
    }

    private boolean o() {
        com.byazt.jt.l lVar = this.f24795s;
        return lVar != null && com.byazt.jz.d.f21856j >= 5900 && lVar.o();
    }

    private void ud() {
        if (k()) {
            return;
        }
        b();
    }

    private boolean wv() {
        return TextUtils.equals(this.eb, "splash_ad") || TextUtils.equals(this.eb, "cache_splash_ad");
    }

    private void zy() {
        ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver = new ThemeStatusBroadcastReceiver();
        this.rz = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.hp(this);
    }

    @Override // com.byazt.fub.v
    public void a_(final int i2) {
        this.gd = true;
        if (!this.hp) {
            this.an.gu();
        }
        this.an.jl();
        com.byazt.fub.q qVar = this.an;
        if (qVar instanceof e) {
            ((e) qVar).k();
        }
        if (this.f24799w != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f24799w.hp(this, com.byazt.jz.eb.hp(i2), i2);
            } else {
                com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.qk.NativeExpressView.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (NativeExpressView.this.f24799w != null) {
                            NativeExpressView.this.f24799w.hp(NativeExpressView.this, com.byazt.jz.eb.hp(i2), i2);
                        }
                    }
                });
            }
        }
    }

    @Override // com.byazt.ek.hp
    public void b_(int i2) {
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar == null || !(jVar instanceof k)) {
            return;
        }
        ((k) jVar).b_(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r13) {
        /*
            r12 = this;
            com.byazt.go.hp r0 = r12.cx
            r1 = 0
            if (r0 == 0) goto L1e
            int r2 = r13.getDeviceId()
            r0.jx(r2)
            com.byazt.go.hp r0 = r12.cx
            int r2 = r13.getSource()
            r0.l(r2)
            com.byazt.go.hp r0 = r12.cx
            int r2 = r13.getToolType(r1)
            r0.j(r2)
        L1e:
            com.byazt.go.l r0 = r12.f24782b
            if (r0 == 0) goto L3b
            int r2 = r13.getDeviceId()
            r0.jx(r2)
            com.byazt.go.l r0 = r12.f24782b
            int r2 = r13.getSource()
            r0.l(r2)
            com.byazt.go.l r0 = r12.f24782b
            int r2 = r13.getToolType(r1)
            r0.j(r2)
        L3b:
            int r0 = r13.getActionMasked()
            if (r0 == 0) goto L9a
            r1 = 3
            r2 = 1
            if (r0 == r2) goto L4b
            r3 = 2
            if (r0 == r3) goto L4f
            if (r0 == r1) goto L4d
            r1 = -1
        L4b:
            r5 = r1
            goto Lad
        L4d:
            r1 = 4
            goto L4b
        L4f:
            float r0 = r12.qh
            float r1 = r13.getX()
            float r4 = r12.tw
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 + r1
            r12.qh = r0
            float r0 = r12.f24796t
            float r1 = r13.getY()
            float r4 = r12.jd
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 + r1
            r12.f24796t = r0
            float r0 = r13.getX()
            r12.tw = r0
            float r0 = r13.getY()
            r12.jd = r0
            long r0 = java.lang.System.currentTimeMillis()
            long r4 = r12.f24800x
            long r0 = r0 - r4
            r4 = 200(0xc8, double:9.9E-322)
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L98
            float r0 = r12.qh
            r1 = 1090519040(0x41000000, float:8.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L96
            float r0 = r12.f24796t
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L98
        L96:
            r5 = r2
            goto Lad
        L98:
            r5 = r3
            goto Lad
        L9a:
            float r0 = r13.getRawX()
            r12.tw = r0
            float r0 = r13.getRawY()
            r12.jd = r0
            long r2 = java.lang.System.currentTimeMillis()
            r12.f24800x = r2
            goto L4b
        Lad:
            android.util.SparseArray<com.byazt.go.j$hp> r0 = r12.yj
            if (r0 == 0) goto Lcb
            int r1 = r13.getActionMasked()
            com.byazt.go.j$hp r4 = new com.byazt.go.j$hp
            float r2 = r13.getSize()
            double r6 = (double) r2
            float r2 = r13.getPressure()
            double r8 = (double) r2
            long r10 = java.lang.System.currentTimeMillis()
            r4.<init>(r5, r6, r8, r10)
            r0.put(r1, r4)
        Lcb:
            boolean r13 = super.dispatchTouchEvent(r13)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qk.NativeExpressView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void e() {
    }

    public void ec() {
        try {
            FrameLayout frameLayout = this.f24787k;
            if (frameLayout == null || frameLayout.getParent() == null) {
                return;
            }
            removeView(this.f24787k);
        } catch (Throwable unused) {
        }
    }

    public com.byazt.jdb.w getAdShowTime() {
        return this.ky;
    }

    public com.byazt.go.hp getClickCreativeListener() {
        return this.cx;
    }

    public com.byazt.go.l getClickListener() {
        return this.f24782b;
    }

    public int getDynamicShowType() {
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar != null) {
            return jVar.jx();
        }
        return 0;
    }

    public FrameLayout getEasyPlayableLayout() {
        return this.pu;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.wv).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.f24783d).intValue();
    }

    public hp getExpressInteractionListener() {
        return this.f24799w;
    }

    public ud getJsObject() {
        o oVar = this.nd;
        if (oVar != null) {
            return oVar.J_();
        }
        return null;
    }

    public int getRenderEngineCacheType() {
        eb ebVarV;
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (!(jVar instanceof o) || (ebVarV = ((o) jVar).v()) == null) {
            return 0;
        }
        return ebVarV.hp();
    }

    public byte getShowDLFactorsEventParams() {
        if (!com.byazt.fy.s.a(this.f24793q)) {
            return (byte) -1;
        }
        boolean zJ = com.byazt.ff.hp.j(this.f24793q);
        boolean z2 = this.f24790ms.get();
        if (!zJ) {
            return z2 ? (byte) 2 : (byte) 0;
        }
        if (z2) {
            return (byte) 3;
        }
        return !n() ? (byte) 1 : (byte) 0;
    }

    public com.byazt.fb.eb getUGenV3Render() {
        return this.hd;
    }

    public ViewGroup getVideoContainer() {
        return this.f24787k;
    }

    public com.byazt.su.jx getVideoController() {
        return null;
    }

    public SSWebView getWebView() {
        o oVar = this.nd;
        if (oVar == null) {
            return null;
        }
        return oVar.hp();
    }

    public void gu() throws JSONException {
        this.f24791n = new FrameLayout(this.f24781a);
        this.f24794r = new FrameLayout(this.f24781a);
        this.pu = new FrameLayout(this.f24781a);
        addView(this.f24791n);
        addView(this.f24794r);
        addView(this.pu);
        this.f24801y = new ArrayList();
        com.byazt.jt.l lVar = this.f24795s;
        if (lVar != null) {
            this.f24783d = lVar.s();
            this.wv = this.f24795s.q();
            cx();
            this.f24792o = this.f24795s.j();
        }
        if (!k()) {
            setBackgroundColor(0);
            setBackgroundResource(R.color.transparent);
            zy();
        }
        di();
        hq();
        com.byazt.fub.u uVar = this.vq;
        if (uVar != null) {
            this.nd = (o) uVar.l();
        }
        if (o()) {
            this.nr = new xs(this);
        }
    }

    public long hp() {
        return 0L;
    }

    public void j() {
    }

    public void jl() {
        ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver;
        try {
            com.byazt.fub.j<? extends View> jVar = this.pc;
            if (jVar instanceof com.byazt.fb.w) {
                ((com.byazt.fb.w) jVar).u();
            }
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            Iterator<com.byazt.fub.e> it = this.f24801y.iterator();
            while (it.hasNext()) {
                it.next().hp();
            }
            this.jx = null;
            this.f24786j = null;
            this.f24795s = null;
            this.f24793q = null;
            this.cx = null;
            this.xs = null;
            this.f24782b = null;
            this.jl = null;
            this.zy = null;
            this.f24799w = null;
            Context context = this.f24781a;
            if (context != null && (themeStatusBroadcastReceiver = this.rz) != null) {
                context.unregisterReceiver(themeStatusBroadcastReceiver);
            }
            ExpressVideoView expressVideoView = this.gu;
            if (expressVideoView != null) {
                expressVideoView.sz();
            }
            View view = this.bu;
            if (view != null) {
                view.removeCallbacks(this.kg);
            }
            this.ky.hp(56);
        } catch (Throwable th) {
            com.byazt.ymw.u.hp("NativeExpressView", "detach error", th);
        }
    }

    public int jx() {
        return 0;
    }

    public int l() {
        return 0;
    }

    public boolean n() {
        com.byazt.fub.j<? extends View> jVar = this.pc;
        return jVar != null && jVar.jx() == 1;
    }

    public void ns() {
        ns nsVar = this.wt;
        if (nsVar != null) {
            nsVar.j();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.byazt.ymw.u.l("webviewpool", "onAttachedToWindow+++");
        a(51);
        getViewTreeObserver().addOnScrollChangedListener(this.mp);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            com.byazt.tq.hp hpVar = this.hq;
            if (hpVar != null) {
                hpVar.l(true);
            }
            getViewTreeObserver().removeOnScrollChangedListener(this.mp);
        } catch (Exception unused) {
        }
        com.byazt.ymw.u.l("webviewpool", "onDetachedFromWindow===");
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        com.byazt.ymw.u.l("webviewpool", "onFinishTemporaryDetach+++");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        xs xsVar;
        return (!o() || (xsVar = this.nr) == null) ? super.onInterceptTouchEvent(motionEvent) : xsVar.hp(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        a(55);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        com.byazt.ymw.u.l("webviewpool", "onStartTemporaryDetach===");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        xs xsVar;
        return (!o() || (xsVar = this.nr) == null) ? super.onTouchEvent(motionEvent) : xsVar.l(motionEvent);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        a(z2 ? 53 : 54);
        if (Build.VERSION.SDK_INT < 28) {
            onWindowVisibilityChanged(z2 ? getVisibility() : 8);
        }
        o oVar = this.nd;
        if (oVar != null) {
            oVar.l(z2);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        removeCallbacks(this.yr);
        removeCallbacks(this.f24785f);
        if (i2 == 0) {
            postDelayed(this.f24785f, 50L);
        } else {
            postDelayed(this.yr, 50L);
        }
    }

    public void q() {
        Dialog dialog = this.f24786j;
        if (dialog != null) {
            dialog.show();
            return;
        }
        com.byazt.ih.l lVar = this.jx;
        if (lVar != null) {
            lVar.showDislikeDialog();
        } else {
            TTDelegateActivity.hp(getContext(), this.f24793q);
        }
    }

    public void s() {
    }

    public void setBackupListener(com.byazt.fub.jx jxVar) {
        this.xs = jxVar;
        com.byazt.fub.a aVar = this.su;
        if (aVar != null) {
            aVar.hp(jxVar);
        }
    }

    public void setClickCreativeListener(com.byazt.go.hp hpVar) {
        this.cx = hpVar;
    }

    public void setClickListener(com.byazt.go.l lVar) {
        this.f24782b = lVar;
    }

    public void setDislike(com.byazt.ih.l lVar) {
        BackupView backupView;
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar != null && (jVar instanceof ec) && (backupView = (BackupView) jVar.eb()) != null) {
            backupView.setDislikeInner(lVar);
        }
        this.jx = lVar;
        mp mpVar = this.f24793q;
        if (mpVar != null) {
            com.byazt.jz.n.l(mpVar.jm(), lVar, com.byazt.ih.l.class);
        }
    }

    public void setDynamicSkipListener(com.byazt.xse.jx jxVar) {
        this.ru = jxVar;
    }

    public void setEasyPlayableSender(com.byazt.ar.eb ebVar) {
        ExpressVideoView expressVideoView = this.gu;
        if (expressVideoView == null) {
            return;
        }
        expressVideoView.setEasyPlayableEventSender(ebVar);
    }

    public void setExpressInteractionListener(hp hpVar) {
        this.f24799w = hpVar;
    }

    public void setOuterDislike(Dialog dialog) {
        BackupView backupView;
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar != null && (jVar instanceof ec) && (backupView = (BackupView) jVar.eb()) != null) {
            backupView.setDislikeOuter(dialog);
        }
        this.f24786j = dialog;
        mp mpVar = this.f24793q;
        if (mpVar != null) {
            com.byazt.jz.n.l(mpVar.jm(), dialog, Dialog.class);
        }
    }

    public void setPauseFromExpressView(boolean z2) {
    }

    @Override // com.byazt.wsc.j
    public void setSoundMute(boolean z2) {
        this.sz = z2;
        com.byazt.fub.l lVar = this.ea;
        if (lVar != null && lVar.l() != null) {
            this.ea.l().setSoundMute(z2);
        }
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar == null || jVar.jx() != 7) {
            return;
        }
        com.byazt.fub.j<? extends View> jVar2 = this.pc;
        if (jVar2 instanceof com.byazt.fb.w) {
            ((com.byazt.wsc.j) jVar2).setSoundMute(z2);
        }
    }

    public void setTimeUpdate(int i2) {
    }

    public void setVideoAdInteractionListener(jx.InterfaceC0367jx interfaceC0367jx) {
        this.zy = interfaceC0367jx;
    }

    public void setVideoAdListener(jx.j jVar) {
        this.jl = jVar;
    }

    public void sz() {
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (!(jVar instanceof com.byazt.fb.w) || (jVar instanceof com.byazt.fb.eb)) {
            return;
        }
        ((com.byazt.fb.w) jVar).j();
    }

    public void u() {
        if (!com.byazt.jz.sz.l().lz() || !this.gd) {
            if (com.byazt.jz.sz.l().rp() && com.byazt.dnb.s.hp()) {
                com.byazt.ymw.e.jx().post(new Runnable() { // from class: com.byazt.qk.NativeExpressView.10
                    @Override // java.lang.Runnable
                    public void run() {
                        NativeExpressView.this.nu();
                    }
                });
                return;
            } else {
                nu();
                return;
            }
        }
        if (this.f24799w != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f24799w.hp(this, com.byazt.jz.eb.hp(-16), -16);
            } else {
                com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.qk.NativeExpressView.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (NativeExpressView.this.f24799w != null) {
                            NativeExpressView.this.f24799w.hp(NativeExpressView.this, com.byazt.jz.eb.hp(-16), -16);
                        }
                    }
                });
            }
        }
    }

    public void v() {
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar instanceof k) {
            ((k) jVar).s();
        } else if (jVar instanceof com.byazt.fb.w) {
            ((com.byazt.fb.w) jVar).v();
        }
        ud();
    }

    public void vv() {
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar instanceof com.byazt.fb.w) {
            ((com.byazt.fb.w) jVar).xs();
        }
    }

    public void w() {
    }

    public void xs() {
        o oVar = this.nd;
        if (oVar == null || oVar.eb() == null) {
            return;
        }
        this.nd.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        if (this.xh.get() && this.ky.hp()) {
            this.ky.hp(dy.l(this), i2);
        }
    }

    public void eb(int i2) {
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar == null || !(jVar instanceof k)) {
            return;
        }
        ((k) jVar).l(i2);
    }

    public void hp(float f2) {
    }

    public void j(int i2) {
    }

    public void jx(int i2) {
    }

    public void l(int i2) {
    }

    public void s(int i2) {
        this.fi.hp(i2);
    }

    public void w(int i2) {
    }

    public void hp(float f2, float f3, float f4, float f5, int i2) {
    }

    private void a(final mp mpVar) throws JSONException {
        if (mpVar == null) {
            l(false);
            return;
        }
        if (com.byazt.fy.s.hp(mpVar) == 0) {
            l(mpVar, (com.byazt.xci.j) null);
            return;
        }
        com.byazt.xci.j jVarHp = com.byazt.ff.hp.hp(mpVar);
        if (jVarHp != null) {
            if (jVarHp.eb()) {
                l(mpVar, jVarHp);
                return;
            } else {
                l(false);
                return;
            }
        }
        final com.byazt.xci.w wVarV = mpVar.v();
        if (wVarV == null) {
            l(false);
        } else {
            com.byazt.dnb.s.hp(new com.byazt.uid.eb("pl_dlf") { // from class: com.byazt.qk.NativeExpressView.12
                @Override // java.lang.Runnable
                public void run() {
                    final com.byazt.xci.j jVarHp2 = com.byazt.jz.sz.hp().hp(NativeExpressView.this.f24793q, wVarV.l());
                    com.byazt.dnb.s.hp((Runnable) new com.byazt.uid.eb("pl_udlf") { // from class: com.byazt.qk.NativeExpressView.12.1
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            com.byazt.xci.j jVar = jVarHp2;
                            if (jVar == null || !jVar.eb()) {
                                NativeExpressView.this.l(false);
                                return;
                            }
                            try {
                                AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                NativeExpressView.this.l(mpVar, jVarHp2);
                            } catch (Exception e2) {
                                com.byazt.lf.k.hp().hp("express_dl", e2);
                                NativeExpressView.this.l(false);
                            }
                        }
                    });
                }
            });
        }
    }

    private boolean j(mp mpVar) {
        if (mpVar == null) {
            return true;
        }
        if (ky.jl(mpVar) != 8) {
            return this.wv == 0.0f;
        }
        if (mpVar.qo() == 0.0f || mpVar.qo() == 100.0f) {
            return ((float) (this.f24794r.getHeight() == 0 ? xh.jx(getContext(), this.wv) : this.f24794r.getHeight())) <= 0.0f;
        }
        return true;
    }

    private com.byazt.tq.hp l(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.jdb.e eVar = new com.byazt.jdb.e(this.eb, this.f24793q, jSONObject2, jSONObject);
        eVar.hp(jSONObject2, "webview_source", (Object) 1);
        return eVar;
    }

    private void w(mp mpVar) throws JSONException {
        try {
            if (com.byazt.fy.s.a(mpVar) && !j(mpVar)) {
                if (!com.byazt.ff.hp.j(mpVar)) {
                    l(false);
                    return;
                } else {
                    a(mpVar);
                    return;
                }
            }
            l(false);
        } catch (Exception e2) {
            com.byazt.lf.k.hp().hp("express_dl", e2);
            l(false);
        }
    }

    public void hp(int i2) {
    }

    public void jx(boolean z2) {
        o oVar = this.nd;
        if (oVar != null) {
            oVar.jx(z2);
        }
    }

    public void eb() {
        if (o() && TextUtils.equals(this.eb, com.byazt.ih.l.AD_TAG_FEED)) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            com.byazt.bl.l lVar = new com.byazt.bl.l(this.f24793q.ij(), com.byazt.jde.j.hp());
            lVar.l("dislike");
            com.byazt.ruu.hp.hp().hp(this.f24781a, lVar, "close_success");
        }
    }

    public void hp(int i2, String str) {
    }

    private float jx(mp mpVar) {
        return (com.byazt.fy.s.w(mpVar) && com.byazt.ff.hp.j(mpVar)) ? 56.0f : 0.0f;
    }

    public void hp(mp mpVar) {
    }

    private void jx(mp mpVar, Context context, String str) {
        if (mpVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.zn.w.hp(context, mpVar, str);
    }

    @Override // com.byazt.ci.l
    public void hp(String str) {
    }

    public void l(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
        if (i2 == -1 || jxVar == null) {
            return;
        }
        com.byazt.xci.b bVar = (com.byazt.xci.b) jxVar;
        com.byazt.xci.e eVar = new com.byazt.xci.e();
        eVar.hp(bVar.xs);
        eVar.hp(bVar.hp);
        eVar.l(bVar.f27199l);
        eVar.jx(bVar.jx);
        eVar.j(bVar.f27197j);
        eVar.l(bVar.f27203v);
        JSONObject jSONObjectHp = bVar.hp();
        int iOptInt = jSONObjectHp.optInt("convertActionType", Integer.MIN_VALUE);
        eVar.j(jSONObjectHp.optBoolean("is_compliant_download"));
        if (iOptInt == 1) {
            if (i2 == 2) {
                this.cx.jx();
            } else {
                this.f24782b.jx();
            }
        } else if (iOptInt == 2) {
            if (i2 == 2) {
                this.cx.j();
            } else {
                this.f24782b.j();
            }
        }
        View view2 = view == null ? this : view;
        com.byazt.go.hp hpVar = this.cx;
        if (hpVar != null) {
            hpVar.w(getDynamicShowType());
        }
        com.byazt.go.l lVar = this.f24782b;
        if (lVar != null) {
            lVar.w(getDynamicShowType());
        }
        mp mpVar = this.f24793q;
        int iQ = mpVar != null ? mpVar.q() : 0;
        switch (i2) {
            case 1:
                View view3 = view2;
                int i4 = iQ;
                FrameLayout frameLayout = this.f24787k;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                hp(view3, i3, bVar, eVar, i4);
                break;
            case 2:
                l(view2, i3, bVar, eVar, iQ);
                break;
            case 3:
                q();
                break;
            case 4:
                FrameLayout frameLayout2 = this.f24787k;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                ky.di(this.f24793q);
                if (com.byazt.ih.l.AD_TAG_FEED.equals(this.eb) && dy() && !this.f24798v && ky.di(this.f24793q)) {
                    l(view2, i3, bVar, eVar, iQ);
                    break;
                } else {
                    hp(view2, i3, bVar, eVar, iQ);
                    break;
                }
                break;
            case 5:
                hp(!this.sz);
                break;
            case 6:
                a();
                break;
            case 8:
                eb();
                break;
        }
    }

    public void hp(View view, int i2, com.byazt.wkx.jx jxVar, pc pcVar) throws JSONException {
        this.nu = pcVar;
        hp(view, i2, jxVar, -1);
        this.nu = null;
    }

    public void a() {
        com.byazt.xse.jx jxVar = this.ru;
        if (jxVar != null) {
            jxVar.hp();
        }
    }

    @Override // com.byazt.ci.l
    public boolean hp(String str, com.byazt.xs.jx jxVar, com.byazt.ci.jx jxVar2) throws JSONException {
        str.getClass();
        switch (str) {
            case "clickEvent":
            case "convert":
                hp(jxVar, jxVar2, 2);
                return true;
            case "resumeVideo":
                hp(3);
                return true;
            case "pauseVideo":
                hp(2);
                return true;
            case "skip":
                a();
                return true;
            case "close":
                eb();
                return true;
            case "videoControl":
                hp(jxVar, jxVar2, 4);
                return true;
            case "muteVideo":
                hp(!this.sz);
                return true;
            case "interactiveFinish":
                hp(jxVar2);
                return true;
            case "dislike":
                q();
                return true;
            default:
                return false;
        }
    }

    private void hp(com.byazt.xs.jx jxVar, com.byazt.ci.jx jxVar2, int i2) throws JSONException {
        CharSequence text;
        com.byazt.xci.e eVar = (com.byazt.xci.e) jxVar2.hp("ugen_click_event_params", com.byazt.xci.e.class);
        b.hp hpVarHp = new b.hp().j(eVar.xs()).jx(eVar.vv()).l(eVar.ec()).hp(eVar.sz()).hp(jxVar.nu()).l(eVar.v()).hp(eVar.u()).hp(com.byazt.fb.eb.l(jxVar2.hp("v3_trigger_name")));
        JSONObject jSONObject = new JSONObject();
        int iHp = jxVar2.hp("convert_action_type", 0);
        if (iHp > 0) {
            try {
                jSONObject.put("convertActionType", iHp);
            } catch (Throwable unused) {
            }
        }
        View viewQ = jxVar.q();
        try {
            if ((viewQ instanceof TextView) && (text = ((TextView) viewQ).getText()) != null && text.toString().contains("下载")) {
                jSONObject.put("is_compliant_download", true);
            }
        } catch (JSONException unused2) {
        }
        hpVarHp.hp(jSONObject);
        hp(viewQ, i2, hpVarHp.hp(), -1);
    }

    public NativeExpressView(boolean z2, Context context, mp mpVar, com.byazt.jt.l lVar, String str, boolean z3) throws JSONException {
        super(context);
        this.hp = true;
        this.f24788l = 0;
        this.eb = com.byazt.ih.l.AD_TAG_FEED;
        this.di = new AtomicBoolean(false);
        this.f24792o = null;
        this.f24797u = false;
        this.vv = false;
        this.sz = false;
        this.ud = false;
        this.xh = new AtomicBoolean(false);
        this.ns = false;
        this.f24790ms = new AtomicBoolean(false);
        this.mp = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.qk.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f24789m);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f24789m, 500L);
            }
        };
        this.f24789m = new Runnable() { // from class: com.byazt.qk.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!dy.l(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.eb(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.eb(nativeExpressView.getVisibility());
                }
            }
        };
        this.f24785f = new Runnable() { // from class: com.byazt.qk.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(0);
            }
        };
        this.yr = new Runnable() { // from class: com.byazt.qk.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(8);
            }
        };
        this.yj = new SparseArray<>();
        this.tw = -1.0f;
        this.jd = -1.0f;
        this.qh = -1.0f;
        this.f24796t = -1.0f;
        this.f24800x = 0L;
        this.eb = str;
        this.f24781a = context;
        this.f24793q = mpVar;
        this.ky = new com.byazt.jdb.w(mpVar, str);
        this.f24795s = lVar;
        this.f24797u = z2;
        this.sz = z3;
        gu();
    }

    private void l(View view, int i2, com.byazt.xci.b bVar, com.byazt.xci.e eVar, int i3) {
        if (mp.a(this.f24793q)) {
            return;
        }
        com.byazt.go.hp hpVar = this.cx;
        if (hpVar != null) {
            hp(((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(), i2);
            this.cx.hp(bVar);
            this.cx.hp(eVar);
            this.cx.hp(view, eVar);
        }
        hp hpVar2 = this.f24799w;
        if (hpVar2 != null) {
            hpVar2.hp(this, i3);
        }
    }

    public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) throws JSONException {
        com.byazt.xci.e eVar;
        com.byazt.ey.hp hpVar;
        com.byazt.go.hp hpVar2;
        com.byazt.go.l lVar;
        if (i2 == -1 || jxVar == null) {
            return;
        }
        com.byazt.xci.b bVar = (com.byazt.xci.b) jxVar;
        com.byazt.go.hp hpVar3 = this.cx;
        if (hpVar3 != null) {
            hpVar3.w(getDynamicShowType());
        }
        com.byazt.go.l lVar2 = this.f24782b;
        if (lVar2 != null) {
            lVar2.w(getDynamicShowType());
        }
        if (i2 != 1 || (lVar = this.f24782b) == null) {
            eVar = null;
            hpVar = null;
        } else {
            eVar = lVar.l();
            hpVar = (com.byazt.ey.hp) this.f24782b.hp(com.byazt.ey.hp.class);
            hpVar.hp(hpVar.w());
        }
        if (i2 == 2 && (hpVar2 = this.cx) != null) {
            eVar = hpVar2.l();
            hpVar = (com.byazt.ey.hp) this.cx.hp(com.byazt.ey.hp.class);
            hpVar.hp(hpVar.w());
        }
        try {
            Object obj = bVar.hp().get("click_extra_map");
            if (hpVar != null && (obj instanceof Map)) {
                hpVar.hp((Map<String, Object>) obj);
            }
        } catch (JSONException unused) {
        }
        if (eVar == null) {
            eVar = new com.byazt.xci.e();
        }
        com.byazt.xci.e eVar2 = eVar;
        if (this.nu != null) {
            eVar2.l(this);
        }
        eVar2.hp(bVar.hp);
        eVar2.l(bVar.f27199l);
        eVar2.jx(bVar.jx);
        eVar2.j(bVar.f27197j);
        eVar2.l(bVar.f27203v);
        eVar2.eb(bVar.ec);
        eVar2.hp(com.byazt.xci.ns.hp(this.f24793q, bVar.vv));
        eVar2.l(bVar.vv);
        eVar2.hp(bVar.f27202u);
        eVar2.l(getShowDLFactorsEventParams());
        SparseArray<j.hp> sparseArray = bVar.xs;
        if (sparseArray == null || sparseArray.size() == 0) {
            sparseArray = this.yj;
        }
        eVar2.hp(sparseArray);
        JSONObject jSONObjectHp = bVar.hp();
        eVar2.j(jSONObjectHp.optBoolean("is_compliant_download"));
        String strOptString = jSONObjectHp.optString("uchain_event_name");
        eVar2.jx(strOptString);
        eVar2.hp(this.ns);
        int iOptInt = jSONObjectHp.optInt("convertActionType", Integer.MIN_VALUE);
        if (iOptInt == 1) {
            if (i2 == 2) {
                com.byazt.go.hp hpVar4 = this.cx;
                if (hpVar4 != null) {
                    hpVar4.jx();
                }
            } else {
                com.byazt.go.l lVar3 = this.f24782b;
                if (lVar3 != null) {
                    lVar3.jx();
                }
            }
        } else if (iOptInt == 2) {
            if (i2 == 2) {
                com.byazt.go.hp hpVar5 = this.cx;
                if (hpVar5 != null) {
                    hpVar5.j();
                }
            } else {
                com.byazt.go.l lVar4 = this.f24782b;
                if (lVar4 != null) {
                    lVar4.j();
                }
            }
        }
        View view2 = view == null ? this : view;
        String str = bVar.gu;
        mp mpVar = this.f24793q;
        int iQ = mpVar != null ? mpVar.q() : 0;
        switch (i2) {
            case 1:
                View view3 = view2;
                int i4 = iQ;
                FrameLayout frameLayout = this.f24787k;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                hp(view3, bVar, eVar2, 0, str, i4, i3);
                break;
            case 2:
                hp(view2, bVar, eVar2, str, iQ, i3);
                break;
            case 3:
                q();
                break;
            case 4:
                FrameLayout frameLayout2 = this.f24787k;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                ky.di(this.f24793q);
                if (com.byazt.ih.l.AD_TAG_FEED.equals(this.eb) && dy() && !this.f24798v && ky.di(this.f24793q)) {
                    hp(view2, bVar, eVar2, str, iQ, i3);
                    break;
                } else {
                    hp(view2, bVar, eVar2, 0, str, iQ, i3);
                    break;
                }
                break;
            case 5:
                hp(!this.sz);
                break;
            case 6:
                a();
                break;
            case 7:
                if (!ky.hp(strOptString, this.f24793q, this.f24781a)) {
                    com.byazt.zn.w.hp(this.f24781a, this.f24793q);
                    break;
                }
                break;
            case 8:
                eb();
                break;
            case 9:
                l(this.f24793q, this.f24781a, this.eb);
                break;
            case 10:
                hp(this.f24793q, this.f24781a, this.eb);
                break;
            case 12:
                jx(this.f24793q, this.f24781a, this.eb);
                break;
            case 13:
                String strOptString2 = jSONObjectHp.optString("openCommonWebUrl", "");
                String strOptString3 = jSONObjectHp.optString("openCommonWebTitle", "");
                if (!TextUtils.isEmpty(strOptString2)) {
                    TTDelegateActivity.j(this.f24781a, strOptString2, strOptString3);
                    break;
                }
                break;
        }
    }

    private void l(com.byazt.gog.jx jxVar, int i2) {
        if (jxVar == null) {
            return;
        }
        if (jxVar instanceof com.byazt.fy.hp) {
            ((com.byazt.fy.hp) jxVar).s().l(i2);
        }
        jxVar.j(this.f24790ms.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(mp mpVar, com.byazt.xci.j jVar) throws JSONException {
        hp(mpVar, jVar);
        l(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final boolean z2) throws JSONException {
        ud udVarJ_;
        this.f24790ms.set(z2);
        FrameLayout frameLayout = this.as;
        if (frameLayout != null) {
            frameLayout.postDelayed(new Runnable() { // from class: com.byazt.qk.NativeExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeExpressView.this.as != null) {
                        NativeExpressView.this.as.setVisibility(z2 ? 0 : 8);
                    }
                }
            }, 10L);
        }
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar == null || !(jVar instanceof o) || (udVarJ_ = ((o) jVar).J_()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("result", z2);
            udVarJ_.l("isShow7Factors", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public NativeExpressView(Context context, mp mpVar, com.byazt.jt.l lVar, String str, boolean z2) throws JSONException {
        super(context);
        this.hp = true;
        this.f24788l = 0;
        this.eb = com.byazt.ih.l.AD_TAG_FEED;
        this.di = new AtomicBoolean(false);
        this.f24792o = null;
        this.f24797u = false;
        this.vv = false;
        this.sz = false;
        this.ud = false;
        this.xh = new AtomicBoolean(false);
        this.ns = false;
        this.f24790ms = new AtomicBoolean(false);
        this.mp = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.qk.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f24789m);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f24789m, 500L);
            }
        };
        this.f24789m = new Runnable() { // from class: com.byazt.qk.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!dy.l(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.eb(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.eb(nativeExpressView.getVisibility());
                }
            }
        };
        this.f24785f = new Runnable() { // from class: com.byazt.qk.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(0);
            }
        };
        this.yr = new Runnable() { // from class: com.byazt.qk.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(8);
            }
        };
        this.yj = new SparseArray<>();
        this.tw = -1.0f;
        this.jd = -1.0f;
        this.qh = -1.0f;
        this.f24796t = -1.0f;
        this.f24800x = 0L;
        this.eb = str;
        this.f24781a = context;
        this.f24793q = mpVar;
        this.ky = new com.byazt.jdb.w(mpVar, str);
        this.f24795s = lVar;
        this.sz = z2;
        if (lVar.sz() == 9) {
            this.f24797u = lVar.v() == 2;
        }
        gu();
    }

    public void l(com.byazt.fub.j<? extends View> jVar, com.byazt.fub.k kVar) {
        int iJx;
        try {
            this.pc = jVar;
            this.qu = kVar;
            if (jVar.jx() != 1) {
                View viewEb = jVar.eb();
                this.bu = viewEb;
                if (viewEb.getParent() != null) {
                    ((ViewGroup) this.bu.getParent()).removeView(this.bu);
                }
                this.f24794r.addView(this.bu);
                if (kVar.l() == 10) {
                    if (kVar.w() == 0.0d) {
                        int iHp = (int) hd.hp(this.f24793q, kVar.j());
                        if (iHp <= 0) {
                            iJx = xh.w(getContext());
                        } else {
                            iJx = xh.jx(getContext(), iHp);
                        }
                        this.bu.setLayoutParams(new FrameLayout.LayoutParams(-1, iJx));
                    }
                    if (this.f24793q.kf() == 1) {
                        Runnable runnable = new Runnable() { // from class: com.byazt.qk.NativeExpressView.3
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    if (NativeExpressView.this.bu != null) {
                                        View childAt = ((ViewGroup) NativeExpressView.this.bu).getChildAt(0);
                                        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
                                        if (childAt2.getMeasuredHeight() < childAt.getMeasuredHeight()) {
                                            NativeExpressView.this.bu.setLayoutParams(new FrameLayout.LayoutParams(-1, childAt2.getHeight()));
                                            NativeExpressView.this.f24794r.requestLayout();
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        };
                        this.kg = runnable;
                        this.bu.post(runnable);
                    }
                }
                ViewGroup.LayoutParams layoutParams = this.bu.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) layoutParams).gravity = 1;
                }
                w(this.f24793q);
                if (this.wt != null && (jVar instanceof com.byazt.fb.w) && !(jVar instanceof com.byazt.fb.eb)) {
                    this.wt.hp(((com.byazt.fb.w) jVar).q());
                    this.wt.hp(this);
                }
            }
            com.byazt.fub.q qVar = this.an;
            if (qVar instanceof e) {
                ((e) qVar).k();
            }
            if (this.hq != null && jVar.jx() != 0) {
                this.hq.hp(jVar.jx(), kVar.gu(), kVar.e());
            }
            com.byazt.fub.j<? extends View> jVar2 = this.pc;
            if ((jVar2 instanceof v) && ((v) jVar2).J_() != null) {
                ((v) this.pc).J_().hp((gu) this);
            }
            if (kVar.l() == 10 && (kVar instanceof com.byazt.fb.jx)) {
                this.dy = ((com.byazt.fb.jx) kVar).vv();
            }
            hp hpVar = this.f24799w;
            if (hpVar != null) {
                hpVar.hp(this, (float) kVar.j(), (float) kVar.w());
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public NativeExpressView(Context context, mp mpVar, com.byazt.jt.l lVar, String str, boolean z2, String str2) throws JSONException {
        super(context);
        this.hp = true;
        this.f24788l = 0;
        this.eb = com.byazt.ih.l.AD_TAG_FEED;
        this.di = new AtomicBoolean(false);
        this.f24792o = null;
        this.f24797u = false;
        this.vv = false;
        this.sz = false;
        this.ud = false;
        this.xh = new AtomicBoolean(false);
        this.ns = false;
        this.f24790ms = new AtomicBoolean(false);
        this.mp = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.qk.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f24789m);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f24789m, 500L);
            }
        };
        this.f24789m = new Runnable() { // from class: com.byazt.qk.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!dy.l(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.eb(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.eb(nativeExpressView.getVisibility());
                }
            }
        };
        this.f24785f = new Runnable() { // from class: com.byazt.qk.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(0);
            }
        };
        this.yr = new Runnable() { // from class: com.byazt.qk.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.eb(8);
            }
        };
        this.yj = new SparseArray<>();
        this.tw = -1.0f;
        this.jd = -1.0f;
        this.qh = -1.0f;
        this.f24796t = -1.0f;
        this.f24800x = 0L;
        this.eb = str;
        this.f24781a = context;
        this.f24793q = mpVar;
        this.ky = new com.byazt.jdb.w(mpVar, str);
        this.f24784e = str2;
        this.f24795s = lVar;
        this.sz = z2;
        if (lVar.sz() == 9) {
            this.f24797u = lVar.v() == 2;
        }
        gu();
    }

    private void l(mp mpVar, Context context, String str) {
        if (mpVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.zn.w.l(mpVar, context, str);
    }

    public void l(int i2, String str) throws JSONException {
        ud udVarJ_;
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar == null || !(jVar instanceof o) || (udVarJ_ = ((o) jVar).J_()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("time", i2);
            jSONObject.put("flag", str);
            udVarJ_.l("onVideoPaused", jSONObject);
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.qk.u
    public void l(mp mpVar) throws JSONException {
        if (mpVar != null) {
            w(mpVar);
        }
    }

    private void hp(View view, com.byazt.xci.b bVar, com.byazt.xci.e eVar, String str, int i2, int i3) {
        if (mp.a(this.f24793q)) {
            return;
        }
        com.byazt.go.hp hpVar = this.cx;
        if (hpVar != null) {
            hpVar.hp(bVar);
            l(((com.byazt.sw.hp) this.f24782b.hp(com.byazt.sw.hp.class)).hp(), i3);
            com.byazt.ey.hp hpVar2 = (com.byazt.ey.hp) this.cx.hp(com.byazt.ey.hp.class);
            hp(hpVar2);
            hpVar2.l(str);
            this.cx.hp(eVar);
            Map<String, Object> mapHp = com.byazt.mi.hp.hp().hp(this.f24793q.hashCode() + this.f24793q.ns());
            mapHp.put("convert_tag", bVar.vv);
            mapHp.put("dpa_convert", com.byazt.xci.ns.j(this.f24793q.zy(), bVar.vv));
            hp(bVar, mapHp);
            this.cx.hp(view, eVar);
        }
        hp hpVar3 = this.f24799w;
        if (hpVar3 != null) {
            hpVar3.hp(this, i2);
        }
    }

    public void hp(com.byazt.xci.b bVar, Map<String, Object> map) {
        try {
            map.put("live_saas_interaction_type", Integer.valueOf(bVar.hp().optInt("live_saas_param_interaction_type", -1)));
        } catch (Exception unused) {
        }
    }

    private void hp(com.byazt.ey.hp hpVar) {
        pc pcVar = this.nu;
        if (pcVar != null) {
            HashMap map = new HashMap();
            map.put("custom_express_gesture", 1);
            map.put("express_gesture_type", Integer.valueOf(pcVar.l()));
            map.put("express_slide_direction", Integer.valueOf(pcVar.j()));
            map.put("express_slide_threshold", Double.valueOf(pcVar.jx()));
            hpVar.hp(map);
        }
    }

    private void hp(View view, com.byazt.xci.b bVar, com.byazt.xci.e eVar, int i2, String str, int i3, int i4) {
        if (mp.a(this.f24793q)) {
            return;
        }
        com.byazt.go.l lVar = this.f24782b;
        if (lVar != null) {
            lVar.hp(bVar);
            l(((com.byazt.sw.hp) this.f24782b.hp(com.byazt.sw.hp.class)).hp(), i4);
            com.byazt.ey.hp hpVar = (com.byazt.ey.hp) this.f24782b.hp(com.byazt.ey.hp.class);
            hp(hpVar);
            hpVar.l(str);
            this.f24782b.hp(eVar);
            Map<String, Object> mapHp = com.byazt.mi.hp.hp().hp(this.f24793q.hashCode() + this.f24793q.ns());
            mapHp.put("convert_tag", bVar.vv);
            mapHp.put("dpa_convert", com.byazt.xci.ns.j(this.f24793q.zy(), bVar.vv));
            hp(bVar, mapHp);
            this.f24782b.hp(view, eVar);
        }
        hp hpVar2 = this.f24799w;
        if (hpVar2 != null) {
            hpVar2.hp(this, i3);
        }
    }

    private void hp(View view, int i2, com.byazt.xci.b bVar, com.byazt.xci.e eVar, int i3) {
        if (mp.a(this.f24793q)) {
            return;
        }
        com.byazt.go.l lVar = this.f24782b;
        if (lVar != null) {
            hp(((com.byazt.sw.hp) lVar.hp(com.byazt.sw.hp.class)).hp(), i2);
            this.f24782b.hp(bVar);
            this.f24782b.hp(eVar);
            this.f24782b.hp(view, eVar);
        }
        hp hpVar = this.f24799w;
        if (hpVar != null) {
            hpVar.hp(this, i3);
        }
    }

    private void hp(com.byazt.gog.jx jxVar, int i2) {
        if (jxVar == null) {
            return;
        }
        if (jxVar instanceof com.byazt.fy.hp) {
            com.byazt.zbc.jx jxVarS = ((com.byazt.fy.hp) jxVar).s();
            jxVarS.l(true);
            jxVarS.hp(i2);
        }
        jxVar.j(this.f24790ms.get());
    }

    @Override // com.byazt.fub.v
    public void hp(final com.byazt.fub.j<? extends View> jVar, final com.byazt.fub.k kVar) {
        this.gd = true;
        this.xh.set(true);
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qk.NativeExpressView.11
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.l(jVar, kVar);
            }
        });
    }

    private void hp(mp mpVar, com.byazt.xci.j jVar) throws JSONException {
        FrameLayout frameLayout = this.as;
        if (frameLayout != null && frameLayout.getParent() != null) {
            removeView(this.as);
        }
        int iJl = ky.jl(mpVar);
        FrameLayout frameLayoutHp = com.byazt.fy.s.hp(getContext(), mpVar, jVar, iJl);
        this.as = frameLayoutHp;
        frameLayoutHp.setBackgroundColor(Color.parseColor("#161823"));
        float fJx = jx(mpVar);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, xh.jx(getContext(), fJx));
        float f2 = this.wv;
        float f3 = (f2 - fJx) / f2;
        layoutParams.gravity = iJl == 8 ? 48 : 80;
        int iJx = xh.jx(getContext(), this.wv);
        this.as.setVisibility(4);
        removeView(this.f24791n);
        removeView(this.f24794r);
        FrameLayout frameLayout2 = this.lv;
        if (frameLayout2 != null) {
            frameLayout2.removeAllViews();
            removeView(this.lv);
        } else {
            this.lv = new FrameLayout(this.f24781a);
        }
        this.lv.addView(this.f24791n);
        this.lv.addView(this.f24794r);
        addView(this.lv, 0);
        this.lv.setBackgroundColor(0);
        this.lv.setPivotX(0.0f);
        if (this.f24794r.getHeight() != 0) {
            iJx = this.f24794r.getHeight();
        }
        this.lv.setPivotY(iJl == 8 ? iJx : 0.0f);
        this.lv.setScaleY(f3);
        addView(this.as, layoutParams);
    }

    public void hp(MotionEvent motionEvent) {
        View view = this.bu;
        if (view != null) {
            view.dispatchTouchEvent(motionEvent);
        }
    }

    @Override // com.byazt.wsc.j
    public void hp(CharSequence charSequence, int i2, int i3, boolean z2) {
        hp(Integer.parseInt(String.valueOf(charSequence)), i2, z2);
    }

    public void hp(int i2, int i3, boolean z2) {
        int iJ;
        if (TextUtils.equals(this.eb, "fullscreen_interstitial_ad")) {
            iJ = (!hq.hp(this.f24793q) || hq.l(this.f24793q) <= 0) ? com.byazt.jz.sz.l().w(Integer.parseInt(this.f24792o)) : 0;
        } else if (!TextUtils.equals(this.eb, "rewarded_video")) {
            return;
        } else {
            iJ = com.byazt.jz.sz.l().j(Integer.parseInt(this.f24792o));
        }
        int i4 = (i3 >= iJ || z2) ? 1 : 0;
        int i5 = i3 <= iJ ? iJ - i3 : 0;
        com.byazt.fub.l lVar = this.ea;
        if (lVar != null && lVar.l() != null) {
            this.ea.l().hp(String.valueOf(i2), i4, i5, z2);
        }
        com.byazt.fub.j<? extends View> jVar = this.pc;
        if (jVar != null) {
            if (jVar.jx() == 7 || this.pc.jx() == 10) {
                com.byazt.fub.j<? extends View> jVar2 = this.pc;
                if (jVar2 instanceof com.byazt.fb.w) {
                    ((com.byazt.wsc.j) jVar2).hp(String.valueOf(i2), i4, i5, z2);
                }
            }
        }
    }

    private void hp(mp mpVar, Context context, String str) {
        if (mpVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.zn.w.jx(mpVar, context, str);
    }

    private void hp(com.byazt.ci.jx jxVar) {
        l(com.byazt.du.cx.hp(this.f24793q, jxVar.hp("reduce_duration", 0)));
    }

    public void hp(boolean z2) {
        if (this.pc.jx() == 7) {
            com.byazt.fub.j<? extends View> jVar = this.pc;
            if (jVar instanceof com.byazt.fb.w) {
                ((com.byazt.wsc.j) jVar).setSoundMute(z2);
            }
        }
    }

    public void hp(JSONObject jSONObject) {
        boolean zCx = com.byazt.jz.sz.l().cx();
        this.rk = zCx;
        if (zCx && ky.w(this.f24793q)) {
            this.wt = new ns(this.f24793q, jSONObject, this);
        }
    }

    public void hp(int i2, int i3) {
        com.byazt.xn.hp hpVar = this.dy;
        if (hpVar != null) {
            hpVar.hp(i2, i3);
        }
    }
}
