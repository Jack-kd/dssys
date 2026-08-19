package com.kwad.sdk.utils.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.ek;
import java.nio.charset.Charset;
import okio.Utf8;

/* loaded from: classes4.dex */
public final class b {
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    private char[] brL;
    public byte[] brM;
    public int position;

    public b(int i2) {
        this(new byte[i2], 0);
    }

    private int K(int i2, int i3) {
        while ((i3 & (-128)) != 0) {
            this.brM[i2] = (byte) ((i3 & 127) | 128);
            i3 >>>= 7;
            i2++;
        }
        int i4 = i2 + 1;
        this.brM[i2] = (byte) i3;
        return i4;
    }

    private long getLong(int i2) {
        byte[] bArr = this.brM;
        int i3 = i2 + 6;
        return (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i3] & 255) << 48) | (bArr[i2 + 7] << 56);
    }

    public static int gh(int i2) {
        if ((i2 >> 7) == 0) {
            return 1;
        }
        if ((i2 >> 14) == 0) {
            return 2;
        }
        if ((i2 >> 21) == 0) {
            return 3;
        }
        return (i2 >> 28) == 0 ? 4 : 5;
    }

    private char[] gj(int i2) {
        char[] cArr = this.brL;
        if (cArr == null) {
            if (i2 <= 256) {
                this.brL = new char[256];
            } else {
                this.brL = new char[2048];
            }
        } else if (cArr.length < i2) {
            this.brL = new char[2048];
        }
        return this.brL;
    }

    private String gk(int i2) {
        if (i2 > 2048) {
            return new String(this.brM, this.position, i2, UTF_8);
        }
        char[] cArrGj = gj(i2);
        byte[] bArr = this.brM;
        int i3 = this.position;
        int i4 = i2 + i3;
        int i5 = 0;
        while (i3 < i4) {
            int i6 = i3 + 1;
            byte b3 = bArr[i3];
            if (b3 > 0) {
                cArrGj[i5] = (char) (b3 ^ 1);
                i5++;
                i3 = i6;
            } else if (b3 < -32) {
                i3 += 2;
                cArrGj[i5] = (char) ((bArr[i6] & 63) | ((b3 & 31) << 6));
                i5++;
            } else if (b3 < -16) {
                int i7 = i3 + 2;
                i3 += 3;
                cArrGj[i5] = (char) (((bArr[i6] & 63) << 6) | ((b3 & ek.f49295m) << 12) | (bArr[i7] & 63));
                i5++;
            } else {
                byte b4 = bArr[i6];
                int i8 = i3 + 3;
                byte b5 = bArr[i3 + 2];
                i3 += 4;
                int i9 = ((b4 & 63) << 12) | ((b3 & 7) << 18) | ((b5 & 63) << 6) | (bArr[i8] & 63);
                int i10 = i5 + 1;
                cArrGj[i5] = (char) ((i9 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                i5 += 2;
                cArrGj[i10] = (char) ((i9 & 1023) + Utf8.LOG_SURROGATE_HEADER);
            }
        }
        if (i3 <= i4) {
            return new String(cArrGj, 0, i5);
        }
        throw new IllegalArgumentException("Invalid String");
    }

    private String gl(int i2) {
        if (i2 > 2048) {
            return new String(this.brM, this.position, i2, UTF_8);
        }
        char[] cArrGj = gj(i2);
        byte[] bArr = this.brM;
        int i3 = this.position;
        int i4 = i2 + i3;
        int i5 = 0;
        while (i3 < i4) {
            int i6 = i3 + 1;
            byte b3 = bArr[i3];
            if (b3 > 0) {
                cArrGj[i5] = (char) b3;
                i5++;
                i3 = i6;
            } else if (b3 < -32) {
                i3 += 2;
                cArrGj[i5] = (char) ((bArr[i6] & 63) | ((b3 & 31) << 6));
                i5++;
            } else if (b3 < -16) {
                int i7 = i3 + 2;
                i3 += 3;
                cArrGj[i5] = (char) (((bArr[i6] & 63) << 6) | ((b3 & ek.f49295m) << 12) | (bArr[i7] & 63));
                i5++;
            } else {
                byte b4 = bArr[i6];
                int i8 = i3 + 3;
                byte b5 = bArr[i3 + 2];
                i3 += 4;
                int i9 = ((b4 & 63) << 12) | ((b3 & 7) << 18) | ((b5 & 63) << 6) | (bArr[i8] & 63);
                int i10 = i5 + 1;
                cArrGj[i5] = (char) ((i9 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                i5 += 2;
                cArrGj[i10] = (char) ((i9 & 1023) + Utf8.LOG_SURROGATE_HEADER);
            }
        }
        if (i3 <= i4) {
            return new String(cArrGj, 0, i5);
        }
        throw new IllegalArgumentException("Invalid String");
    }

    public static int iu(String str) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                i3++;
            } else if (cCharAt < 2048) {
                i3 += 2;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                i3 += 3;
            } else {
                i2 += 2;
                i3 += 4;
            }
            i2 = i4;
        }
        return i3;
    }

    private void iv(String str) {
        byte[] bArr = this.brM;
        int i2 = this.position;
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt < 128) {
                bArr[i2] = (byte) (cCharAt ^ 1);
                i2++;
            } else if (cCharAt < 2048) {
                int i5 = i2 + 1;
                bArr[i2] = (byte) ((cCharAt >>> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                i2 += 2;
                bArr[i5] = (byte) ((cCharAt & '?') | 128);
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                bArr[i2] = (byte) ((cCharAt >>> '\f') | 224);
                int i6 = i2 + 2;
                bArr[i2 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                i2 += 3;
                bArr[i6] = (byte) ((cCharAt & '?') | 128);
            } else {
                i3 += 2;
                int iCharAt = ((cCharAt << '\n') + str.charAt(i4)) - 56613888;
                bArr[i2] = (byte) ((iCharAt >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                bArr[i2 + 1] = (byte) (((iCharAt >>> 12) & 63) | 128);
                int i7 = i2 + 3;
                bArr[i2 + 2] = (byte) (((iCharAt >>> 6) & 63) | 128);
                i2 += 4;
                bArr[i7] = (byte) ((iCharAt & 63) | 128);
            }
            i3 = i4;
        }
        this.position = i2;
    }

    public static byte[] iw(String str) {
        byte[] bArr = new byte[iu(str)];
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                bArr[i3] = (byte) (cCharAt ^ 1);
                i3++;
            } else if (cCharAt < 2048) {
                int i5 = i3 + 1;
                bArr[i3] = (byte) ((cCharAt >>> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                i3 += 2;
                bArr[i5] = (byte) ((cCharAt & '?') | 128);
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                bArr[i3] = (byte) ((cCharAt >>> '\f') | 224);
                int i6 = i3 + 2;
                bArr[i3 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                i3 += 3;
                bArr[i6] = (byte) ((cCharAt & '?') | 128);
            } else {
                i2 += 2;
                int iCharAt = ((cCharAt << '\n') + str.charAt(i4)) - 56613888;
                bArr[i3] = (byte) ((iCharAt >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                bArr[i3 + 1] = (byte) (((iCharAt >>> 12) & 63) | 128);
                int i7 = i3 + 3;
                bArr[i3 + 2] = (byte) (((iCharAt >>> 6) & 63) | 128);
                i3 += 4;
                bArr[i7] = (byte) ((iCharAt & 63) | 128);
            }
            i2 = i4;
        }
        return bArr;
    }

    public static String j(byte[] bArr, int i2) {
        char[] cArr = new char[bArr.length];
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 + 1;
            byte b3 = bArr[i3];
            if (b3 > 0) {
                cArr[i4] = (char) (b3 ^ 1);
                i4++;
                i3 = i5;
            } else if (b3 < -32) {
                i3 += 2;
                cArr[i4] = (char) ((bArr[i5] & 63) | ((b3 & 31) << 6));
                i4++;
            } else if (b3 < -16) {
                int i6 = i3 + 2;
                i3 += 3;
                cArr[i4] = (char) (((bArr[i5] & 63) << 6) | ((b3 & ek.f49295m) << 12) | (bArr[i6] & 63));
                i4++;
            } else {
                byte b4 = bArr[i5];
                int i7 = i3 + 3;
                byte b5 = bArr[i3 + 2];
                i3 += 4;
                int i8 = ((b4 & 63) << 12) | ((b3 & 7) << 18) | ((b5 & 63) << 6) | (bArr[i7] & 63);
                int i9 = i4 + 1;
                cArr[i4] = (char) ((i8 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                i4 += 2;
                cArr[i9] = (char) ((i8 & 1023) + Utf8.LOG_SURROGATE_HEADER);
            }
        }
        if (i3 <= i2) {
            return new String(cArr, 0, i4);
        }
        throw new IllegalArgumentException("Invalid String");
    }

    public final void J(int i2, int i3) {
        byte[] bArr = this.brM;
        bArr[i2] = (byte) i3;
        bArr[i2 + 1] = (byte) (i3 >> 8);
        bArr[i2 + 2] = (byte) (i3 >> 16);
        bArr[i2 + 3] = (byte) (i3 >> 24);
    }

    public final long L(int i2, int i3) {
        long j2 = 0;
        if (i3 <= 0) {
            return 0L;
        }
        int i4 = i3 >> 3;
        int i5 = i3 & 7;
        int i6 = 0;
        int i7 = i2;
        for (int i8 = 0; i8 < i4; i8++) {
            j2 ^= getLong(i7);
            i7 += 8;
        }
        while (i6 < (i5 << 3)) {
            j2 ^= (this.brM[i7] & 255) << i6;
            i6 += 8;
            i7++;
        }
        int i9 = (i2 & 7) << 3;
        return (j2 >>> (64 - i9)) | (j2 << i9);
    }

    public final int Xj() {
        byte[] bArr = this.brM;
        int i2 = this.position;
        int i3 = i2 + 1;
        this.position = i3;
        byte b3 = bArr[i2];
        if ((b3 >> 7) == 0) {
            return b3;
        }
        int i4 = i2 + 2;
        this.position = i4;
        int i5 = (bArr[i3] << 7) | (b3 & 127);
        if ((i5 >> 14) == 0) {
            return i5;
        }
        int i6 = i2 + 3;
        this.position = i6;
        int i7 = (i5 & 16383) | (bArr[i4] << ek.f49294l);
        if ((i7 >> 21) == 0) {
            return i7;
        }
        int i8 = i2 + 4;
        this.position = i8;
        int i9 = (i7 & 2097151) | (bArr[i6] << 21);
        if ((i9 >> 28) == 0) {
            return i9;
        }
        this.position = i2 + 5;
        return (bArr[i8] << 28) | (i9 & 268435455);
    }

    public final void a(short s2) {
        byte[] bArr = this.brM;
        int i2 = this.position;
        int i3 = i2 + 1;
        this.position = i3;
        bArr[i2] = (byte) s2;
        this.position = i2 + 2;
        bArr[i3] = (byte) (s2 >> 8);
    }

    public final void bg(long j2) {
        h(this.position, j2);
        this.position += 8;
    }

    public final void e(byte b3) {
        byte[] bArr = this.brM;
        int i2 = this.position;
        this.position = i2 + 1;
        bArr[i2] = b3;
    }

    public final byte get() {
        byte[] bArr = this.brM;
        int i2 = this.position;
        this.position = i2 + 1;
        return bArr[i2];
    }

    public final byte[] getBytes(int i2) {
        byte[] bArr = new byte[i2];
        System.arraycopy(this.brM, this.position, bArr, 0, i2);
        this.position += i2;
        return bArr;
    }

    public final double getDouble() {
        return Double.longBitsToDouble(getLong());
    }

    public final float getFloat() {
        return Float.intBitsToFloat(getInt());
    }

    public final int getInt() {
        byte[] bArr = this.brM;
        int i2 = this.position;
        int i3 = i2 + 1;
        this.position = i3;
        int i4 = bArr[i2] & 255;
        int i5 = i2 + 2;
        this.position = i5;
        int i6 = ((bArr[i3] & 255) << 8) | i4;
        int i7 = i2 + 3;
        this.position = i7;
        int i8 = i6 | ((bArr[i5] & 255) << 16);
        this.position = i2 + 4;
        return (bArr[i7] << 24) | i8;
    }

    public final short getShort() {
        byte[] bArr = this.brM;
        int i2 = this.position;
        int i3 = i2 + 1;
        this.position = i3;
        int i4 = bArr[i2] & 255;
        this.position = i2 + 2;
        return (short) ((bArr[i3] << 8) | i4);
    }

    public final String getString(int i2) {
        if (i2 < 0) {
            return null;
        }
        if (i2 == 0) {
            return "";
        }
        String strGk = gk(i2);
        this.position += i2;
        return strGk;
    }

    public final void gf(int i2) {
        byte[] bArr = this.brM;
        int i3 = this.position;
        int i4 = i3 + 1;
        this.position = i4;
        bArr[i3] = (byte) i2;
        int i5 = i3 + 2;
        this.position = i5;
        bArr[i4] = (byte) (i2 >> 8);
        int i6 = i3 + 3;
        this.position = i6;
        bArr[i5] = (byte) (i2 >> 16);
        this.position = i3 + 4;
        bArr[i6] = (byte) (i2 >> 24);
    }

    public final void gg(int i2) {
        this.position = K(this.position, i2);
    }

    public final String gi(int i2) {
        if (i2 < 0) {
            return null;
        }
        if (i2 == 0) {
            return "";
        }
        String strGl = gl(i2);
        this.position += i2;
        return strGl;
    }

    public final void h(int i2, long j2) {
        byte[] bArr = this.brM;
        bArr[i2] = (byte) j2;
        bArr[i2 + 1] = (byte) (j2 >> 8);
        bArr[i2 + 2] = (byte) (j2 >> 16);
        bArr[i2 + 3] = (byte) (j2 >> 24);
        bArr[i2 + 4] = (byte) (j2 >> 32);
        bArr[i2 + 5] = (byte) (j2 >> 40);
        bArr[i2 + 6] = (byte) (j2 >> 48);
        bArr[i2 + 7] = (byte) (j2 >> 56);
    }

    public final void it(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        iv(str);
    }

    public final void p(byte[] bArr) {
        int length = bArr.length;
        if (length > 0) {
            System.arraycopy(bArr, 0, this.brM, this.position, length);
            this.position += length;
        }
    }

    public b(byte[] bArr) {
        this(bArr, 0);
    }

    public final long getLong() {
        long j2 = getLong(this.position);
        this.position += 8;
        return j2;
    }

    public b(byte[] bArr, int i2) {
        this.brL = null;
        this.brM = bArr;
        this.position = i2;
    }
}
