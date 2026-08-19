package com.smartdigimkt.z;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public abstract class p {
    public static boolean a(Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, com.smartdigimkt.i0.e eVar, String str, g0 g0Var) {
        try {
            com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
            String str2 = (eVar == null || TextUtils.isEmpty(eVar.f40650b)) ? "" : eVar.f40650b;
            if (bVarE != null && bVarE.a()) {
                Context applicationContext = context.getApplicationContext();
                bVarE.handleOfferClick(applicationContext, aVar, cVar, str, str2, new n(applicationContext, cVar), g0Var);
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean b(Context context, com.smartdigimkt.m3.c cVar) {
        if (cVar != null && !TextUtils.isEmpty(cVar.f41820k)) {
            String str = cVar.f41820k;
            String str2 = cVar.f41813d0;
            int i2 = cVar.f41824o;
            if (com.smartdigimkt.c0.e.a(context, str, str2, (i2 == 2 || i2 == 3) ? !TextUtils.isEmpty(cVar.f41822m) ? cVar.f41822m : cVar.f41794O : "", cVar.i()).f45307a == 0) {
                return true;
            }
        }
        if (cVar == null || TextUtils.isEmpty(cVar.f41822m)) {
            return false;
        }
        return com.smartdigimkt.c0.e.a(context, cVar.f41822m);
    }

    public static void a(int i2, com.smartdigimkt.m3.c cVar, com.smartdigimkt.i0.l lVar) {
        cVar.getClass();
        o oVar = new o(i2, cVar, lVar);
        com.smartdigimkt.b4.e eVarA = com.smartdigimkt.b4.e.a();
        eVarA.getClass();
        String name = Thread.currentThread().getName();
        eVarA.f39591a.getClass();
        if (TextUtils.equals(name, com.smartdigimkt.b4.b.a(19))) {
            oVar.run();
        } else {
            eVarA.a(oVar, 0L, 19);
        }
    }

    public static void a(Context context, com.smartdigimkt.m3.c cVar) {
        com.smartdigimkt.i3.b bVarE;
        if (context == null || cVar == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(cVar.f41822m) || (bVarE = SDKContext.getInstance().e()) == null || !bVarE.a()) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (cVar instanceof com.smartdigimkt.m3.k) {
                d0.a(applicationContext).a();
                d0.a(applicationContext).f45277b.put(cVar.f41806a, cVar);
            }
            bVarE.registerMarketReceiver(cVar);
        } catch (Throwable unused) {
        }
    }

    public static boolean a(com.smartdigimkt.m3.e eVar, int i2) {
        if (i2 != 9 && i2 != 14) {
            if (eVar.f41850E != 1) {
                return false;
            }
        } else if (eVar.f41853F != 1) {
            return false;
        }
        return true;
    }
}
