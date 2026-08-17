package com.octopus.ad.d.b;

import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.Octopus;
import com.octopus.ad.internal.c.o;

/* loaded from: classes4.dex */
public class g {
    public static String a(Context context) {
        String strA = a();
        if (context != null && TextUtils.isEmpty(strA)) {
            strA = o.b(context, "newOaid");
            if (TextUtils.isEmpty(strA)) {
                strA = o.b(context, "hoaid");
            }
        }
        return strA == null ? "" : strA;
    }

    public static String b(Context context) {
        String strB;
        return (context == null || (strB = com.octopus.ad.d.a.b.b(context)) == null) ? "" : strB;
    }

    public static String c(Context context) {
        String strC;
        return (context == null || !(Octopus.getCustomController() == null || Octopus.getCustomController().isCanUseOaid()) || (strC = com.octopus.ad.d.a.b.c(context)) == null) ? "" : strC;
    }

    public static String d(Context context) {
        String str;
        return (context == null || Octopus.isLimitPersonalAds() || (str = (String) o.c(context, "__GAID__", com.octopus.ad.d.a.b.d(context))) == null) ? "" : str;
    }

    public static String a() {
        if (Octopus.getCustomController() != null) {
            String oaid = Octopus.getCustomController().getOaid();
            if (!TextUtils.isEmpty(oaid)) {
                com.octopus.ad.d.a.f.b("Oaid is Outside Input: " + oaid);
                return oaid;
            }
            return "";
        }
        return "";
    }
}
