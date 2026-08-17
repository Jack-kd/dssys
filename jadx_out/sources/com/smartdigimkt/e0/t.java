package com.smartdigimkt.e0;

import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f40025a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f40026b = new ConcurrentHashMap(3);

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f40027c = new ConcurrentHashMap(3);

    public static String a(int i2, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar) {
        if (aVar != null) {
            return aVar.f41632f + "_" + cVar.f41806a + "_" + i2;
        }
        return cVar.f41833x + "_" + cVar.f41806a + "_" + i2;
    }

    public static void b(int i2, String str) {
        HashMap map = f40025a;
        Integer num = (Integer) map.get(str);
        if (num == null || num.intValue() < i2) {
            map.put(str, Integer.valueOf(i2));
        }
    }

    public static String c(com.smartdigimkt.m3.c cVar) {
        if (cVar == null) {
            return "";
        }
        com.smartdigimkt.t3.n nVarA = com.smartdigimkt.t3.n.a();
        com.smartdigimkt.m3.e eVar = cVar.f41832w;
        String strB = nVarA.b(eVar != null ? eVar.f41980v1 : "");
        if (!TextUtils.isEmpty(strB)) {
            return strB;
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA != null && !aVarA.f39371f) {
            String str = aVarA.f39363Y;
            if (!TextUtils.isEmpty(str)) {
                String strB2 = com.smartdigimkt.t3.n.a().b(str);
                if (!TextUtils.isEmpty(strB2)) {
                    return strB2;
                }
            }
        }
        return "";
    }

    public static boolean b(com.smartdigimkt.m3.c cVar) {
        if (cVar != null && cVar.d() == 3) {
            if (f40027c.containsKey(a(3, (com.smartdigimkt.l3.a) null, cVar))) {
                return true;
            }
            com.smartdigimkt.m3.e eVar = cVar.f41832w;
            if (eVar != null && eVar.f41989y1 != 1) {
                return !TextUtils.isEmpty(c(cVar));
            }
        }
        return false;
    }

    public static boolean a(int i2, String str) throws NoSuchAlgorithmException {
        String strB = com.smartdigimkt.c5.i.b(str);
        com.smartdigimkt.t3.n nVarA = com.smartdigimkt.t3.n.a();
        nVarA.getClass();
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        return new File(nVarA.b(i2, strB)).exists();
    }

    public static boolean a(com.smartdigimkt.m3.e eVar, int i2, com.smartdigimkt.m3.c cVar) throws NoSuchAlgorithmException {
        boolean zA;
        if (TextUtils.equals(String.valueOf(i2), "1")) {
            if (!TextUtils.isEmpty(cVar.f41818i)) {
                boolean zA2 = a(cVar, eVar);
                return cVar.d() == 3 ? zA2 && (eVar.f41992z1 == 1 || b(cVar)) : zA2;
            }
            if (eVar.f41949l0 != 1 && eVar.f41952m0 <= 0) {
                return a(cVar);
            }
            if (TextUtils.isEmpty(cVar.f41815f)) {
                return cVar.d() == 2 && eVar.f41952m0 == 1;
            }
            return a(cVar);
        }
        if (TextUtils.equals(String.valueOf(i2), "3")) {
            if (cVar.f41823n == 1 && !TextUtils.isEmpty(cVar.f41818i)) {
                zA = a(cVar, eVar);
            } else {
                if (cVar.d() == 2) {
                    return true;
                }
                zA = a(cVar);
            }
            return cVar.d() == 3 ? zA && (eVar.f41992z1 == 1 || b(cVar)) : zA;
        }
        if (!TextUtils.equals(String.valueOf(i2), "4") || cVar.d() == 2) {
            return true;
        }
        boolean z2 = a(cVar, eVar) || a(cVar);
        return cVar.d() == 3 ? z2 && (eVar.f41992z1 == 1 || b(cVar)) : z2;
    }

    public static boolean a(com.smartdigimkt.m3.c cVar) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(cVar.f41815f)) {
            return false;
        }
        String strB = com.smartdigimkt.c5.i.b(cVar.f41815f);
        com.smartdigimkt.t3.n nVarA = com.smartdigimkt.t3.n.a();
        nVarA.getClass();
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        return new File(nVarA.b(1, strB)).exists();
    }

    public static boolean a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (cVar == null) {
            return false;
        }
        if (cVar.f41787H == -1) {
            com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
            if (bVarE != null && bVarE.a()) {
                bVarE.fillDataFetchStatus(SDKContext.getInstance().d(), cVar, aVar);
            } else {
                cVar.f41787H = 0;
            }
        }
        com.smartdigimkt.m3.e eVar = aVar.f41644r;
        com.smartdigimkt.m3.e eVar2 = cVar.f41832w;
        if (eVar2 != null) {
            eVar = eVar2;
        }
        return a(eVar, aVar.f41628b, cVar);
    }

    public static boolean a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.m3.e eVar) {
        boolean z2;
        int i2 = eVar.f41895T;
        String str = cVar.f41818i;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (i2 == 0) {
            return true;
        }
        com.smartdigimkt.f3.a0 a0VarA = com.smartdigimkt.f3.a0.a();
        synchronized (a0VarA) {
            z2 = a0VarA.a(str) >= i2;
        }
        if (z2) {
            c0.a(cVar, eVar);
        }
        return z2;
    }
}
