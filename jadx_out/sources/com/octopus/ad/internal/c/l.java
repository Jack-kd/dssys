package com.octopus.ad.internal.c;

import com.octopus.ad.model.OctLocation;

/* loaded from: classes4.dex */
public class l {

    /* renamed from: d, reason: collision with root package name */
    private static l f34609d;

    /* renamed from: b, reason: collision with root package name */
    public OctLocation f34611b;

    /* renamed from: a, reason: collision with root package name */
    public boolean f34610a = true;

    /* renamed from: c, reason: collision with root package name */
    private int f34612c = -1;

    private l() {
    }

    public static l a() {
        l lVar;
        synchronized (l.class) {
            try {
                if (f34609d == null) {
                    f34609d = new l();
                }
                lVar = f34609d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    public int b() {
        return this.f34612c;
    }
}
