package com.anythink.core.c;

import android.text.TextUtils;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.by;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    ConcurrentHashMap<String, Integer> f2135b;

    /* renamed from: f, reason: collision with root package name */
    private final com.anythink.core.common.f f2139f;

    /* renamed from: e, reason: collision with root package name */
    private final String f2138e = f.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    ConcurrentHashMap<String, ad> f2134a = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    final List<Integer> f2136c = new CopyOnWriteArrayList();

    /* renamed from: d, reason: collision with root package name */
    ConcurrentHashMap<String, com.anythink.core.c.c.a> f2137d = new ConcurrentHashMap<>();

    public f(com.anythink.core.common.f fVar) {
        this.f2139f = fVar;
    }

    private void a(String str, by byVar, ad adVar) {
        this.f2134a.put(str + adVar.f3678k, adVar);
        if (byVar.at()) {
            com.anythink.core.common.a.a.a().a(str, adVar);
        }
    }

    public final com.anythink.core.c.c.a b(String str, by byVar) {
        return this.f2137d.get(str + byVar.G());
    }

    private boolean b(String str, by byVar, com.anythink.core.c.c.a aVar) {
        com.anythink.core.c.c.a aVar2 = this.f2137d.get(str + byVar.G());
        if (aVar2 == null || aVar2 != aVar) {
            return false;
        }
        this.f2137d.remove(str + byVar.G());
        return true;
    }

    private boolean b(String str) {
        ConcurrentHashMap<String, Integer> concurrentHashMap = this.f2135b;
        if (concurrentHashMap == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_c2sfirstStatus");
        return concurrentHashMap.get(sb.toString()) == null;
    }

    public final void a(String str, ad adVar) {
        if (adVar == null) {
            return;
        }
        ad adVar2 = this.f2134a.get(str + adVar.f3678k);
        if (adVar2 == null || !TextUtils.equals(adVar.token, adVar2.token)) {
            return;
        }
        this.f2134a.remove(str + adVar.f3678k);
    }

    public final boolean b(int i2) {
        boolean z2;
        synchronized (this.f2136c) {
            z2 = !this.f2136c.contains(Integer.valueOf(i2));
        }
        return z2;
    }

    public final ad a(String str, by byVar) {
        ad adVarA = this.f2134a.get(str + byVar.G());
        if (byVar.at() && adVarA == null && (adVarA = com.anythink.core.common.a.a.a().a(str, byVar.G())) != null) {
            this.f2134a.put(str + byVar.G(), adVarA);
        }
        if (adVarA != null && adVarA.commonAdManager == null) {
            adVarA.setCommonAdManager(this.f2139f);
        }
        return adVarA;
    }

    private void a(String str, by byVar, com.anythink.core.c.c.a aVar) {
        this.f2137d.put(str + byVar.G(), aVar);
    }

    private void a(String str) {
        if (this.f2135b == null) {
            this.f2135b = new ConcurrentHashMap<>();
        }
        this.f2135b.put(str + "_c2sfirstStatus", 1);
    }

    public final void a(int i2) {
        synchronized (this.f2136c) {
            try {
                if (!this.f2136c.contains(Integer.valueOf(i2))) {
                    this.f2136c.add(Integer.valueOf(i2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
