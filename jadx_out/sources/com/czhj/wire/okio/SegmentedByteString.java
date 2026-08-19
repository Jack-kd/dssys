package com.czhj.wire.okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes3.dex */
final class SegmentedByteString extends ByteString {

    /* renamed from: e, reason: collision with root package name */
    final transient byte[][] f29850e;

    /* renamed from: f, reason: collision with root package name */
    final transient int[] f29851f;

    public SegmentedByteString(Buffer buffer, int i2) {
        super(null);
        Util.checkOffsetAndCount(buffer.f29765c, 0L, i2);
        Segment segment = buffer.f29764b;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = segment.f29842e;
            int i7 = segment.f29841d;
            if (i6 == i7) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += i6 - i7;
            i5++;
            segment = segment.f29845h;
        }
        this.f29850e = new byte[i5][];
        this.f29851f = new int[i5 * 2];
        Segment segment2 = buffer.f29764b;
        int i8 = 0;
        while (i3 < i2) {
            byte[][] bArr = this.f29850e;
            bArr[i8] = segment2.f29840c;
            int i9 = segment2.f29842e;
            int i10 = segment2.f29841d;
            i3 += i9 - i10;
            if (i3 > i2) {
                i3 = i2;
            }
            int[] iArr = this.f29851f;
            iArr[i8] = i3;
            iArr[bArr.length + i8] = i10;
            segment2.f29843f = true;
            i8++;
            segment2 = segment2.f29845h;
        }
    }

    private int a(int i2) {
        int iBinarySearch = Arrays.binarySearch(this.f29851f, 0, this.f29850e.length, i2 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private ByteString b() {
        return new ByteString(toByteArray());
    }

    private Object writeReplace() {
        return b();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.czhj.wire.okio.ByteString
    public String base64() {
        return b().base64();
    }

    @Override // com.czhj.wire.okio.ByteString
    public String base64Url() {
        return b().base64Url();
    }

    @Override // com.czhj.wire.okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.czhj.wire.okio.ByteString
    public byte getByte(int i2) {
        Util.checkOffsetAndCount(this.f29851f[this.f29850e.length - 1], i2, 1L);
        int iA = a(i2);
        int i3 = iA == 0 ? 0 : this.f29851f[iA - 1];
        int[] iArr = this.f29851f;
        byte[][] bArr = this.f29850e;
        return bArr[iA][(i2 - i3) + iArr[bArr.length + iA]];
    }

    @Override // com.czhj.wire.okio.ByteString
    public int hashCode() {
        int i2 = this.f29771c;
        if (i2 != 0) {
            return i2;
        }
        int length = this.f29850e.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = this.f29850e[i3];
            int[] iArr = this.f29851f;
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
        this.f29771c = i4;
        return i4;
    }

    @Override // com.czhj.wire.okio.ByteString
    public String hex() {
        return b().hex();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString hmacSha1(ByteString byteString) {
        return b().hmacSha1(byteString);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString hmacSha256(ByteString byteString) {
        return b().hmacSha256(byteString);
    }

    @Override // com.czhj.wire.okio.ByteString
    public int indexOf(byte[] bArr, int i2) {
        return b().indexOf(bArr, i2);
    }

    @Override // com.czhj.wire.okio.ByteString
    public int lastIndexOf(byte[] bArr, int i2) {
        return b().lastIndexOf(bArr, i2);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString md5() {
        return b().md5();
    }

    @Override // com.czhj.wire.okio.ByteString
    public boolean rangeEquals(int i2, ByteString byteString, int i3, int i4) {
        if (i2 < 0 || i2 > size() - i4) {
            return false;
        }
        int iA = a(i2);
        while (i4 > 0) {
            int i5 = iA == 0 ? 0 : this.f29851f[iA - 1];
            int iMin = Math.min(i4, ((this.f29851f[iA] - i5) + i5) - i2);
            int[] iArr = this.f29851f;
            byte[][] bArr = this.f29850e;
            if (!byteString.rangeEquals(i3, bArr[iA], (i2 - i5) + iArr[bArr.length + iA], iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iA++;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString sha1() {
        return b().sha1();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString sha256() {
        return b().sha256();
    }

    @Override // com.czhj.wire.okio.ByteString
    public int size() {
        return this.f29851f[this.f29850e.length - 1];
    }

    @Override // com.czhj.wire.okio.ByteString
    public String string(Charset charset) {
        return b().string(charset);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString substring(int i2) {
        return b().substring(i2);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString toAsciiLowercase() {
        return b().toAsciiLowercase();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString toAsciiUppercase() {
        return b().toAsciiUppercase();
    }

    @Override // com.czhj.wire.okio.ByteString
    public byte[] toByteArray() {
        int[] iArr = this.f29851f;
        byte[][] bArr = this.f29850e;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr2 = this.f29851f;
            int i4 = iArr2[length + i2];
            int i5 = iArr2[i2];
            System.arraycopy(this.f29850e[i2], i4, bArr2, i3, i5 - i3);
            i2++;
            i3 = i5;
        }
        return bArr2;
    }

    @Override // com.czhj.wire.okio.ByteString
    public String toString() {
        return b().toString();
    }

    @Override // com.czhj.wire.okio.ByteString
    public String utf8() {
        return b().utf8();
    }

    @Override // com.czhj.wire.okio.ByteString
    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int length = this.f29850e.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f29851f;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            outputStream.write(this.f29850e[i2], i4, i5 - i3);
            i2++;
            i3 = i5;
        }
    }

    @Override // com.czhj.wire.okio.ByteString
    public void a(Buffer buffer) {
        int length = this.f29850e.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f29851f;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            Segment segment = new Segment(this.f29850e[i2], i4, (i4 + i5) - i3, true, false);
            Segment segment2 = buffer.f29764b;
            if (segment2 == null) {
                segment.f29846i = segment;
                segment.f29845h = segment;
                buffer.f29764b = segment;
            } else {
                segment2.f29846i.push(segment);
            }
            i2++;
            i3 = i5;
        }
        buffer.f29765c += i3;
    }

    @Override // com.czhj.wire.okio.ByteString
    public boolean rangeEquals(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0 || i2 > size() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int iA = a(i2);
        while (i4 > 0) {
            int i5 = iA == 0 ? 0 : this.f29851f[iA - 1];
            int iMin = Math.min(i4, ((this.f29851f[iA] - i5) + i5) - i2);
            int[] iArr = this.f29851f;
            byte[][] bArr2 = this.f29850e;
            if (!Util.arrayRangeEquals(bArr2[iA], (i2 - i5) + iArr[bArr2.length + iA], bArr, i3, iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iA++;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString substring(int i2, int i3) {
        return b().substring(i2, i3);
    }

    @Override // com.czhj.wire.okio.ByteString
    public byte[] a() {
        return toByteArray();
    }
}
