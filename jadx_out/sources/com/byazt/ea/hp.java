package com.byazt.ea;

@com.byazt.kj.hp(hp = {0, 1, 1626, 28})
/* loaded from: classes2.dex */
public class hp {
    /* JADX WARN: Removed duplicated region for block: B:39:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] hp(java.io.File r11) throws java.lang.Throwable {
        /*
            java.lang.String r0 = ""
            r1 = 0
            java.util.zip.ZipFile r2 = new java.util.zip.ZipFile     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La3
            r2.<init>(r11)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La3
            java.util.Enumeration r11 = r2.entries()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            r1.<init>()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            r3 = 0
            r4 = r3
            r5 = r4
            r6 = r5
        L15:
            boolean r7 = r11.hasMoreElements()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            if (r7 == 0) goto L66
            java.lang.Object r7 = r11.nextElement()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.util.zip.ZipEntry r7 = (java.util.zip.ZipEntry) r7     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.String r9 = "META-INF/"
            boolean r8 = r8.startsWith(r9)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            if (r8 == 0) goto L15
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.String r9 = "MANIFEST.MF"
            boolean r8 = r8.endsWith(r9)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            r9 = 1
            if (r8 == 0) goto L3c
            r6 = r9
            goto L57
        L3c:
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.String r10 = ".SF"
            boolean r8 = r8.endsWith(r10)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            if (r8 == 0) goto L4a
            r4 = r9
            goto L57
        L4a:
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.String r10 = ".RSA"
            boolean r8 = r8.endsWith(r10)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            if (r8 == 0) goto L57
            r5 = r9
        L57:
            long r7 = r7.getCrc()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            r1.add(r7)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            goto L15
        L63:
            r11 = move-exception
            r1 = r2
            goto L9f
        L66:
            java.util.Comparator r11 = java.util.Collections.reverseOrder()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.util.Collections.sort(r1, r11)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            r11.<init>()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            int r7 = r1.size()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
        L76:
            if (r3 >= r7) goto L84
            java.lang.Object r8 = r1.get(r3)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            int r3 = r3 + 1
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            r11.append(r8)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            goto L76
        L84:
            if (r6 == 0) goto L94
            if (r4 == 0) goto L94
            if (r5 == 0) goto L94
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            java.lang.String r11 = com.byazt.lc.a.hp(r11)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L9c
            r1 = r0
            goto L98
        L94:
            java.lang.String r11 = "without v1 signature."
            r1 = r11
            r11 = r0
        L98:
            com.byazt.ea.jx.hp(r2)
            goto La8
        L9c:
            r1 = r2
            goto La3
        L9e:
            r11 = move-exception
        L9f:
            com.byazt.ea.jx.hp(r1)
            throw r11
        La3:
            com.byazt.ea.jx.hp(r1)
            r11 = r0
            r1 = r11
        La8:
            boolean r2 = android.text.TextUtils.isEmpty(r11)
            if (r2 == 0) goto Laf
            goto Lb1
        Laf:
            java.lang.String r0 = "V1"
        Lb1:
            java.lang.String[] r11 = new java.lang.String[]{r11, r0, r1}
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ea.hp.hp(java.io.File):java.lang.String[]");
    }
}
