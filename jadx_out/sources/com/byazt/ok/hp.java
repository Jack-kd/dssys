package com.byazt.ok;

import android.text.TextUtils;
import com.byazt.aw.j;
import com.byazt.rt.jx;
import com.byazt.tgw.e;
import com.byazt.tgw.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 2392, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(l lVar, com.byazt.ktq.l lVar2, List<e> list) {
        if (lVar == null || lVar2 == null || list == null || list.size() == 0) {
            return;
        }
        Iterator<jx> it = lVar2.jl().iterator();
        while (it.hasNext()) {
            jx next = it.next();
            Iterator<e> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    com.byazt.aw.l.j(MediationConstant.TAG, j.hp(lVar) + "已经响应的广告: " + next.getAdNetworkSlotId() + "  没有在severBidding的waterFall列表中，需要被移除掉");
                    lVar2.jl().remove(next);
                    lVar2.zy().add(next);
                    break;
                }
                e next2 = it2.next();
                if (next == null || next2 == null || !next.getAdNetworkSlotId().equals(next2.vv())) {
                }
            }
        }
        com.byazt.aw.l.j(MediationConstant.TAG, j.hp(lVar) + "已经响应的广告被serverBidding过滤完还剩: " + lVar2.jl().size());
    }

    public static boolean hp(com.byazt.ktq.hp hpVar, List<e> list, String str) {
        if (list == null || hpVar == null || TextUtils.isEmpty(str) || hpVar.l() != 1) {
            return false;
        }
        Iterator<e> it = list.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().vv())) {
                return false;
            }
        }
        return true;
    }
}
