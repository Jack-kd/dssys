package com.byazt.xm;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

@com.byazt.kj.hp(hp = {0, 1, 168, 30})
/* loaded from: classes3.dex */
public class jx {
    public static long hp(String str, String str2) {
        File fileJx = jx(str, str2);
        if (fileJx.exists()) {
            return fileJx.length();
        }
        File fileL = l(str, str2);
        if (fileL.exists()) {
            return fileL.length();
        }
        return 0L;
    }

    public static File jx(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }

    public static File l(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2 + ".temp");
    }

    public static boolean hp(RandomAccessFile randomAccessFile, byte[] bArr, long j2, int i2) throws IOException {
        try {
            randomAccessFile.seek(j2);
            randomAccessFile.write(bArr, 0, i2);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
