package com.anythink.core.common.v;

import android.text.TextUtils;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.bz;
import com.anythink.core.common.h.cc;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class ai {
    public static boolean a(List<by> list) {
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                by byVar = list.get(i2);
                if (byVar != null && byVar.av()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean b(by byVar) {
        return byVar.n() == 66;
    }

    public static long c(by byVar) {
        if (byVar == null) {
            return 0L;
        }
        return (byVar.n() == 39 && byVar.bk()) ? byVar.bm() : byVar.C();
    }

    public static boolean a(by byVar) {
        return byVar.n() == 15 && !byVar.w();
    }

    public static String a(by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
        String internalNetworkPlacementId;
        String strAf;
        if (aTBaseAdAdapter != null) {
            try {
                internalNetworkPlacementId = aTBaseAdAdapter.getInternalNetworkPlacementId();
            } catch (Throwable unused) {
            }
        } else {
            internalNetworkPlacementId = "";
        }
        if (!TextUtils.isEmpty(internalNetworkPlacementId)) {
            return internalNetworkPlacementId;
        }
        if (byVar == null) {
            strAf = "";
        } else {
            strAf = byVar.af();
        }
        return !TextUtils.isEmpty(strAf) ? strAf : "";
    }

    public static List<cc.a> a(String str, by byVar, com.anythink.core.common.h.a aVar) {
        com.anythink.core.c.f fVarF;
        com.anythink.core.common.h.ad adVarA;
        com.anythink.core.common.f fVar;
        if (byVar == null) {
            return null;
        }
        bz bzVarA = (aVar == null || (fVar = aVar.f3566J) == null || fVar.e() == null) ? null : aVar.f3566J.e().a(str, byVar);
        if (bzVarA == null) {
            return null;
        }
        List<cc.a> listF = bzVarA.a((com.anythink.core.common.h.ad) null).f();
        com.anythink.core.common.f fVar2 = aVar.f3566J;
        if (fVar2 != null && (fVarF = fVar2.f()) != null && (adVarA = fVarF.a(str, byVar)) != null && !adVarA.a()) {
            if (listF == null) {
                listF = new ArrayList<>();
            }
            listF.add(new cc.a(byVar, adVarA));
        }
        return listF;
    }
}
