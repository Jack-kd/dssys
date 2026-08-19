package com.varbto.utils.anr;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.work.impl.utils.b;
import com.byazt.pu.TTDownloadField;
import com.varbto.internal.c;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import k1.B;
import k1.C1594a;
import k1.RunnableC1593A;
import k1.h;
import k1.r;
import k1.s;
import k1.v;
import k1.w;
import k1.z;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public class AnrHandler {

    /* renamed from: a, reason: collision with root package name */
    public final AnrRecorder f50562a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f50563b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f50564c = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public final boolean f50565d;

    public AnrHandler(Context context, r rVar, AnrRecorder anrRecorder, long j2, boolean z2) {
        this.f50563b = context.getApplicationContext();
        this.f50562a = anrRecorder;
        this.f50565d = z2;
    }

    public final void a() {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        final File file = new File(this.f50563b.getFilesDir(), "anr_reports");
        Thread thread = new Thread(new Runnable() { // from class: l1.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f51951b.a(file);
            }
        }, "AnrBackfill");
        thread.setDaemon(true);
        thread.start();
    }

    public int getAnrCountWithinDays(int i2) {
        return this.f50562a.getAnrCountWithinDays(i2);
    }

    public int getAnrFileCount() {
        return this.f50562a.getAnrFileCount();
    }

    public List<File> getAnrFileList() {
        return this.f50562a.getAnrFileList();
    }

    public JSONArray getAnrTimestampsWithinDays(int i2) {
        return this.f50562a.getAnrTimestampsWithinDays(i2);
    }

    public void markFileSent(String str, String str2) {
        this.f50562a.markFileSent(str, str2);
    }

    public void startMonitoring() {
        if (this.f50564c.getAndSet(true)) {
            return;
        }
        File file = new File(this.f50563b.getFilesDir(), "anr_reports");
        if (!file.exists()) {
            file.mkdirs();
        }
        Context applicationContext = this.f50563b;
        if (applicationContext instanceof Activity) {
            applicationContext = applicationContext.getApplicationContext();
        }
        boolean z2 = this.f50565d;
        String absolutePath = file.getAbsolutePath();
        C1594a c1594a = new C1594a(this);
        w wVar = new w();
        wVar.f51313a = applicationContext;
        wVar.f51314b = absolutePath;
        wVar.f51315c = z2;
        wVar.f51316d = c1594a;
        if (B.f51265e == null) {
            synchronized (B.class) {
                try {
                    if (B.f51265e == null) {
                        B.f51265e = new B();
                    }
                } finally {
                }
            }
        }
        B b3 = B.f51265e;
        b3.getClass();
        try {
            s.c("x", "----------------------- v1.1.3 -----------------------", new Object[0]);
        } catch (Throwable th) {
            s.b("x", "startVerb() >>> Start verb anr failed. ", th, new Object[0]);
            b3.f51267b = false;
        }
        if (wVar.f51313a == null) {
            throw new IllegalArgumentException("Context cant not be null.");
        }
        v.f51312b.execute(new RunnableC1593A(wVar));
        if (!b3.f51267b) {
            b3.f51267b = true;
            z zVar = new z(b3, wVar);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                zVar.run();
            } else {
                v.f51311a.post(zVar);
            }
        }
        a();
    }

    public void stopMonitoring() {
        this.f50564c.set(false);
    }

    public List<File> getAnrFileList(String str) {
        return this.f50562a.getAnrFileList(str);
    }

    public final /* synthetic */ void a(File file) {
        List historicalProcessExitReasons;
        try {
            ActivityManager activityManager = (ActivityManager) this.f50563b.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null && (historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(this.f50563b.getPackageName(), 0, 0)) != null && !historicalProcessExitReasons.isEmpty()) {
                c cVarB = c.b(this.f50563b);
                Iterator it = historicalProcessExitReasons.iterator();
                while (it.hasNext()) {
                    ApplicationExitInfo applicationExitInfoA = b.a(it.next());
                    if (applicationExitInfoA.getReason() == 6) {
                        long timestamp = applicationExitInfoA.getTimestamp();
                        if (timestamp > 0 && !cVarB.j(timestamp)) {
                            a(applicationExitInfoA, timestamp, file);
                            cVarB.d(timestamp, "exit_info");
                            if (h.f51286a) {
                                applicationExitInfoA.getDescription();
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("AnrHandler", "Backfill ANR failed: " + th.getMessage(), th);
            }
        }
    }

    public static void a(ApplicationExitInfo applicationExitInfo, long j2, File file) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream == null) {
                return;
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, String.valueOf(j2));
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2, false);
                try {
                    StringBuilder sb = new StringBuilder("===== VerbAnr Report =====\ntriggerSource=exit_info\ntimestamp=");
                    sb.append(j2);
                    sb.append("\nexitReason=ANR\ndescription=");
                    sb.append(applicationExitInfo.getDescription() != null ? applicationExitInfo.getDescription() : "");
                    sb.append("\nimportance=");
                    sb.append(applicationExitInfo.getImportance());
                    sb.append("\n===== End Header =====\n");
                    fileOutputStream.write(sb.toString().getBytes("UTF-8"));
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i2 = traceInputStream.read(bArr);
                        if (i2 <= 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i2);
                        }
                    }
                    fileOutputStream.flush();
                    if (h.f51286a) {
                        file2.getAbsolutePath();
                        file2.length();
                    }
                    fileOutputStream.close();
                    traceInputStream.close();
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            if (h.f51286a) {
                Log.e("AnrHandler", "Save ExitInfo trace failed: " + th.getMessage(), th);
            }
        }
    }
}
