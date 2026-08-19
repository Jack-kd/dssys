package com.anythink.core.common.h;

import com.anythink.core.common.h.cc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    protected List<c> f4282a;

    /* renamed from: b, reason: collision with root package name */
    protected c f4283b;

    /* renamed from: c, reason: collision with root package name */
    protected boolean f4284c;

    public final c a() {
        List<c> list = this.f4282a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f4282a.get(0);
    }

    public final c b() {
        List<c> list = this.f4282a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f4282a.get(r0.size() - 1);
    }

    public final boolean c() {
        return this.f4284c;
    }

    public final int d() {
        List<c> list = this.f4282a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final c e() {
        return this.f4283b;
    }

    public final List<cc.a> f() {
        List<c> list = this.f4282a;
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<c> it = this.f4282a.iterator();
        while (it.hasNext()) {
            by unitGroupInfo = it.next().e().getUnitGroupInfo();
            arrayList.add(new cc.a(unitGroupInfo, unitGroupInfo.Y()));
        }
        return arrayList;
    }
}
