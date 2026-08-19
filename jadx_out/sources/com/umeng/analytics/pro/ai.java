package com.umeng.analytics.pro;

import android.content.SharedPreferences;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;

/* loaded from: classes5.dex */
public class ai implements ad {

    /* renamed from: a, reason: collision with root package name */
    private String f48661a;

    /* renamed from: b, reason: collision with root package name */
    private long f48662b;

    public ai(String str, long j2) {
        this.f48661a = str;
        this.f48662b = j2;
    }

    @Override // com.umeng.analytics.pro.ad
    public boolean a() {
        try {
            String str = "interval_" + this.f48661a;
            SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA == null) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - sharedPreferencesA.getLong(str, 0L);
            if (jCurrentTimeMillis > this.f48662b * 1000) {
                return true;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "internal period skipped. elapse: " + jCurrentTimeMillis + "; config: " + (this.f48662b * 1000));
            return false;
        } catch (Throwable unused) {
            return false;
        }
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
