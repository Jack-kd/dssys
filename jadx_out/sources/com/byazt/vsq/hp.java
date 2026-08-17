package com.byazt.vsq;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jwq.l;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.rm.AbstractEndCardFrameLayout;
import com.byazt.rm.CommonEndCardFrameLayout;
import com.byazt.xci.df;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.byazt.zn.wv;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 28})
/* loaded from: classes3.dex */
public abstract class hp extends l {

    /* renamed from: a, reason: collision with root package name */
    public int f26625a;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.td.hp f26626b;
    public com.byazt.qk.w cx;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.yni.w f26628e;
    public com.byazt.td.a ec;
    public AbstractEndCardFrameLayout gu;
    public final TTBaseVideoActivity hp;
    public com.byazt.jki.jx hq;

    /* renamed from: j, reason: collision with root package name */
    public float f26629j;
    public String jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f26630k;

    /* renamed from: l, reason: collision with root package name */
    public mp f26631l;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.td.j f26632n;
    public com.byazt.qk.a ns;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.yni.l f26634q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.go.w f26635s;
    public com.byazt.td.l sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f26636u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f26637v;
    public com.byazt.td.w vv;

    /* renamed from: w, reason: collision with root package name */
    public int f26638w;
    public boolean xs;
    public boolean zy;
    public int eb = -1;
    public int di = -5;

    /* renamed from: o, reason: collision with root package name */
    public boolean f26633o = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f26627d = false;
    public int wv = Integer.MIN_VALUE;
    public final com.byazt.qk.gu ud = new com.byazt.qk.gu() { // from class: com.byazt.vsq.hp.1
        @Override // com.byazt.qk.gu
        public void a() {
            k.hp().j(hp.this.f26631l, "stats_reward_full_click_express_close");
            hp.this.vv.hp();
        }

        @Override // com.byazt.qk.gu
        public void e() {
            hp.this.hp.s(3);
        }

        @Override // com.byazt.qk.gu
        public void eb() {
            k.hp().j(hp.this.f26631l, "stats_reward_full_click_express_close");
            hp.this.hp.finish();
        }

        @Override // com.byazt.qk.gu
        public void hp(int i2, String str) {
        }

        @Override // com.byazt.qk.gu
        public void j() {
            hp.this.f26633o = true;
        }

        @Override // com.byazt.qk.gu
        public int jx() {
            return hp.this.o();
        }

        @Override // com.byazt.qk.gu
        public int l() {
            if (hp.this.s(true)) {
                int i2 = hp.this.hp.ea() ? 3 : 2;
                if (hp.this.hp.nr()) {
                    return 5;
                }
                return i2;
            }
            if (hp.this.f26628e.l()) {
                return 4;
            }
            if (hp.this.f26628e.jx()) {
                return 5;
            }
            if (hp.this.ec.j()) {
                return 1;
            }
            if (hp.this.ec.l()) {
                return 2;
            }
            hp.this.ec.jx();
            return 3;
        }

        @Override // com.byazt.qk.gu
        public void q() {
            hp.this.vv.jx();
        }

        @Override // com.byazt.qk.gu
        public void s() {
            hp.this.hp.rv();
        }

        @Override // com.byazt.qk.gu
        public void setPauseFromExpressView(boolean z2) {
            hp.this.hp.u(1);
        }

        @Override // com.byazt.qk.gu
        public void w(int i2) {
            hp.this.hp.q(i2);
        }

        @Override // com.byazt.qk.gu
        public void hp(boolean z2) {
            hp hpVar = hp.this;
            if (hpVar.zy != z2) {
                hpVar.zy = z2;
                hpVar.vv.l();
            }
        }

        @Override // com.byazt.qk.gu
        public void j(int i2) {
            hp.this.hp.jx(i2);
        }

        @Override // com.byazt.qk.gu
        public void jx(int i2) {
            hp hpVar = hp.this;
            hpVar.f26627d = true;
            hpVar.hp.vv(i2);
        }

        @Override // com.byazt.qk.gu
        public void w() {
            hp.this.f26633o = false;
        }

        @Override // com.byazt.qk.gu
        public void hp(int i2) {
            if (i2 != 1) {
                if (i2 == 2) {
                    hp.this.ec.di();
                    return;
                }
                if (i2 == 3) {
                    hp.this.ec.o();
                    return;
                } else if (i2 == 4) {
                    hp.this.ec.eb();
                    return;
                } else if (i2 != 5) {
                    return;
                }
            }
            if (hp.this.ec.l() || hp.this.ec.jx() || hp.this.ec.ky()) {
                return;
            }
            hp.this.hp.l(0L, false);
        }

        @Override // com.byazt.qk.gu
        public void l(int i2) throws JSONException {
            if (ea.w(hp.this.f26631l)) {
                hp.this.hp.j(1);
            } else {
                hp.this.hp.hp(i2, false);
            }
        }

        @Override // com.byazt.qk.gu
        public long hp() {
            if (hp.this.s(true)) {
                hashCode();
                return hp.this.o() * 1000;
            }
            hp hpVar = hp.this;
            hpVar.l(hpVar.a(true));
            return hp.this.hq.hp();
        }

        @Override // com.byazt.qk.gu
        public void hp(float f2, float f3, float f4, float f5, int i2) {
            hp.this.hp.hp(f2, f3, f4, f5, i2);
        }

        @Override // com.byazt.qk.gu
        public void hp(float f2) {
            com.byazt.jki.jx jxVar = hp.this.hq;
            if (jxVar != null) {
                jxVar.jx((int) (1000.0f / f2));
            }
            hp.this.hp.hd().hp(f2);
        }

        @Override // com.byazt.qk.gu
        public void hp(mp mpVar) {
            hp hpVar = hp.this;
            if (hpVar.sz == null || hpVar.hp == null) {
                return;
            }
            hp hpVar2 = hp.this;
            com.byazt.go.hp hpVar3 = new com.byazt.go.hp(hpVar2.hp, mpVar, hpVar2.jl, 7);
            hp.this.sz.hp(mpVar, hpVar3);
            ((com.byazt.ey.hp) hpVar3.hp(com.byazt.ey.hp.class)).hp(hp.this.hp.hp(mpVar));
        }
    };

    public hp(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        this.hp = tTBaseVideoActivity;
        this.f26631l = mpVar;
        this.jx = mpVar.wf();
        this.f26629j = mpVar.qo();
    }

    private int tw() {
        long jMax = Math.max(((long) (this.ec.d() * 1000.0d)) - this.ec.hq(), 0L);
        return Math.max((((int) (jMax / 1000)) + (((int) (jMax % 1000)) > 500 ? 1 : 0)) - rz(), 0);
    }

    private void yj() {
        this.vv.hp(false);
        this.f26634q.a(8);
        this.f26634q.w(8);
        this.f26634q.jx(8);
        wt();
    }

    public boolean a() {
        return hd.hp(this.f26631l) == 2;
    }

    public int as() {
        int i2 = this.wv;
        return i2 == Integer.MIN_VALUE ? a(true) : i2;
    }

    public final int b() {
        return this.eb;
    }

    public void cx() {
    }

    public int d() {
        return this.hq.w();
    }

    public void di() {
        y();
    }

    public boolean dy() {
        return false;
    }

    public View e() {
        if (this.gu == null) {
            this.gu = new CommonEndCardFrameLayout(this.hp, this.f26631l);
        }
        return this.gu;
    }

    public View ea() {
        int i2 = (int) (this.f26629j * 1000.0f);
        return this.jx == 1 ? i2 != 666 ? i2 != 1000 ? i2 != 1500 ? i2 != 1777 ? com.byazt.vi.a.wv(this.hp) : com.byazt.vi.a.d(this.hp) : com.byazt.vi.a.di(this.hp) : com.byazt.vi.a.o(this.hp) : com.byazt.vi.a.b(this.hp) : i2 != 562 ? i2 != 666 ? i2 != 1000 ? i2 != 1500 ? com.byazt.vi.a.dy(this.hp) : com.byazt.vi.a.ud(this.hp) : com.byazt.vi.a.o(this.hp) : com.byazt.vi.a.hq(this.hp) : com.byazt.vi.a.nu(this.hp);
    }

    public boolean eb() {
        com.byazt.yni.w wVar;
        return a() && (wVar = this.f26628e) != null && wVar.a();
    }

    public FrameLayout ec() {
        com.byazt.yni.w wVar;
        return ec.j(this.f26631l) ? this.gu.getVideoArea() : (a() && (wVar = this.f26628e) != null && wVar.a()) ? this.f26628e.hp() : this.f26634q.jl();
    }

    public boolean f() {
        return !this.f26630k && this.jx == 1 && ea.cx(this.f26631l) && this.f26631l.qo() != 100.0f;
    }

    public View gu() {
        return com.byazt.vi.a.w(this.hp);
    }

    public boolean hd() {
        return this.f26627d;
    }

    public void hp(int i2) {
    }

    public void hq() {
        if (this.di < 0) {
            this.di = this.sz.as();
        }
        int i2 = this.di;
        if (i2 <= 0) {
            if (i2 == 0) {
                this.hp.j(0);
                this.vv.hp(false, "奖励已领取", null, true, true);
                return;
            }
            return;
        }
        this.di = i2 - 1;
        this.vv.hp(false, this.di + "s", null, true, true);
    }

    public void j() throws JSONException {
        boolean zA = this.f26628e.a();
        if (!this.sz.r() && !zA) {
            xs();
        }
        this.sz.hp(this.f26628e.jl());
        if (zA) {
            this.f26628e.hp().setBackgroundColor(-16777216);
        }
        this.f26634q.jx(!zA);
        this.f26628e.jx(zA);
        this.vv.hp(an() || !zA);
        this.hp.a();
    }

    public com.byazt.yni.w jl() {
        com.byazt.yni.w wVar = new com.byazt.yni.w(this.hp);
        this.f26628e = wVar;
        return wVar;
    }

    @Override // com.byazt.vsq.l
    public void jx() throws JSONException {
        j();
    }

    public void k() {
    }

    public int kg() {
        return (int) (this.ec.hq() / 1000);
    }

    public int ky() {
        return nr() ? o() : kg() + rz();
    }

    public void l(Map<String, Object> map) {
    }

    public boolean lv() {
        return true;
    }

    public void m() {
        if (this.xs || Build.VERSION.SDK_INT == 26) {
            return;
        }
        Window window = this.hp.getWindow();
        if (window != null) {
            this.hp.requestWindowFeature(1);
            window.setBackgroundDrawable(new ColorDrawable(-2013265920));
            window.setStatusBarColor(-16777216);
            window.clearFlags(67108864);
        }
        xh.eb((Activity) this.hp);
        this.xs = true;
    }

    public int mp() {
        return n.jx(this.f26631l) ? n.w(this.f26631l) : ea.v(this.f26631l);
    }

    public int ms() {
        return e(true);
    }

    public void n() {
        com.byazt.yni.w wVar = this.f26628e;
        if (wVar != null) {
            wVar.hp(this.hq);
        }
        if (this.f26630k) {
            this.f26634q.l((int) (this.ec.hq() / 1000));
        }
    }

    public int nd() {
        return this.hq.jx();
    }

    public void ns() {
    }

    public int nu() {
        return 0;
    }

    public int o() {
        return this.hq.w() + this.hq.l();
    }

    public com.byazt.tm.l pu() {
        return null;
    }

    public View q() {
        if (this.f26629j != 100.0f) {
            return ea();
        }
        int iZ = this.f26631l.z();
        return iZ != 1 ? iZ != 3 ? com.byazt.vi.a.hp(this.hp) : com.byazt.vi.a.j(this.hp) : com.byazt.vi.a.jx(this.hp);
    }

    public void r() {
    }

    public int rz() {
        return this.hq.l();
    }

    public void s() {
        boolean z2;
        if (this.f26630k) {
            z2 = false;
        } else {
            boolean z3 = this instanceof e;
            z2 = true;
            if (ea.cx(this.f26631l)) {
                z3 = true;
            }
            if (this.f26629j == 100.0f) {
                z2 = z3;
            }
        }
        if (z2) {
            m();
        } else {
            this.hp.lv().setBackgroundColor(-16777216);
        }
        if ((this instanceof e) || this.f26629j == 100.0f) {
            return;
        }
        try {
            final View decorView = this.hp.getWindow().getDecorView();
            decorView.post(new Runnable() { // from class: com.byazt.vsq.hp.5
                @Override // java.lang.Runnable
                public void run() {
                    int iE = (int) (xh.e((Context) hp.this.hp) / 2.0f);
                    int paddingLeft = decorView.getPaddingLeft();
                    int paddingRight = decorView.getPaddingRight();
                    int paddingTop = decorView.getPaddingTop();
                    int paddingBottom = decorView.getPaddingBottom();
                    if (hp.this.jx == 1 && !xh.l()) {
                        paddingTop += iE;
                        paddingBottom += iE;
                    }
                    if (hp.this.jx == 2 && !xh.l()) {
                        paddingLeft += iE;
                        paddingRight += iE;
                    }
                    decorView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public float[] sz() {
        TTBaseVideoActivity tTBaseVideoActivity = this.hp;
        int iJ = xh.j(tTBaseVideoActivity, xh.e((Context) tTBaseVideoActivity));
        float f2 = this.f26625a;
        float f3 = this.f26638w;
        int i2 = this.jx;
        if ((i2 == 1) != (f2 > f3)) {
            float f4 = f2 + f3;
            f3 = f4 - f3;
            f2 = f4 - f3;
        }
        if (i2 == 1) {
            f2 -= iJ;
        } else {
            f3 -= iJ;
        }
        return new float[]{f3, f2};
    }

    public void u() {
        AbstractEndCardFrameLayout abstractEndCardFrameLayout = this.gu;
        if (abstractEndCardFrameLayout != null) {
            abstractEndCardFrameLayout.l();
        }
        com.byazt.yni.w wVar = this.f26628e;
        if (wVar != null) {
            wVar.j();
        }
        if (rv() || this.sz.r()) {
            return;
        }
        this.sz.cx();
    }

    public void ud() {
        this.f26637v = true;
    }

    public void v() {
        com.byazt.yni.w wVar = this.f26628e;
        if (wVar != null) {
            wVar.v();
        }
    }

    public void vq() {
        com.byazt.yni.w wVar = this.f26628e;
        if (wVar != null) {
            wVar.hp(this.hq);
        }
        if (pc() && this.sz.ms()) {
            hq();
        } else {
            rk();
        }
    }

    public boolean vv() {
        return false;
    }

    public void w() {
        this.hp.eb(0);
        this.vv.hp(an());
        float f2 = this.f26638w;
        float f3 = this.f26625a;
        float[] fArrSz = {f2, f3};
        if (f2 < 10.0f || f3 < 10.0f) {
            fArrSz = sz();
        }
        this.f26628e.hp(this.f26631l, wv.hp(this.hp.o() ? 7 : 8, String.valueOf(ky.zy(this.f26631l)), fArrSz[0], fArrSz[1], this.f26631l), this.jl, this.zy, this.hp.hp());
        this.f26634q.jx(false);
        this.f26628e.jx(true);
        this.f26628e.hp(this.ud);
        this.f26628e.hp(new com.byazt.qk.hp() { // from class: com.byazt.vsq.hp.4
            @Override // com.byazt.qk.hp
            public void hp(View view, int i2) {
            }

            @Override // com.byazt.qk.hp
            public void l(View view, int i2) {
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, String str, int i2) {
                if (hp.this.sz.r()) {
                    return;
                }
                hp.this.sz.l();
                hp.this.hp.sz();
                hp.this.hp.eb(8);
                hp.this.vv.hp(true);
                com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.vsq.hp.4.1
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        hp.this.hp.vv();
                    }
                });
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, float f4, float f5) throws JSONException {
                if (hp.this.sz.r()) {
                    return;
                }
                hp.this.sz.l();
                hp.this.hp.sz();
                hp.this.hp.eb(8);
                hp hpVar = hp.this;
                hpVar.eb = hpVar.f26628e.q();
                hp hpVar2 = hp.this;
                if (hpVar2.eb == 0) {
                    ea.l(hpVar2.f26631l, true);
                }
                hp.this.jx();
            }
        });
        ((com.byazt.ey.hp) this.ns.hp(com.byazt.ey.hp.class)).hp(this.hp.mp());
        ((com.byazt.ey.hp) this.cx.hp(com.byazt.ey.hp.class)).hp(this.hp.mp());
        this.hp.hp((com.byazt.ey.jx) this.ns.hp(com.byazt.ey.jx.class));
        this.hp.hp((com.byazt.ey.jx) this.cx.hp(com.byazt.ey.jx.class));
        this.f26628e.hp(this.ns, this.cx);
        this.f26628e.s();
    }

    public int wv() {
        return this.hq.a();
    }

    public int xh() {
        int i2;
        if (pc() && this.sz.ms() && (i2 = this.di) >= 0) {
            return i2;
        }
        if (nr()) {
            return s(false) ? q(true) : (int) Math.max((mp() * (this.f26631l.sv() / 100.0f)) - o(), 0.0f);
        }
        return ms();
    }

    public void xs() {
        this.f26634q.u();
        this.vv.l(this.f26631l.jc());
        this.vv.w(qu());
        this.f26634q.a(0);
        this.f26634q.w(0);
    }

    @Override // com.byazt.vsq.l
    public boolean y() {
        return ea.xs(this.f26631l) || this.sz.ms();
    }

    public com.byazt.qk.gu yr() {
        return this.ud;
    }

    public void zx() {
    }

    public AbstractEndCardFrameLayout zy() {
        return this.gu;
    }

    public int a(boolean z2) {
        return (pc() && this.sz.ms()) ? this.di : nr() ? s(false) ? q(z2) : Math.max(mp() - o(), 0) : eb(z2);
    }

    public int eb(boolean z2) {
        return z2 ? e(false) : tw();
    }

    public void hp(int i2, int i3, Intent intent) {
    }

    public void jx(boolean z2) {
        if (this.f26631l.qo() != 100.0f) {
            if (sz.l().e(ky.zy(this.f26631l)) || this.f26630k) {
                if (com.byazt.zbc.a.jx && com.byazt.zbc.a.f28348l && hp(this.f26631l)) {
                    com.byazt.zbc.a.f28348l = false;
                    com.byazt.zbc.a.jx = false;
                    this.hp.finish();
                } else if (z2 && !com.byazt.zbc.a.jx) {
                    this.hp.finish();
                } else {
                    if (!this.sz.nu() || com.byazt.zbc.a.jx) {
                        return;
                    }
                    this.hp.finish();
                }
            }
        }
    }

    public void l() {
        ru();
        if (fi()) {
            ea.hp(this.f26631l, true);
        }
        yj();
        if (su()) {
            this.sz.l();
        }
        if (a()) {
            w();
        } else {
            this.hp.sz();
            jx();
        }
    }

    public void hp(View view) {
    }

    private int e(boolean z2) {
        long jHq = this.ec.hq();
        if (z2) {
            return (int) Math.max(((int) (r1 / 1000)) + (((int) (Math.max(Math.min(ea.hp(), (long) ((this.ec.d() * 1000.0d) * (this.f26631l.sv() / 100.0f))) - (jHq + (rz() * 1000)), 0L) % 1000)) > 500 ? 1L : 0L), 0L);
        }
        long jMin = Math.min(ea.hp(), (long) (this.ec.d() * 1000.0d));
        long jRz = rz() * 1000;
        long jD = (long) ((this.ec.d() % 1.0d) * 1000.0d);
        if (jD > 0) {
            jHq -= 1000 - jD;
        }
        return Math.round((jMin - (jHq + jRz)) / 1000.0f);
    }

    public void hp(Map<String, Object> map) {
    }

    public void hp(JSONObject jSONObject) {
    }

    public void hp(com.byazt.td.w wVar, com.byazt.td.a aVar, com.byazt.td.l lVar, com.byazt.td.j jVar, com.byazt.td.hp hpVar) {
        this.vv = wVar;
        this.ec = aVar;
        this.sz = lVar;
        this.f26632n = jVar;
        this.f26626b = hpVar;
    }

    private int q(boolean z2) {
        double dMax;
        float fSv = this.f26631l.sv() / 100.0f;
        if (z2) {
            dMax = Math.max(Math.min(df.eb(this.f26631l) * fSv, ea.hp() / 1000) - o(), 0.0d);
        } else {
            dMax = Math.max(df.eb(this.f26631l) - o(), 0.0d);
        }
        return (int) dMax;
    }

    public void j(boolean z2) {
        float f2 = this.f26629j;
        if (f2 != 100.0f) {
            int i2 = (int) (f2 * 1000.0f);
            if (this.jx == 1) {
                if (i2 != 666 && i2 != 1000 && i2 != 1500 && i2 != 1777) {
                    this.f26634q.j(z2 ? 0 : 8);
                    return;
                } else {
                    this.f26634q.j(8);
                    return;
                }
            }
        } else {
            if (z2) {
                if (this.jx == 1) {
                    this.f26634q.j(0);
                }
                if (com.byazt.we.hp.hp(this.f26631l)) {
                    this.f26634q.a(0);
                    return;
                }
                return;
            }
            if (this.jx != 1) {
                return;
            }
        }
        this.f26634q.j(8);
    }

    public void hp(String str, boolean z2, boolean z3, com.byazt.jki.jx jxVar) {
        this.jl = str;
        this.zy = z2;
        this.f26630k = z3;
        this.hq = jxVar;
    }

    public void l(boolean z2) {
        com.byazt.yni.w wVar = this.f26628e;
        if (wVar != null) {
            wVar.w();
        }
    }

    public void jx(int i2) {
        this.hq.hp(i2);
    }

    public void l(int i2) {
        this.wv = i2;
    }

    public com.byazt.td.w hp() {
        return this.vv;
    }

    public final void hp(com.byazt.go.w wVar) {
        this.f26635s = wVar;
        TTBaseVideoActivity tTBaseVideoActivity = this.hp;
        mp mpVar = this.f26631l;
        String str = this.jl;
        this.ns = new com.byazt.qk.a(tTBaseVideoActivity, mpVar, str, ky.j(str)) { // from class: com.byazt.vsq.hp.2
            @Override // com.byazt.qk.a, com.byazt.go.l, com.byazt.go.j
            public void hp(View view, com.byazt.xci.e eVar) throws JSONException {
                if (mp.a(this.hp)) {
                    return;
                }
                super.hp(view, eVar);
                hp.this.hp.hp(2);
            }
        };
        TTBaseVideoActivity tTBaseVideoActivity2 = this.hp;
        mp mpVar2 = this.f26631l;
        String str2 = this.jl;
        this.cx = new com.byazt.qk.w(tTBaseVideoActivity2, mpVar2, str2, ky.j(str2)) { // from class: com.byazt.vsq.hp.3
            @Override // com.byazt.qk.w, com.byazt.go.l, com.byazt.go.j
            public void hp(View view, com.byazt.xci.e eVar) throws JSONException {
                if (mp.a(this.hp)) {
                    return;
                }
                super.hp(view, eVar);
                com.byazt.pf.l lVar = (com.byazt.pf.l) this.f20519s.hp(com.byazt.pf.l.class);
                if (lVar == null || !lVar.l(view)) {
                    return;
                }
                hp.this.hp.hp(2);
            }
        };
        this.gu.setClickListener(this.f26635s);
    }

    public com.byazt.yni.l hp(boolean z2) {
        if (this.f26629j != 100.0f) {
            this.f26634q = new com.byazt.yni.eb(this.hp, this.f26631l, z2);
        } else {
            this.f26634q = new com.byazt.yni.jx(this.hp, this.f26631l, z2);
        }
        return this.f26634q;
    }

    public void hp(int i2, int i3) {
        this.f26638w = i2;
        this.f26625a = i3;
    }

    public void w(boolean z2) {
        this.zy = z2;
        this.ec.jx(z2);
    }

    private boolean hp(mp mpVar) {
        return (mpVar.q() == 4) && !TextUtils.isEmpty(mpVar.b());
    }

    public l.hp hp(mp mpVar, final com.byazt.jwq.e eVar) {
        com.byazt.jwq.jx jxVar = new com.byazt.jwq.jx(this.hp, mpVar);
        jxVar.hp(as());
        jxVar.l(ky());
        jxVar.jx(this.hp.nu());
        jxVar.j(this.hp.dy());
        jxVar.jx(this.f26633o);
        jxVar.j(ea.d(mpVar) && !this.hp.f20263a.get());
        this.hp.as();
        return jxVar.l(new com.byazt.jwq.e() { // from class: com.byazt.vsq.hp.6
            @Override // com.byazt.jwq.e
            public void hp() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
                hp.this.hp.kg();
            }

            @Override // com.byazt.jwq.e
            public void jx() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.jx();
                }
            }

            @Override // com.byazt.jwq.e
            public void l() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
            }

            @Override // com.byazt.jwq.e
            public void hp(int i2) {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp(i2);
                }
            }
        });
    }
}
