package com.varbto.utils.api;

import android.content.Context;
import com.varbto.internal.i;
import com.varbto.utils.crash.CrashHandler;
import com.varbto.utils.crash.CrashHandlerBuilder;
import com.varbto.utils.crash.CrashRecorder;
import com.varbto.utils.crash.LoggingCrashRecorder;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import k1.h;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public class MediationCrashManager {

    /* renamed from: j, reason: collision with root package name */
    public static MediationCrashManager f50577j;

    /* renamed from: a, reason: collision with root package name */
    public final Context f50578a;

    /* renamed from: b, reason: collision with root package name */
    public CrashHandler f50579b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f50580c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f50581d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public int f50582e = 7;

    /* renamed from: f, reason: collision with root package name */
    public int f50583f = 7;

    /* renamed from: g, reason: collision with root package name */
    public int f50584g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f50585h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f50586i = 0;

    public MediationCrashManager(Context context) {
        this.f50578a = context.getApplicationContext();
    }

    public static MediationCrashManager getInstance(Context context) {
        if (f50577j == null) {
            synchronized (MediationCrashManager.class) {
                try {
                    if (f50577j == null) {
                        f50577j = new MediationCrashManager(context);
                    }
                } finally {
                }
            }
        }
        return f50577j;
    }

    public void applyFuseConfig(int i2, int i3, int i4, int i5, int i6) {
        this.f50584g = i2;
        this.f50585h = i4;
        this.f50586i = i6;
        initNetworkCrashCounters(i3);
        initMediationCrashCounters(i5);
    }

    public int getCrashCountWithinDays(int i2) {
        if (this.f50579b == null) {
            return 0;
        }
        return this.f50579b.getCrashCountWithinDays(i2);
    }

    public List<File> getCrashFileList(String str) {
        return this.f50579b == null ? new ArrayList() : this.f50579b.getCrashFileList(str);
    }

    public CrashHandler getCrashHandler() {
        return this.f50579b;
    }

    public CrashHandlerBuilder getCrashHandlerBuilder() {
        return new CrashHandlerBuilder(this.f50578a);
    }

    public JSONArray getCrashTimestampsWithinDays(int i2) {
        return this.f50579b == null ? new JSONArray() : this.f50579b.getCrashTimestampsWithinDays(i2);
    }

    public int getFuseLevel() {
        return this.f50584g;
    }

    public CrashHandler initCrashMonitoring(boolean z2, boolean z3) {
        CrashHandler crashHandler = this.f50579b;
        if (crashHandler != null) {
            if (z3) {
                crashHandler.install();
            }
            return this.f50579b;
        }
        synchronized (this) {
            try {
                CrashHandler crashHandler2 = this.f50579b;
                if (crashHandler2 == null) {
                    this.f50579b = new CrashHandlerBuilder(this.f50578a).setCrashRecorder(new LoggingCrashRecorder(this.f50578a, z2)).setStartImmediately(z3).setSaveStackSwitch(z2).build();
                } else if (z3) {
                    crashHandler2.install();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f50579b;
    }

    public void initMediationCrashCounters(int i2) {
        this.f50583f = i2;
        HashMap mapN = i.c(this.f50578a).n(i2);
        this.f50581d.clear();
        this.f50581d.putAll(mapN);
    }

    public void initNetworkCrashCounters(int i2) {
        this.f50582e = i2;
        HashMap mapT = i.c(this.f50578a).t(i2);
        this.f50580c.clear();
        this.f50580c.putAll(mapT);
    }

    public boolean isNetworkIdReachedCrashLimit(String str, int i2) {
        Integer num = (Integer) this.f50580c.get(str);
        return (num != null ? num.intValue() : 0) >= i2;
    }

    public void markCrashFileSent(String str, String str2) {
        if (this.f50579b != null) {
            this.f50579b.markFileSent(str, str2);
        }
    }

    public void recordCrashServerStatus(String str, int i2, String str2) {
        try {
            i.c(this.f50578a).p(i2, str2, Long.parseLong(str));
            if (i2 == 1 && str2 != null) {
                recordNetworkCrashAttribution(str, str2);
            } else {
                if (i2 != 2 || str2 == null) {
                    return;
                }
                recordMediationCrashAttribution(str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public void recordMediationCrashAttribution(String str, String str2) {
        try {
            long j2 = Long.parseLong(str);
            i.c(this.f50578a).k(j2, str2);
            if (j2 >= System.currentTimeMillis() - (this.f50583f * 86400000)) {
                Integer num = (Integer) this.f50581d.get(str2);
                this.f50581d.put(str2, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
            }
        } catch (Throwable unused) {
        }
    }

    public void recordNetworkCrashAttribution(String str, String str2) {
        try {
            long j2 = Long.parseLong(str);
            i.c(this.f50578a).q(j2, str2);
            if (j2 >= System.currentTimeMillis() - (this.f50582e * 86400000)) {
                Integer num = (Integer) this.f50580c.get(str2);
                this.f50580c.put(str2, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
            }
        } catch (Throwable unused) {
        }
    }

    public void registerCrashSdk(String str) {
        if (h.f51286a) {
            i iVar = i.f50558c;
        }
        i.f50559d.add(str);
    }

    public boolean shouldBlockMediationId(String str) {
        if (this.f50584g < 2) {
            return false;
        }
        Integer num = (Integer) this.f50581d.get(str);
        return (num != null ? num.intValue() : 0) >= this.f50586i;
    }

    public boolean shouldBlockNetworkId(String str) {
        if (this.f50584g < 1) {
            return false;
        }
        return isNetworkIdReachedCrashLimit(str, this.f50585h);
    }

    public int getCrashCountWithinDays(String str, int i2) {
        if (this.f50579b != null && UtilConst.isValidCrashCategory(str)) {
            return this.f50579b.getCrashCountWithinDays(str, i2);
        }
        return 0;
    }

    public List<File> getCrashFileList(int i2) {
        if (this.f50579b == null) {
            return new ArrayList();
        }
        return this.f50579b.getCrashFileList(i2 + "");
    }

    public JSONArray getCrashTimestampsWithinDays(String str, int i2) {
        if (this.f50579b == null) {
            return new JSONArray();
        }
        if (!UtilConst.isValidCrashCategory(str)) {
            return new JSONArray();
        }
        return this.f50579b.getCrashTimestampsWithinDays(str, i2);
    }

    public void markCrashFileSent(String str, int i2) {
        if (this.f50579b != null) {
            this.f50579b.markFileSent(str, i2 + "");
        }
    }

    public void registerCrashSdk(int i2) {
        String str = i2 + "";
        if (h.f51286a) {
            i iVar = i.f50558c;
        }
        i.f50559d.add(str);
    }

    public List<File> getCrashFileList(String str, String str2) {
        if (this.f50579b == null) {
            return new ArrayList();
        }
        if (!UtilConst.isValidCrashCategory(str2)) {
            return new ArrayList();
        }
        return this.f50579b.getCrashFileList(str, str2);
    }

    public CrashHandler initCrashMonitoring(CrashRecorder crashRecorder, boolean z2) {
        CrashHandler crashHandler = this.f50579b;
        if (crashHandler != null) {
            if (z2) {
                crashHandler.install();
            }
            return this.f50579b;
        }
        synchronized (this) {
            try {
                CrashHandler crashHandler2 = this.f50579b;
                if (crashHandler2 == null) {
                    this.f50579b = new CrashHandlerBuilder(this.f50578a).setCrashRecorder(crashRecorder).setStartImmediately(z2).build();
                } else if (z2) {
                    crashHandler2.install();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f50579b;
    }
}
