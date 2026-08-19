package com.umeng.analytics.pro;

import java.util.Set;

/* loaded from: classes5.dex */
public class cr implements cp {

    /* renamed from: a, reason: collision with root package name */
    private Set<Integer> f49119a;

    public cr(Set<Integer> set) {
        this.f49119a = set;
    }

    @Override // com.umeng.analytics.pro.cp
    public boolean a() {
        Set<Integer> set = this.f49119a;
        if (set == null || set.isEmpty()) {
            return true;
        }
        return !this.f49119a.contains(Integer.valueOf(da.b()));
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
