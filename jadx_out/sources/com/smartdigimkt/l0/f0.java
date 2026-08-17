package com.smartdigimkt.l0;

import com.bykv.vk.component.ttvideo.player.C;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes5.dex */
public final class f0 implements e {

    /* renamed from: b, reason: collision with root package name */
    public int f41483b;

    /* renamed from: c, reason: collision with root package name */
    public int f41484c;

    /* renamed from: d, reason: collision with root package name */
    public int f41485d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f41486e;

    /* renamed from: f, reason: collision with root package name */
    public ByteBuffer f41487f;

    /* renamed from: g, reason: collision with root package name */
    public ByteBuffer f41488g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f41489h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f41490i;

    /* renamed from: j, reason: collision with root package name */
    public byte[] f41491j;

    /* renamed from: k, reason: collision with root package name */
    public int f41492k;

    /* renamed from: l, reason: collision with root package name */
    public int f41493l;

    /* renamed from: m, reason: collision with root package name */
    public int f41494m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f41495n;

    /* renamed from: o, reason: collision with root package name */
    public long f41496o;

    public f0() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41487f = byteBuffer;
        this.f41488g = byteBuffer;
        this.f41483b = -1;
        this.f41484c = -1;
        this.f41490i = new byte[0];
        this.f41491j = new byte[0];
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean a(int i2, int i3, int i4) throws d {
        if (i4 != 2) {
            throw new d(i2, i3, i4);
        }
        if (this.f41484c == i2 && this.f41483b == i3) {
            return false;
        }
        this.f41484c = i2;
        this.f41483b = i3;
        this.f41485d = i3 * 2;
        return true;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean b() {
        return this.f41484c != -1 && this.f41486e;
    }

    @Override // com.smartdigimkt.l0.e
    public final int c() {
        return this.f41484c;
    }

    @Override // com.smartdigimkt.l0.e
    public final int d() {
        return 2;
    }

    @Override // com.smartdigimkt.l0.e
    public final void e() {
        this.f41489h = true;
        int i2 = this.f41493l;
        if (i2 > 0) {
            byte[] bArr = this.f41490i;
            if (this.f41487f.capacity() < i2) {
                this.f41487f = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
            } else {
                this.f41487f.clear();
            }
            if (i2 > 0) {
                this.f41495n = true;
            }
            this.f41487f.put(bArr, 0, i2);
            this.f41487f.flip();
            this.f41488g = this.f41487f;
        }
        if (this.f41495n) {
            return;
        }
        this.f41496o += this.f41494m / this.f41485d;
    }

    @Override // com.smartdigimkt.l0.e
    public final int f() {
        return this.f41483b;
    }

    @Override // com.smartdigimkt.l0.e
    public final void flush() {
        if (b()) {
            long j2 = this.f41484c;
            int i2 = (int) ((150000 * j2) / C.MICROS_PER_SECOND);
            int i3 = this.f41485d;
            int i4 = i2 * i3;
            if (this.f41490i.length != i4) {
                this.f41490i = new byte[i4];
            }
            int i5 = ((int) ((j2 * 20000) / C.MICROS_PER_SECOND)) * i3;
            this.f41494m = i5;
            if (this.f41491j.length != i5) {
                this.f41491j = new byte[i5];
            }
        }
        this.f41492k = 0;
        this.f41488g = e.f41474a;
        this.f41489h = false;
        this.f41496o = 0L;
        this.f41493l = 0;
        this.f41495n = false;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean g() {
        return this.f41489h && this.f41488g == e.f41474a;
    }

    @Override // com.smartdigimkt.l0.e
    public final void h() {
        this.f41486e = false;
        flush();
        this.f41487f = e.f41474a;
        this.f41483b = -1;
        this.f41484c = -1;
        this.f41494m = 0;
        this.f41490i = new byte[0];
        this.f41491j = new byte[0];
    }

    @Override // com.smartdigimkt.l0.e
    public final void a(ByteBuffer byteBuffer) {
        int iLimit;
        int iLimit2;
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.f41488g.hasRemaining()) {
            int i2 = this.f41492k;
            if (i2 == 0) {
                int iLimit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit3, byteBuffer.position() + this.f41490i.length));
                int iLimit4 = byteBuffer.limit() - 1;
                while (true) {
                    if (iLimit4 >= byteBuffer.position()) {
                        if (Math.abs((int) byteBuffer.get(iLimit4)) > 4) {
                            int i3 = this.f41485d;
                            iPosition = ((iLimit4 / i3) * i3) + i3;
                            break;
                        }
                        iLimit4 -= 2;
                    } else {
                        iPosition = byteBuffer.position();
                        break;
                    }
                }
                if (iPosition == byteBuffer.position()) {
                    this.f41492k = 1;
                } else {
                    byteBuffer.limit(iPosition);
                    int iRemaining = byteBuffer.remaining();
                    if (this.f41487f.capacity() < iRemaining) {
                        this.f41487f = ByteBuffer.allocateDirect(iRemaining).order(ByteOrder.nativeOrder());
                    } else {
                        this.f41487f.clear();
                    }
                    if (iRemaining > 0) {
                        this.f41495n = true;
                    }
                    this.f41487f.put(byteBuffer);
                    this.f41487f.flip();
                    this.f41488g = this.f41487f;
                }
                byteBuffer.limit(iLimit3);
            } else if (i2 == 1) {
                int iLimit5 = byteBuffer.limit();
                int iPosition2 = byteBuffer.position() + 1;
                while (true) {
                    if (iPosition2 < byteBuffer.limit()) {
                        if (Math.abs((int) byteBuffer.get(iPosition2)) > 4) {
                            int i4 = this.f41485d;
                            iLimit2 = (iPosition2 / i4) * i4;
                            break;
                        }
                        iPosition2 += 2;
                    } else {
                        iLimit2 = byteBuffer.limit();
                        break;
                    }
                }
                int iPosition3 = iLimit2 - byteBuffer.position();
                byte[] bArr = this.f41490i;
                int length = bArr.length;
                int i5 = this.f41493l;
                int i6 = length - i5;
                if (iLimit2 < iLimit5 && iPosition3 < i6) {
                    if (this.f41487f.capacity() < i5) {
                        this.f41487f = ByteBuffer.allocateDirect(i5).order(ByteOrder.nativeOrder());
                    } else {
                        this.f41487f.clear();
                    }
                    if (i5 > 0) {
                        this.f41495n = true;
                    }
                    this.f41487f.put(bArr, 0, i5);
                    this.f41487f.flip();
                    this.f41488g = this.f41487f;
                    this.f41493l = 0;
                    this.f41492k = 0;
                } else {
                    int iMin = Math.min(iPosition3, i6);
                    byteBuffer.limit(byteBuffer.position() + iMin);
                    byteBuffer.get(this.f41490i, this.f41493l, iMin);
                    int i7 = this.f41493l + iMin;
                    this.f41493l = i7;
                    byte[] bArr2 = this.f41490i;
                    if (i7 == bArr2.length) {
                        if (this.f41495n) {
                            int i8 = this.f41494m;
                            if (this.f41487f.capacity() < i8) {
                                this.f41487f = ByteBuffer.allocateDirect(i8).order(ByteOrder.nativeOrder());
                            } else {
                                this.f41487f.clear();
                            }
                            if (i8 > 0) {
                                this.f41495n = true;
                            }
                            this.f41487f.put(bArr2, 0, i8);
                            this.f41487f.flip();
                            this.f41488g = this.f41487f;
                            this.f41496o += (this.f41493l - (this.f41494m * 2)) / this.f41485d;
                        } else {
                            this.f41496o += (i7 - this.f41494m) / this.f41485d;
                        }
                        byte[] bArr3 = this.f41490i;
                        int i9 = this.f41493l;
                        int iMin2 = Math.min(byteBuffer.remaining(), this.f41494m);
                        int i10 = this.f41494m - iMin2;
                        System.arraycopy(bArr3, i9 - i10, this.f41491j, 0, i10);
                        byteBuffer.position(byteBuffer.limit() - iMin2);
                        byteBuffer.get(this.f41491j, i10, iMin2);
                        this.f41493l = 0;
                        this.f41492k = 2;
                    }
                    byteBuffer.limit(iLimit5);
                }
            } else if (i2 == 2) {
                int iLimit6 = byteBuffer.limit();
                int iPosition4 = byteBuffer.position() + 1;
                while (true) {
                    if (iPosition4 < byteBuffer.limit()) {
                        if (Math.abs((int) byteBuffer.get(iPosition4)) > 4) {
                            int i11 = this.f41485d;
                            iLimit = (iPosition4 / i11) * i11;
                            break;
                        }
                        iPosition4 += 2;
                    } else {
                        iLimit = byteBuffer.limit();
                        break;
                    }
                }
                byteBuffer.limit(iLimit);
                this.f41496o += byteBuffer.remaining() / this.f41485d;
                byte[] bArr4 = this.f41491j;
                int i12 = this.f41494m;
                int iMin3 = Math.min(byteBuffer.remaining(), this.f41494m);
                int i13 = this.f41494m - iMin3;
                System.arraycopy(bArr4, i12 - i13, this.f41491j, 0, i13);
                byteBuffer.position(byteBuffer.limit() - iMin3);
                byteBuffer.get(this.f41491j, i13, iMin3);
                if (iLimit < iLimit6) {
                    byte[] bArr5 = this.f41491j;
                    int i14 = this.f41494m;
                    if (this.f41487f.capacity() < i14) {
                        this.f41487f = ByteBuffer.allocateDirect(i14).order(ByteOrder.nativeOrder());
                    } else {
                        this.f41487f.clear();
                    }
                    if (i14 > 0) {
                        this.f41495n = true;
                    }
                    this.f41487f.put(bArr5, 0, i14);
                    this.f41487f.flip();
                    this.f41488g = this.f41487f;
                    this.f41492k = 0;
                    byteBuffer.limit(iLimit6);
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.smartdigimkt.l0.e
    public final ByteBuffer a() {
        ByteBuffer byteBuffer = this.f41488g;
        this.f41488g = e.f41474a;
        return byteBuffer;
    }
}
