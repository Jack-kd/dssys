package com.aegis.verbanr;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.varbto.internal.c;
import com.varbto.utils.api.MediationUtilsManager;
import com.varbto.utils.api.OnAnrListener;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import k1.C1594a;
import k1.h;
import k1.s;
import k1.t;
import k1.v;
import k1.w;
import k1.x;
import k1.y;

/* loaded from: classes.dex */
public class VerbAnrHandler {

    /* renamed from: c, reason: collision with root package name */
    public static VerbAnrHandler f1292c;

    /* renamed from: d, reason: collision with root package name */
    public static volatile long f1293d;

    /* renamed from: a, reason: collision with root package name */
    public w f1294a;

    /* renamed from: b, reason: collision with root package name */
    public File f1295b;

    public static void b(long j2, VerbAnrHandler verbAnrHandler, File file) {
        verbAnrHandler.getClass();
        s.d("anrStackSuccess() >>> timestamp: %d, stackFile: %s", Long.valueOf(j2), file.getAbsolutePath());
        w wVar = verbAnrHandler.f1294a;
        C1594a c1594a = wVar != null ? wVar.f51316d : null;
        if (c1594a != null) {
            if (h.f51286a) {
                file.getAbsolutePath();
            }
            c.b(c1594a.f51269a.f50563b).d(j2, "native");
        }
    }

    public static void c(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable unused) {
        }
    }

    public static void d(File file) {
        if (!file.exists() || file.length() == 0) {
            s.c("VerbAnrHandler", "logStackFileContent() >>> stack file is empty or not exists.", new Object[0]);
            return;
        }
        try {
            s.d("========== ANR Stack Trace (file: %s, size: %d bytes) ==========", file.getName(), Long.valueOf(file.length()));
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append("\n");
                i2++;
                if (sb.length() > 3500 || i2 % 80 == 0) {
                    s.d("%s", sb.toString());
                    sb.setLength(0);
                }
            }
            if (sb.length() > 0) {
                s.d("%s", sb.toString());
            }
            bufferedReader.close();
            s.d("========== ANR Stack Trace End (total %d lines) ==========", Integer.valueOf(i2));
        } catch (Throwable th) {
            s.b("VerbAnrHandler", "logStackFileContent() >>> read stack file failed.", th, new Object[0]);
        }
    }

    public static void e(File file, long j2) {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            return;
        }
        File file2 = new File(file.getParentFile(), file.getName() + ".tmp");
        FileOutputStream fileOutputStream = null;
        try {
            String strA = t.a(j2);
            FileOutputStream fileOutputStream2 = new FileOutputStream(file2, false);
            try {
                fileOutputStream2.write(strA.getBytes("UTF-8"));
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
                fileInputStream = null;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 <= 0) {
                        break;
                    } else {
                        fileOutputStream2.write(bArr, 0, i2);
                    }
                }
                fileOutputStream2.flush();
                c(fileOutputStream2);
                c(fileInputStream);
                if (!file2.exists() || file2.length() == 0) {
                    return;
                }
                if (!file.delete()) {
                    s.b("VerbAnrHandler", "prependHeaderToFile() >>> delete original failed: %s", null, file.getAbsolutePath());
                    file2.delete();
                } else {
                    if (file2.renameTo(file)) {
                        return;
                    }
                    s.b("VerbAnrHandler", "prependHeaderToFile() >>> rename failed: %s -> %s", null, file2.getAbsolutePath(), file.getAbsolutePath());
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                try {
                    s.b("VerbAnrHandler", "prependHeaderToFile() >>> failed, keep original file.", th, new Object[0]);
                    try {
                        if (file2.exists()) {
                            file2.delete();
                        }
                    } catch (Throwable unused) {
                    }
                } finally {
                    c(fileOutputStream);
                    c(fileInputStream);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static void earlyDetectionCallback(long j2) {
        VerbAnrHandler verbAnrHandler = f1292c;
        if (verbAnrHandler == null) {
            s.b("VerbAnrHandler", "earlyDetectionCallback() >>> mInstance is null.", null, new Object[0]);
            return;
        }
        w wVar = verbAnrHandler.f1294a;
        C1594a c1594a = wVar != null ? wVar.f51316d : null;
        if (c1594a == null) {
            return;
        }
        try {
            OnAnrListener anrListener = MediationUtilsManager.getInstance(c1594a.f51269a.f50563b).getAnrListener();
            if (anrListener == null) {
                return;
            }
            try {
                anrListener.onAnrDetected(j2);
            } catch (Throwable th) {
                if (h.f51286a) {
                    Log.e("AnrHandler", "onAnrDetected listener threw", th);
                }
            }
        } catch (Throwable th2) {
            s.b("VerbAnrHandler", "earlyDetectionCallback() >>> listener threw", th2, new Object[0]);
        }
    }

    public static native int initDumpStack(String str, String str2);

    public static native int initVerb();

    public static boolean isEnableDumpStack() {
        w wVar;
        VerbAnrHandler verbAnrHandler = f1292c;
        return (verbAnrHandler == null || (wVar = verbAnrHandler.f1294a) == null || !wVar.f51315c) ? false : true;
    }

    public static native void nativeResetCaptured();

    public static native void nativeSetAnrSuspected(boolean z2);

    public static void obtainFailedCallback(int i2, String str) {
        s.b("VerbAnrHandler", "failedCallback() >>> code: %d, msg: %s", null, Integer.valueOf(i2), str);
        if (f1292c != null) {
            y yVar = new y(i2, str);
            Handler handler = v.f51311a;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                v.f51312b.execute(yVar);
            } else {
                yVar.run();
            }
        }
    }

    public static void stackCallback(long j2, boolean z2) {
        VerbAnrHandler verbAnrHandler = f1292c;
        if (verbAnrHandler == null) {
            s.b("VerbAnrHandler", "stackCallback() >>> mInstance is null.", null, new Object[0]);
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (f1293d > 0 && jUptimeMillis - f1293d < 10000) {
            s.c("VerbAnrHandler", "stackCallback() >>> duplicate within %dms window, drop. timestamp=%d", 10000L, Long.valueOf(j2));
            File file = verbAnrHandler.f1295b;
            if (file != null) {
                File file2 = new File(file, String.valueOf(j2));
                if (file2.exists() && file2.delete()) {
                    s.c("VerbAnrHandler", "deleteStackFile() >>> deleted: %s", file2.getName());
                    return;
                }
                return;
            }
            return;
        }
        File file3 = verbAnrHandler.f1295b;
        if (file3 == null) {
            s.b("VerbAnrHandler", "stackCallback() >>> traceDir is null.", null, new Object[0]);
            return;
        }
        File file4 = new File(file3, String.valueOf(j2));
        if (!file4.exists() || file4.length() == 0) {
            s.b("VerbAnrHandler", "stackCallback() >>> stack file missing or empty, skip. timestamp=%d", null, Long.valueOf(j2));
            return;
        }
        f1293d = jUptimeMillis;
        s.d("stackCallback() >>> ANR received from native, timestamp=%d", Long.valueOf(j2));
        x xVar = new x(j2, verbAnrHandler, file4);
        Handler handler = v.f51311a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            v.f51312b.execute(xVar);
        } else {
            xVar.run();
        }
    }

    public final void a(int i2, String str) {
        w wVar = this.f1294a;
        if ((wVar != null ? wVar.f51316d : null) == null || !h.f51286a) {
            return;
        }
        Log.e("AnrHandler", "VerbAnr failed: code=" + i2 + ", msg=" + str);
    }
}
