package com.byazt.mey;

import com.byazt.tgw.e;

@com.byazt.kj.hp(hp = {0, 1, 589, 54})
/* loaded from: classes3.dex */
public class a {
    public static void hp(com.byazt.rt.jx jxVar, String str, String str2) {
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
