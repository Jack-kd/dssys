package com.smartdigimkt.l0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes5.dex */
public final class b0 implements e {

    /* renamed from: h, reason: collision with root package name */
    public static final int f41449h = Float.floatToIntBits(Float.NaN);

    /* renamed from: b, reason: collision with root package name */
    public int f41450b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f41451c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f41452d = 0;

    /* renamed from: e, reason: collision with root package name */
    public ByteBuffer f41453e;

    /* renamed from: f, reason: collision with root package name */
    public ByteBuffer f41454f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f41455g;

    public b0() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41453e = byteBuffer;
        this.f41454f = byteBuffer;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean a(int i2, int i3, int i4) throws d {
        int i5 = com.smartdigimkt.a1.t.f39303a;
        if (i4 != Integer.MIN_VALUE && i4 != 1073741824) {
            throw new d(i2, i3, i4);
        }
        if (this.f41450b == i2 && this.f41451c == i3 && this.f41452d == i4) {
            return false;
        }
        this.f41450b = i2;
        this.f41451c = i3;
        this.f41452d = i4;
        return true;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean b() {
        int i2 = this.f41452d;
        int i3 = com.smartdigimkt.a1.t.f39303a;
        return i2 == Integer.MIN_VALUE || i2 == 1073741824;
    }

    @Override // com.smartdigimkt.l0.e
    public final int c() {
        return this.f41450b;
    }

    @Override // com.smartdigimkt.l0.e
    public final int d() {
        return 4;
    }

    @Override // com.smartdigimkt.l0.e
    public final void e() {
        this.f41455g = true;
    }

    @Override // com.smartdigimkt.l0.e
    public final int f() {
        return this.f41451c;
    }

    @Override // com.smartdigimkt.l0.e
    public final void flush() {
        this.f41454f = e.f41474a;
        this.f41455g = false;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean g() {
        return this.f41455g && this.f41454f == e.f41474a;
    }

    @Override // com.smartdigimkt.l0.e
    public final void h() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41454f = byteBuffer;
        this.f41455g = false;
        this.f41450b = -1;
        this.f41451c = -1;
        this.f41452d = 0;
        this.f41453e = byteBuffer;
    }

    @Override // com.smartdigimkt.l0.e
    public final void a(ByteBuffer byteBuffer) {
        boolean z2 = this.f41452d == 1073741824;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        if (!z2) {
            i2 = (i2 / 3) * 4;
        }
        if (this.f41453e.capacity() < i2) {
            this.f41453e = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.f41453e.clear();
        }
        if (z2) {
            while (iPosition < iLimit) {
                int i3 = (byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24);
                ByteBuffer byteBuffer2 = this.f41453e;
                int iFloatToIntBits = Float.floatToIntBits((float) (i3 * 4.656612875245797E-10d));
                if (iFloatToIntBits == f41449h) {
                    iFloatToIntBits = Float.floatToIntBits(0.0f);
                }
                byteBuffer2.putInt(iFloatToIntBits);
                iPosition += 4;
            }
        } else {
            while (iPosition < iLimit) {
                int i4 = ((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24);
                ByteBuffer byteBuffer3 = this.f41453e;
                int iFloatToIntBits2 = Float.floatToIntBits((float) (i4 * 4.656612875245797E-10d));
                if (iFloatToIntBits2 == f41449h) {
                    iFloatToIntBits2 = Float.floatToIntBits(0.0f);
                }
                byteBuffer3.putInt(iFloatToIntBits2);
                iPosition += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        this.f41453e.flip();
        this.f41454f = this.f41453e;
    }

    @Override // com.smartdigimkt.l0.e
    public final ByteBuffer a() {
        ByteBuffer byteBuffer = this.f41454f;
        this.f41454f = e.f41474a;
        return byteBuffer;
    }
}
