package com.umeng.analytics.pro;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public class cv implements cp {

    /* renamed from: a, reason: collision with root package name */
    private String f49123a;

    /* renamed from: b, reason: collision with root package name */
    private String f49124b;

    public cv(String str, String str2) {
        this.f49123a = str;
        this.f49124b = str2;
    }

    @Override // com.umeng.analytics.pro.cp
    public boolean a() {
        try {
            if (!TextUtils.isEmpty(this.f49123a) && !TextUtils.isEmpty(this.f49124b)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                return jCurrentTimeMillis >= da.a(this.f49123a) && jCurrentTimeMillis <= da.a(this.f49124b);
            }
            return true;
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
