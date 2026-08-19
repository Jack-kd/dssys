package com.smartdigimkt.k2;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes5.dex */
public abstract class k {
    public static String a(com.smartdigimkt.m3.c cVar) {
        return cVar == null ? "" : !TextUtils.isEmpty(cVar.f41822m) ? cVar.f41822m : !TextUtils.isEmpty(cVar.f41794O) ? cVar.f41794O : !TextUtils.isEmpty(cVar.f41813d0) ? cVar.f41813d0 : "";
    }

    public static boolean a(Context context, com.smartdigimkt.m3.c cVar) {
        if (cVar == null || context == null) {
            return false;
        }
        int i2 = cVar.f41824o;
        if (i2 != 1) {
            if (i2 == 6) {
                if (TextUtils.isEmpty(cVar.f41782C)) {
                    return true;
                }
                return !com.smartdigimkt.c5.k.c(context, "com.tencent.mm");
            }
            if (i2 == 3) {
                if (!TextUtils.isEmpty(cVar.f41820k) && !TextUtils.isEmpty(cVar.f41822m)) {
                    if (!TextUtils.isEmpty(a(cVar))) {
                        return !com.smartdigimkt.c5.k.c(context, r5);
                    }
                }
                return true;
            }
            if (i2 != 4) {
                return false;
            }
        }
        if (TextUtils.isEmpty(cVar.f41822m)) {
            return true;
        }
        return com.smartdigimkt.c5.k.c(context, cVar.f41822m);
    }
}
