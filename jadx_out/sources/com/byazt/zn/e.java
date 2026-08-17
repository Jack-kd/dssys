package com.byazt.zn;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

@com.byazt.kj.hp(hp = {0, 1, 442, 45})
/* loaded from: classes3.dex */
public class e {
    public static byte[] hp(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            byte[] bArr2 = new byte[4096];
            while (true) {
                int i2 = byteArrayInputStream.read(bArr2, 0, 4096);
                if (i2 <= 0) {
                    gZIPOutputStream.close();
                    byteArrayInputStream.close();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                        return byteArray;
                    } catch (Exception unused) {
                        return byteArray;
                    }
                }
                gZIPOutputStream.write(bArr2, 0, i2);
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static String l(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            try {
                byte[] bArr2 = new byte[4096];
                while (true) {
                    int i2 = gZIPInputStream.read(bArr2);
                    if (i2 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i2);
                }
                String str = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                try {
                    byteArrayInputStream.close();
                    byteArrayOutputStream.close();
                    gZIPInputStream.close();
                } catch (Throwable unused) {
                }
                return str;
            } catch (Throwable th) {
                th = th;
                try {
                    com.byazt.ymw.u.l("gzip compress error.", th.getMessage());
                    try {
                    } catch (Throwable unused2) {
                        return null;
                    }
                } finally {
                    try {
                        byteArrayInputStream.close();
                        byteArrayOutputStream.close();
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                    } catch (Throwable unused3) {
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            gZIPInputStream = null;
        }
    }
}
