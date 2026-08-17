package com.anythink.core.common.n.c;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class u extends f {

    /* renamed from: f, reason: collision with root package name */
    final transient byte[][] f7138f;

    /* renamed from: g, reason: collision with root package name */
    final transient int[] f7139g;

    public u(c cVar, int i2) {
        super(null);
        y.a(cVar.f7060c, 0L, i2);
        s sVar = cVar.f7059b;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = sVar.f7130e;
            int i7 = sVar.f7129d;
            if (i6 == i7) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += i6 - i7;
            i5++;
            sVar = sVar.f7133h;
        }
        this.f7138f = new byte[i5][];
        this.f7139g = new int[i5 * 2];
        s sVar2 = cVar.f7059b;
        int i8 = 0;
        while (i3 < i2) {
            byte[][] bArr = this.f7138f;
            bArr[i8] = sVar2.f7128c;
            int i9 = sVar2.f7130e;
            int i10 = sVar2.f7129d;
            i3 += i9 - i10;
            if (i3 > i2) {
                i3 = i2;
            }
            int[] iArr = this.f7139g;
            iArr[i8] = i3;
            iArr[bArr.length + i8] = i10;
            sVar2.f7131f = true;
            i8++;
            sVar2 = sVar2.f7133h;
        }
    }

    private f n() {
        return new f(k());
    }

    private Object o() {
        return n();
    }

    @Override // com.anythink.core.common.n.c.f
    public final String a() {
        return n().a();
    }

    @Override // com.anythink.core.common.n.c.f
    public final String b() {
        return n().b();
    }

    @Override // com.anythink.core.common.n.c.f
    public final f c() {
        return n().c();
    }

    @Override // com.anythink.core.common.n.c.f
    public final f d() {
        return n().d();
    }

    @Override // com.anythink.core.common.n.c.f
    public final f e() {
        return n().e();
    }

    @Override // com.anythink.core.common.n.c.f
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.j() == j() && a(0, fVar, 0, j())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.anythink.core.common.n.c.f
    public final String f() {
        return n().f();
    }

    @Override // com.anythink.core.common.n.c.f
    public final String g() {
        return n().g();
    }

    @Override // com.anythink.core.common.n.c.f
    public final f h() {
        return n().h();
    }

    @Override // com.anythink.core.common.n.c.f
    public final int hashCode() {
        int i2 = this.f7074d;
        if (i2 != 0) {
            return i2;
        }
        int length = this.f7138f.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = this.f7138f[i3];
            int[] iArr = this.f7139g;
            int i6 = iArr[length + i3];
            int i7 = iArr[i3];
            int i8 = (i7 - i5) + i6;
            while (i6 < i8) {
                i4 = (i4 * 31) + bArr[i6];
                i6++;
            }
            i3++;
            i5 = i7;
        }
        this.f7074d = i4;
        return i4;
    }

    @Override // com.anythink.core.common.n.c.f
    public final f i() {
        return n().i();
    }

    @Override // com.anythink.core.common.n.c.f
    public final int j() {
        return this.f7139g[this.f7138f.length - 1];
    }

    @Override // com.anythink.core.common.n.c.f
    public final byte[] k() {
        int[] iArr = this.f7139g;
        byte[][] bArr = this.f7138f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr2 = this.f7139g;
            int i4 = iArr2[length + i2];
            int i5 = iArr2[i2];
            System.arraycopy(this.f7138f[i2], i4, bArr2, i3, i5 - i3);
            i2++;
            i3 = i5;
        }
        return bArr2;
    }

    @Override // com.anythink.core.common.n.c.f
    public final byte[] l() {
        return k();
    }

    @Override // com.anythink.core.common.n.c.f
    public final ByteBuffer m() {
        return ByteBuffer.wrap(k()).asReadOnlyBuffer();
    }

    @Override // com.anythink.core.common.n.c.f
    public final String toString() {
        return n().toString();
    }

    private int c(int i2) {
        int iBinarySearch = Arrays.binarySearch(this.f7139g, 0, this.f7138f.length, i2 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    @Override // com.anythink.core.common.n.c.f
    public final String a(Charset charset) {
        return n().a(charset);
    }

    @Override // com.anythink.core.common.n.c.f
    public final f b(f fVar) {
        return n().b(fVar);
    }

    @Override // com.anythink.core.common.n.c.f
    public final f a(f fVar) {
        return n().a(fVar);
    }

    @Override // com.anythink.core.common.n.c.f
    public final byte b(int i2) {
        y.a(this.f7139g[this.f7138f.length - 1], i2, 1L);
        int iC = c(i2);
        int i3 = iC == 0 ? 0 : this.f7139g[iC - 1];
        int[] iArr = this.f7139g;
        byte[][] bArr = this.f7138f;
        return bArr[iC][(i2 - i3) + iArr[bArr.length + iC]];
    }

    @Override // com.anythink.core.common.n.c.f
    public final f a(int i2) {
        return n().a(i2);
    }

    @Override // com.anythink.core.common.n.c.f
    public final f a(int i2, int i3) {
        return n().a(i2, i3);
    }

    @Override // com.anythink.core.common.n.c.f
    public final void a(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            int length = this.f7138f.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int[] iArr = this.f7139g;
                int i4 = iArr[length + i2];
                int i5 = iArr[i2];
                outputStream.write(this.f7138f[i2], i4, i5 - i3);
                i2++;
                i3 = i5;
            }
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // com.anythink.core.common.n.c.f
    public final int b(byte[] bArr, int i2) {
        return n().b(bArr, i2);
    }

    @Override // com.anythink.core.common.n.c.f
    public final void a(c cVar) {
        int length = this.f7138f.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f7139g;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            s sVar = new s(this.f7138f[i2], i4, (i4 + i5) - i3, true, false);
            s sVar2 = cVar.f7059b;
            if (sVar2 == null) {
                sVar.f7134i = sVar;
                sVar.f7133h = sVar;
                cVar.f7059b = sVar;
            } else {
                sVar2.f7134i.a(sVar);
            }
            i2++;
            i3 = i5;
        }
        cVar.f7060c += i3;
    }

    @Override // com.anythink.core.common.n.c.f
    public final boolean a(int i2, f fVar, int i3, int i4) {
        if (i2 < 0 || i2 > j() - i4) {
            return false;
        }
        int iC = c(i2);
        while (i4 > 0) {
            int i5 = iC == 0 ? 0 : this.f7139g[iC - 1];
            int iMin = Math.min(i4, ((this.f7139g[iC] - i5) + i5) - i2);
            int[] iArr = this.f7139g;
            byte[][] bArr = this.f7138f;
            if (!fVar.a(i3, bArr[iC], (i2 - i5) + iArr[bArr.length + iC], iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iC++;
        }
        return true;
    }

    @Override // com.anythink.core.common.n.c.f
    public final boolean a(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0 || i2 > j() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int iC = c(i2);
        while (i4 > 0) {
            int i5 = iC == 0 ? 0 : this.f7139g[iC - 1];
            int iMin = Math.min(i4, ((this.f7139g[iC] - i5) + i5) - i2);
            int[] iArr = this.f7139g;
            byte[][] bArr2 = this.f7138f;
            if (!y.a(bArr2[iC], (i2 - i5) + iArr[bArr2.length + iC], bArr, i3, iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iC++;
        }
        return true;
    }

    @Override // com.anythink.core.common.n.c.f
    public final int a(byte[] bArr, int i2) {
        return n().a(bArr, i2);
    }
}
