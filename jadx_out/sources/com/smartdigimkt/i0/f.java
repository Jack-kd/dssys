package com.smartdigimkt.i0;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final String f40651a;

    /* renamed from: b, reason: collision with root package name */
    public final String f40652b;

    public f(String str, String str2) {
        this.f40651a = str;
        this.f40652b = str2;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder("code[ ");
        sb.append(this.f40651a);
        sb.append(" ],desc[ ");
        return com.smartdigimkt.f.i.a(sb, this.f40652b, " ]");
    }
}
