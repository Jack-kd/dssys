package com.bykv.vk.component.ttvideo.utils;

/* loaded from: classes3.dex */
public class VersionInfo {
    private static String[] mVersion;

    /* JADX WARN: Removed duplicated region for block: B:30:0x0035 A[EXC_TOP_SPLITTER, PHI: r7
      0x0035: PHI (r7v2 java.io.FileReader) = (r7v1 java.io.FileReader), (r7v1 java.io.FileReader), (r7v3 java.io.FileReader), (r7v3 java.io.FileReader) binds: [B:16:0x0042, B:18:0x0045, B:23:0x0035, B:8:0x0032] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] getVersion() {
        /*
            java.lang.String[] r0 = com.bykv.vk.component.ttvideo.utils.VersionInfo.mVersion
            if (r0 != 0) goto L56
            r0 = 4
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = 0
            java.lang.String r2 = "null"
            r0[r1] = r2
            r3 = 1
            r0[r3] = r2
            r4 = 2
            r0[r4] = r2
            r5 = 3
            r0[r5] = r2
            java.lang.String r2 = "/proc/version"
            r6 = 0
            java.io.FileReader r7 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3b
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L3b
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3c
            r8 = 8192(0x2000, float:1.148E-41)
            r2.<init>(r7, r8)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r6 = r2.readLine()     // Catch: java.lang.Throwable -> L39
            java.lang.String r8 = "\\s+"
            java.lang.String[] r6 = r6.split(r8)     // Catch: java.lang.Throwable -> L39
            r6 = r6[r4]     // Catch: java.lang.Throwable -> L39
            r0[r1] = r6     // Catch: java.lang.Throwable -> L39
            r2.close()     // Catch: java.lang.Throwable -> L35
        L35:
            r7.close()     // Catch: java.lang.Throwable -> L48
            goto L48
        L39:
            r6 = r2
            goto L3c
        L3b:
            r7 = r6
        L3c:
            if (r6 == 0) goto L45
            r6.close()     // Catch: java.lang.Throwable -> L42
            goto L45
        L42:
            if (r7 == 0) goto L48
            goto L35
        L45:
            if (r7 == 0) goto L48
            goto L35
        L48:
            java.lang.String r1 = android.os.Build.VERSION.RELEASE
            r0[r3] = r1
            java.lang.String r1 = android.os.Build.MODEL
            r0[r4] = r1
            java.lang.String r1 = android.os.Build.DISPLAY
            r0[r5] = r1
            com.bykv.vk.component.ttvideo.utils.VersionInfo.mVersion = r0
        L56:
            java.lang.String[] r0 = com.bykv.vk.component.ttvideo.utils.VersionInfo.mVersion
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.utils.VersionInfo.getVersion():java.lang.String[]");
    }
}
