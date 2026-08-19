package com.smartdigimkt.x0;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public static final b f45054d = new b(new long[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int f45055a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f45056b;

    /* renamed from: c, reason: collision with root package name */
    public final a[] f45057c;

    public b(long... jArr) {
        int length = jArr.length;
        this.f45055a = length;
        this.f45056b = Arrays.copyOf(jArr, length);
        this.f45057c = new a[length];
        for (int i2 = 0; i2 < length; i2++) {
            this.f45057c[i2] = new a();
        }
    }
}
