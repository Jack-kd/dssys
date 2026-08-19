package com.smartdigimkt.l0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class u implements e {

    /* renamed from: b, reason: collision with root package name */
    public int f41595b;

    /* renamed from: c, reason: collision with root package name */
    public int f41596c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f41597d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f41598e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f41599f;

    /* renamed from: g, reason: collision with root package name */
    public ByteBuffer f41600g;

    /* renamed from: h, reason: collision with root package name */
    public ByteBuffer f41601h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f41602i;

    public u() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41600g = byteBuffer;
        this.f41601h = byteBuffer;
        this.f41595b = -1;
        this.f41596c = -1;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean a(int i2, int i3, int i4) throws d {
        boolean zEquals = Arrays.equals(this.f41597d, this.f41599f);
        boolean z2 = !zEquals;
        int[] iArr = this.f41597d;
        this.f41599f = iArr;
        if (iArr == null) {
            this.f41598e = false;
            return z2;
        }
        if (i4 != 2) {
            throw new d(i2, i3, i4);
        }
        if (zEquals && this.f41596c == i2 && this.f41595b == i3) {
            return false;
        }
        this.f41596c = i2;
        this.f41595b = i3;
        this.f41598e = i3 != iArr.length;
        int i5 = 0;
        while (true) {
            int[] iArr2 = this.f41599f;
            if (i5 >= iArr2.length) {
                return true;
            }
            int i6 = iArr2[i5];
            if (i6 >= i3) {
                throw new d(i2, i3, i4);
            }
            this.f41598e = (i6 != i5) | this.f41598e;
            i5++;
        }
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean b() {
        return this.f41598e;
    }

    @Override // com.smartdigimkt.l0.e
    public final int c() {
        return this.f41596c;
    }

    @Override // com.smartdigimkt.l0.e
    public final int d() {
        return 2;
    }

    @Override // com.smartdigimkt.l0.e
    public final void e() {
        this.f41602i = true;
    }

    @Override // com.smartdigimkt.l0.e
    public final int f() {
        int[] iArr = this.f41599f;
        return iArr == null ? this.f41595b : iArr.length;
    }

    @Override // com.smartdigimkt.l0.e
    public final void flush() {
        this.f41601h = e.f41474a;
        this.f41602i = false;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean g() {
        return this.f41602i && this.f41601h == e.f41474a;
    }

    @Override // com.smartdigimkt.l0.e
    public final void h() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41601h = byteBuffer;
        this.f41602i = false;
        this.f41600g = byteBuffer;
        this.f41595b = -1;
        this.f41596c = -1;
        this.f41599f = null;
        this.f41597d = null;
        this.f41598e = false;
    }

    @Override // com.smartdigimkt.l0.e
    public final void a(ByteBuffer byteBuffer) {
        if (this.f41599f != null) {
            int iPosition = byteBuffer.position();
            int iLimit = byteBuffer.limit();
            int length = ((iLimit - iPosition) / (this.f41595b * 2)) * this.f41599f.length * 2;
            if (this.f41600g.capacity() < length) {
                this.f41600g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
            } else {
                this.f41600g.clear();
            }
            while (iPosition < iLimit) {
                for (int i2 : this.f41599f) {
                    this.f41600g.putShort(byteBuffer.getShort((i2 * 2) + iPosition));
                }
                iPosition += this.f41595b * 2;
            }
            byteBuffer.position(iLimit);
            this.f41600g.flip();
            this.f41601h = this.f41600g;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.smartdigimkt.l0.e
    public final ByteBuffer a() {
        ByteBuffer byteBuffer = this.f41601h;
        this.f41601h = e.f41474a;
        return byteBuffer;
    }
}
