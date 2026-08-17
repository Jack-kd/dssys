package com.smartdigimkt.w4;

import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public abstract class c0 {
    public static int a() {
        try {
            Log.e("fastkv", "sysconf  int");
            long jSysconf = Os.sysconf(OsConstants._SC_PAGESIZE);
            Log.e("fastkv", "sysconf success pageSize=" + jSysconf);
            if (jSysconf <= 0 || jSysconf > 2147483647L) {
                return 16384;
            }
            return (int) jSysconf;
        } catch (Throwable th) {
            Log.e("fastkv", "sysconf  ignore =" + th.fillInStackTrace());
            return 16384;
        }
    }

    public static void b(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                b(file2);
            }
        }
        file.delete();
    }

    public static byte[] c(File file) {
        if (!file.isFile()) {
            return null;
        }
        long length = file.length();
        if ((length >> 32) != 0) {
            throw new IllegalArgumentException("file too large, path:" + file.getPath());
        }
        int i2 = (int) length;
        byte[] bArr = new byte[i2];
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        int i3 = 0;
        while (i3 < i2) {
            try {
                int i4 = randomAccessFile.read(bArr, i3, i2 - i3);
                if (i4 < 0) {
                    break;
                }
                i3 += i4;
            } finally {
                a(randomAccessFile);
            }
        }
        return bArr;
    }

    public static boolean d(File file) {
        if (file.isFile()) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            return (parentFile.isDirectory() || parentFile.mkdirs()) && file.createNewFile();
        }
        return false;
    }

    public static boolean a(File file, byte[] bArr, AtomicBoolean atomicBoolean) throws Throwable {
        File file2;
        int length;
        boolean z2 = false;
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
            file2 = file3;
        }
        try {
            if (!d(file2)) {
                Exception exc = new Exception("create file failed");
                com.smartdigimkt.x4.a aVar = s.f44991a;
                if (aVar != null) {
                    aVar.b("FastKV", exc);
                }
                if (atomicBoolean != null && atomicBoolean.get()) {
                    a(file2);
                    a(file);
                }
                return false;
            }
            if (atomicBoolean != null && atomicBoolean.get()) {
                if (atomicBoolean.get()) {
                    a(file2);
                    a(file);
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
                        a(file2);
                        a(file);
                    }
                    return false;
                }
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
                if (file2.renameTo(file) || ((!file.exists() || file.delete()) && file2.renameTo(file))) {
                    z2 = true;
                }
                if (atomicBoolean != null && atomicBoolean.get()) {
                    a(file2);
                    a(file);
                }
                return z2;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Exception e3) {
            e = e3;
            file3 = file2;
            Exception exc2 = new Exception("save bytes failed", e);
            com.smartdigimkt.x4.a aVar2 = s.f44991a;
            if (aVar2 != null) {
                aVar2.b("FastKV", exc2);
            }
            if (atomicBoolean != null && atomicBoolean.get()) {
                a(file3);
                a(file);
            }
            return false;
        } catch (Throwable th4) {
            th = th4;
            if (atomicBoolean != null && atomicBoolean.get()) {
                a(file2);
                a(file);
            }
            throw th;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(File file) {
        try {
            if (file.exists()) {
                b(file);
            }
        } catch (Throwable unused) {
        }
    }
}
