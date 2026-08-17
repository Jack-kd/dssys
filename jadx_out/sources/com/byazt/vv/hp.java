package com.byazt.vv;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.ash.eb;
import com.byazt.dnb.s;
import com.byazt.qt.e;
import com.byazt.qt.gu;
import com.byazt.qt.q;
import com.byazt.qt.v;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.ymw.hq;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 65, 28})
/* loaded from: classes3.dex */
public class hp {
    public mp hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f26715l;
    public AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f26714j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f26716w = new AtomicBoolean(false);

    public hp(mp mpVar, Context context) {
        this.hp = mpVar;
        this.f26715l = context;
    }

    public void j(final int i2, com.byazt.jt.l lVar, final mp mpVar) {
        try {
            com.byazt.ash.l.hp().hp(lVar, l(mpVar, i2), new com.byazt.ash.j(new com.byazt.p000if.j(null) { // from class: com.byazt.vv.hp.4
                @Override // com.byazt.p000if.j
                public void hp() {
                }

                @Override // com.byazt.p000if.j
                public void l(gu guVar) {
                }

                @Override // com.byazt.p000if.j
                public void hp(final gu guVar) {
                    s.hp(new Runnable() { // from class: com.byazt.vv.hp.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!(guVar instanceof com.byazt.bp.l)) {
                                hp.this.hp();
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                jx.l(mpVar, false, i2, 1);
                            } else if (hp.this.f26715l instanceof Activity) {
                                com.byazt.bp.l lVar2 = (com.byazt.bp.l) guVar;
                                lVar2.setSecondAdPage(true);
                                lVar2.showFullScreenVideoAd((Activity) hp.this.f26715l);
                                AnonymousClass4 anonymousClass42 = AnonymousClass4.this;
                                jx.l(mpVar, true, i2, 0);
                            } else {
                                hp.this.hp();
                                AnonymousClass4 anonymousClass43 = AnonymousClass4.this;
                                jx.l(mpVar, false, i2, 3);
                            }
                            hp.this.f26716w.set(false);
                        }
                    });
                }

                @Override // com.byazt.p000if.j
                public void hp(int i3, String str) {
                    u.l("SecondPageImpl", "requestNewFullScreenAd onError code:" + i3 + " message:" + str);
                    hp.this.f26716w.set(false);
                    hp.this.hp();
                    jx.l(mpVar, false, i2, 2);
                }
            }));
        } catch (Throwable th) {
            u.hp("SecondPageImpl", "requestNewAd error", th.toString());
            this.f26716w.set(false);
            hp();
            jx.hp(mpVar, false, i2, 6);
        }
    }

    public void jx(final int i2, com.byazt.jt.l lVar, final mp mpVar) {
        try {
            eb.hp().hp(lVar, l(mpVar, i2), new com.byazt.ash.j(new com.byazt.p000if.eb(null) { // from class: com.byazt.vv.hp.3
                @Override // com.byazt.p000if.eb
                public void hp() {
                }

                @Override // com.byazt.p000if.eb
                public void l(v vVar) {
                }

                @Override // com.byazt.p000if.eb
                public void hp(final v vVar) {
                    s.hp(new Runnable() { // from class: com.byazt.vv.hp.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!(vVar instanceof com.byazt.bp.jx)) {
                                hp.this.hp();
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                jx.l(mpVar, false, i2, 1);
                            } else if (hp.this.f26715l instanceof Activity) {
                                com.byazt.bp.jx jxVar = (com.byazt.bp.jx) vVar;
                                jxVar.setSecondAdPage(true);
                                jxVar.showRewardVideoAd((Activity) hp.this.f26715l);
                                AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                                jx.l(mpVar, true, i2, 0);
                            } else {
                                hp.this.hp();
                                AnonymousClass3 anonymousClass33 = AnonymousClass3.this;
                                jx.l(mpVar, false, i2, 3);
                            }
                            hp.this.f26716w.set(false);
                        }
                    });
                }

                @Override // com.byazt.p000if.eb
                public void hp(int i3, String str) {
                    u.l("SecondPageImpl", "requestNewRewardAd onError code:" + i3 + " message:" + str);
                    hp.this.f26716w.set(false);
                    hp.this.hp();
                    jx.l(mpVar, false, i2, 2);
                }
            }));
        } catch (Throwable th) {
            this.f26716w.set(false);
            u.hp("SecondPageImpl", "requestNewAd error", th.toString());
            hp();
            jx.hp(mpVar, false, i2, 6);
        }
    }

    public void hp(int i2, com.byazt.jt.l lVar) {
        if (this.hp == null) {
            hp();
            jx.hp(null, false, i2, 2);
            return;
        }
        if (this.f26715l == null) {
            hp();
            jx.hp(this.hp, false, i2, 3);
            return;
        }
        if (lVar == null) {
            hp();
            jx.hp(this.hp, false, i2, 7);
            return;
        }
        if (this.f26716w.get()) {
            jx.hp(this.hp, false, i2, 4);
            return;
        }
        this.f26716w.set(true);
        int iJl = ky.jl(this.hp);
        if (iJl == 5) {
            hp(i2, lVar, this.hp);
            return;
        }
        if (iJl == 7) {
            jx(i2, lVar, this.hp);
            return;
        }
        if (iJl == 8) {
            j(i2, lVar, this.hp);
        } else {
            if (iJl == 9) {
                l(i2, lVar, this.hp);
                return;
            }
            hp();
            jx.hp(this.hp, false, i2, 5);
            this.f26716w.set(false);
        }
    }

    public void l(int i2, com.byazt.jt.l lVar, mp mpVar) {
        hp hpVar;
        final int i3;
        final mp mpVar2;
        try {
            final j jVarL = l(mpVar, i2);
            l();
            hpVar = this;
            i3 = i2;
            mpVar2 = mpVar;
            try {
                com.byazt.jl.hp.j().hp(lVar, jVarL, (j) new com.byazt.p000if.l(null) { // from class: com.byazt.vv.hp.2
                    @Override // com.byazt.p000if.l
                    public void hp(List<q> list) {
                        list.size();
                        mp mpVarL = jVarL.l();
                        if (mpVarL != null) {
                            hp.this.hp(mpVarL, i3);
                        } else {
                            hp.this.hp();
                            jx.l(mpVar2, false, i3, 5);
                        }
                        hp.this.f26716w.set(false);
                    }

                    @Override // com.byazt.p000if.l
                    public void hp(int i4, String str) {
                        u.l("SecondPageImpl", "requestNewDrawAd onError code:" + i4 + " message:" + str);
                        hp.this.f26716w.set(false);
                        hp.this.hp();
                        jx.l(mpVar2, false, i3, 2);
                    }
                });
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                hpVar.f26716w.set(false);
                u.hp("SecondPageImpl", "requestNewDrawAd error", th2.toString());
                hp();
                jx.hp(mpVar2, false, i3, 6);
            }
        } catch (Throwable th3) {
            th = th3;
            hpVar = this;
            i3 = i2;
            mpVar2 = mpVar;
        }
    }

    public boolean j() {
        return this.jx.get();
    }

    public boolean jx() {
        return this.f26714j.get();
    }

    public void l() {
        s.hp(new Runnable() { // from class: com.byazt.vv.hp.6
            @Override // java.lang.Runnable
            public void run() {
                hq.hp(hp.this.f26715l, "正在努力加载中", 0);
            }
        });
    }

    public j l(mp mpVar, int i2) {
        String strK = ky.k(mpVar);
        j jVar = new j();
        jVar.hp(i2);
        jVar.hp(strK);
        jVar.hp(mpVar);
        return jVar;
    }

    public void l(boolean z2) {
        this.jx.set(z2);
    }

    public void hp(int i2, com.byazt.jt.l lVar, mp mpVar) {
        hp hpVar;
        final int i3;
        final mp mpVar2;
        try {
            final j jVarL = l(mpVar, i2);
            l();
            hpVar = this;
            i3 = i2;
            mpVar2 = mpVar;
            try {
                com.byazt.hp.hp.j().hp(lVar, jVarL, (j) new com.byazt.p000if.jx(null) { // from class: com.byazt.vv.hp.1
                    @Override // com.byazt.p000if.jx
                    public void hp(List<e> list) {
                        list.size();
                        mp mpVarL = jVarL.l();
                        if (mpVarL != null) {
                            hp.this.hp(mpVarL, i3);
                        } else {
                            hp.this.hp();
                            jx.l(mpVar2, false, i3, 5);
                        }
                        hp.this.f26716w.set(false);
                    }

                    @Override // com.byazt.p000if.jx
                    public void hp(int i4, String str) {
                        u.l("SecondPageImpl", "requestNewFeedAd onError code:" + i4 + " message:" + str);
                        hp.this.f26716w.set(false);
                        hp.this.hp();
                        jx.l(mpVar2, false, i3, 2);
                    }
                });
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                hpVar.f26716w.set(false);
                u.hp("SecondPageImpl", "requestNewFeedAd error", th2.toString());
                hp();
                jx.hp(mpVar2, false, i3, 6);
            }
        } catch (Throwable th3) {
            th = th3;
            hpVar = this;
            i3 = i2;
            mpVar2 = mpVar;
        }
    }

    public void hp() {
        s.hp(new Runnable() { // from class: com.byazt.vv.hp.5
            @Override // java.lang.Runnable
            public void run() {
                hq.hp(hp.this.f26715l, "加载失败了，将跳转至推荐页面", 1);
            }
        });
        com.byazt.dn.hp.hp((View) null, this.hp, this.f26715l);
    }

    public void hp(mp mpVar, int i2) {
        String strL = ky.l(ky.jl(mpVar));
        String strS = ec.s(mpVar);
        if (TextUtils.isEmpty(strS)) {
            strS = mpVar.s();
        }
        com.byazt.qn.hp hpVar = new com.byazt.qn.hp(mpVar, this.f26715l, strL, ky.j(strL), new HashMap(), null, mpVar.ij());
        hpVar.hp(strS);
        if (hpVar.hp(new HashMap())) {
            com.byazt.jdb.j.hp(mpVar, strL, new HashMap(), (Double) null);
            jx.l(mpVar, true, i2, 0);
        } else {
            hp();
            jx.l(mpVar, false, i2, 4);
        }
    }

    public void hp(boolean z2) {
        this.f26714j.set(z2);
    }
}
