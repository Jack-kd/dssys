package com.kuaishou.weapon.p0;

import java.io.BufferedInputStream;
import java.io.IOException;

/* loaded from: classes4.dex */
public class aa {

    /* renamed from: a, reason: collision with root package name */
    private static volatile aa f30765a;

    private aa() {
    }

    public static synchronized aa a() {
        try {
            if (f30765a == null) {
                synchronized (aa.class) {
                    try {
                        if (f30765a == null) {
                            f30765a = new aa();
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f30765a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String b(java.lang.String r6) throws java.lang.Throwable {
        /*
            r5 = this;
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L61
            java.lang.String r2 = "sh"
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L61
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4b
            java.io.OutputStream r3 = r1.getOutputStream()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4b
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4b
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            java.io.InputStream r4 = r1.getInputStream()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            byte[] r6 = r6.getBytes()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L64
            r2.write(r6)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L64
            r6 = 10
            r2.write(r6)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L64
            r2.flush()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L64
            r2.close()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L64
            r1.waitFor()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L64
            java.lang.String r6 = a(r3)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L64
            r2.close()     // Catch: java.io.IOException -> L39
        L39:
            r3.close()     // Catch: java.io.IOException -> L3c
        L3c:
            r1.destroy()
            return r6
        L40:
            r6 = move-exception
        L41:
            r0 = r2
            goto L51
        L43:
            r6 = move-exception
            r3 = r0
            goto L41
        L46:
            r3 = r0
            goto L64
        L48:
            r6 = move-exception
            r3 = r0
            goto L51
        L4b:
            r2 = r0
        L4c:
            r3 = r2
            goto L64
        L4e:
            r6 = move-exception
            r1 = r0
            r3 = r1
        L51:
            if (r0 == 0) goto L56
            r0.close()     // Catch: java.io.IOException -> L56
        L56:
            if (r3 == 0) goto L5b
            r3.close()     // Catch: java.io.IOException -> L5b
        L5b:
            if (r1 == 0) goto L60
            r1.destroy()
        L60:
            throw r6
        L61:
            r1 = r0
            r2 = r1
            goto L4c
        L64:
            if (r2 == 0) goto L69
            r2.close()     // Catch: java.io.IOException -> L69
        L69:
            if (r3 == 0) goto L6e
            r3.close()     // Catch: java.io.IOException -> L6e
        L6e:
            if (r1 == 0) goto L73
            r1.destroy()
        L73:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.aa.b(java.lang.String):java.lang.String");
    }

    public String a(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String a(BufferedInputStream bufferedInputStream) throws IOException {
        int i2;
        if (bufferedInputStream == null) {
            return "";
        }
        byte[] bArr = new byte[512];
        StringBuilder sb = new StringBuilder();
        do {
            try {
                i2 = bufferedInputStream.read(bArr);
                if (i2 > 0) {
                    sb.append(new String(bArr, 0, i2));
                }
            } catch (Exception unused) {
            }
        } while (i2 >= 512);
        return sb.toString();
    }
}
