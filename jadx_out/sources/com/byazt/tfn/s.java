package com.byazt.tfn;

import com.byazt.gp.j;
import com.byazt.tfn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 842, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements hp {
    public int hp = 0;

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        interfaceC0371hp.hp((String) null);
    }

    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) throws NumberFormatException {
        String strKy = interfaceC0371hp.hp().u().ky();
        com.byazt.iqm.l lVarCx = interfaceC0371hp.hp().cx();
        boolean zO = interfaceC0371hp.hp().o();
        if (com.byazt.gp.j.hp().jx(strKy, lVarCx.w())) {
            boolean z2 = com.byazt.gp.j.hp().hp(strKy) == null;
            if (!zO && !z2 && hp(strKy, lVarCx, interfaceC0371hp.hp())) {
                interfaceC0371hp.hp().j(true);
                hp(lVarCx, strKy, interfaceC0371hp.hp().u(), interfaceC0371hp.hp());
                return;
            }
            com.byazt.gp.j.hp().hp(strKy, lVarCx);
        }
        interfaceC0371hp.hp(interfaceC0371hp.hp());
    }

    private boolean hp(String str, com.byazt.iqm.l lVar, com.byazt.ktq.l lVar2) {
        List<com.byazt.gp.eb> listJ;
        com.byazt.tgw.l lVarU = lVar2.u();
        if (com.byazt.gp.j.hp().hp(str, lVar, lVarU != null ? lVarU.nd() : null) && (listJ = com.byazt.gp.j.hp().j(str)) != null && listJ.size() > 0) {
            for (com.byazt.gp.eb ebVar : listJ) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(ebVar.hp);
                lVar2.l(arrayList);
            }
            if (lVar2.gu().size() > 0 || lVar2.k().size() > 0 || lVar2.jl().size() > 0) {
                com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "--==-- hit cache!!! -----");
                return true;
            }
        }
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "--==-- not hit cache!!! -----");
        return false;
    }

    private void hp(com.byazt.iqm.l lVar, String str, com.byazt.tgw.l lVar2, final com.byazt.ktq.l lVar3) throws NumberFormatException {
        com.byazt.iqm.l lVarL = com.byazt.gp.j.hp().l(str);
        if (lVarL != null) {
            lVar.hp(lVarL.hp());
            lVar.l(lVarL.jx());
        }
        com.byazt.gp.j.hp().hp(str, lVar);
        com.byazt.lsx.a.hp(lVar3.cx(), lVar2.nd(), !lVar3.o(), lVar3.xh().hp, 0, (Map<String, Object>) null);
        com.byazt.rt.jx jxVar = null;
        com.byazt.mey.hp.hp(lVar3, null, false);
        com.byazt.gp.l lVarJx = com.byazt.gp.j.hp().jx(str);
        if (lVarJx != null) {
            lVar3.hp(lVarJx.j() != null ? lVarJx.j().xh() : null);
            lVar3.hp(lVarJx.e_());
        }
        final int iL = com.byazt.gp.j.hp().l(str, lVar.w());
        if (iL == 2) {
            this.hp = 1;
            lVar3.hp(1);
            lVar3.s();
            return;
        }
        if (iL != 3 && iL != 4) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==-- 预缓存reqType错误：reqType = ".concat(String.valueOf(iL)));
            return;
        }
        long jW = com.byazt.gp.j.w(str);
        long jCurrentTimeMillis = System.currentTimeMillis() - jW;
        if (jW != -1 && jCurrentTimeMillis < lVar2.eb()) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==-- 预缓存补充请求无需发起，时间间隔不够，interval：" + jCurrentTimeMillis + ", config interval: " + lVar2.eb());
            this.hp = 3;
            lVar3.hp(3);
            lVar3.s();
            return;
        }
        List<com.byazt.rt.jx> listHp = lVar3.hp(false);
        if (listHp != null && listHp.size() > 0) {
            jxVar = listHp.get(0);
        }
        com.byazt.rt.jx jxVar2 = jxVar;
        final double dHp = hp(str, lVar.ec());
        if (jxVar2 == null || jxVar2.isPAd() || jxVar2.getCpm() >= dHp) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==-- 预缓存补充请求无需发起，已经命中最优");
            this.hp = 4;
            lVar3.hp(4);
            lVar3.s();
            return;
        }
        com.byazt.gp.j.hp().hp(lVar3.getContext(), str, iL, lVar, jxVar2, new j.jx() { // from class: com.byazt.tfn.s.1
            @Override // com.byazt.gp.j.jx
            public void hp(String str2, boolean z2, int i2, List<com.byazt.rt.jx> list) throws NumberFormatException {
                s.this.hp(str2, z2, i2, list, iL, dHp, lVar3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, boolean z2, int i2, List<com.byazt.rt.jx> list, int i3, double d2, com.byazt.ktq.l lVar) throws NumberFormatException {
        if (z2) {
            if (i3 == 4) {
                com.byazt.rt.jx jxVar = (list == null || list.size() <= 0) ? null : list.get(0);
                if (jxVar != null && jxVar.getCpm() >= d2) {
                    this.hp = 6;
                } else {
                    this.hp = 7;
                }
            } else if (i3 == 3) {
                this.hp = 5;
            }
        } else if (i2 == 10003) {
            this.hp = 9;
        } else if (i2 == 10086) {
            this.hp = 8;
        }
        lVar.hp(this.hp);
        lVar.l(list);
        com.byazt.aw.l.l(MediationConstant.TAG, "--==-- 预缓存补充请求结束，对外给出回调");
        lVar.s();
    }

    private double hp(String str, int i2) {
        com.byazt.tgw.l lVarHp = com.byazt.dl.j.hp().hp(str, i2, 102);
        double dB = 0.0d;
        if (lVarHp == null) {
            return 0.0d;
        }
        for (com.byazt.tgw.e eVar : lVarHp.rz()) {
            if (eVar.xh() && eVar.b() > dB) {
                dB = eVar.b();
            }
        }
        return dB;
    }
}
