package com.umeng.analytics.pro;

import android.content.SharedPreferences;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;

/* loaded from: classes5.dex */
public class aj implements ad {

    /* renamed from: a, reason: collision with root package name */
    private int f48663a;

    public aj(int i2) {
        this.f48663a = i2;
    }

    @Override // com.umeng.analytics.pro.ad
    public boolean a() {
        long j2 = 0;
        try {
            SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                j2 = sharedPreferencesA.getLong("cl_count", 0L);
                if (j2 >= this.f48663a) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "launch times skipped. times: " + j2 + " ; config: " + this.f48663a);
        return false;
    }

    @Override // com.umeng.analytics.pro.ad
    public boolean b() {
        return !a();
    }

    @Override // com.umeng.analytics.pro.ad
    public long c() {
        return 0L;
    }
}
