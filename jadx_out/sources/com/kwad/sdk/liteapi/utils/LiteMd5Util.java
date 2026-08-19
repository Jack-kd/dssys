package com.kwad.sdk.liteapi.utils;

import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.umeng.analytics.pro.ek;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Keep
/* loaded from: classes4.dex */
public class LiteMd5Util {
    static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String getFileMD5Digest(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (file == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 == -1) {
                            String hexString = toHexString(messageDigest.digest());
                            LiteCloseableUtil.closeQuietly(fileInputStream);
                            return hexString;
                        }
                        messageDigest.update(bArr, 0, i2);
                    }
                } catch (Exception e2) {
                    e = e2;
                    LiteApiLogger.printStackTraceOnly(e);
                    LiteCloseableUtil.closeQuietly(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                LiteCloseableUtil.closeQuietly(fileInputStream2);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            LiteCloseableUtil.closeQuietly(fileInputStream2);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getPartOfFileMD5Digest(java.lang.String r8, long r9, long r11) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r8)
            long r1 = r0.length()
            r3 = 0
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r1 = 0
            if (r8 <= 0) goto L76
            java.io.RandomAccessFile r8 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            java.lang.String r2 = "r"
            r8.<init>(r0, r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            int r2 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r2 < 0) goto L29
            long r5 = r0.length()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            int r0 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r0 >= 0) goto L29
            goto L2a
        L24:
            r9 = move-exception
            r1 = r8
            goto L72
        L27:
            r9 = move-exception
            goto L6b
        L29:
            r9 = r3
        L2a:
            r8.seek(r9)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            r9 = 4096(0x1000, float:5.74E-42)
            byte[] r9 = new byte[r9]     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            java.lang.String r10 = "MD5"
            java.security.MessageDigest r10 = java.security.MessageDigest.getInstance(r10)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            r0 = 0
            r2 = r0
        L39:
            long r3 = (long) r2     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            int r5 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r5 >= 0) goto L5b
            int r5 = r8.read(r9)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            r6 = -1
            if (r5 == r6) goto L5b
            if (r5 <= 0) goto L56
            int r6 = r2 + r5
            long r6 = (long) r6     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            int r6 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
            if (r6 <= 0) goto L56
            long r3 = r11 - r3
            int r3 = (int) r3     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            r10.update(r9, r0, r3)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            int r2 = r2 + r3
            goto L39
        L56:
            r10.update(r9, r0, r5)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            int r2 = r2 + r5
            goto L39
        L5b:
            byte[] r9 = r10.digest()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            java.lang.String r9 = toHexString(r9)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            com.kwad.sdk.liteapi.utils.LiteCloseableUtil.closeQuietly(r8)
            return r9
        L67:
            r9 = move-exception
            goto L72
        L69:
            r9 = move-exception
            r8 = r1
        L6b:
            com.kwad.sdk.liteapi.LiteApiLogger.printStackTrace(r9)     // Catch: java.lang.Throwable -> L24
            com.kwad.sdk.liteapi.utils.LiteCloseableUtil.closeQuietly(r8)
            goto L76
        L72:
            com.kwad.sdk.liteapi.utils.LiteCloseableUtil.closeQuietly(r1)
            throw r9
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.liteapi.utils.LiteMd5Util.getPartOfFileMD5Digest(java.lang.String, long, long):java.lang.String");
    }

    @NonNull
    public static String md5(String str) {
        return TextUtils.isEmpty(str) ? "" : md5ForByte(str.getBytes());
    }

    public static String md5ForByte(byte[] bArr) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            int length = bArrDigest.length;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = bArrDigest[i2];
                if (i3 < 0) {
                    i3 += 256;
                }
                if (i3 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i3));
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String sha1(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            return toHexString(bArrDigest, 0, bArrDigest.length);
        } catch (Exception e2) {
            LiteApiLogger.printStackTrace(e2);
            return "";
        }
    }

    public static String toHexString(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            return null;
        }
        if (i2 < 0 || i2 + i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = i3 * 2;
        char[] cArr = new char[i4];
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            byte b3 = bArr[i6 + i2];
            int i7 = i5 + 1;
            char[] cArr2 = HEX_CHARS;
            cArr[i5] = cArr2[(b3 & 255) >> 4];
            i5 += 2;
            cArr[i7] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr, 0, i4);
    }

    public static String toHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b3 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b3)));
        }
        return stringBuffer.toString();
    }

    public static String getFileMD5Digest(String str) {
        return getFileMD5Digest(new File(str));
    }
}
