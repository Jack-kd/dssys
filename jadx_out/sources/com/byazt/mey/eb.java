package com.byazt.mey;

import com.byazt.tgw.e;
import com.byazt.zg.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 589, 94})
/* loaded from: classes3.dex */
public class eb {
    public static boolean hp(int i2) {
        return i2 >= -299 && i2 < -100;
    }

    public static boolean jx(int i2) {
        return i2 == -100;
    }

    public static boolean l(int i2) {
        return i2 == 0;
    }

    public static boolean hp(int i2, List<Integer> list) {
        if (d.hp(list) || i2 >= list.size() || list.get(i2).intValue() <= 0) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (list.get(i3).intValue() > 0) {
                return false;
            }
        }
        return true;
    }

    public static List<e> jx(List<e> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (e eVar : list) {
            if (eVar != null && (eVar.ec() == 1 || eVar.ec() == 3)) {
                arrayList.add(eVar);
            }
        }
        return arrayList;
    }

    public static List<e> l(List<e> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (e eVar : list) {
            if (eVar != null && eVar.ec() == 0) {
                arrayList.add(eVar);
            }
        }
        return arrayList;
    }

    public static int hp(com.byazt.tgw.l lVar, e eVar) {
        if (lVar == null || eVar == null) {
            return -999;
        }
        if (lVar.k() && eVar.xh()) {
            return eVar.d();
        }
        return eVar.o();
    }

    public static int hp(com.byazt.tgw.l lVar, com.byazt.rt.jx jxVar) {
        if (lVar == null || jxVar == null) {
            return -999;
        }
        if (lVar.k() && jxVar.isNormalAd()) {
            return jxVar.getShowSort();
        }
        return jxVar.getLoadSort();
    }

    public static Map<Integer, List<e>> hp(List<e> list, boolean z2) {
        int iO;
        HashMap map = new HashMap();
        if (!d.hp(list)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                e eVar = list.get(i2);
                if (eVar != null) {
                    if (z2 && eVar.xh()) {
                        iO = eVar.d();
                    } else {
                        iO = eVar.o();
                    }
                    List arrayList = (List) map.get(Integer.valueOf(iO));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(eVar);
                    map.put(Integer.valueOf(iO), arrayList);
                }
            }
        }
        return map;
    }

    public static List<e> hp(List<e> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (e eVar : list) {
            if (eVar != null && eVar.ec() == 100) {
                arrayList.add(eVar);
            }
        }
        return arrayList;
    }
}
