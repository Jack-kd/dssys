package com.smartdigimkt.l0;

import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class e0 implements e {

    /* renamed from: b, reason: collision with root package name */
    public int f41475b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f41476c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f41477d = 0;

    /* renamed from: e, reason: collision with root package name */
    public ByteBuffer f41478e;

    /* renamed from: f, reason: collision with root package name */
    public ByteBuffer f41479f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f41480g;

    public e0() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41478e = byteBuffer;
        this.f41479f = byteBuffer;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean a(int i2, int i3, int i4) throws d {
        if (i4 != 3 && i4 != 2 && i4 != Integer.MIN_VALUE && i4 != 1073741824) {
            throw new d(i2, i3, i4);
        }
        if (this.f41475b == i2 && this.f41476c == i3 && this.f41477d == i4) {
            return false;
        }
        this.f41475b = i2;
        this.f41476c = i3;
        this.f41477d = i4;
        return true;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean b() {
        int i2 = this.f41477d;
        return (i2 == 0 || i2 == 2) ? false : true;
    }

    @Override // com.smartdigimkt.l0.e
    public final int c() {
        return this.f41475b;
    }

    @Override // com.smartdigimkt.l0.e
    public final int d() {
        return 2;
    }

    @Override // com.smartdigimkt.l0.e
    public final void e() {
        this.f41480g = true;
    }

    @Override // com.smartdigimkt.l0.e
    public final int f() {
        return this.f41476c;
    }

    @Override // com.smartdigimkt.l0.e
    public final void flush() {
        this.f41479f = e.f41474a;
        this.f41480g = false;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean g() {
        return this.f41480g && this.f41479f == e.f41474a;
    }

    @Override // com.smartdigimkt.l0.e
    public final void h() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41479f = byteBuffer;
        this.f41480g = false;
        this.f41475b = -1;
        this.f41476c = -1;
        this.f41477d = 0;
        this.f41478e = byteBuffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0083 A[ADDED_TO_REGION, LOOP:2: B:25:0x0083->B:26:0x0085, LOOP_START, PHI: r0
      0x0083: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:16:0x0043, B:26:0x0085] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.smartdigimkt.l0.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.nio.ByteBuffer r8) {
        /*
            r7 = this;
            int r0 = r8.position()
            int r1 = r8.limit()
            int r2 = r1 - r0
            int r3 = r7.f41477d
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = 3
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r3 == r6) goto L23
            if (r3 == r5) goto L20
            if (r3 != r4) goto L1a
            int r2 = r2 / 2
            goto L25
        L1a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L20:
            int r2 = r2 * 2
            goto L25
        L23:
            int r2 = r2 / r5
            goto L20
        L25:
            java.nio.ByteBuffer r3 = r7.f41478e
            int r3 = r3.capacity()
            if (r3 >= r2) goto L3c
            java.nio.ByteBuffer r2 = java.nio.ByteBuffer.allocateDirect(r2)
            java.nio.ByteOrder r3 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteBuffer r2 = r2.order(r3)
            r7.f41478e = r2
            goto L41
        L3c:
            java.nio.ByteBuffer r2 = r7.f41478e
            r2.clear()
        L41:
            int r2 = r7.f41477d
            if (r2 == r6) goto L83
            if (r2 == r5) goto L6a
            if (r2 != r4) goto L64
        L49:
            if (r0 >= r1) goto L9e
            java.nio.ByteBuffer r2 = r7.f41478e
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f41478e
            int r3 = r0 + 3
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 4
            goto L49
        L64:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L6a:
            if (r0 >= r1) goto L9e
            java.nio.ByteBuffer r2 = r7.f41478e
            r3 = 0
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f41478e
            byte r3 = r8.get(r0)
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 + (-128)
            byte r3 = (byte) r3
            r2.put(r3)
            int r0 = r0 + 1
            goto L6a
        L83:
            if (r0 >= r1) goto L9e
            java.nio.ByteBuffer r2 = r7.f41478e
            int r3 = r0 + 1
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f41478e
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 3
            goto L83
        L9e:
            int r0 = r8.limit()
            r8.position(r0)
            java.nio.ByteBuffer r8 = r7.f41478e
            r8.flip()
            java.nio.ByteBuffer r8 = r7.f41478e
            r7.f41479f = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.e0.a(java.nio.ByteBuffer):void");
    }

    @Override // com.smartdigimkt.l0.e
    public final ByteBuffer a() {
        ByteBuffer byteBuffer = this.f41479f;
        this.f41479f = e.f41474a;
        return byteBuffer;
    }
}
