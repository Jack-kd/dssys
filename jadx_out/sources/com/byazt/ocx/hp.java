package com.byazt.ocx;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.dnb.gu;
import com.byazt.jz.cx;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.vu.a;
import com.byazt.vu.eb;
import com.byazt.vu.q;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.f;
import com.byazt.xci.fi;
import com.byazt.xci.mp;
import com.byazt.xci.ru;
import com.byazt.zn.ky;
import com.byazt.zn.u;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 81, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    /* renamed from: a, reason: collision with root package name */
    public w f23941a;
    public long hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public long f23943l = 0;
    public AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f23942j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f23944w = new AtomicBoolean(false);

    /* renamed from: com.byazt.ocx.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0326hp {
        void hp();

        void hp(a aVar);
    }

    public static hp hp() {
        return (com.byazt.lca.w.hp().gu() & 16) == 16 ? new jx() : new j();
    }

    public abstract void hp(com.byazt.cx.j<q, eb> jVar, mp mpVar, com.byazt.jt.l lVar, boolean z2);

    public abstract void hp(eb ebVar, String str, InterfaceC0326hp interfaceC0326hp, w wVar);

    public abstract void hp(fi fiVar, com.byazt.jt.l lVar, boolean z2);

    public abstract void hp(String str, mp mpVar);

    public abstract void hp(String str, String str2, boolean z2, boolean z3, Object obj);

    public abstract void jx();

    public abstract void l();

    public void l(com.byazt.jt.l lVar, f fVar) {
        if (sz.l().l(ky.l(lVar)) && lVar != null && TextUtils.isEmpty(lVar.n())) {
            com.byazt.kl.hp.hp("lqmt", "preLoadSplashAd... ");
            f fVar2 = fVar == null ? new f() : fVar.hp();
            fVar2.f27275s = System.currentTimeMillis();
            fVar2.eb = 2;
            fVar2.f27271k = s.u().su();
            fVar2.f27272l = 2;
            hp(lVar, fVar2);
        }
    }

    public void hp(a aVar, com.byazt.jt.l lVar, boolean z2, int i2) {
        if (hp(i2) && com.byazt.fe.w.hp(aVar.l()) && !this.jx.get()) {
            this.jx.set(true);
            com.byazt.kl.hp.hp("Splash_FullLink", "cacheRealTimeAdWhenTimeout start");
            hp(new fi(aVar.j(), aVar.l(), null), lVar, false);
            if (z2) {
                hp(aVar.j(), aVar.l(), lVar);
            }
            com.byazt.kl.hp.hp("Splash_FullLink", "cacheRealTimeAdWhenTimeout end");
        }
    }

    public static boolean hp(int i2) {
        int iGu = com.byazt.lca.w.hp().gu();
        return i2 == 2 ? (iGu & 2) == 2 : (i2 == 3 || i2 == 1) && (iGu & 32) == 32;
    }

    public void hp(final com.byazt.jt.l lVar, f fVar) {
        if (this.jx.get()) {
            com.byazt.kl.hp.hp("lqmt", "已经存储了一个实时广告");
            return;
        }
        if (this.f23942j.getAndSet(true)) {
            com.byazt.kl.hp.hp("lqmt", "已在预加载开屏广告....不再发出");
            return;
        }
        if (sz.l().e(lVar.j()) && fVar != null) {
            fVar.eb = 2;
        }
        sz.hp().hp(lVar, fVar, 4, new cx.l() { // from class: com.byazt.ocx.hp.1
            @Override // com.byazt.jz.cx.l
            public void hp(int i2, String str, com.byazt.xci.l lVar2) {
                hp.this.f23942j.set(false);
                lVar2.hp(i2);
                com.byazt.xci.l.hp(lVar2);
            }

            @Override // com.byazt.jz.cx.l
            public void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar2) {
                if (com.byazt.qfg.s.l(hpVar)) {
                    mp mpVar = hpVar.l().get(0);
                    if (mpVar.qb()) {
                        AtomicBoolean atomicBoolean = hp.this.jx;
                        if ((atomicBoolean == null || !atomicBoolean.get()) && com.byazt.fe.w.hp(mpVar)) {
                            hp.this.hp(new fi(hpVar, mpVar, null), lVar, false);
                            hp.this.hp(hpVar, mpVar, lVar);
                            return;
                        }
                        return;
                    }
                    lVar2.hp(-4);
                    com.byazt.xci.l.hp(lVar2);
                    return;
                }
                hp.this.f23942j.set(false);
            }
        });
    }

    public void hp(final com.byazt.xci.hp hpVar, final mp mpVar, com.byazt.jt.l lVar) {
        if (mpVar.vi() == null || mpVar.vi().size() <= 0) {
            return;
        }
        dy dyVar = mpVar.vi().get(0);
        String strHp = dyVar.hp();
        int iL = dyVar.l();
        int iJx = dyVar.jx();
        this.hp = System.currentTimeMillis();
        this.f23943l = SystemClock.elapsedRealtime();
        ru ruVarJx = com.byazt.cm.w.hp().jx().jx();
        if (ruVarJx != null) {
            ruVarJx.hp(false);
        }
        final boolean z2 = df.v(mpVar) != null;
        u.hp(new com.byazt.er.l(strHp, dyVar.eb()), iL, iJx, new u.hp() { // from class: com.byazt.ocx.hp.2
            @Override // com.byazt.zn.u.hp
            public void hp(com.byazt.pjc.l lVar2, com.byazt.nke.u uVar) {
                com.byazt.qfg.s.hp(hpVar);
                if (!z2) {
                    com.byazt.jdb.j.hp(mpVar, "splash_ad", System.currentTimeMillis() - hp.this.hp);
                }
                hp hpVar2 = hp.this;
                hpVar2.hp = 0L;
                if (z2) {
                    com.byazt.qfg.s.hp(hpVar2.f23943l, false, true, mpVar, 0L, "preLoadImageSuccess");
                }
                hp.this.f23942j.set(false);
            }

            @Override // com.byazt.zn.u.hp
            public void hp() {
                com.byazt.qfg.s.hp(hpVar);
                if (z2) {
                    com.byazt.qfg.s.hp(hp.this.f23943l, false, false, mpVar, -7L, "preLoadImageFailed");
                }
                hp.this.f23942j.set(false);
            }
        }, gu.w(), 4, null, false);
    }
}
