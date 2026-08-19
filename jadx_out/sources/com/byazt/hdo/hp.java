package com.byazt.hdo;

import android.text.TextUtils;
import com.byazt.gp.j;
import com.byazt.tgw.e;
import com.byazt.tgw.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;

@com.byazt.kj.hp(hp = {0, 1, 571, 28})
/* loaded from: classes2.dex */
public class hp {
    public static l hp(l lVar, String str) {
        if (lVar == null || TextUtils.isEmpty(str) || lVar.rz() == null || lVar.rz().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<e> it = lVar.rz().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            e next = it.next();
            if (str.equals(next.vv())) {
                arrayList.add(next.w());
                break;
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        e eVar = arrayList.get(0);
        if (eVar != null && eVar.dy() && !MediationConstant.ADN_PANGLE.equals(eVar.v())) {
            Iterator<e> it2 = lVar.rz().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                e next2 = it2.next();
                if (next2.dy() && MediationConstant.ADN_PANGLE.equals(next2.v())) {
                    arrayList.add(next2.w());
                    break;
                }
            }
        }
        l lVarVv = lVar.vv();
        if (lVarVv.k()) {
            lVarVv.l(arrayList);
        } else {
            lVarVv.hp(arrayList);
        }
        e eVar2 = arrayList.get(0);
        eVar2.w(0);
        if (eVar2.ec() == 0) {
            lVarVv.j(eVar2.b());
        }
        if (eVar2.ec() == 2) {
            lVarVv.hp(true);
        }
        if (eVar2.ec() == 1 || eVar2.ec() == 3) {
            lVarVv.l(true);
        }
        lVarVv.k(0);
        j.hp().hp(lVarVv.ky(), 0);
        com.byazt.xob.hp.hp().jx(lVarVv.ky(), str, 0);
        return lVarVv;
    }

    public static String hp(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("gm_test_slot_")) {
                return str.substring(13);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
