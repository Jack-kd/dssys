package com.ubix.ssp.ad.e.y.c;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private final ByteBuffer f47824a;

    public static class a extends IOException {
        public a(int i2, int i3) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i2 + " limit " + i3 + ").");
        }
    }

    private b(ByteBuffer byteBuffer) {
        this.f47824a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int a(double d2) {
        return 8;
    }

    public static int c(int i2) {
        if (i2 >= 0) {
            return d(i2);
        }
        return 10;
    }

    public static int d(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int e(int i2) {
        return 4;
    }

    public static int f(int i2) {
        return d(i(i2));
    }

    public static int g(int i2) {
        return d(h.a(i2, 0));
    }

    public static int h(int i2) {
        return d(i2);
    }

    public static int i(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public int b() {
        return this.f47824a.remaining();
    }

    public void j(int i2) throws a {
        o(i2);
    }

    public void k(int i2) throws a {
        n(i2);
    }

    public void l(int i2) throws a {
        if (i2 >= 0) {
            o(i2);
        } else {
            k(i2);
        }
    }

    public void m(int i2) throws a {
        a((byte) i2);
    }

    public void n(int i2) throws a {
        if (this.f47824a.remaining() < 4) {
            throw new a(this.f47824a.position(), this.f47824a.limit());
        }
        this.f47824a.putInt(i2);
    }

    public void o(int i2) throws a {
        while ((i2 & (-128)) != 0) {
            m((i2 & 127) | 128);
            i2 >>>= 7;
        }
        m(i2);
    }

    public void p(int i2) throws a {
        n(i2);
    }

    public void q(int i2) throws a {
        o(i(i2));
    }

    public void r(int i2) throws a {
        o(i2);
    }

    private b(byte[] bArr, int i2, int i3) {
        this(ByteBuffer.wrap(bArr, i2, i3));
    }

    public static int a(float f2) {
        return 4;
    }

    public static int b(int i2) {
        return 4;
    }

    public static int c(int i2, int i3) {
        return g(i2) + c(i3);
    }

    public static int d(int i2, int i3) {
        return g(i2) + e(i3);
    }

    public static int e(int i2, int i3) {
        return g(i2) + f(i3);
    }

    public static int f(int i2, int i3) {
        return g(i2) + h(i3);
    }

    public static long g(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    public void h(int i2, int i3) throws a {
        l(i2, 5);
        k(i3);
    }

    public void i(int i2, int i3) throws a {
        l(i2, 0);
        l(i3);
    }

    public void j(int i2, int i3) throws a {
        l(i2, 5);
        p(i3);
    }

    public void k(int i2, int i3) throws a {
        l(i2, 0);
        q(i3);
    }

    public void l(int i2, int i3) throws a {
        o(h.a(i2, i3));
    }

    public void m(int i2, int i3) throws a {
        l(i2, 0);
        r(i3);
    }

    public void n(long j2) throws a {
        k(j2);
    }

    public static int a(int i2) {
        return d(i2);
    }

    public static int b(int i2, int i3) {
        return g(i2) + b(i3);
    }

    public static int c(int i2, long j2) {
        return g(i2) + d(j2);
    }

    public static int d(int i2, long j2) {
        return g(i2) + e(j2);
    }

    public static int e(int i2, long j2) {
        return g(i2) + f(j2);
    }

    public static int f(long j2) {
        return c(j2);
    }

    public void g(int i2, int i3) throws a {
        l(i2, 0);
        j(i3);
    }

    public void h(int i2, long j2) throws a {
        l(i2, 1);
        l(j2);
    }

    public void i(int i2, long j2) throws a {
        l(i2, 0);
        m(j2);
    }

    public void j(int i2, long j2) throws a {
        l(i2, 0);
        n(j2);
    }

    public void k(long j2) throws a {
        while (((-128) & j2) != 0) {
            m((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        m((int) j2);
    }

    public void l(long j2) throws a {
        j(j2);
    }

    public void m(long j2) throws a {
        k(g(j2));
    }

    public static int a(int i2, double d2) {
        return g(i2) + a(d2);
    }

    public static int b(int i2, long j2) {
        return g(i2) + b(j2);
    }

    public static int c(long j2) {
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (((-16384) & j2) == 0) {
            return 2;
        }
        if (((-2097152) & j2) == 0) {
            return 3;
        }
        if (((-268435456) & j2) == 0) {
            return 4;
        }
        if (((-34359738368L) & j2) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j2) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j2) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j2) == 0) {
            return 8;
        }
        return (j2 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int d(long j2) {
        return 8;
    }

    public static int e(long j2) {
        return c(g(j2));
    }

    public void f(int i2, long j2) throws a {
        l(i2, 1);
        h(j2);
    }

    public void g(int i2, long j2) throws a {
        l(i2, 0);
        i(j2);
    }

    public void h(long j2) throws a {
        j(j2);
    }

    public void i(long j2) throws a {
        k(j2);
    }

    public void j(long j2) throws a {
        if (this.f47824a.remaining() < 8) {
            throw new a(this.f47824a.position(), this.f47824a.limit());
        }
        this.f47824a.putLong(j2);
    }

    public static int a(int i2, float f2) {
        return g(i2) + a(f2);
    }

    public static int b(int i2, f fVar) {
        return g(i2) + b(fVar);
    }

    public void c(int i2, f fVar) throws a {
        l(i2, 3);
        c(fVar);
        l(i2, 4);
    }

    public void d(int i2, f fVar) throws a {
        l(i2, 2);
        d(fVar);
    }

    public static int a(int i2, int i3) {
        return g(i2) + a(i3);
    }

    public static int b(long j2) {
        return c(j2);
    }

    public void c(f fVar) {
        fVar.a(this);
    }

    public void d(f fVar) throws a {
        o(fVar.c());
        fVar.a(this);
    }

    public static int a(int i2, int i3, Object obj) {
        switch (i3) {
            case 1:
                return a(i2, ((Double) obj).doubleValue());
            case 2:
                return a(i2, ((Float) obj).floatValue());
            case 3:
                return b(i2, ((Long) obj).longValue());
            case 4:
                return e(i2, ((Long) obj).longValue());
            case 5:
                return c(i2, ((Integer) obj).intValue());
            case 6:
                return a(i2, ((Long) obj).longValue());
            case 7:
                return b(i2, ((Integer) obj).intValue());
            case 8:
                return a(i2, ((Boolean) obj).booleanValue());
            case 9:
                return a(i2, (String) obj);
            case 10:
                return a(i2, (f) obj);
            case 11:
                return b(i2, (f) obj);
            case 12:
                return a(i2, (byte[]) obj);
            case 13:
                return f(i2, ((Integer) obj).intValue());
            case 14:
                return a(i2, ((Integer) obj).intValue());
            case 15:
                return d(i2, ((Integer) obj).intValue());
            case 16:
                return c(i2, ((Long) obj).longValue());
            case 17:
                return e(i2, ((Integer) obj).intValue());
            case 18:
                return d(i2, ((Long) obj).longValue());
            default:
                throw new IllegalArgumentException("Unknown type: " + i3);
        }
    }

    public static int b(f fVar) {
        int iD = fVar.d();
        return d(iD) + iD;
    }

    public void c(byte[] bArr) throws a {
        b(bArr, 0, bArr.length);
    }

    public static int a(int i2, long j2) {
        return g(i2) + a(j2);
    }

    public void b(double d2) throws a {
        j(Double.doubleToLongBits(d2));
    }

    public static int a(int i2, f fVar) {
        return (g(i2) * 2) + a(fVar);
    }

    public void b(float f2) throws a {
        n(Float.floatToIntBits(f2));
    }

    public static int a(int i2, String str) {
        return g(i2) + a(str);
    }

    public void b(int i2, double d2) throws a {
        l(i2, 1);
        b(d2);
    }

    public static int a(int i2, boolean z2) {
        return g(i2) + a(z2);
    }

    public void b(int i2, float f2) throws a {
        l(i2, 5);
        b(f2);
    }

    public static int a(int i2, byte[] bArr) {
        return g(i2) + a(bArr);
    }

    public void b(int i2, int i3, Object obj) throws IOException {
        switch (i3) {
            case 1:
                b(i2, ((Double) obj).doubleValue());
                return;
            case 2:
                b(i2, ((Float) obj).floatValue());
                return;
            case 3:
                g(i2, ((Long) obj).longValue());
                return;
            case 4:
                j(i2, ((Long) obj).longValue());
                return;
            case 5:
                i(i2, ((Integer) obj).intValue());
                return;
            case 6:
                f(i2, ((Long) obj).longValue());
                return;
            case 7:
                h(i2, ((Integer) obj).intValue());
                return;
            case 8:
                b(i2, ((Boolean) obj).booleanValue());
                return;
            case 9:
                b(i2, (String) obj);
                return;
            case 10:
                c(i2, (f) obj);
                return;
            case 11:
                d(i2, (f) obj);
                return;
            case 12:
                b(i2, (byte[]) obj);
                return;
            case 13:
                m(i2, ((Integer) obj).intValue());
                return;
            case 14:
                g(i2, ((Integer) obj).intValue());
                return;
            case 15:
                j(i2, ((Integer) obj).intValue());
                return;
            case 16:
                h(i2, ((Long) obj).longValue());
                return;
            case 17:
                k(i2, ((Integer) obj).intValue());
                return;
            case 18:
                i(i2, ((Long) obj).longValue());
                return;
            default:
                throw new IOException("Unknown type: " + i3);
        }
    }

    public static int a(long j2) {
        return 8;
    }

    public void b(int i2, String str) throws a {
        l(i2, 2);
        b(str);
    }

    public static int a(f fVar) {
        return fVar.d();
    }

    public void b(int i2, boolean z2) throws a {
        l(i2, 0);
        b(z2);
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int iA = length;
        while (true) {
            if (i2 < length) {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt >= 2048) {
                    iA += a(charSequence, i2);
                    break;
                }
                iA += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                break;
            }
        }
        if (iA >= length) {
            return iA;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (iA + 4294967296L));
    }

    public void b(int i2, byte[] bArr) throws a {
        l(i2, 2);
        b(bArr);
    }

    private static int a(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        int i3 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
            } else {
                i3 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i2) < 65536) {
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i2);
                    }
                    i2++;
                }
            }
            i2++;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            char c2 = cCharAt;
            if (cCharAt >= 128) {
                if (cCharAt < 2048) {
                    i2 = (cCharAt >>> 6) | 960;
                } else {
                    if (cCharAt >= 55296 && 57343 >= cCharAt) {
                        int i4 = i3 + 1;
                        if (i4 != charSequence.length()) {
                            char cCharAt2 = charSequence.charAt(i4);
                            if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                                int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                                byteBuffer.put((byte) ((codePoint >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA));
                                byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint & 63) | 128));
                                i3 = i4;
                            } else {
                                i3 = i4;
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("Unpaired surrogate at index ");
                        sb.append(i3 - 1);
                        throw new IllegalArgumentException(sb.toString());
                    }
                    byteBuffer.put((byte) ((cCharAt >>> '\f') | 480));
                    i2 = ((cCharAt >>> 6) & 63) | 128;
                }
                byteBuffer.put((byte) i2);
                c2 = (cCharAt & '?') | 128;
                byteBuffer.put((byte) c2);
            } else {
                byteBuffer.put((byte) c2);
            }
            i3++;
        }
    }

    private static int a(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        int i4;
        char cCharAt;
        int length = charSequence.length();
        int i5 = i3 + i2;
        int i6 = 0;
        while (i6 < length && (i4 = i6 + i2) < i5 && (cCharAt = charSequence.charAt(i6)) < 128) {
            bArr[i4] = (byte) cCharAt;
            i6++;
        }
        if (i6 == length) {
            return i2 + length;
        }
        int i7 = i2 + i6;
        while (i6 < length) {
            char cCharAt2 = charSequence.charAt(i6);
            if (cCharAt2 < 128 && i7 < i5) {
                bArr[i7] = (byte) cCharAt2;
                i7++;
            } else if (cCharAt2 < 2048 && i7 <= i5 - 2) {
                int i8 = i7 + 1;
                bArr[i7] = (byte) ((cCharAt2 >>> 6) | 960);
                i7 += 2;
                bArr[i8] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i7 > i5 - 3) {
                    if (i7 > i5 - 4) {
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i7);
                    }
                    int i9 = i6 + 1;
                    if (i9 != charSequence.length()) {
                        char cCharAt3 = charSequence.charAt(i9);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i7] = (byte) ((codePoint >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i10 = i7 + 3;
                            bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i7 += 4;
                            bArr[i10] = (byte) ((codePoint & 63) | 128);
                            i6 = i9;
                        } else {
                            i6 = i9;
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unpaired surrogate at index ");
                    sb.append(i6 - 1);
                    throw new IllegalArgumentException(sb.toString());
                }
                bArr[i7] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i11 = i7 + 2;
                bArr[i7 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i7 += 3;
                bArr[i11] = (byte) ((cCharAt2 & '?') | 128);
            }
            i6++;
        }
        return i7;
    }

    public void b(String str) throws a {
        try {
            int iD = d(str.length());
            if (iD != d(str.length() * 3)) {
                o(a((CharSequence) str));
                a(str, this.f47824a);
                return;
            }
            int iPosition = this.f47824a.position();
            if (this.f47824a.remaining() < iD) {
                throw new a(iPosition + iD, this.f47824a.limit());
            }
            this.f47824a.position(iPosition + iD);
            a(str, this.f47824a);
            int iPosition2 = this.f47824a.position();
            this.f47824a.position(iPosition);
            o((iPosition2 - iPosition) - iD);
            this.f47824a.position(iPosition2);
        } catch (BufferOverflowException e2) {
            a aVar = new a(this.f47824a.position(), this.f47824a.limit());
            aVar.initCause(e2);
            throw aVar;
        }
    }

    public static int a(String str) {
        int iA = a((CharSequence) str);
        return d(iA) + iA;
    }

    public void b(boolean z2) throws a {
        m(z2 ? 1 : 0);
    }

    public static int a(boolean z2) {
        return 1;
    }

    public void b(byte[] bArr) throws a {
        o(bArr.length);
        c(bArr);
    }

    public static int a(byte[] bArr) {
        return d(bArr.length) + bArr.length;
    }

    public void b(byte[] bArr, int i2, int i3) throws a {
        if (this.f47824a.remaining() < i3) {
            throw new a(this.f47824a.position(), this.f47824a.limit());
        }
        this.f47824a.put(bArr, i2, i3);
    }

    public static b a(byte[] bArr, int i2, int i3) {
        return new b(bArr, i2, i3);
    }

    public void a() {
        if (b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void a(byte b3) throws a {
        if (!this.f47824a.hasRemaining()) {
            throw new a(this.f47824a.position(), this.f47824a.limit());
        }
        this.f47824a.put(b3);
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            b(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e2) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e2);
            throw bufferOverflowException;
        }
    }
}
