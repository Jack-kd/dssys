package L1;

import L1.d;
import L1.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.eclipse.jetty.util.n;

/* loaded from: classes5.dex */
public abstract class a implements d {

    /* renamed from: l, reason: collision with root package name */
    public static final R1.c f207l = R1.b.a(a.class);

    /* renamed from: m, reason: collision with root package name */
    public static final boolean f208m = Boolean.getBoolean("org.eclipse.jetty.io.AbstractBuffer.boundsChecking");

    /* renamed from: b, reason: collision with root package name */
    public int f209b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f210c;

    /* renamed from: d, reason: collision with root package name */
    public int f211d;

    /* renamed from: e, reason: collision with root package name */
    public int f212e;

    /* renamed from: f, reason: collision with root package name */
    public int f213f;

    /* renamed from: g, reason: collision with root package name */
    public int f214g;

    /* renamed from: h, reason: collision with root package name */
    public int f215h;

    /* renamed from: i, reason: collision with root package name */
    public int f216i;

    /* renamed from: j, reason: collision with root package name */
    public String f217j;

    /* renamed from: k, reason: collision with root package name */
    public l f218k;

    public a(int i2, boolean z2) {
        if (i2 == 0 && z2) {
            throw new IllegalArgumentException("IMMUTABLE && VOLATILE");
        }
        o0(-1);
        this.f209b = i2;
        this.f210c = z2;
    }

    @Override // L1.d
    public boolean A0(d dVar) {
        int i2;
        if (dVar == this) {
            return true;
        }
        if (dVar.length() != length()) {
            return false;
        }
        int i3 = this.f213f;
        if (i3 != 0 && (dVar instanceof a) && (i2 = ((a) dVar).f213f) != 0 && i3 != i2) {
            return false;
        }
        int index = getIndex();
        int iN0 = dVar.n0();
        byte[] bArrP0 = p0();
        byte[] bArrP02 = dVar.p0();
        if (bArrP0 != null && bArrP02 != null) {
            int iN02 = n0();
            while (true) {
                int i4 = iN02 - 1;
                if (iN02 <= index) {
                    break;
                }
                byte b3 = bArrP0[i4];
                iN0--;
                byte b4 = bArrP02[iN0];
                if (b3 != b4) {
                    if (97 <= b3 && b3 <= 122) {
                        b3 = (byte) (b3 - 32);
                    }
                    if (97 <= b4 && b4 <= 122) {
                        b4 = (byte) (b4 - 32);
                    }
                    if (b3 != b4) {
                        return false;
                    }
                }
                iN02 = i4;
            }
        } else {
            int iN03 = n0();
            while (true) {
                int i5 = iN03 - 1;
                if (iN03 <= index) {
                    break;
                }
                byte bK0 = k0(i5);
                iN0--;
                byte bK02 = dVar.k0(iN0);
                if (bK0 != bK02) {
                    if (97 <= bK0 && bK0 <= 122) {
                        bK0 = (byte) (bK0 - 32);
                    }
                    if (97 <= bK02 && bK02 <= 122) {
                        bK02 = (byte) (bK02 - 32);
                    }
                    if (bK0 != bK02) {
                        return false;
                    }
                }
                iN03 = i5;
            }
        }
        return true;
    }

    @Override // L1.d
    public boolean B0() {
        return this.f212e > this.f211d;
    }

    @Override // L1.d
    public d C0() {
        return s0() ? this : a(0);
    }

    public h a(int i2) {
        return ((this instanceof d.a) || (buffer() instanceof d.a)) ? new h.a(a0(), 0, length(), i2) : new h(a0(), 0, length(), i2);
    }

    @Override // L1.d
    public byte[] a0() {
        int length = length();
        byte[] bArr = new byte[length];
        byte[] bArrP0 = p0();
        if (bArrP0 != null) {
            System.arraycopy(bArrP0, getIndex(), bArr, 0, length);
            return bArr;
        }
        d0(getIndex(), bArr, 0, length());
        return bArr;
    }

    public int b(byte[] bArr, int i2, int i3) {
        int iN0 = n0();
        int iG0 = g0(iN0, bArr, i2, i3);
        q0(iN0 + iG0);
        return iG0;
    }

    @Override // L1.d
    public int b0(int i2, d dVar) {
        int i3 = 0;
        this.f213f = 0;
        int length = dVar.length();
        if (i2 + length > w0()) {
            length = w0() - i2;
        }
        byte[] bArrP0 = dVar.p0();
        byte[] bArrP02 = p0();
        if (bArrP0 != null && bArrP02 != null) {
            System.arraycopy(bArrP0, dVar.getIndex(), bArrP02, i2, length);
            return length;
        }
        if (bArrP0 != null) {
            int index = dVar.getIndex();
            while (i3 < length) {
                c0(i2, bArrP0[index]);
                i3++;
                i2++;
                index++;
            }
        } else if (bArrP02 != null) {
            int index2 = dVar.getIndex();
            while (i3 < length) {
                bArrP02[i2] = dVar.k0(index2);
                i3++;
                i2++;
                index2++;
            }
        } else {
            int index3 = dVar.getIndex();
            while (i3 < length) {
                c0(i2, dVar.k0(index3));
                i3++;
                i2++;
                index3++;
            }
        }
        return length;
    }

    public d c(int i2) {
        if (x0() < 0) {
            return null;
        }
        d dVarH0 = h0(x0(), i2);
        o0(-1);
        return dVarH0;
    }

    @Override // L1.d
    public void clear() {
        o0(-1);
        z0(0);
        q0(0);
    }

    @Override // L1.d
    public int e0(InputStream inputStream, int i2) throws IOException {
        byte[] bArrP0 = p0();
        int iF0 = f0();
        if (iF0 <= i2) {
            i2 = iF0;
        }
        if (bArrP0 != null) {
            int i3 = inputStream.read(bArrP0, this.f212e, i2);
            if (i3 > 0) {
                this.f212e += i3;
            }
            return i3;
        }
        int i4 = i2 <= 1024 ? i2 : 1024;
        byte[] bArr = new byte[i4];
        while (i2 > 0) {
            int i5 = inputStream.read(bArr, 0, i4);
            if (i5 < 0) {
                return -1;
            }
            b(bArr, 0, i5);
            i2 -= i5;
        }
        return 0;
    }

    public boolean equals(Object obj) {
        int i2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if ((this instanceof d.a) || (dVar instanceof d.a)) {
            return A0(dVar);
        }
        if (dVar.length() != length()) {
            return false;
        }
        int i3 = this.f213f;
        if (i3 != 0 && (obj instanceof a) && (i2 = ((a) obj).f213f) != 0 && i3 != i2) {
            return false;
        }
        int index = getIndex();
        int iN0 = dVar.n0();
        int iN02 = n0();
        while (true) {
            int i4 = iN02 - 1;
            if (iN02 <= index) {
                return true;
            }
            iN0--;
            if (k0(i4) != dVar.k0(iN0)) {
                return false;
            }
            iN02 = i4;
        }
    }

    @Override // L1.d
    public int f0() {
        return w0() - this.f212e;
    }

    @Override // L1.d
    public abstract int g0(int i2, byte[] bArr, int i3, int i4);

    @Override // L1.d
    public byte get() {
        int i2 = this.f211d;
        this.f211d = i2 + 1;
        return k0(i2);
    }

    @Override // L1.d
    public final int getIndex() {
        return this.f211d;
    }

    @Override // L1.d
    public d h0(int i2, int i3) {
        a aVar;
        l lVar = this.f218k;
        if (lVar == null) {
            aVar = this;
            aVar.f218k = new l(aVar, -1, i2, i2 + i3, isReadOnly() ? 1 : 2);
        } else {
            aVar = this;
            lVar.update(buffer());
            aVar.f218k.o0(-1);
            aVar.f218k.z0(0);
            aVar.f218k.q0(i3 + i2);
            aVar.f218k.z0(i2);
        }
        return aVar.f218k;
    }

    public int hashCode() {
        if (this.f213f == 0 || this.f214g != this.f211d || this.f215h != this.f212e) {
            int index = getIndex();
            byte[] bArrP0 = p0();
            if (bArrP0 != null) {
                int iN0 = n0();
                while (true) {
                    int i2 = iN0 - 1;
                    if (iN0 <= index) {
                        break;
                    }
                    byte b3 = bArrP0[i2];
                    if (97 <= b3 && b3 <= 122) {
                        b3 = (byte) (b3 - 32);
                    }
                    this.f213f = (this.f213f * 31) + b3;
                    iN0 = i2;
                }
            } else {
                int iN02 = n0();
                while (true) {
                    int i3 = iN02 - 1;
                    if (iN02 <= index) {
                        break;
                    }
                    byte bK0 = k0(i3);
                    if (97 <= bK0 && bK0 <= 122) {
                        bK0 = (byte) (bK0 - 32);
                    }
                    this.f213f = (this.f213f * 31) + bK0;
                    iN02 = i3;
                }
            }
            if (this.f213f == 0) {
                this.f213f = -1;
            }
            this.f214g = this.f211d;
            this.f215h = this.f212e;
        }
        return this.f213f;
    }

    @Override // L1.d
    public String i0() throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        sb.append(super.hashCode());
        sb.append(",");
        sb.append(buffer().hashCode());
        sb.append(",m=");
        sb.append(x0());
        sb.append(",g=");
        sb.append(getIndex());
        sb.append(",p=");
        sb.append(n0());
        sb.append(",c=");
        sb.append(w0());
        sb.append("]={");
        if (x0() >= 0) {
            for (int iX0 = x0(); iX0 < getIndex(); iX0++) {
                n.g(k0(iX0), sb);
            }
            sb.append("}{");
        }
        int index = getIndex();
        int i2 = 0;
        while (index < n0()) {
            n.g(k0(index), sb);
            int i3 = i2 + 1;
            if (i2 == 50 && n0() - index > 20) {
                sb.append(" ... ");
                index = n0() - 20;
            }
            index++;
            i2 = i3;
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // L1.d
    public boolean isReadOnly() {
        return this.f209b <= 1;
    }

    @Override // L1.d
    public String j0(Charset charset) {
        try {
            byte[] bArrP0 = p0();
            return bArrP0 != null ? new String(bArrP0, getIndex(), length(), charset) : new String(a0(), 0, length(), charset);
        } catch (Exception e2) {
            f207l.e(e2);
            return new String(a0(), 0, length());
        }
    }

    @Override // L1.d
    public void l0() {
        o0(this.f211d - 1);
    }

    @Override // L1.d
    public int length() {
        return this.f212e - this.f211d;
    }

    @Override // L1.d
    public int m0(d dVar) {
        int iN0 = n0();
        int iB0 = b0(iN0, dVar);
        q0(iN0 + iB0);
        return iB0;
    }

    @Override // L1.d
    public final int n0() {
        return this.f212e;
    }

    @Override // L1.d
    public void o0(int i2) {
        this.f216i = i2;
    }

    @Override // L1.d
    public byte peek() {
        return k0(this.f211d);
    }

    @Override // L1.d
    public void put(byte b3) {
        int iN0 = n0();
        c0(iN0, b3);
        q0(iN0 + 1);
    }

    @Override // L1.d
    public void q0(int i2) {
        this.f212e = i2;
        this.f213f = 0;
    }

    @Override // L1.d
    public int r0(byte[] bArr) {
        int iN0 = n0();
        int iG0 = g0(iN0, bArr, 0, bArr.length);
        q0(iN0 + iG0);
        return iG0;
    }

    @Override // L1.d
    public boolean s0() {
        return this.f209b <= 0;
    }

    @Override // L1.d
    public int skip(int i2) {
        if (length() < i2) {
            i2 = length();
        }
        z0(getIndex() + i2);
        return i2;
    }

    public String toString() {
        if (!s0()) {
            return new String(a0(), 0, length());
        }
        if (this.f217j == null) {
            this.f217j = new String(a0(), 0, length());
        }
        return this.f217j;
    }

    @Override // L1.d
    public void u0() {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        int iX0 = x0() >= 0 ? x0() : getIndex();
        if (iX0 > 0) {
            byte[] bArrP0 = p0();
            int iN0 = n0() - iX0;
            if (iN0 > 0) {
                if (bArrP0 != null) {
                    System.arraycopy(p0(), iX0, p0(), 0, iN0);
                } else {
                    b0(0, h0(iX0, iN0));
                }
            }
            if (x0() > 0) {
                o0(x0() - iX0);
            }
            z0(getIndex() - iX0);
            q0(n0() - iX0);
        }
    }

    @Override // L1.d
    public d v0() {
        return c((getIndex() - x0()) - 1);
    }

    @Override // L1.d
    public void writeTo(OutputStream outputStream) throws IOException {
        byte[] bArrP0 = p0();
        if (bArrP0 != null) {
            outputStream.write(bArrP0, getIndex(), length());
        } else {
            int length = length();
            int i2 = length <= 1024 ? length : 1024;
            byte[] bArr = new byte[i2];
            int i3 = this.f211d;
            while (length > 0) {
                int iD0 = d0(i3, bArr, 0, length > i2 ? i2 : length);
                outputStream.write(bArr, 0, iD0);
                i3 += iD0;
                length -= iD0;
            }
        }
        clear();
    }

    @Override // L1.d
    public int x0() {
        return this.f216i;
    }

    @Override // L1.d
    public boolean y0() {
        return this.f210c;
    }

    @Override // L1.d
    public void z0(int i2) {
        this.f211d = i2;
        this.f213f = 0;
    }

    @Override // L1.d
    public d get(int i2) {
        int index = getIndex();
        d dVarH0 = h0(index, i2);
        z0(index + i2);
        return dVarH0;
    }

    @Override // L1.d
    public String toString(String str) {
        try {
            byte[] bArrP0 = p0();
            if (bArrP0 != null) {
                return new String(bArrP0, getIndex(), length(), str);
            }
            return new String(a0(), 0, length(), str);
        } catch (Exception e2) {
            f207l.e(e2);
            return new String(a0(), 0, length());
        }
    }

    @Override // L1.d
    public d buffer() {
        return this;
    }
}
