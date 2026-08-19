package com.byazt.ndb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, 832, 28})
/* loaded from: classes3.dex */
public final class hp implements jx, l, Cloneable, ByteChannel {
    public static final byte[] jx = {com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 97, 98, 99, 100, 101, 102};
    public a hp;

    /* renamed from: l, reason: collision with root package name */
    public long f23540l;

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hp)) {
            return false;
        }
        hp hpVar = (hp) obj;
        long j2 = this.f23540l;
        if (j2 != hpVar.f23540l) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        a aVar = this.hp;
        a aVar2 = hpVar.hp;
        int i2 = aVar.f23537l;
        int i3 = aVar2.f23537l;
        while (j3 < this.f23540l) {
            long jMin = Math.min(aVar.jx - i2, aVar2.jx - i3);
            int i4 = 0;
            while (i4 < jMin) {
                int i5 = i2 + 1;
                int i6 = i3 + 1;
                if (aVar.hp[i2] != aVar2.hp[i3]) {
                    return false;
                }
                i4++;
                i2 = i5;
                i3 = i6;
            }
            if (i2 == aVar.jx) {
                aVar = aVar.f23535a;
                i2 = aVar.f23537l;
            }
            if (i3 == aVar2.jx) {
                aVar2 = aVar2.f23535a;
                i3 = aVar2.f23537l;
            }
            j3 += jMin;
        }
        return true;
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        a aVar = this.hp;
        if (aVar == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = aVar.jx;
            for (int i4 = aVar.f23537l; i4 < i3; i4++) {
                i2 = (i2 * 31) + aVar.hp[i4];
            }
            aVar = aVar.f23535a;
        } while (aVar != this.hp);
        return i2;
    }

    public boolean hp() {
        return this.f23540l == 0;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public hp clone() {
        hp hpVar = new hp();
        if (this.f23540l == 0) {
            return hpVar;
        }
        a aVarHp = this.hp.hp();
        hpVar.hp = aVarHp;
        aVarHp.eb = aVarHp;
        aVarHp.f23535a = aVarHp;
        a aVar = this.hp;
        while (true) {
            aVar = aVar.f23535a;
            if (aVar == this.hp) {
                hpVar.f23540l = this.f23540l;
                return hpVar;
            }
            hpVar.hp.eb.hp(aVar.hp());
        }
    }

    public String jx() {
        try {
            return hp(this.f23540l, e.hp);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public byte l() {
        long j2 = this.f23540l;
        if (j2 == 0) {
            throw new IllegalStateException("size == 0");
        }
        a aVar = this.hp;
        int i2 = aVar.f23537l;
        int i3 = aVar.jx;
        int i4 = i2 + 1;
        byte b3 = aVar.hp[i2];
        this.f23540l = j2 - 1;
        if (i4 != i3) {
            aVar.f23537l = i4;
            return b3;
        }
        this.hp = aVar.l();
        eb.hp(aVar);
        return b3;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        a aVar = this.hp;
        if (aVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), aVar.jx - aVar.f23537l);
        byteBuffer.put(aVar.hp, aVar.f23537l, iMin);
        int i2 = aVar.f23537l + iMin;
        aVar.f23537l = i2;
        this.f23540l -= iMin;
        if (i2 == aVar.jx) {
            this.hp = aVar.l();
            eb.hp(aVar);
        }
        return iMin;
    }

    public String toString() {
        return w().toString();
    }

    public final j w() {
        long j2 = this.f23540l;
        if (j2 <= 2147483647L) {
            return j((int) j2);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f23540l);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i2 = iRemaining;
        while (i2 > 0) {
            a aVarJx = jx(1);
            int iMin = Math.min(i2, 8192 - aVarJx.jx);
            byteBuffer.get(aVarJx.hp, aVarJx.jx, iMin);
            i2 -= iMin;
            aVarJx.jx += iMin;
        }
        this.f23540l += iRemaining;
        return iRemaining;
    }

    public String hp(long j2, Charset charset) throws EOFException {
        e.hp(this.f23540l, 0L, j2);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j2 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j2)));
        }
        if (j2 == 0) {
            return "";
        }
        a aVar = this.hp;
        int i2 = aVar.f23537l;
        if (i2 + j2 > aVar.jx) {
            return new String(hp(j2), charset);
        }
        String str = new String(aVar.hp, i2, (int) j2, charset);
        int i3 = (int) (aVar.f23537l + j2);
        aVar.f23537l = i3;
        this.f23540l -= j2;
        if (i3 == aVar.jx) {
            this.hp = aVar.l();
            eb.hp(aVar);
        }
        return str;
    }

    public a jx(int i2) {
        if (i2 > 0 && i2 <= 8192) {
            a aVar = this.hp;
            if (aVar == null) {
                a aVarHp = eb.hp();
                this.hp = aVarHp;
                aVarHp.eb = aVarHp;
                aVarHp.f23535a = aVarHp;
                return aVarHp;
            }
            a aVar2 = aVar.eb;
            return (aVar2.jx + i2 > 8192 || !aVar2.f23538w) ? aVar2.hp(eb.hp()) : aVar2;
        }
        throw new IllegalArgumentException();
    }

    public final j j(int i2) {
        if (i2 == 0) {
            return j.jx;
        }
        return new s(this, i2);
    }

    public hp l(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            long j2 = i3;
            e.hp(bArr.length, i2, j2);
            int i4 = i3 + i2;
            while (i2 < i4) {
                a aVarJx = jx(1);
                int iMin = Math.min(i4 - i2, 8192 - aVarJx.jx);
                System.arraycopy(bArr, i2, aVarJx.hp, aVarJx.jx, iMin);
                i2 += iMin;
                aVarJx.jx += iMin;
            }
            this.f23540l += j2;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public byte[] hp(long j2) throws EOFException {
        e.hp(this.f23540l, 0L, j2);
        if (j2 <= 2147483647L) {
            byte[] bArr = new byte[(int) j2];
            hp(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j2)));
    }

    public void hp(byte[] bArr) throws EOFException {
        int i2 = 0;
        while (i2 < bArr.length) {
            int iHp = hp(bArr, i2, bArr.length - i2);
            if (iHp == -1) {
                throw new EOFException();
            }
            i2 += iHp;
        }
    }

    public hp l(int i2) {
        a aVarJx = jx(1);
        byte[] bArr = aVarJx.hp;
        int i3 = aVarJx.jx;
        aVarJx.jx = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f23540l++;
        return this;
    }

    public int hp(byte[] bArr, int i2, int i3) {
        e.hp(bArr.length, i2, i3);
        a aVar = this.hp;
        if (aVar == null) {
            return -1;
        }
        int iMin = Math.min(i3, aVar.jx - aVar.f23537l);
        System.arraycopy(aVar.hp, aVar.f23537l, bArr, i2, iMin);
        int i4 = aVar.f23537l + iMin;
        aVar.f23537l = i4;
        this.f23540l -= iMin;
        if (i4 == aVar.jx) {
            this.hp = aVar.l();
            eb.hp(aVar);
        }
        return iMin;
    }

    public hp l(long j2) {
        if (j2 == 0) {
            return l(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        a aVarJx = jx(iNumberOfTrailingZeros);
        byte[] bArr = aVarJx.hp;
        int i2 = aVarJx.jx;
        for (int i3 = (i2 + iNumberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = jx[(int) (15 & j2)];
            j2 >>>= 4;
        }
        aVarJx.jx += iNumberOfTrailingZeros;
        this.f23540l += iNumberOfTrailingZeros;
        return this;
    }

    public hp hp(String str) {
        return hp(str, 0, str.length());
    }

    public hp hp(String str, int i2, int i3) {
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i2)));
        }
        if (i3 >= i2) {
            if (i3 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
            }
            while (i2 < i3) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 < 128) {
                    a aVarJx = jx(1);
                    byte[] bArr = aVarJx.hp;
                    int i4 = aVarJx.jx - i2;
                    int iMin = Math.min(i3, 8192 - i4);
                    int i5 = i2 + 1;
                    bArr[i2 + i4] = (byte) cCharAt2;
                    while (true) {
                        i2 = i5;
                        if (i2 >= iMin || (cCharAt = str.charAt(i2)) >= 128) {
                            break;
                        }
                        i5 = i2 + 1;
                        bArr[i2 + i4] = (byte) cCharAt;
                    }
                    int i6 = aVarJx.jx;
                    int i7 = (i4 + i2) - i6;
                    aVarJx.jx = i6 + i7;
                    this.f23540l += i7;
                } else {
                    if (cCharAt2 < 2048) {
                        l((cCharAt2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                        l((cCharAt2 & '?') | 128);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i8 = i2 + 1;
                        char cCharAt3 = i8 < i3 ? str.charAt(i8) : (char) 0;
                        if (cCharAt2 <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i9 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            l((i9 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            l(((i9 >> 12) & 63) | 128);
                            l(((i9 >> 6) & 63) | 128);
                            l((i9 & 63) | 128);
                            i2 += 2;
                        } else {
                            l(63);
                            i2 = i8;
                        }
                    } else {
                        l((cCharAt2 >> '\f') | 224);
                        l(((cCharAt2 >> 6) & 63) | 128);
                        l((cCharAt2 & '?') | 128);
                    }
                    i2++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }

    public hp hp(int i2) {
        if (i2 < 128) {
            l(i2);
            return this;
        }
        if (i2 < 2048) {
            l((i2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
            l((i2 & 63) | 128);
            return this;
        }
        if (i2 < 65536) {
            if (i2 >= 55296 && i2 <= 57343) {
                l(63);
                return this;
            }
            l((i2 >> 12) | 224);
            l(((i2 >> 6) & 63) | 128);
            l((i2 & 63) | 128);
            return this;
        }
        if (i2 <= 1114111) {
            l((i2 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            l(((i2 >> 12) & 63) | 128);
            l(((i2 >> 6) & 63) | 128);
            l((i2 & 63) | 128);
            return this;
        }
        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i2));
    }

    public hp hp(String str, int i2, int i3, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i2)));
        }
        if (i3 >= i2) {
            if (i3 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
            }
            if (charset != null) {
                if (charset.equals(e.hp)) {
                    return hp(str, i2, i3);
                }
                byte[] bytes = str.substring(i2, i3).getBytes(charset);
                return l(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }
}
