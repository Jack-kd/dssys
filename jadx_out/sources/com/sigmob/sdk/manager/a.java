package com.sigmob.sdk.manager;

import android.app.ActivityManager;
import android.content.Context;
import com.byazt.pu.TTDownloadField;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntityActive;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37763a = "AppStatusManager";

    /* renamed from: b, reason: collision with root package name */
    private static volatile a f37764b;

    /* renamed from: c, reason: collision with root package name */
    private volatile boolean f37765c;

    /* renamed from: d, reason: collision with root package name */
    private volatile long f37766d;

    /* renamed from: e, reason: collision with root package name */
    private Timer f37767e;

    /* renamed from: f, reason: collision with root package name */
    private String f37768f;

    /* renamed from: g, reason: collision with root package name */
    private long f37769g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f37770h;

    private a() {
        a(3L);
    }

    private synchronized void e() {
        SigmobLogger.d(f37763a, "cancelTimer", new Object[0]);
        Timer timer = this.f37767e;
        if (timer == null) {
            return;
        }
        timer.cancel();
        this.f37767e = null;
    }

    public synchronized void d() {
        SigmobLogger.d(f37763a, "stopAppStatusCheck: running = " + this.f37765c, new Object[0]);
        if (this.f37765c) {
            e();
            this.f37765c = false;
        }
    }

    public static a a() {
        if (f37764b == null) {
            synchronized (a.class) {
                try {
                    if (f37764b == null) {
                        f37764b = new a();
                    }
                } finally {
                }
            }
        }
        return f37764b;
    }

    public static boolean b() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return false;
        }
        ActivityManager activityManager = (ActivityManager) contextE.getSystemService(TTDownloadField.TT_ACTIVITY);
        String packageName = contextE.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    public static boolean c() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Exception e2) {
            com.sigmob.sdk.base.utils.k.f(f37763a, "isForeground: error = " + e2.getMessage(), new Object[0]);
        }
        return runningAppProcessInfo.importance == 100;
    }

    public synchronized void a(long j2) {
        if (j2 <= 0) {
            SigmobLogger.e(f37763a, "startAppStatusCheck: interval is unavailable.", new Object[0]);
            return;
        }
        boolean z2 = j2 == this.f37766d;
        SigmobLogger.d(f37763a, "startAppStatusCheck: status = " + this.f37765c + ", interval = " + j2 + ", result = " + z2, new Object[0]);
        if (this.f37765c && z2) {
            return;
        }
        e();
        long j3 = j2 * 1000;
        Timer timer = new Timer();
        this.f37767e = timer;
        timer.schedule(new TimerTask() { // from class: com.sigmob.sdk.manager.a.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                boolean zC = a.c();
                if (a.this.f37770h == zC) {
                    return;
                }
                if (zC) {
                    a.this.f37769g = System.currentTimeMillis();
                    a.this.f37768f = UUID.randomUUID().toString();
                    PointEntityActive.ActiveTracking(PointCategory.SESSION_START, a.this.f37768f, "0", String.valueOf(a.this.f37769g));
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    PointEntityActive.ActiveTracking(PointCategory.SESSION_END, a.this.f37768f, String.valueOf((jCurrentTimeMillis - a.this.f37769g) / 1000), String.valueOf(jCurrentTimeMillis));
                }
                a.this.f37770h = zC;
            }
        }, j3, j3);
        this.f37765c = true;
        this.f37766d = j2;
        SigmobLogger.d(f37763a, "startAppStatusCheck: status = " + this.f37765c, new Object[0]);
    }
}
