package com.byazt.ig;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.byazt.ff.s;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jy.FullRewardExpressView;
import com.byazt.qk.NativeExpressView;
import com.byazt.qk.a;
import com.byazt.qk.o;
import com.byazt.tm.hp;
import com.byazt.um.e;
import com.byazt.um.zy;
import com.byazt.xci.df;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.zn.ky;
import com.byazt.zn.r;
import com.byazt.zn.wv;
import com.byazt.zn.xh;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 7, 34})
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public int f21065a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.gog.jx f21066e;
    public a eb;
    public ViewGroup gu;
    public final TTBaseVideoActivity hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21067j;
    public boolean jl;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final mp f21069l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.go.hp f21070q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.qk.w f21071s;

    /* renamed from: u, reason: collision with root package name */
    public boolean f21072u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f21073v;
    public FullRewardExpressView xs;
    public long zy;

    /* renamed from: k, reason: collision with root package name */
    public final AtomicBoolean f21068k = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public boolean f21074w = false;

    public l(final TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, String str, boolean z2, boolean z3) {
        this.f21066e = null;
        this.hp = tTBaseVideoActivity;
        this.f21069l = mpVar;
        this.jx = str;
        this.f21073v = z2;
        this.f21072u = z3;
        a aVar = new a(tTBaseVideoActivity, mpVar, str, ky.j(str)) { // from class: com.byazt.ig.l.1
            @Override // com.byazt.qk.a, com.byazt.go.l, com.byazt.go.j
            public void hp(View view, e eVar) throws JSONException {
                super.hp(view, eVar);
                tTBaseVideoActivity.hp(2);
            }
        };
        this.eb = aVar;
        ((com.byazt.ey.hp) aVar.hp(com.byazt.ey.hp.class)).hp(tTBaseVideoActivity.hp(mpVar));
        com.byazt.qk.w wVar = new com.byazt.qk.w(tTBaseVideoActivity, mpVar, str, ky.j(str)) { // from class: com.byazt.ig.l.2
            @Override // com.byazt.qk.w, com.byazt.go.l, com.byazt.go.j
            public void hp(View view, e eVar) throws JSONException {
                super.hp(view, eVar);
                com.byazt.pf.l lVar = (com.byazt.pf.l) this.f20519s.hp(com.byazt.pf.l.class);
                if (lVar == null || !lVar.l(view)) {
                    return;
                }
                tTBaseVideoActivity.hp(2);
            }
        };
        this.f21071s = wVar;
        ((com.byazt.ey.hp) wVar.hp(com.byazt.ey.hp.class)).hp(tTBaseVideoActivity.hp(mpVar));
        com.byazt.go.hp hpVar = new com.byazt.go.hp(tTBaseVideoActivity, mpVar, str, 7);
        this.f21070q = hpVar;
        tTBaseVideoActivity.hp((com.byazt.ey.jx) hpVar.hp(com.byazt.ey.jx.class));
        ((com.byazt.ey.hp) this.f21070q.hp(com.byazt.ey.hp.class)).hp(tTBaseVideoActivity.hp(mpVar));
        if (mpVar.q() == 4) {
            this.f21066e = s.hp(tTBaseVideoActivity, mpVar, str);
            final String strJ = hp().j();
            this.f21066e.hp(new com.byazt.gog.hp() { // from class: com.byazt.ig.l.3
                @Override // com.byazt.gog.hp
                public void hp() {
                    com.byazt.pm.hp.hp(strJ);
                }

                @Override // com.byazt.gog.hp
                public void jx(long j2, long j3, String str2, String str3) {
                    com.byazt.pm.hp.jx(strJ, j2, j3);
                }

                @Override // com.byazt.gog.hp
                public void l(long j2, long j3, String str2, String str3) {
                    com.byazt.pm.hp.l(strJ, j2, j3);
                }

                @Override // com.byazt.gog.hp
                public void hp(long j2, long j3, String str2, String str3) {
                    com.byazt.pm.hp.hp(strJ, j2, j3);
                }

                @Override // com.byazt.gog.hp
                public void hp(long j2, String str2, String str3) {
                    com.byazt.pm.hp.l(strJ);
                }

                @Override // com.byazt.gog.hp
                public void hp(String str2, String str3) {
                    com.byazt.pm.hp.jx(strJ);
                }
            });
        }
    }

    public boolean a() {
        return this.f21067j;
    }

    public com.byazt.tw.a e() {
        com.byazt.tw.a aVarHp = df.hp(1, this.f21069l);
        aVarHp.setCid(this.f21069l.j());
        aVarHp.setWidth(100);
        aVarHp.setHeight(100);
        aVarHp.setLogExtra(this.f21069l.w_());
        aVarHp.setQuiet(this.f21067j);
        return aVarHp;
    }

    public void eb() {
        xh.hp((View) this.gu, 0);
        this.hp.zy();
    }

    public long gu() {
        return this.zy;
    }

    public int j() {
        if (zx.e(this.f21069l)) {
            if (this.jl) {
                int iL = zx.l(this.f21069l) - this.f21065a;
                this.f21065a = zx.l(this.f21069l);
                return iL;
            }
            if (this.f21065a >= zx.l(this.f21069l)) {
                return 0;
            }
            this.f21065a++;
        }
        return 1;
    }

    public void jl() {
        if (this.f21072u) {
            return;
        }
        this.f21072u = true;
        mp mpVar = this.f21069l;
        com.byazt.jt.l lVarHp = wv.hp(7, mpVar == null ? null : mpVar.xq());
        if (df.v(this.f21069l) != null) {
            com.byazt.tw.a aVarHp = df.hp(1, this.f21069l);
            aVarHp.putExtra("material_meta", this.f21069l);
            aVarHp.putExtra("ad_slot", Integer.valueOf(lVarHp != null ? lVarHp.sz() : 0));
            com.byazt.cwe.jx.hp(aVarHp, new e.hp() { // from class: com.byazt.ig.l.5
                @Override // com.byazt.um.e.hp
                public void cancel(zy zyVar, int i2) {
                }

                @Override // com.byazt.um.e.hp
                public void onVideoPreloadFail(zy zyVar, int i2, String str) {
                    zyVar.getUrl();
                    zyVar.getPreloadSize();
                }

                @Override // com.byazt.um.e.hp
                public void onVideoPreloadSuccess(zy zyVar, int i2) {
                    zyVar.getUrl();
                    zyVar.getPreloadSize();
                }
            });
        }
    }

    public com.byazt.go.hp jx() {
        return this.f21070q;
    }

    public String l() {
        return this.jx;
    }

    public void q() {
        if (this.f21073v) {
            this.hp.hp(this.f21069l, this.f21070q);
        }
    }

    public void s() {
        com.byazt.gog.jx jxVar = this.f21066e;
        if (jxVar != null) {
            jxVar.jx();
        }
        FullRewardExpressView fullRewardExpressView = this.xs;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.jl();
        }
        mp mpVar = this.f21069l;
        r.l(mpVar != null ? mpVar.nu() : 0);
    }

    public hp.InterfaceC0374hp w() {
        return new hp.InterfaceC0374hp() { // from class: com.byazt.ig.l.4
            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void hp() {
                l.this.jl = true;
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void jx() {
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void l() {
                l.this.eb();
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void hp(int i2, String str) {
                l.this.eb();
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void hp(long j2, long j3) {
                xh.hp((View) l.this.gu, 8);
                l.this.zy = j2;
            }
        };
    }

    public void l(boolean z2) {
        this.f21069l.u(z2);
    }

    public FullRewardExpressView l(float f2, float f3) {
        if (this.xs == null) {
            hp(f2, f3);
        }
        return this.xs;
    }

    public mp hp() {
        return this.f21069l;
    }

    public void hp(ViewGroup viewGroup, ViewGroup viewGroup2, FullRewardExpressView fullRewardExpressView) {
        this.gu = viewGroup2;
        if (viewGroup == null || fullRewardExpressView == null || hp() == null) {
            return;
        }
        com.byazt.gog.jx jxVar = this.f21066e;
        if (jxVar != null) {
            jxVar.l();
            if (fullRewardExpressView.getContext() != null && (fullRewardExpressView.getContext() instanceof Activity)) {
                this.f21066e.hp((Activity) fullRewardExpressView.getContext(), false);
            }
        }
        this.eb.hp(fullRewardExpressView);
        ((com.byazt.sw.hp) this.eb.hp(com.byazt.sw.hp.class)).hp(this.f21066e);
        fullRewardExpressView.setClickListener(this.eb);
        this.f21071s.hp(fullRewardExpressView);
        ((com.byazt.sw.hp) this.f21071s.hp(com.byazt.sw.hp.class)).hp(this.f21066e);
        fullRewardExpressView.setClickCreativeListener(this.f21071s);
        this.f21070q.hp(viewGroup);
        ((com.byazt.sw.hp) this.f21070q.hp(com.byazt.sw.hp.class)).hp(this.f21066e);
        ImageView imageView = new ImageView(this.hp);
        com.byazt.ws.l.hp(this.f21069l.vi().get(0)).to(imageView);
        this.gu.addView(imageView);
    }

    public void hp(boolean z2) {
        this.f21067j = z2;
    }

    public void hp(NativeExpressView nativeExpressView) {
        if (this.f21068k.getAndSet(true)) {
            return;
        }
        Map<String, Object> mapHp = this.hp.hp(this.f21069l);
        o.hp(mapHp, this.f21069l, nativeExpressView);
        com.byazt.jdb.j.hp(this.f21069l, this.jx, mapHp, this.hp.m());
        com.byazt.cqt.hp.hp().j();
        mp mpVar = this.f21069l;
        r.hp(mpVar != null ? mpVar.nu() : 0);
    }

    public void hp(float f2, float f3) {
        FullRewardExpressView fullRewardExpressView = new FullRewardExpressView(this.hp, hp(), wv.hp(7, String.valueOf(ky.zy(hp())), f2, f3, hp()), l(), false, null);
        this.xs = fullRewardExpressView;
        fullRewardExpressView.getAdShowTime().hp(true);
        this.xs.setExpressInteractionListener(new com.byazt.qk.hp() { // from class: com.byazt.ig.l.6
            @Override // com.byazt.qk.hp
            public void hp(View view, float f4, float f5) {
                l.this.f21074w = true;
            }
        });
        this.xs.u();
    }
}
