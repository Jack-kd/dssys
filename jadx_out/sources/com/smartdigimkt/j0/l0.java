package com.smartdigimkt.j0;

/* loaded from: classes5.dex */
public final class l0 {

    /* renamed from: a, reason: collision with root package name */
    public Object f40932a;

    /* renamed from: b, reason: collision with root package name */
    public int f40933b;

    /* renamed from: c, reason: collision with root package name */
    public long f40934c;

    /* renamed from: d, reason: collision with root package name */
    public long f40935d;

    /* renamed from: e, reason: collision with root package name */
    public com.smartdigimkt.x0.b f40936e;

    public final int a(long j2) {
        com.smartdigimkt.x0.b bVar = this.f40936e;
        int i2 = 0;
        while (true) {
            long[] jArr = bVar.f45056b;
            if (i2 >= jArr.length) {
                break;
            }
            long j3 = jArr[i2];
            if (j3 == Long.MIN_VALUE) {
                break;
            }
            if (j2 < j3) {
                bVar.f45057c[i2].getClass();
                break;
            }
            i2++;
        }
        if (i2 < bVar.f45056b.length) {
            return i2;
        }
        return -1;
    }

    public final int b(long j2) {
        com.smartdigimkt.x0.b bVar = this.f40936e;
        int length = bVar.f45056b.length - 1;
        while (length >= 0) {
            long j3 = bVar.f45056b[length];
            if (j3 != Long.MIN_VALUE && j3 <= j2) {
                break;
            }
            length--;
        }
        if (length < 0) {
            return -1;
        }
        bVar.f45057c[length].getClass();
        return length;
    }
}
