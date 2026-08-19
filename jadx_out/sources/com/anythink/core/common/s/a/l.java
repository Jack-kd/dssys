package com.anythink.core.common.s.a;

import android.system.Os;
import android.system.OsConstants;
import com.umeng.analytics.pro.ek;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
final class l {

    /* renamed from: a, reason: collision with root package name */
    static final int f7624a = 32;

    /* renamed from: b, reason: collision with root package name */
    private static final int f7625b = 16384;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        static final SecureRandom f7626a = new SecureRandom();

        /* renamed from: b, reason: collision with root package name */
        static final char[] f7627b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

        private a() {
        }
    }

    public static String a() {
        byte[] bArr = new byte[16];
        a.f7626a.nextBytes(bArr);
        char[] cArr = new char[32];
        for (int i2 = 0; i2 < 16; i2++) {
            byte b3 = bArr[i2];
            int i3 = i2 << 1;
            char[] cArr2 = a.f7627b;
            cArr[i3] = cArr2[(b3 >> 4) & 15];
            cArr[i3 + 1] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }

    public static int b() {
        try {
            long jSysconf = Os.sysconf(OsConstants._SC_PAGESIZE);
            if (jSysconf <= 0 || jSysconf > 2147483647L) {
                return 16384;
            }
            return (int) jSysconf;
        } catch (Throwable unused) {
            return 16384;
        }
    }

    public static void c(File file) {
        try {
            if (file.exists()) {
                d(file);
            }
        } catch (Throwable unused) {
        }
    }

    private static void d(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                d(file2);
            }
        }
        file.delete();
    }

    public static byte[] b(File file) {
        if (!file.isFile()) {
            return null;
        }
        long length = file.length();
        if ((length >> 32) != 0) {
            throw new IllegalArgumentException("file too large, path:" + file.getPath());
        }
        int i2 = (int) length;
        byte[] bArr = new byte[i2];
        a(file, bArr, i2);
        return bArr;
    }

    private static void b(File file, File file2) throws Throwable {
        if (!file.exists() || file2.exists() || file.renameTo(file2)) {
            return;
        }
        a(file2, b(file), (AtomicBoolean) null);
        c(file);
    }

    public static boolean a(File file) {
        if (file.isFile()) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            return (parentFile.isDirectory() || parentFile.mkdirs()) && file.createNewFile();
        }
        return false;
    }

    public static void a(File file, byte[] bArr, int i2) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        int i3 = 0;
        while (i3 < i2) {
            try {
                int i4 = randomAccessFile.read(bArr, i3, i2 - i3);
                if (i4 < 0) {
                    break;
                } else {
                    i3 += i4;
                }
            } finally {
                a(randomAccessFile);
            }
        }
    }

    public static boolean a(File file, byte[] bArr, AtomicBoolean atomicBoolean) throws Throwable {
        int length;
        File file2;
        File file3 = null;
        try {
            try {
                length = bArr.length;
                file2 = new File(file.getParent(), file.getName() + ".tmp");
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!a(file2)) {
                a(new Exception("create file failed"));
                if (atomicBoolean != null && atomicBoolean.get()) {
                    c(file2);
                    c(file);
                }
                return false;
            }
            if (atomicBoolean != null && atomicBoolean.get()) {
                if (atomicBoolean.get()) {
                    c(file2);
                    c(file);
                }
                return false;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
            try {
                randomAccessFile.setLength(length);
                randomAccessFile.write(bArr, 0, length);
                if (atomicBoolean != null && atomicBoolean.get()) {
                    randomAccessFile.close();
                    if (atomicBoolean.get()) {
                        c(file2);
                        c(file);
                    }
                    return false;
                }
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
                boolean zA = a(file2, file);
                if (atomicBoolean != null && atomicBoolean.get()) {
                    c(file2);
                    c(file);
                }
                return zA;
            } finally {
            }
        } catch (Exception e3) {
            e = e3;
            file3 = file2;
            a(new Exception("save bytes failed", e));
            if (atomicBoolean != null && atomicBoolean.get()) {
                c(file3);
                c(file);
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            file3 = file2;
            if (atomicBoolean != null && atomicBoolean.get()) {
                c(file3);
                c(file);
            }
            throw th;
        }
    }

    public static boolean a(File file, File file2) {
        if (file.renameTo(file2)) {
            return true;
        }
        return (!file2.exists() || file2.delete()) && file.renameTo(file2);
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(File file, String str) throws Throwable {
        File[] fileArrListFiles;
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            try {
                File file3 = new File(str, file2.getName());
                if (file2.exists() && !file3.exists() && !file2.renameTo(file3)) {
                    a(file3, b(file2), (AtomicBoolean) null);
                    c(file2);
                }
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    private static int a(int[] iArr, int i2) {
        int length = iArr.length - 1;
        int i3 = 0;
        while (i3 <= length) {
            int i4 = (i3 + length) >>> 1;
            int i5 = iArr[i4];
            if (i5 < i2) {
                i3 = i4 + 1;
            } else {
                if (i5 <= i2) {
                    return i4;
                }
                length = i4 - 1;
            }
        }
        return length;
    }

    private static void a(Exception exc) {
        com.anythink.core.common.s.a.a.c cVar = h.f7597a;
        if (cVar != null) {
            cVar.b("FastKV", exc);
        }
    }
}
