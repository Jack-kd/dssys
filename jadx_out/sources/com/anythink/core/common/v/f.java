package com.anythink.core.common.v;

import com.anythink.core.common.h.by;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8173a = "f";

    public static void a(com.anythink.core.e.m mVar, Map<String, Object> map, by byVar, com.anythink.core.common.h.ac acVar) {
        if (acVar == null) {
            return;
        }
        double dJ = acVar.j();
        if (dJ < 0.0d) {
            return;
        }
        int iK = acVar.k();
        boolean zL = acVar.l();
        List<Integer> listN = mVar.n();
        if (listN == null) {
            return;
        }
        boolean zW = byVar.w();
        int i2 = 2;
        boolean z2 = false;
        if (iK == 22) {
            if ((zW && listN.contains(3)) || (!zW && listN.contains(1))) {
                z2 = true;
            }
        } else if (!(zW && listN.contains(4)) && (zW || !listN.contains(2))) {
            i2 = 5;
        } else {
            i2 = 5;
            z2 = true;
        }
        if (z2) {
            int iM = (int) ((dJ / mVar.M()) * 100.0d);
            int i3 = zL ? 3 : 1;
            boolean zG = acVar.g();
            map.put("bd_a", Integer.valueOf(i2));
            map.put("bd_b", Integer.valueOf(iM));
            map.put("bd_c", Integer.valueOf(i3));
            map.put("bd_s", Integer.valueOf(zG ? 1 : 0));
        }
    }
}
