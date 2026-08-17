package com.smartdigimkt.y3;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static volatile b f45193c;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f45194a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f45195b = new ConcurrentHashMap();

    public static b a() {
        if (f45193c == null) {
            synchronized (b.class) {
                try {
                    if (f45193c == null) {
                        f45193c = new b();
                    }
                } finally {
                }
            }
        }
        return f45193c;
    }

    public final com.smartdigimkt.m3.j a(String str) {
        com.smartdigimkt.m3.j jVar = (com.smartdigimkt.m3.j) this.f45195b.get(str);
        if (jVar != null) {
            return jVar;
        }
        synchronized (this.f45195b) {
            if (jVar == null) {
                try {
                    jVar = new com.smartdigimkt.m3.j();
                    this.f45195b.put(str, jVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return jVar;
    }
}
