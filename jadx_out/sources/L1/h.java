package L1;

import L1.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.eclipse.jetty.util.m;

/* loaded from: classes5.dex */
public class h extends L1.a {

    /* renamed from: o, reason: collision with root package name */
    public static final int f233o = Integer.getInteger("org.eclipse.jetty.io.ByteArrayBuffer.MAX_WRITE", 131072).intValue();

    /* renamed from: n, reason: collision with root package name */
    public final byte[] f234n;

    public static class a extends h implements d.a {
        public a(String str) {
            super(str);
        }

        @Override // L1.h, L1.a
        public boolean equals(Object obj) {
            return (obj instanceof d) && A0((d) obj);
        }

        public a(byte[] bArr, int i2, int i3, int i4) {
            super(bArr, i2, i3, i4);
        }
    }

    public h(int i2, int i3, boolean z2) {
        this(new byte[i2], 0, 0, i3, z2);
    }

    @Override // L1.a, L1.d
    public boolean A0(d dVar) {
        int i2;
        if (dVar == this) {
            return true;
        }
        if (dVar == null || dVar.length() != length()) {
            return false;
        }
        int i3 = this.f213f;
        if (i3 != 0 && (dVar instanceof L1.a) && (i2 = ((L1.a) dVar).f213f) != 0 && i3 != i2) {
            return false;
        }
        int index = getIndex();
        int iN0 = dVar.n0();
        byte[] bArrP0 = dVar.p0();
        if (bArrP0 != null) {
            int iN02 = n0();
            while (true) {
                int i4 = iN02 - 1;
                if (iN02 <= index) {
                    break;
                }
                byte b3 = this.f234n[i4];
                iN0--;
                byte b4 = bArrP0[iN0];
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
                byte b5 = this.f234n[i5];
                iN0--;
                byte bK0 = dVar.k0(iN0);
                if (b5 != bK0) {
                    if (97 <= b5 && b5 <= 122) {
                        b5 = (byte) (b5 - 32);
                    }
                    if (97 <= bK0 && bK0 <= 122) {
                        bK0 = (byte) (bK0 - 32);
                    }
                    if (b5 != bK0) {
                        return false;
                    }
                }
                iN03 = i5;
            }
        }
        return true;
    }

    @Override // L1.a, L1.d
    public int b0(int i2, d dVar) {
        int i3 = 0;
        this.f213f = 0;
        int length = dVar.length();
        if (i2 + length > w0()) {
            length = w0() - i2;
        }
        byte[] bArrP0 = dVar.p0();
        if (bArrP0 != null) {
            System.arraycopy(bArrP0, dVar.getIndex(), this.f234n, i2, length);
            return length;
        }
        int index = dVar.getIndex();
        while (i3 < length) {
            this.f234n[i2] = dVar.k0(index);
            i3++;
            i2++;
            index++;
        }
        return length;
    }

    @Override // L1.d
    public void c0(int i2, byte b3) {
        this.f234n[i2] = b3;
    }

    @Override // L1.d
    public int d0(int i2, byte[] bArr, int i3, int i4) {
        if ((i2 + i4 > w0() && (i4 = w0() - i2) == 0) || i4 < 0) {
            return -1;
        }
        System.arraycopy(this.f234n, i2, bArr, i3, i4);
        return i4;
    }

    @Override // L1.a, L1.d
    public int e0(InputStream inputStream, int i2) throws IOException {
        if (i2 < 0 || i2 > f0()) {
            i2 = f0();
        }
        int iN0 = n0();
        int i3 = 0;
        int i4 = i2;
        int i5 = 0;
        while (i3 < i2) {
            i5 = inputStream.read(this.f234n, iN0, i4);
            if (i5 < 0) {
                break;
            }
            if (i5 > 0) {
                iN0 += i5;
                i3 += i5;
                i4 -= i5;
                q0(iN0);
            }
            if (inputStream.available() <= 0) {
                break;
            }
        }
        if (i5 >= 0 || i3 != 0) {
            return i3;
        }
        return -1;
    }

    @Override // L1.a
    public boolean equals(Object obj) {
        int i2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof d)) {
            return false;
        }
        if (obj instanceof d.a) {
            return A0((d) obj);
        }
        d dVar = (d) obj;
        if (dVar.length() != length()) {
            return false;
        }
        int i3 = this.f213f;
        if (i3 != 0 && (obj instanceof L1.a) && (i2 = ((L1.a) obj).f213f) != 0 && i3 != i2) {
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
            if (this.f234n[i4] != dVar.k0(iN0)) {
                return false;
            }
            iN02 = i4;
        }
    }

    @Override // L1.a, L1.d
    public int f0() {
        return this.f234n.length - this.f212e;
    }

    @Override // L1.a, L1.d
    public int g0(int i2, byte[] bArr, int i3, int i4) {
        this.f213f = 0;
        if (i2 + i4 > w0()) {
            i4 = w0() - i2;
        }
        System.arraycopy(bArr, i3, this.f234n, i2, i4);
        return i4;
    }

    @Override // L1.a, L1.d
    public byte get() {
        byte[] bArr = this.f234n;
        int i2 = this.f211d;
        this.f211d = i2 + 1;
        return bArr[i2];
    }

    @Override // L1.a
    public int hashCode() {
        if (this.f213f == 0 || this.f214g != this.f211d || this.f215h != this.f212e) {
            int index = getIndex();
            int iN0 = n0();
            while (true) {
                int i2 = iN0 - 1;
                if (iN0 <= index) {
                    break;
                }
                byte b3 = this.f234n[i2];
                if (97 <= b3 && b3 <= 122) {
                    b3 = (byte) (b3 - 32);
                }
                this.f213f = (this.f213f * 31) + b3;
                iN0 = i2;
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
    public byte k0(int i2) {
        return this.f234n[i2];
    }

    @Override // L1.d
    public byte[] p0() {
        return this.f234n;
    }

    @Override // L1.a, L1.d
    public void u0() {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        int iX0 = x0() >= 0 ? x0() : getIndex();
        if (iX0 > 0) {
            int iN0 = n0() - iX0;
            if (iN0 > 0) {
                byte[] bArr = this.f234n;
                System.arraycopy(bArr, iX0, bArr, 0, iN0);
            }
            if (x0() > 0) {
                o0(x0() - iX0);
            }
            z0(getIndex() - iX0);
            q0(n0() - iX0);
        }
    }

    @Override // L1.d
    public int w0() {
        return this.f234n.length;
    }

    @Override // L1.a, L1.d
    public void writeTo(OutputStream outputStream) throws IOException {
        int length = length();
        int i2 = f233o;
        if (i2 <= 0 || length <= i2) {
            outputStream.write(this.f234n, getIndex(), length);
        } else {
            int index = getIndex();
            while (length > 0) {
                int i3 = f233o;
                if (length <= i3) {
                    i3 = length;
                }
                outputStream.write(this.f234n, index, i3);
                index += i3;
                length -= i3;
            }
        }
        if (s0()) {
            return;
        }
        clear();
    }

    public h(byte[] bArr) {
        this(bArr, 0, bArr.length, 2);
    }

    public h(byte[] bArr, int i2, int i3, int i4) {
        super(2, false);
        this.f234n = bArr;
        q0(i3 + i2);
        z0(i2);
        this.f209b = i4;
    }

    public h(byte[] bArr, int i2, int i3, int i4, boolean z2) {
        super(2, z2);
        this.f234n = bArr;
        q0(i3 + i2);
        z0(i2);
        this.f209b = i4;
    }

    public h(int i2) {
        this(new byte[i2], 0, 0, 2);
        q0(0);
    }

    public h(String str) {
        super(2, false);
        byte[] bArrC = m.c(str);
        this.f234n = bArrC;
        z0(0);
        q0(bArrC.length);
        this.f209b = 0;
        this.f217j = str;
    }

    public h(String str, String str2) throws UnsupportedEncodingException {
        super(2, false);
        byte[] bytes = str.getBytes(str2);
        this.f234n = bytes;
        z0(0);
        q0(bytes.length);
        this.f209b = 0;
        this.f217j = str;
    }
}
