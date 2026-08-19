package com.anythink.core.common.o;

import android.app.ActivityManager;
import android.content.Context;

/* loaded from: classes2.dex */
public final class b {
    public static int a() {
        return a(1);
    }

    public static int b() {
        return a(3);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0048 A[EXC_TOP_SPLITTER, PHI: r3
      0x0048: PHI (r3v3 java.io.FileReader) = (r3v2 java.io.FileReader), (r3v4 java.io.FileReader) binds: [B:18:0x0046, B:24:0x0052] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(int r8) throws java.io.IOException {
        /*
            r0 = 0
            r1 = 0
            java.lang.String r2 = "L3Byb2MvbWVtaW5mbw=="
            java.lang.String r2 = com.anythink.core.common.v.j.b(r2)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L4c
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L4c
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L4c
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L4d
            r4 = 8192(0x2000, float:1.148E-41)
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L4d
            java.lang.String r1 = ""
            r4 = r0
        L17:
            if (r4 >= r8) goto L20
            java.lang.String r1 = r2.readLine()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
            int r4 = r4 + 1
            goto L17
        L20:
            java.lang.String r8 = "\\s+"
            java.lang.String[] r8 = r1.split(r8)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
            r1 = 1
            r8 = r8[r1]     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
            long r4 = r8.longValue()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
            r6 = 1024(0x400, double:5.06E-321)
            long r4 = r4 / r6
            int r8 = (int) r4
            r2.close()     // Catch: java.io.IOException -> L38
        L38:
            r3.close()     // Catch: java.io.IOException -> L3b
        L3b:
            return r8
        L3c:
            r1 = r2
            goto L41
        L3e:
            r1 = r2
            goto L4d
        L40:
            r3 = r1
        L41:
            if (r1 == 0) goto L46
            r1.close()     // Catch: java.io.IOException -> L46
        L46:
            if (r3 == 0) goto L55
        L48:
            r3.close()     // Catch: java.io.IOException -> L55
            goto L55
        L4c:
            r3 = r1
        L4d:
            if (r1 == 0) goto L52
            r1.close()     // Catch: java.io.IOException -> L52
        L52:
            if (r3 == 0) goto L55
            goto L48
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.o.b.a(int):int");
    }

    public static int a(ActivityManager activityManager) {
        try {
            activityManager.getMemoryInfo(new ActivityManager.MemoryInfo());
            return (int) ((Runtime.getRuntime().totalMemory() / 1024) / 1024);
        } catch (Throwable unused) {
            return 0;
        }
    }

    private static int a(Context context, ActivityManager activityManager) {
        return (context.getApplicationContext().getApplicationInfo().flags & 1048576) == 1048576 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
    }
}
