package com.kwad.sdk.api.loader;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* loaded from: classes4.dex */
final class y {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static String getFileMD5(File file) throws Throwable {
        Throwable th;
        ?? r7;
        Exception e2;
        DigestInputStream digestInputStream;
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                digestInputStream = new DigestInputStream(new FileInputStream(file), messageDigest);
                try {
                    byte[] bArr = new byte[1024];
                    for (int i2 = digestInputStream.read(bArr); i2 != -1; i2 = digestInputStream.read(bArr)) {
                    }
                    byte[] bArrDigest = messageDigest.digest();
                    StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
                    for (byte b3 : bArrDigest) {
                        int i3 = b3 & 255;
                        if (i3 < 16) {
                            sb.append("0");
                        }
                        sb.append(Integer.toHexString(i3));
                    }
                    String string = sb.toString();
                    b(digestInputStream);
                    return string;
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    b(digestInputStream);
                    return "";
                }
            } catch (Throwable th2) {
                th = th2;
                r7 = file;
                b(r7);
                throw th;
            }
        } catch (Exception e4) {
            e2 = e4;
            digestInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            r7 = 0;
            b(r7);
            throw th;
        }
    }
}
