package com.byazt.os;

import com.byazt.kz.jx;
import com.byazt.qkc.l;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1685, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp(String str, String str2) {
        return str + File.separator + str2;
    }

    public static byte[] hp(jx jxVar) throws IOException {
        FileInputStream fileInputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        File cacheDir = jxVar.k().getCacheDir();
        String url = jxVar.getUrl();
        if (cacheDir != null && url != null) {
            File file = new File(cacheDir, url);
            if (file.exists() && file.isFile()) {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                    } catch (Throwable unused) {
                        byteArrayOutputStream = null;
                    }
                } catch (Throwable unused2) {
                    fileInputStream = null;
                    byteArrayOutputStream = null;
                }
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 == -1) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            l.hp(fileInputStream);
                            l.hp(byteArrayOutputStream);
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr, 0, i2);
                    }
                } catch (Throwable unused3) {
                    l.hp(fileInputStream);
                    l.hp(byteArrayOutputStream);
                    return null;
                }
            }
        }
        return null;
    }
}
