package com.meishu.sdk.core.utils;

import android.util.Base64;
import com.meishu.sdk.core.MSAdConfig;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes4.dex */
public class w1 {
    public static String a(String str, String str2) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(2, new SecretKeySpec(MessageDigest.getInstance("MD5").digest(str2.getBytes()), "AES"), new IvParameterSpec(MessageDigest.getInstance("MD5").digest(MSAdConfig.initUUID().getBytes())));
            return a(cipher.doFinal(Base64.decode(str, 0)));
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(byte[] r6) throws java.lang.Throwable {
        /*
            if (r6 == 0) goto L7c
            r0 = 0
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L55
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L55
            java.io.ByteArrayOutputStream r6 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            r6.<init>()     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            java.util.zip.GZIPInputStream r2 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3a
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3a
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
        L16:
            int r3 = r2.read(r0)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            r4 = -1
            if (r3 == r4) goto L26
            r4 = 0
            r6.write(r0, r4, r3)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            goto L16
        L22:
            r0 = move-exception
            goto L34
        L24:
            r0 = move-exception
            goto L59
        L26:
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            r6.close()     // Catch: java.io.IOException -> L2d
        L2d:
            r2.close()     // Catch: java.io.IOException -> L30
        L30:
            r1.close()     // Catch: java.io.IOException -> L33
        L33:
            return r0
        L34:
            r5 = r0
            r0 = r6
            r6 = r5
            goto L6c
        L38:
            r2 = move-exception
            goto L3c
        L3a:
            r2 = move-exception
            goto L41
        L3c:
            r5 = r0
            r0 = r6
            r6 = r2
            r2 = r5
            goto L6c
        L41:
            r5 = r2
            r2 = r0
            r0 = r5
            goto L59
        L45:
            r6 = move-exception
            goto L49
        L47:
            r6 = move-exception
            goto L4b
        L49:
            r2 = r0
            goto L6c
        L4b:
            r2 = r0
        L4c:
            r0 = r6
            r6 = r2
            goto L59
        L4f:
            r6 = move-exception
            r1 = r0
            r2 = r1
            r0 = r6
            r6 = r2
            goto L34
        L55:
            r6 = move-exception
            r1 = r0
            r2 = r1
            goto L4c
        L59:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L22
            if (r6 == 0) goto L61
            r6.close()     // Catch: java.io.IOException -> L61
        L61:
            if (r2 == 0) goto L66
            r2.close()     // Catch: java.io.IOException -> L66
        L66:
            if (r1 == 0) goto L7c
            r1.close()     // Catch: java.io.IOException -> L7c
            goto L7c
        L6c:
            if (r0 == 0) goto L71
            r0.close()     // Catch: java.io.IOException -> L71
        L71:
            if (r2 == 0) goto L76
            r2.close()     // Catch: java.io.IOException -> L76
        L76:
            if (r1 == 0) goto L7b
            r1.close()     // Catch: java.io.IOException -> L7b
        L7b:
            throw r6
        L7c:
            java.lang.String r6 = ""
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.w1.a(byte[]):java.lang.String");
    }
}
