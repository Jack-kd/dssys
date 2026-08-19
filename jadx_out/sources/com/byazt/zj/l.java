package com.byazt.zj;

import android.text.TextUtils;
import com.byazt.mey.eb;
import com.byazt.tgw.e;
import com.byazt.zg.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1417, 34})
/* loaded from: classes3.dex */
public class l implements hp {
    @Override // com.byazt.zj.hp
    public boolean hp(com.byazt.ktq.l lVar, com.byazt.rt.jx jxVar, List<e> list) {
        if (jxVar == null || lVar == null) {
            return false;
        }
        if (lVar.xs().a(eb.hp(lVar.u(), jxVar)) == 0) {
            return true;
        }
        return hp(jxVar, list);
    }

    public boolean hp(com.byazt.rt.jx jxVar, List<e> list) {
        if (jxVar == null || TextUtils.isEmpty(jxVar.getAdNetworkSlotId()) || !jxVar.isNormalAd() || d.hp(list)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Collections.sort(arrayList);
        return !d.l(arrayList) && jxVar.getAdNetworkSlotId().equals(((e) arrayList.get(0)).vv());
    }
}
