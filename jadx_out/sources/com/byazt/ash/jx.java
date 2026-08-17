package com.byazt.ash;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.dnb.s;
import com.byazt.gy.j;
import com.byazt.jkd.q;
import com.byazt.jz.hq;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

@com.byazt.kj.hp(hp = {0, 1, 513, 30})
/* loaded from: classes2.dex */
public abstract class jx {
    public Context hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.pc.j f18147l;

    public jx(Context context) {
        this.hp = context == null ? sz.getContext() : context.getApplicationContext();
        this.f18147l = new com.byazt.pc.j(l());
    }

    public abstract int l();

    public void l(String str) {
        hp().hp(str, com.byazt.np.l.REQED);
    }

    public void hp(com.byazt.jt.l lVar, com.byazt.vv.j jVar, j jVar2) {
        hp(lVar, jVar2, null, jVar, null, null);
        com.byazt.vv.jx.hp(jVar.hp(), true, jVar.jx(), 0);
    }

    public void hp(final mp mpVar, final String str) {
        s.hp(new com.byazt.uid.eb("rewardFull preloadOnDestroy") { // from class: com.byazt.ash.jx.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.jt.l lVarHp = com.byazt.vo.hp.hp().hp(mpVar, str);
                if (lVarHp == null || TextUtils.isEmpty(lVarHp.j())) {
                    return;
                }
                mp mpVarHp = com.byazt.fe.w.hp(jx.this.l()).hp(lVarHp.j(), false, 0L);
                if (sz.l().l(lVarHp.j()) && mpVarHp != null) {
                    if (mpVarHp.tw() + mpVarHp.su() < System.currentTimeMillis()) {
                        com.byazt.fe.w.hp(jx.this.l()).hp(lVarHp.j());
                    }
                }
                if (mpVarHp == null) {
                    jx.this.hp(lVarHp);
                }
            }
        });
    }

    public void hp(com.byazt.jt.l lVar) {
        if (this.f18147l != null) {
            this.f18147l.hp(lVar, hp(true, System.currentTimeMillis(), lVar, null, null));
        }
    }

    public void hp(final com.byazt.jt.l lVar, final j jVar) {
        final String str;
        if (lVar != null) {
            lVar.j();
        }
        final String string = UUID.randomUUID().toString();
        if (lVar == null || !TextUtils.isEmpty(lVar.n())) {
            str = null;
        } else {
            String string2 = UUID.randomUUID().toString();
            hp(string2, lVar, l());
            str = string2;
        }
        hp(str);
        if (!q.hp()) {
            hp(str, null, false, new com.byazt.kd.jx(1000, "广告请求开关已关闭,请联系穿山甲管理员"));
            jVar.hp(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            return;
        }
        com.byazt.ktd.l.hp(lVar, true, string);
        com.byazt.uid.eb ebVar = new com.byazt.uid.eb("loadRewardVideoAd") { // from class: com.byazt.ash.jx.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    jx.this.hp(lVar, jVar, null, null, str, string);
                } catch (Throwable th) {
                    String str2 = " msg = " + th.getMessage();
                    jx.this.hp(str, null, false, new com.byazt.kd.jx(TTAdConstant.INIT_LOCAL_FAIL_CODE, str2));
                    jVar.hp(TTAdConstant.INIT_LOCAL_FAIL_CODE, str2);
                    u.hp("RewardFullLoadManager", "reward  component maybe not exist, pls check1", th);
                }
            }
        };
        if (!vv.hp) {
            u.l("RewardFullLoadManager", hq.NOT_INIT_TIPS_MSG);
            hp(str, null, false, new com.byazt.kd.jx(10000, hq.NOT_INIT_TIPS_MSG));
            jVar.hp(10000, hq.NOT_INIT_TIPS_MSG);
        } else {
            hq.execLoadAd(ebVar, l());
            com.byazt.evz.hp.hp().hp(l(), lVar);
        }
    }

    private void hp(String str, final com.byazt.jt.l lVar, final int i2) {
        com.byazt.kt.l lVar2 = (com.byazt.kt.l) com.byazt.gy.w.hp(0);
        lVar2.l(str, lVar.lv());
        lVar2.hp(str, new com.byazt.tb.jx());
        if (com.byazt.un.a.hp().hp(i2)) {
            lVar2.hp(str, new com.byazt.un.jx());
        }
        lVar2.hp(str, new j.hp() { // from class: com.byazt.ash.jx.3
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar3) {
                com.byazt.jt.l lVar4;
                if (!(lVar3 instanceof com.byazt.kf.l) || (lVar4 = lVar) == null) {
                    return;
                }
                com.byazt.kf.l lVar5 = (com.byazt.kf.l) lVar3;
                lVar5.hp = lVar4;
                lVar5.eb = i2;
                lVar5.f20630s = lVar4.j();
            }
        });
    }

    public void hp(final com.byazt.jt.l lVar, final j jVar, com.byazt.iw.jx jxVar, final com.byazt.vv.j jVar2, final String str, final String str2) {
        final f fVarHp = hp(false, jVar != null ? jVar.hp() : System.currentTimeMillis(), lVar, jxVar, jVar2);
        fVarHp.ec = str2;
        if (this.f18147l != null) {
            l(str);
            final AtomicReference atomicReference = new AtomicReference(str);
            this.f18147l.hp(lVar, fVarHp, new com.byazt.pc.w() { // from class: com.byazt.ash.jx.4
                @Override // com.byazt.pc.w
                public void hp(Object obj, boolean z2, mp mpVar) {
                    com.byazt.jt.l lVar2;
                    String strL = (String) atomicReference.get();
                    if (TextUtils.isEmpty(strL) && (lVar2 = lVar) != null && !TextUtils.isEmpty(lVar2.n()) && mpVar != null) {
                        strL = jx.this.hp().l(mpVar.ns());
                        atomicReference.set(strL);
                    }
                    jx.this.hp(strL, true);
                    fVarHp.hp(obj, z2 ? 3 : 2);
                    jx jxVar2 = jx.this;
                    jxVar2.hp(strL, jxVar2.hp(obj), true, null);
                    com.byazt.vv.j jVar3 = jVar2;
                    if (jVar3 != null && jVar3.w()) {
                        jVar2.l(mpVar);
                    }
                    j jVar4 = jVar;
                    if (jVar4 != null) {
                        jVar4.hp(obj);
                    }
                    if (mpVar == null || TextUtils.isEmpty(str2)) {
                        return;
                    }
                    mpVar.hp(str2);
                    com.byazt.ktd.l.hp(mpVar, ky.l(jx.this.l()));
                }

                @Override // com.byazt.pc.w
                public void hp(Object obj) {
                    String str3 = (String) atomicReference.get();
                    if (com.byazt.un.a.hp().hp(jx.this.l()) && !TextUtils.isEmpty(str3)) {
                        com.byazt.un.a.hp().l(str3, System.currentTimeMillis());
                    }
                    j jVar3 = jVar;
                    if (jVar3 != null) {
                        jVar3.l(obj);
                    }
                }

                @Override // com.byazt.pc.w
                public void hp(int i2, String str3) {
                    jx.this.hp(str, false);
                    fVarHp.hp((Object) null, 1);
                    jx.this.hp(str, null, false, new com.byazt.kd.jx(i2, str3));
                    j jVar3 = jVar;
                    if (jVar3 != null) {
                        jVar3.hp(i2, str3);
                    }
                }
            });
        }
    }

    private f hp(boolean z2, long j2, com.byazt.jt.l lVar, com.byazt.iw.jx jxVar, com.byazt.vv.j jVar) {
        boolean z3;
        f fVar = new f();
        fVar.f27274q = j2;
        if (z2) {
            fVar.hp = 2;
        }
        fVar.eb = 2;
        boolean z4 = false;
        if (jxVar == null || !jxVar.jx()) {
            z3 = false;
        } else {
            fVar.jx = jxVar.hp();
            fVar.f27270j = jxVar.l();
            fVar.sz = true;
            z3 = true;
        }
        if (jVar != null && jVar.w()) {
            fVar.xs = jVar.jx();
            fVar.vv = jVar.j();
            fVar.sz = true;
            z4 = true;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_playAgain", z3);
        bundle.putBoolean("is_second_page_ad", z4);
        bundle.putBoolean("is_preload", z2);
        bundle.putLong("start_time", fVar.f27274q);
        fVar.f27276u = bundle;
        if (lVar != null) {
            fVar.hp(l(), lVar.j(), 1, lVar);
            return fVar;
        }
        fVar.hp(l(), "", 1, lVar);
        return fVar;
    }

    public void hp(String str) {
        hp().hp(str, com.byazt.np.l.STARTED);
    }

    public void hp(String str, final boolean z2) {
        hp().hp(str, new j.hp() { // from class: com.byazt.ash.jx.5
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.l) {
                    ((com.byazt.kf.l) lVar).f22025l = z2;
                }
            }
        });
        hp().hp(str, com.byazt.np.l.RECEIVED);
    }

    public void hp(final String str, final String str2, final boolean z2, final com.byazt.kd.jx jxVar) {
        hp().hp(str, new j.hp() { // from class: com.byazt.ash.jx.6
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.l) {
                    com.byazt.kf.l lVar2 = (com.byazt.kf.l) lVar;
                    lVar2.jx = z2;
                    lVar2.f22024j = jxVar;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    lVar2.f22026w.add(str2);
                }
            }
        });
        if (!TextUtils.isEmpty(str2)) {
            ((com.byazt.kt.jx) com.byazt.gy.w.hp(1)).hp(str2, new j.hp() { // from class: com.byazt.ash.jx.7
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.jx) {
                        ((com.byazt.kf.jx) lVar).hp = str;
                    }
                }
            });
        }
        hp().hp(str, com.byazt.np.l.LOADED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.kt.l hp() {
        return (com.byazt.kt.l) com.byazt.gy.w.hp(0);
    }

    public String hp(Object obj) {
        if (obj instanceof com.byazt.bp.jx) {
            return ((com.byazt.bp.jx) obj).getLifecycleId();
        }
        if (obj instanceof com.byazt.bp.l) {
            return ((com.byazt.bp.l) obj).getLifecycleId();
        }
        return null;
    }

    public void hp(mp mpVar) {
        com.byazt.pc.j jVar = this.f18147l;
        if (jVar != null) {
            jVar.l().hp(mpVar);
        }
    }

    public static void hp(int i2, mp mpVar) {
        if (i2 == 7) {
            eb.hp().hp(mpVar);
        } else {
            if (i2 != 8) {
                return;
            }
            l.hp().hp(mpVar);
        }
    }

    public mp hp(String str, int i2) {
        com.byazt.pc.j jVar = this.f18147l;
        if (jVar != null) {
            return jVar.l().hp(str, i2);
        }
        return null;
    }
}
