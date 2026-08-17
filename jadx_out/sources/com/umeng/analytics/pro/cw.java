package com.umeng.analytics.pro;

import java.util.Set;

/* loaded from: classes5.dex */
public class cw implements cp {

    /* renamed from: a, reason: collision with root package name */
    private Set<Integer> f49125a;

    public cw(Set<Integer> set) {
        this.f49125a = set;
    }

    @Override // com.umeng.analytics.pro.cp
    public boolean a() {
        try {
            Set<Integer> set = this.f49125a;
            if (set != null && !set.isEmpty()) {
                return !this.f49125a.contains(Integer.valueOf(da.a()));
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
