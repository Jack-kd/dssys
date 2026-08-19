package com.varbto.utils.performance;

import android.app.ActivityManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import com.byazt.pu.TTDownloadField;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f50622a = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public boolean f50623b = false;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f50624c = 0;

    /* renamed from: d, reason: collision with root package name */
    public volatile long f50625d = 0;

    /* renamed from: e, reason: collision with root package name */
    public volatile float f50626e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public volatile float f50627f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public volatile int f50628g = 0;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f50629h = false;

    /* renamed from: i, reason: collision with root package name */
    public int f50630i = 30;

    /* renamed from: j, reason: collision with root package name */
    public long f50631j = 0;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ DevicePerformanceGrader f50632k;

    public b(DevicePerformanceGrader devicePerformanceGrader) {
        this.f50632k = devicePerformanceGrader;
    }

    public static int b(float f2) {
        if (f2 >= 95.0f) {
            return 5;
        }
        if (f2 >= 90.0f) {
            return 15;
        }
        if (f2 >= 80.0f) {
            return 30;
        }
        if (f2 >= 60.0f) {
            return 50;
        }
        return f2 >= 30.0f ? 75 : 100;
    }

    public static int c(float f2) {
        if (f2 >= 0.95f) {
            return 5;
        }
        if (f2 >= 0.9f) {
            return 15;
        }
        if (f2 >= 0.85f) {
            return 30;
        }
        if (f2 >= 0.7f) {
            return 50;
        }
        return f2 >= 0.5f ? 75 : 100;
    }

    public final int a() {
        int i2;
        if (!this.f50623b && System.currentTimeMillis() - this.f50625d > 1000) {
            e();
        }
        if (d()) {
            return this.f50630i;
        }
        int iB = b(this.f50626e);
        int iC = c(this.f50627f);
        switch (this.f50628g) {
            case 1:
                i2 = 80;
                break;
            case 2:
                i2 = 50;
                break;
            case 3:
                i2 = 25;
                break;
            case 4:
                i2 = 10;
                break;
            case 5:
                i2 = 5;
                break;
            case 6:
                i2 = 0;
                break;
            default:
                i2 = 100;
                break;
        }
        int i3 = this.f50630i;
        if (iB <= i3 || iC <= i3 || i2 <= i3) {
            return this.f50630i;
        }
        return (int) ((i2 * 0.25f) + (iC * 0.35f) + (iB * 0.4f));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d() {
        /*
            r6 = this;
            long r0 = r6.f50631j
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 0
            if (r0 > 0) goto La
            return r1
        La:
            com.varbto.utils.performance.DevicePerformanceGrader r0 = r6.f50632k
            com.varbto.utils.performance.DevicePerformanceGrader$PerformanceData r4 = r0.f50616c
            if (r4 == 0) goto L17
            long r4 = r4.totalMemory
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 <= 0) goto L17
            goto L2d
        L17:
            android.app.ActivityManager$MemoryInfo r2 = new android.app.ActivityManager$MemoryInfo
            r2.<init>()
            android.content.Context r0 = r0.f50614a
            java.lang.String r3 = "activity"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            if (r0 == 0) goto L2b
            r0.getMemoryInfo(r2)
        L2b:
            long r4 = r2.totalMem
        L2d:
            long r2 = r6.f50631j
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 > 0) goto L35
            r0 = 1
            return r0
        L35:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.varbto.utils.performance.b.d():boolean");
    }

    public final void e() {
        float fC = DevicePerformanceGrader.c();
        if (fC < 0.0f || fC > 100.0f) {
            fC = 0.0f;
        }
        DevicePerformanceGrader devicePerformanceGrader = this.f50632k;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ActivityManager activityManager = (ActivityManager) devicePerformanceGrader.f50614a.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null) {
            activityManager.getMemoryInfo(memoryInfo);
        }
        long j2 = memoryInfo.totalMem;
        float f2 = j2 > 0 ? (j2 - memoryInfo.availMem) / j2 : 0.0f;
        this.f50626e = fC;
        this.f50627f = f2;
        if (Build.VERSION.SDK_INT >= 29) {
            this.f50628g = ((PowerManager) this.f50632k.f50614a.getSystemService("power")).getCurrentThermalStatus();
        }
        this.f50625d = System.currentTimeMillis();
    }
}
