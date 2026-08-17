package com.byazt.ge;

import android.os.SystemClock;
import com.byazt.aw.j;
import com.byazt.gp.eb;
import com.byazt.lsx.a;
import com.byazt.rt.jx;
import com.byazt.tgw.e;
import com.byazt.tgw.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 862, 28})
/* loaded from: classes2.dex */
public class hp {
    public static boolean hp(l lVar) {
        if (lVar == null) {
            return false;
        }
        int iXh = lVar.xh();
        Map<String, Integer> mapFi = com.byazt.di.l.l().fi();
        if (mapFi == null) {
            return false;
        }
        Integer num = mapFi.get(String.valueOf(iXh));
        if (num != null) {
            return num.intValue() == 1;
        }
        Integer num2 = mapFi.get("-1");
        return num2 != null && num2.intValue() == 1;
    }

    public static boolean l(l lVar) {
        if (lVar == null) {
            return false;
        }
        int iXh = lVar.xh();
        Map<String, Integer> mapNr = com.byazt.di.l.l().nr();
        if (mapNr == null) {
            return false;
        }
        Integer num = mapNr.get(String.valueOf(iXh));
        if (num != null) {
            return num.intValue() == 1;
        }
        Integer num2 = mapNr.get("-1");
        return num2 != null && num2.intValue() == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x004f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean hp(com.byazt.ktq.l r10, java.util.List<java.lang.Integer> r11, java.util.Map<java.lang.Integer, java.util.List<com.byazt.tgw.e>> r12) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ge.hp.hp(com.byazt.ktq.l, java.util.List, java.util.Map):boolean");
    }

    public static void hp(com.byazt.ktq.l lVar, e eVar, int i2) throws JSONException {
        if (lVar == null || lVar.cx() == null || eVar == null) {
            return;
        }
        com.byazt.iqm.l lVarCx = lVar.cx();
        String strSz = lVarCx.sz();
        com.byazt.aw.l.l(MediationConstant.TAG, j.hp(strSz) + "----------总超时后尝试从复用池中查找广告：id:" + eVar.vv() + "   loadSort:" + eVar.o() + "  showSort:" + eVar.d() + "   adnName:" + eVar.v());
        String strVv = eVar.vv();
        if (eVar.sz() && com.byazt.xob.hp.hp().j(strSz, strVv, lVarCx.w()) && com.byazt.xob.hp.hp().hp(strVv, lVarCx, true) == 3) {
            com.byazt.aw.l.l(MediationConstant.TAG, j.hp(strSz) + "----------可复用：id:" + eVar.vv() + "   loadSort:" + eVar.o() + "  showSort:" + eVar.d() + "   adnName:" + eVar.v());
            com.byazt.xob.hp.hp().hp(strSz, strVv, eVar, i2);
            List<eb> listHp = com.byazt.xob.hp.hp().hp(strVv, lVarCx, lVarCx.w());
            if (listHp == null || listHp.size() <= 0) {
                return;
            }
            int mediationRitReqType = listHp.get(0).hp.getMediationRitReqType(lVarCx.hp());
            a.hp(eVar, lVarCx, com.byazt.xob.hp.hp().hp(strVv), !lVar.o(), 4, i2, 3, mediationRitReqType, null, -1L, lVar.w(), true, SystemClock.elapsedRealtime() - lVar.r());
            com.byazt.owd.a.hp(lVar.jx(), lVar.hp(eVar), lVar.r());
            ArrayList arrayList = new ArrayList();
            for (eb ebVar : listHp) {
                ebVar.hp.setMediationRitReqType(3);
                ebVar.hp.setMediationRitReqTypeSrc(mediationRitReqType);
                ebVar.hp.setTimeoutFill(lVar.w());
                ebVar.hp.setIsCallback(true);
                hp(strSz, ebVar.hp, strVv);
                arrayList.add(ebVar.hp);
            }
            a.hp(listHp.get(0).hp, 0, "adn cache命中", 0L, lVarCx, i2, arrayList.size(), 4, null, 0L, -1L);
            com.byazt.owd.a.hp(lVar.jx(), lVar.l(eVar), lVar.r());
            com.byazt.mey.hp.hp(lVar, arrayList, true);
            int i3 = 0;
            jx jxVar = (jx) arrayList.get(0);
            if (jxVar.isPAd()) {
                lVar.l(arrayList);
                int size = arrayList.size();
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    jx jxVar2 = (jx) obj;
                    com.byazt.aw.l.hp(MediationConstant.TAG, j.hp(strSz) + "复用池回溯成功...........回溯到了P层广告_当前P层广告缓存池数量：" + lVar.gu().size() + ",slotId：" + jxVar2.getAdNetworkSlotId() + ",广告类型：" + jxVar2.getAdNetWorkName() + ",loadSort=" + jxVar2.getLoadSort() + ",showSort=" + jxVar2.getShowSort() + ",CPM=" + jxVar2.getCpm());
                }
                return;
            }
            if (jxVar.isNormalAd()) {
                lVar.l(arrayList);
                int size2 = arrayList.size();
                while (i3 < size2) {
                    Object obj2 = arrayList.get(i3);
                    i3++;
                    jx jxVar3 = (jx) obj2;
                    com.byazt.aw.l.hp(MediationConstant.TAG, j.hp(strSz) + "复用池回溯成功...........回溯到了普通层广告_当前普通广告缓存池数量：" + lVar.jl().size() + ",slotId：" + jxVar3.getAdNetworkSlotId() + ",广告类型：" + jxVar3.getAdNetWorkName() + ",loadSort=" + jxVar3.getLoadSort() + ",showSort=" + jxVar3.getShowSort() + ",CPM=" + jxVar3.getCpm());
                }
            }
        }
    }

    private static void hp(String str, jx jxVar, String str2) {
        e eVarW = com.byazt.xob.hp.hp().w(str, str2);
        if (jxVar == null || eVarW == null) {
            return;
        }
        jxVar.setLoadSort(eVarW.o());
        jxVar.setShowSort(eVarW.d());
        jxVar.setExchangeRate(eVarW.k());
        jxVar.setDiscount(eVarW.cx());
        jxVar.setAdNetworkSlotType(eVarW.ec());
        jxVar.setCpm(eVarW.b());
        jxVar.setSubAdType(eVarW.a());
    }
}
