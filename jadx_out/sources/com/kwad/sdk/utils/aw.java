package com.kwad.sdk.utils;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Process;
import android.provider.Settings;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public final class aw {
    private static Map<String, Integer> bpQ;
    private static Set<String> bpR;
    private static Method bpS;

    static {
        HashSet hashSet = new HashSet();
        bpR = hashSet;
        hashSet.add("android.permission.REQUEST_INSTALL_PACKAGES");
        bpR.add("android.permission.WRITE_SETTINGS");
        bpR.add("android.permission.SYSTEM_ALERT_WINDOW");
    }

    public static int aA(Context context, String str) throws NoSuchMethodException, SecurityException {
        int iAB;
        if (bpQ == null) {
            h(aa.di(context));
        }
        if (bpR.contains(str) && (iAB = aB(context, str)) != -2) {
            return iAB;
        }
        int iAC = aC(context, str);
        if (iAC == -2) {
            try {
                return context.checkPermission(str, Process.myPid(), Process.myUid());
            } catch (Throwable unused) {
            }
        }
        return iAC;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int aB(android.content.Context r3, java.lang.String r4) {
        /*
            r4.getClass()
            int r0 = r4.hashCode()
            r1 = -1
            r2 = 0
            switch(r0) {
                case -2078357533: goto L24;
                case -1561629405: goto L19;
                case 1777263169: goto Le;
                default: goto Lc;
            }
        Lc:
            r4 = r1
            goto L2e
        Le:
            java.lang.String r0 = "android.permission.REQUEST_INSTALL_PACKAGES"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L17
            goto Lc
        L17:
            r4 = 2
            goto L2e
        L19:
            java.lang.String r0 = "android.permission.SYSTEM_ALERT_WINDOW"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L22
            goto Lc
        L22:
            r4 = 1
            goto L2e
        L24:
            java.lang.String r0 = "android.permission.WRITE_SETTINGS"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L2d
            goto Lc
        L2d:
            r4 = r2
        L2e:
            switch(r4) {
                case 0: goto L4d;
                case 1: goto L40;
                case 2: goto L32;
                default: goto L31;
            }
        L31:
            goto L55
        L32:
            int r4 = android.os.Build.VERSION.SDK_INT
            r0 = 26
            if (r4 < r0) goto L55
            boolean r3 = com.kwad.sdk.utils.aa.dh(r3)
            if (r3 == 0) goto L3f
            return r2
        L3f:
            return r1
        L40:
            boolean r3 = android.provider.Settings.canDrawOverlays(r3)     // Catch: java.lang.Throwable -> L48
            if (r3 == 0) goto L47
            return r2
        L47:
            return r1
        L48:
            r3 = move-exception
            com.kwad.sdk.core.d.c.printStackTraceOnly(r3)
            goto L55
        L4d:
            boolean r3 = android.provider.Settings.System.canWrite(r3)     // Catch: java.lang.Throwable -> L55
            if (r3 == 0) goto L54
            return r2
        L54:
            return r1
        L55:
            r3 = -2
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.utils.aw.aB(android.content.Context, java.lang.String):int");
    }

    private static int aC(Context context, String str) throws NoSuchMethodException, SecurityException {
        if (bpQ == null || str == null || !bpQ.containsKey(str)) {
            return -2;
        }
        try {
            Integer num = bpQ.get(str);
            if (num == null) {
                return -2;
            }
            if (bpS == null) {
                Class cls = Integer.TYPE;
                Method declaredMethod = AppOpsManager.class.getDeclaredMethod("checkOp", cls, cls, String.class);
                bpS = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            return ((Integer) bpS.invoke((AppOpsManager) context.getSystemService("appops"), num, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0 ? 0 : -1;
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            return 0;
        }
    }

    public static boolean dK(Context context) {
        int i2;
        try {
            i2 = Settings.Secure.getInt(context.getContentResolver(), "accessibility_enabled");
        } catch (Throwable unused) {
            i2 = 0;
        }
        return i2 == 1;
    }

    private static void h(String[] strArr) {
        if (strArr == null) {
            return;
        }
        bpQ = new HashMap();
        for (String str : strArr) {
            try {
                Integer num = (Integer) ab.c(AppOpsManager.class, "OP_" + hX(str));
                if (num.intValue() >= 0) {
                    bpQ.put(str, num);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static String hX(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(com.anythink.core.common.d.i.f2495E);
        if (iLastIndexOf < 0) {
            return str;
        }
        try {
            return str.substring(iLastIndexOf + 1);
        } catch (Exception unused) {
            return str;
        }
    }
}
