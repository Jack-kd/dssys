package com.smartdigimkt.y0;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final int f45160a;

    /* renamed from: b, reason: collision with root package name */
    public final h[] f45161b;

    /* renamed from: c, reason: collision with root package name */
    public int f45162c;

    public k(h... hVarArr) {
        this.f45161b = hVarArr;
        this.f45160a = hVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f45161b, ((k) obj).f45161b);
    }

    public final int hashCode() {
        if (this.f45162c == 0) {
            this.f45162c = Arrays.hashCode(this.f45161b) + 527;
        }
        return this.f45162c;
    }
}
