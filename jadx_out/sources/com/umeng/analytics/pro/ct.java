package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.service.UMGlobalContext;

/* loaded from: classes5.dex */
public class ct implements cp {

    /* renamed from: a, reason: collision with root package name */
    private int f49122a;

    public ct(int i2) {
        this.f49122a = i2;
    }

    @Override // com.umeng.analytics.pro.cp
    public boolean a() {
        SharedPreferences sharedPreferencesA;
        try {
            Context appContext = UMGlobalContext.getAppContext();
            if (appContext == null || (sharedPreferencesA = cz.a(appContext)) == null) {
                return false;
            }
            return sharedPreferencesA.getInt("cl_count", 0) >= this.f49122a;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.umeng.analytics.pro.cp
    public boolean b() {
        return !a();
    }

    @Override // com.umeng.analytics.pro.cp
    public long c() {
        return 0L;
    }
}
