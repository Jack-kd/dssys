package com.smartdigimkt.l0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes5.dex */
public final class i0 implements e {

    /* renamed from: b, reason: collision with root package name */
    public boolean f41542b;

    /* renamed from: c, reason: collision with root package name */
    public int f41543c;

    /* renamed from: d, reason: collision with root package name */
    public int f41544d;

    /* renamed from: e, reason: collision with root package name */
    public int f41545e;

    /* renamed from: f, reason: collision with root package name */
    public int f41546f;

    /* renamed from: g, reason: collision with root package name */
    public int f41547g;

    /* renamed from: h, reason: collision with root package name */
    public ByteBuffer f41548h;

    /* renamed from: i, reason: collision with root package name */
    public ByteBuffer f41549i;

    /* renamed from: j, reason: collision with root package name */
    public byte[] f41550j;

    /* renamed from: k, reason: collision with root package name */
    public int f41551k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f41552l;

    public i0() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41548h = byteBuffer;
        this.f41549i = byteBuffer;
        this.f41545e = -1;
        this.f41546f = -1;
        this.f41550j = new byte[0];
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean a(int i2, int i3, int i4) throws d {
        if (i4 != 2) {
            throw new d(i2, i3, i4);
        }
        this.f41545e = i3;
        this.f41546f = i2;
        int i5 = this.f41544d;
        this.f41550j = new byte[i5 * i3 * 2];
        this.f41551k = 0;
        int i6 = this.f41543c;
        this.f41547g = i3 * i6 * 2;
        boolean z2 = this.f41542b;
        boolean z3 = (i6 == 0 && i5 == 0) ? false : true;
        this.f41542b = z3;
        return z2 != z3;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean b() {
        return this.f41542b;
    }

    @Override // com.smartdigimkt.l0.e
    public final int c() {
        return this.f41546f;
    }

    @Override // com.smartdigimkt.l0.e
    public final int d() {
        return 2;
    }

    @Override // com.smartdigimkt.l0.e
    public final void e() {
        this.f41552l = true;
    }

    @Override // com.smartdigimkt.l0.e
    public final int f() {
        return this.f41545e;
    }

    @Override // com.smartdigimkt.l0.e
    public final void flush() {
        this.f41549i = e.f41474a;
        this.f41552l = false;
        this.f41547g = 0;
        this.f41551k = 0;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean g() {
        return this.f41552l && this.f41549i == e.f41474a;
    }

    @Override // com.smartdigimkt.l0.e
    public final void h() {
        flush();
        this.f41548h = e.f41474a;
        this.f41545e = -1;
        this.f41546f = -1;
        this.f41550j = new byte[0];
    }

    @Override // com.smartdigimkt.l0.e
    public final void a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        int iMin = Math.min(i2, this.f41547g);
        this.f41547g -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f41547g > 0) {
            return;
        }
        int i3 = i2 - iMin;
        int length = (this.f41551k + i3) - this.f41550j.length;
        if (this.f41548h.capacity() < length) {
            this.f41548h = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.f41548h.clear();
        }
        int i4 = this.f41551k;
        int i5 = com.smartdigimkt.a1.t.f39303a;
        int iMax = Math.max(0, Math.min(length, i4));
        this.f41548h.put(this.f41550j, 0, iMax);
        int iMax2 = Math.max(0, Math.min(length - iMax, i3));
        byteBuffer.limit(byteBuffer.position() + iMax2);
        this.f41548h.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i6 = i3 - iMax2;
        int i7 = this.f41551k - iMax;
        this.f41551k = i7;
        byte[] bArr = this.f41550j;
        System.arraycopy(bArr, iMax, bArr, 0, i7);
        byteBuffer.get(this.f41550j, this.f41551k, i6);
        this.f41551k += i6;
        this.f41548h.flip();
        this.f41549i = this.f41548h;
    }

    @Override // com.smartdigimkt.l0.e
    public final ByteBuffer a() {
        ByteBuffer byteBuffer = this.f41549i;
        this.f41549i = e.f41474a;
        return byteBuffer;
    }
}
