package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.UUID;

/* loaded from: classes4.dex */
public class br {

    /* renamed from: a, reason: collision with root package name */
    private static String f30907a;

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static synchronized String a(Context context) {
        if (!TextUtils.isEmpty(f30907a)) {
            return f30907a;
        }
        h hVarA = h.a(context, "re_po_rt");
        boolean zE = hVarA.e("a1_p_s_p_s");
        boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
        String strA = bs.a(context, dd.a(context));
        if (!TextUtils.isEmpty(strA)) {
            f30907a = strA;
            return strA;
        }
        String strC = "";
        String strF = "";
        if (zE || zE2) {
            strC = bf.c(context);
            strF = bf.f(context);
        }
        String str = (TextUtils.isEmpty(strC) || strC.startsWith("RISK")) ? "0" : strC;
        String strA2 = new bl(context).a(a(context, strC, strF).toUpperCase() + "|" + new StringBuffer(str).reverse().toString().toUpperCase(), bg.f30875u);
        if (!TextUtils.isEmpty(strA2)) {
            bs.a(strA2, context, dd.a(context));
            f30907a = strA2;
            return strA2;
        }
        return "";
    }

    public static String a(Context context, String str, String str2) {
        String packageName;
        try {
            String string = UUID.randomUUID().toString();
            if (context == null) {
                packageName = "";
            } else {
                packageName = context.getPackageName();
            }
            String strA = f.a(str + str2 + packageName + string);
            return TextUtils.isEmpty(strA) ? "" : strA;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a(int i2) {
        StringBuilder sb = new StringBuilder();
        if (i2 < 3) {
            i2 = 3;
        }
        SecureRandom secureRandom = new SecureRandom();
        for (int i3 = 0; i3 < i2; i3++) {
            int iNextInt = secureRandom.nextInt(3);
            if (iNextInt == 0) {
                sb.append(secureRandom.nextInt(10));
            } else if (iNextInt == 1) {
                sb.append((char) (secureRandom.nextInt(25) + 65));
            } else if (iNextInt == 2) {
                sb.append((char) (secureRandom.nextInt(25) + 97));
            }
        }
        return sb.toString();
    }
}
