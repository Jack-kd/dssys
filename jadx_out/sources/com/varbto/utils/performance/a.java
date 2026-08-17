package com.varbto.utils.performance;

import android.app.ActivityManager;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import com.byazt.pu.TTDownloadField;
import com.varbto.utils.performance.DevicePerformanceGrader;
import k1.h;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DevicePerformanceGrader.PerformanceMonitorCallback f50619b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f50620c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f50621d;

    public a(b bVar, DevicePerformanceGrader.PerformanceMonitorCallback performanceMonitorCallback, long j2) {
        this.f50621d = bVar;
        this.f50619b = performanceMonitorCallback;
        this.f50620c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        if (this.f50621d.f50623b) {
            try {
                float fC = DevicePerformanceGrader.c();
                float f2 = 0.0f;
                if (fC < 0.0f || fC > 100.0f) {
                    fC = 0.0f;
                }
                DevicePerformanceGrader devicePerformanceGrader = this.f50621d.f50632k;
                float fB = DevicePerformanceGrader.b();
                DevicePerformanceGrader devicePerformanceGrader2 = this.f50621d.f50632k;
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ActivityManager activityManager = (ActivityManager) devicePerformanceGrader2.f50614a.getSystemService(TTDownloadField.TT_ACTIVITY);
                if (activityManager != null) {
                    activityManager.getMemoryInfo(memoryInfo);
                }
                long j2 = memoryInfo.totalMem;
                if (j2 > 0) {
                    f2 = (j2 - memoryInfo.availMem) / j2;
                }
                this.f50621d.f50626e = fC;
                this.f50621d.f50627f = f2;
                this.f50621d.f50625d = System.currentTimeMillis();
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 29) {
                    this.f50621d.f50628g = ((PowerManager) this.f50621d.f50632k.f50614a.getSystemService("power")).getCurrentThermalStatus();
                }
                int iB = b.b(this.f50621d.f50626e);
                int iC = b.c(this.f50621d.f50627f);
                switch (this.f50621d.f50628g) {
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
                b bVar = this.f50621d;
                int i4 = bVar.f50630i;
                boolean z2 = iB <= i4 || iC <= i4 || i2 <= i4 || bVar.d();
                if (z2 && !this.f50621d.f50629h) {
                    this.f50621d.f50624c = System.currentTimeMillis() + 5000;
                } else if (!z2) {
                    this.f50621d.f50624c = 0L;
                }
                this.f50621d.f50629h = z2;
                DevicePerformanceGrader.PerformanceMonitorCallback performanceMonitorCallback = this.f50619b;
                if (performanceMonitorCallback != null) {
                    performanceMonitorCallback.onCpuUpdate(fC, fB);
                    this.f50619b.onMemoryUpdate(f2);
                    if (i3 >= 29) {
                        this.f50619b.onThermalUpdate(this.f50621d.f50628g);
                    }
                }
                if (h.f51286a) {
                    float f3 = this.f50621d.f50626e;
                    float f4 = this.f50621d.f50627f;
                    int i5 = this.f50621d.f50628g;
                    this.f50621d.a();
                }
                b bVar2 = this.f50621d;
                if (!bVar2.f50623b) {
                }
            } catch (Throwable th) {
                try {
                    if (h.f51286a) {
                        Log.e("PerformanceMonitor", "sample error: " + th.getMessage());
                    }
                } finally {
                    b bVar3 = this.f50621d;
                    if (bVar3.f50623b) {
                        bVar3.f50622a.postDelayed(this, this.f50620c);
                    }
                }
            }
        }
    }
}
