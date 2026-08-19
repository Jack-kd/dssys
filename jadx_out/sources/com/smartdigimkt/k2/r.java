package com.smartdigimkt.k2;

import com.smartdigimkt.v1.e5;

/* loaded from: classes5.dex */
public final class r implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f41337a;

    /* renamed from: b, reason: collision with root package name */
    public final e5 f41338b;

    public r(int i2, e5 e5Var) {
        this.f41337a = i2;
        this.f41338b = e5Var;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        if (obj instanceof r) {
            return this.f41337a - ((r) obj).f41337a;
        }
        return 0;
    }
}
