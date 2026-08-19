package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.HelperUtils;

/* loaded from: classes5.dex */
public class cs implements cp {

    /* renamed from: a, reason: collision with root package name */
    private final String f49120a;

    /* renamed from: b, reason: collision with root package name */
    private final long f49121b;

    public cs(String str, long j2) {
        this.f49120a = str;
        this.f49121b = j2;
    }

    @Override // com.umeng.analytics.pro.cp
    public boolean a() {
        Context appContext;
        SharedPreferences sharedPreferencesA;
        try {
            appContext = UMGlobalContext.getAppContext();
        } catch (Throwable unused) {
        }
        if (appContext == null || this.f49120a == null || (sharedPreferencesA = cz.a(appContext)) == null) {
            return false;
        }
        long j2 = sharedPreferencesA.getLong("interval_" + HelperUtils.getMD5(this.f49120a), 0L);
        if (j2 == 0) {
            return true;
        }
        return (System.currentTimeMillis() - j2) / 1000 >= this.f49121b;
    }

    @Override // com.umeng.analytics.pro.cp
    public boolean b() {
        return !a();
    }

    @Override // com.umeng.analytics.pro.cp
    public long c() {
        return 0L;
    }

    public void d() {
        SharedPreferences sharedPreferencesA;
        try {
            Context appContext = UMGlobalContext.getAppContext();
            if (appContext != null && this.f49120a != null && (sharedPreferencesA = cz.a(appContext)) != null) {
                sharedPreferencesA.edit().putLong("interval_" + HelperUtils.getMD5(this.f49120a), System.currentTimeMillis()).apply();
            }
        } catch (Throwable unused) {
        }
    }
}
