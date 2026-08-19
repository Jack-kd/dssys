package com.varbto.utils.api;

import android.content.Context;
import com.varbto.internal.c;
import com.varbto.utils.anr.AnrHandler;
import com.varbto.utils.anr.AnrHandlerBuilder;
import com.varbto.utils.anr.AnrRecorder;
import com.varbto.utils.anr.LoggingAnrRecorder;
import com.varbto.utils.performance.DevicePerformanceGrader;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import k1.h;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public class MediationUtilsManager {

    /* renamed from: e, reason: collision with root package name */
    public static volatile MediationUtilsManager f50587e;

    /* renamed from: a, reason: collision with root package name */
    public final DevicePerformanceGrader f50588a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f50589b;

    /* renamed from: c, reason: collision with root package name */
    public volatile AnrHandler f50590c;

    /* renamed from: d, reason: collision with root package name */
    public volatile OnAnrListener f50591d;

    public MediationUtilsManager(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f50589b = applicationContext;
        this.f50588a = new DevicePerformanceGrader(applicationContext);
    }

    public static MediationUtilsManager getInstance(Context context) {
        if (f50587e == null) {
            synchronized (MediationUtilsManager.class) {
                try {
                    if (f50587e == null) {
                        f50587e = new MediationUtilsManager(context);
                    }
                } finally {
                }
            }
        }
        return f50587e;
    }

    public int getAnrCountWithinDays(int i2) {
        return c.b(this.f50589b).a(i2);
    }

    public List<File> getAnrFileList(String str) {
        return this.f50590c == null ? new ArrayList() : this.f50590c.getAnrFileList(str);
    }

    public AnrHandler getAnrHandler() {
        return this.f50590c;
    }

    public AnrHandlerBuilder getAnrHandlerBuilder() {
        return new AnrHandlerBuilder(this.f50589b);
    }

    public OnAnrListener getAnrListener() {
        return this.f50591d;
    }

    public JSONArray getAnrTimestampsWithinDays(int i2) {
        return c.b(this.f50589b).n(i2);
    }

    public int getDynamicScore() {
        DevicePerformanceGrader devicePerformanceGrader = this.f50588a;
        if (devicePerformanceGrader == null) {
            return -1;
        }
        return devicePerformanceGrader.getDynamicScore();
    }

    public DevicePerformanceGrader getGrader() {
        return this.f50588a;
    }

    public Map<String, Object> getStaticPerformanceDataMap() {
        DevicePerformanceGrader devicePerformanceGrader = this.f50588a;
        if (devicePerformanceGrader == null) {
            return null;
        }
        return devicePerformanceGrader.getStaticPerformanceDataMap();
    }

    public int getTotalScore() {
        DevicePerformanceGrader devicePerformanceGrader = this.f50588a;
        if (devicePerformanceGrader == null) {
            return -1;
        }
        return devicePerformanceGrader.getTotalScore();
    }

    public AnrHandler initAnrMonitoring(long j2, boolean z2, boolean z3) {
        if (this.f50590c != null) {
            if (z3) {
                this.f50590c.startMonitoring();
            }
            return this.f50590c;
        }
        synchronized (this) {
            try {
                if (this.f50590c == null) {
                    this.f50590c = new AnrHandlerBuilder(this.f50589b).setCheckIntervalMs(j2).setAnrRecorder(new LoggingAnrRecorder(this.f50589b, z2)).setStartImmediately(z3).setAnrStaceSwitch(z2).build();
                } else if (z3) {
                    this.f50590c.startMonitoring();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f50590c;
    }

    public boolean isHighConsumption() {
        DevicePerformanceGrader devicePerformanceGrader = this.f50588a;
        if (devicePerformanceGrader == null) {
            return false;
        }
        return devicePerformanceGrader.isHighConsumption();
    }

    public void markAnrFileSent(String str, String str2) {
        if (this.f50590c != null) {
            this.f50590c.markFileSent(str, str2);
        }
    }

    public void registerAnrSdk(String str) {
        if (h.f51286a) {
            c cVar = c.f50549c;
        }
        c.f50550d.add(str);
    }

    public void setAnrListener(OnAnrListener onAnrListener) {
        this.f50591d = onAnrListener;
    }

    public void setDebugMode(boolean z2) {
        h.f51286a = z2;
    }

    public void setHighConsumptionThreshold(int i2) {
        DevicePerformanceGrader devicePerformanceGrader = this.f50588a;
        if (devicePerformanceGrader != null) {
            devicePerformanceGrader.getMonitor().f50630i = i2;
        }
    }

    public void setMinMemoryThresholdMB(long j2) {
        DevicePerformanceGrader devicePerformanceGrader = this.f50588a;
        if (devicePerformanceGrader != null) {
            devicePerformanceGrader.getMonitor().f50631j = j2 * 1048576;
        }
    }

    public void startMonitoring(DevicePerformanceGrader.PerformanceMonitorCallback performanceMonitorCallback, long j2) {
        if (this.f50588a != null) {
            this.f50588a.startMonitoring(performanceMonitorCallback, j2);
        }
    }

    public void stopMonitoring() {
        DevicePerformanceGrader devicePerformanceGrader = this.f50588a;
        if (devicePerformanceGrader != null) {
            devicePerformanceGrader.stopMonitoring();
        }
    }

    public List<File> getAnrFileList(int i2) {
        if (this.f50590c == null) {
            return new ArrayList();
        }
        return this.f50590c.getAnrFileList(i2 + "");
    }

    public void markAnrFileSent(String str, int i2) {
        if (this.f50590c != null) {
            this.f50590c.markFileSent(str, i2 + "");
        }
    }

    public void startMonitoring(long j2) {
        if (this.f50588a != null) {
            this.f50588a.startMonitoring(null, j2);
        }
    }

    public void registerAnrSdk(int i2) {
        String str = i2 + "";
        if (h.f51286a) {
            c cVar = c.f50549c;
        }
        c.f50550d.add(str);
    }

    public AnrHandler initAnrMonitoring(long j2, AnrRecorder anrRecorder, boolean z2) {
        if (this.f50590c != null) {
            if (z2) {
                this.f50590c.startMonitoring();
            }
            return this.f50590c;
        }
        synchronized (this) {
            try {
                if (this.f50590c == null) {
                    this.f50590c = new AnrHandlerBuilder(this.f50589b).setCheckIntervalMs(j2).setAnrRecorder(anrRecorder).setStartImmediately(z2).build();
                } else if (z2) {
                    this.f50590c.startMonitoring();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f50590c;
    }
}
