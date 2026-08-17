package com.byazt.na;

import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 2, 19})
/* loaded from: classes3.dex */
public final class jl<V> {
    public final V hp;

    /* renamed from: l, reason: collision with root package name */
    public final Throwable f23449l;

    public jl(V v2) {
        this.hp = v2;
        this.f23449l = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jl)) {
            return false;
        }
        jl jlVar = (jl) obj;
        if (hp() != null && hp().equals(jlVar.hp())) {
            return true;
        }
        if (l() == null || jlVar.l() == null) {
            return false;
        }
        return l().toString().equals(l().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{hp(), l()});
    }

    public V hp() {
        return this.hp;
    }

    public Throwable l() {
        return this.f23449l;
    }

    public jl(Throwable th) {
        this.f23449l = th;
        this.hp = null;
    }
}
