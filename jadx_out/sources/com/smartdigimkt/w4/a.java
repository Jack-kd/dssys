package com.smartdigimkt.w4;

/* loaded from: classes5.dex */
public final class a implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f44941a;

    /* renamed from: b, reason: collision with root package name */
    public int f44942b;

    public a(int i2, int i3) {
        this.f44941a = i2;
        this.f44942b = i3;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f44941a - ((a) obj).f44941a;
    }
}
