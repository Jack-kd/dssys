package com.byazt.tfn;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.tfn.hp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 842, 19})
/* loaded from: classes3.dex */
public class jl implements hp {
    public final long hp = 500;

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        interfaceC0371hp.hp((String) null);
    }

    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        if (lVarHp.u() == null && lVarHp.cx().ec() == 3 && !com.byazt.di.l.l().xh() && lVarHp.lv() != null) {
            com.byazt.aw.l.j(MediationConstant.TAG, "执行开启开屏兜底...............");
            hp(interfaceC0371hp, lVarHp, lVarHp.cx(), lVarHp.lv());
        } else {
            interfaceC0371hp.hp(lVarHp);
        }
    }

    public void hp(final hp.InterfaceC0371hp interfaceC0371hp, final com.byazt.ktq.l lVar, com.byazt.iqm.l lVar2, com.byazt.bki.gu guVar) {
        if (guVar != null && lVar2 != null) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar2.sz()) + "settings config.......AdUnitId = " + lVar2.sz() + "  开屏广告走了开发者自定义兜底方案   adnName:" + com.byazt.rt.hp.hp(guVar.hp()));
        }
        com.byazt.lsx.a.l(lVar2, -4);
        com.byazt.aw.l.j(MediationConstant.TAG, "开屏广告走了开发者自定义开屏兜底，数据为: getAdNetworkFlatFromId = " + guVar.hp() + " getAppId = " + guVar.jx() + " getAppKey = " + guVar.j() + " getAdNetworkSlotId = " + guVar.l());
        if (!TextUtils.isEmpty(guVar.l()) && (!TextUtils.isEmpty(guVar.jx()) || !TextUtils.isEmpty(guVar.j()))) {
            int iHp = guVar.hp();
            final String strHp = com.byazt.rt.hp.hp(iHp);
            final String strL = guVar.l();
            if (TextUtils.isEmpty(strHp)) {
                hp(lVar, 840027);
                lVar.hp(new com.byazt.dq.hp(840027, com.byazt.dq.hp.hp(840027)));
                return;
            }
            if (iHp == 3) {
                new com.byazt.vop.hp(guVar).hp(guVar);
                Looper looperL = com.byazt.aw.w.l();
                if (looperL != null) {
                    new Handler(looperL).postDelayed(new Runnable() { // from class: com.byazt.tfn.jl.1
                        @Override // java.lang.Runnable
                        public void run() {
                            jl.this.hp(interfaceC0371hp, lVar, strHp, strL);
                        }
                    }, 500L);
                    return;
                }
                return;
            }
            if (iHp == 7 || iHp == 6 || iHp == 4 || iHp == 8) {
                new com.byazt.vop.hp(guVar).hp(guVar);
                hp(interfaceC0371hp, lVar, strHp, strL);
                return;
            } else if (iHp != 1 && iHp != 9) {
                hp(lVar, 840027);
                lVar.hp(new com.byazt.dq.hp(840027, com.byazt.dq.hp.hp(840027)));
                return;
            } else {
                new com.byazt.vop.hp(guVar).hp(guVar, new com.byazt.gkj.jx() { // from class: com.byazt.tfn.jl.2
                    @Override // com.byazt.gkj.jx
                    public void hp() {
                        jl.this.hp(interfaceC0371hp, lVar, strHp, strL);
                    }

                    @Override // com.byazt.gkj.jx
                    public void hp(@NonNull com.byazt.dq.hp hpVar) {
                        jl.this.hp(lVar, 840027);
                        lVar.hp(new com.byazt.dq.hp(840027, com.byazt.dq.hp.hp(840027)));
                    }
                });
                return;
            }
        }
        hp(lVar, 840027);
        lVar.hp(new com.byazt.dq.hp(840027, com.byazt.dq.hp.hp(840027)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.ktq.l lVar, int i2) {
        com.byazt.lsx.a.hp(lVar.cx(), (String) null, !lVar.o(), lVar.xh().hp, i2, (Map<String, Object>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(hp.InterfaceC0371hp interfaceC0371hp, com.byazt.ktq.l lVar, String str, String str2) {
        lVar.hp(hp(lVar.cx().sz(), str, str2));
        interfaceC0371hp.hp(lVar);
    }

    private com.byazt.tgw.l hp(String str, String str2, String str3) {
        com.byazt.tgw.e eVarHp = com.byazt.qca.jx.hp(str3, str2, -4, -4);
        if (eVarHp == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(eVarHp);
        com.byazt.tgw.l lVar = new com.byazt.tgw.l();
        lVar.j(str);
        lVar.u(3);
        lVar.w(400L);
        lVar.a(2000L);
        lVar.eb(5000L);
        lVar.s(3000L);
        lVar.hp(arrayList);
        return lVar;
    }
}
