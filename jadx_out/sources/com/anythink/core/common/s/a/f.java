package com.anythink.core.common.s.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.ek;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okio.Utf8;

/* loaded from: classes2.dex */
final class f {

    /* renamed from: c, reason: collision with root package name */
    private static final int f7577c = 2048;

    /* renamed from: d, reason: collision with root package name */
    private static final String f7578d = "Invalid String";

    /* renamed from: a, reason: collision with root package name */
    public byte[] f7579a;

    /* renamed from: b, reason: collision with root package name */
    public int f7580b;

    /* renamed from: e, reason: collision with root package name */
    private char[] f7581e;

    public f(int i2) {
        this(new byte[i2], 0);
    }

    private int e() {
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        int i3 = i2 + 1;
        this.f7580b = i3;
        byte b3 = bArr[i2];
        if ((b3 >> 7) == 0) {
            return b3;
        }
        int i4 = i2 + 2;
        this.f7580b = i4;
        int i5 = (bArr[i3] << 7) | (b3 & 127);
        if ((i5 >> 14) == 0) {
            return i5;
        }
        int i6 = i2 + 3;
        this.f7580b = i6;
        int i7 = (i5 & 16383) | (bArr[i4] << ek.f49294l);
        if ((i7 >> 21) == 0) {
            return i7;
        }
        int i8 = i2 + 4;
        this.f7580b = i8;
        int i9 = (i7 & 2097151) | (bArr[i6] << 21);
        if ((i9 >> 28) == 0) {
            return i9;
        }
        this.f7580b = i2 + 5;
        return (bArr[i8] << 28) | (i9 & 268435455);
    }

    private static int f(int i2) {
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

    private byte[] g(int i2) {
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f7579a, this.f7580b, bArr, 0, i2);
        this.f7580b += i2;
        return bArr;
    }

    private char[] h(int i2) {
        char[] cArr = this.f7581e;
        if (cArr == null) {
            char[] cArr2 = i2 <= 256 ? new char[256] : new char[2048];
            this.f7581e = cArr2;
            return cArr2;
        }
        if (cArr.length >= i2) {
            return cArr;
        }
        char[] cArr3 = new char[2048];
        this.f7581e = cArr3;
        return cArr3;
    }

    public final byte a() {
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        this.f7580b = i2 + 1;
        return bArr[i2];
    }

    public final short b() {
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        int i3 = i2 + 1;
        this.f7580b = i3;
        int i4 = bArr[i2] & 255;
        this.f7580b = i2 + 2;
        return (short) ((bArr[i3] << 8) | i4);
    }

    public final int c() {
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        int i3 = i2 + 1;
        this.f7580b = i3;
        int i4 = bArr[i2] & 255;
        int i5 = i2 + 2;
        this.f7580b = i5;
        int i6 = ((bArr[i3] & 255) << 8) | i4;
        int i7 = i2 + 3;
        this.f7580b = i7;
        int i8 = i6 | ((bArr[i5] & 255) << 16);
        this.f7580b = i2 + 4;
        return (bArr[i7] << 24) | i8;
    }

    public final long d() {
        long jC = c(this.f7580b);
        this.f7580b += 8;
        return jC;
    }

    public f(byte[] bArr) {
        this(bArr, 0);
    }

    private int c(int i2, int i3) {
        while ((i3 & (-128)) != 0) {
            this.f7579a[i2] = (byte) ((i3 & 127) | 128);
            i3 >>>= 7;
            i2++;
        }
        int i4 = i2 + 1;
        this.f7579a[i2] = (byte) i3;
        return i4;
    }

    public final void a(byte b3) {
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        this.f7580b = i2 + 1;
        bArr[i2] = b3;
    }

    public final void b(int i2) {
        byte[] bArr = this.f7579a;
        int i3 = this.f7580b;
        int i4 = i3 + 1;
        this.f7580b = i4;
        bArr[i3] = (byte) i2;
        int i5 = i3 + 2;
        this.f7580b = i5;
        bArr[i4] = (byte) (i2 >> 8);
        int i6 = i3 + 3;
        this.f7580b = i6;
        bArr[i5] = (byte) (i2 >> 16);
        this.f7580b = i3 + 4;
        bArr[i6] = (byte) (i2 >> 24);
    }

    public f(byte[] bArr, int i2) {
        this.f7581e = null;
        this.f7579a = bArr;
        this.f7580b = i2;
    }

    private double d(com.anythink.core.common.s.a.a.a aVar) {
        return Double.longBitsToDouble(b(aVar));
    }

    public final void a(short s2) {
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        int i3 = i2 + 1;
        this.f7580b = i3;
        bArr[i2] = (byte) s2;
        this.f7580b = i2 + 2;
        bArr[i3] = (byte) (s2 >> 8);
    }

    public final long c(int i2) {
        byte[] bArr = this.f7579a;
        int i3 = i2 + 6;
        return (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i3] & 255) << 48) | (bArr[i2 + 7] << 56);
    }

    public final String d(int i2) {
        if (i2 < 0) {
            return null;
        }
        if (i2 == 0) {
            return "";
        }
        String str = i2 > 2048 ? new String(this.f7579a, this.f7580b, i2, StandardCharsets.UTF_8) : a(this.f7579a, this.f7580b, i2);
        this.f7580b += i2;
        return str;
    }

    private float c(com.anythink.core.common.s.a.a.a aVar) {
        return Float.intBitsToFloat(a(aVar));
    }

    public final int a(int i2) {
        byte[] bArr = this.f7579a;
        int i3 = ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
        return (bArr[i2 + 3] << 24) | i3 | ((bArr[i2 + 2] & 255) << 16);
    }

    private void c(String str) {
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt < 128) {
                bArr[i2] = (byte) cCharAt;
                i2++;
            } else if (cCharAt < 2048) {
                int i5 = i2 + 1;
                bArr[i2] = (byte) ((cCharAt >>> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                i2 += 2;
                bArr[i5] = (byte) ((cCharAt & '?') | 128);
            } else if (cCharAt >= 55296 && cCharAt <= 57343) {
                i3 += 2;
                int iCharAt = ((cCharAt << '\n') + str.charAt(i4)) - 56613888;
                bArr[i2] = (byte) ((iCharAt >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                bArr[i2 + 1] = (byte) (((iCharAt >>> 12) & 63) | 128);
                int i6 = i2 + 3;
                bArr[i2 + 2] = (byte) (((iCharAt >>> 6) & 63) | 128);
                i2 += 4;
                bArr[i6] = (byte) ((iCharAt & 63) | 128);
            } else {
                bArr[i2] = (byte) ((cCharAt >>> '\f') | 224);
                int i7 = i2 + 2;
                bArr[i2 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                i2 += 3;
                bArr[i7] = (byte) ((cCharAt & '?') | 128);
            }
            i3 = i4;
        }
        this.f7580b = i2;
    }

    private void e(int i2) {
        int i3 = this.f7580b;
        while ((i2 & (-128)) != 0) {
            this.f7579a[i3] = (byte) ((i2 & 127) | 128);
            i2 >>>= 7;
            i3++;
        }
        this.f7579a[i3] = (byte) i2;
        this.f7580b = i3 + 1;
    }

    public final int a(com.anythink.core.common.s.a.a.a aVar) {
        return aVar != null ? aVar.d() : c();
    }

    public final long b(com.anythink.core.common.s.a.a.a aVar) {
        return aVar != null ? aVar.f() : d();
    }

    public static int b(String str) {
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

    public final void a(int i2, int i3) {
        byte[] bArr = this.f7579a;
        bArr[i2] = (byte) i3;
        bArr[i2 + 1] = (byte) (i3 >> 8);
        bArr[i2 + 2] = (byte) (i3 >> 16);
        bArr[i2 + 3] = (byte) (i3 >> 24);
    }

    public final long b(int i2, int i3) {
        long jC = 0;
        if (i3 <= 0) {
            return 0L;
        }
        int i4 = i3 >> 3;
        int i5 = i3 & 7;
        int i6 = 0;
        int i7 = i2;
        for (int i8 = 0; i8 < i4; i8++) {
            jC ^= c(i7);
            i7 += 8;
        }
        while (i6 < (i5 << 3)) {
            jC ^= (this.f7579a[i7] & 255) << i6;
            i6 += 8;
            i7++;
        }
        int i9 = (i2 & 7) << 3;
        return (jC >>> (64 - i9)) | (jC << i9);
    }

    private byte[] b(com.anythink.core.common.s.a.a.a aVar, int i2) {
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f7579a, this.f7580b, bArr, 0, i2);
        this.f7580b += i2;
        return aVar != null ? aVar.b() : bArr;
    }

    public final void a(int i2, long j2) {
        byte[] bArr = this.f7579a;
        bArr[i2] = (byte) j2;
        bArr[i2 + 1] = (byte) (j2 >> 8);
        bArr[i2 + 2] = (byte) (j2 >> 16);
        bArr[i2 + 3] = (byte) (j2 >> 24);
        bArr[i2 + 4] = (byte) (j2 >> 32);
        bArr[i2 + 5] = (byte) (j2 >> 40);
        bArr[i2 + 6] = (byte) (j2 >> 48);
        bArr[i2 + 7] = (byte) (j2 >> 56);
    }

    public final void a(long j2) {
        a(this.f7580b, j2);
        this.f7580b += 8;
    }

    public final void a(byte[] bArr) {
        int length = bArr.length;
        if (length > 0) {
            System.arraycopy(bArr, 0, this.f7579a, this.f7580b, length);
            this.f7580b += length;
        }
    }

    public final String a(com.anythink.core.common.s.a.a.a aVar, int i2) {
        String str;
        if (aVar != null && i2 > 0) {
            byte[] bArr = this.f7579a;
            int i3 = this.f7580b;
            Arrays.copyOfRange(bArr, i3, i3 + i2);
            byte[] bArrB = aVar.b();
            if (bArrB == null) {
                str = null;
            } else {
                str = bArrB.length > 2048 ? new String(bArrB, StandardCharsets.UTF_8) : a(bArrB, 0, bArrB.length);
            }
            this.f7580b += i2;
            return str;
        }
        return d(i2);
    }

    public final void a(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        byte[] bArr = this.f7579a;
        int i2 = this.f7580b;
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt < 128) {
                bArr[i2] = (byte) cCharAt;
                i2++;
            } else if (cCharAt < 2048) {
                int i5 = i2 + 1;
                bArr[i2] = (byte) ((cCharAt >>> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                i2 += 2;
                bArr[i5] = (byte) ((cCharAt & '?') | 128);
            } else if (cCharAt >= 55296 && cCharAt <= 57343) {
                i3 += 2;
                int iCharAt = ((cCharAt << '\n') + str.charAt(i4)) - 56613888;
                bArr[i2] = (byte) ((iCharAt >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                bArr[i2 + 1] = (byte) (((iCharAt >>> 12) & 63) | 128);
                int i6 = i2 + 3;
                bArr[i2 + 2] = (byte) (((iCharAt >>> 6) & 63) | 128);
                i2 += 4;
                bArr[i6] = (byte) ((iCharAt & 63) | 128);
            } else {
                bArr[i2] = (byte) ((cCharAt >>> '\f') | 224);
                int i7 = i2 + 2;
                bArr[i2 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                i2 += 3;
                bArr[i7] = (byte) ((cCharAt & '?') | 128);
            }
            i3 = i4;
        }
        this.f7580b = i2;
    }

    public final synchronized String a(byte[] bArr, int i2, int i3) {
        char[] cArr;
        int i4;
        int i5;
        try {
            cArr = this.f7581e;
            if (cArr == null) {
                if (i3 <= 256) {
                    cArr = new char[256];
                } else {
                    cArr = new char[2048];
                }
                this.f7581e = cArr;
            } else if (cArr.length < i3) {
                cArr = new char[2048];
                this.f7581e = cArr;
            }
            int i6 = i3 + i2;
            i4 = 0;
            while (i2 < i6) {
                int i7 = i2 + 1;
                byte b3 = bArr[i2];
                if (b3 > 0) {
                    cArr[i4] = (char) b3;
                    i4++;
                    i2 = i7;
                } else {
                    if (b3 < -32) {
                        i2 += 2;
                        byte b4 = bArr[i7];
                        if (b3 >= -62 && b4 <= -65) {
                            i5 = i4 + 1;
                            cArr[i4] = (char) ((b4 & 63) | ((b3 & 31) << 6));
                        } else {
                            throw new IllegalArgumentException(f7578d);
                        }
                    } else if (b3 < -16) {
                        int i8 = i2 + 2;
                        byte b5 = bArr[i7];
                        i2 += 3;
                        byte b6 = bArr[i8];
                        if ((b3 != -32 || b5 >= -96) && ((b3 != -19 || b5 < -96) && b5 <= -65 && b6 <= -65)) {
                            i5 = i4 + 1;
                            cArr[i4] = (char) (((b5 & 63) << 6) | ((b3 & ek.f49295m) << 12) | (b6 & 63));
                        } else {
                            throw new IllegalArgumentException(f7578d);
                        }
                    } else {
                        byte b7 = bArr[i7];
                        int i9 = i2 + 3;
                        byte b8 = bArr[i2 + 2];
                        i2 += 4;
                        byte b9 = bArr[i9];
                        if (b7 <= -65 && (((b3 << 28) + (b7 + 112)) >> 30) == 0 && b8 <= -65 && b9 <= -65) {
                            int i10 = ((b7 & 63) << 12) | ((b3 & 7) << 18) | ((b8 & 63) << 6) | (b9 & 63);
                            int i11 = i4 + 1;
                            cArr[i4] = (char) ((i10 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                            i4 += 2;
                            cArr[i11] = (char) ((i10 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                        } else {
                            throw new IllegalArgumentException(f7578d);
                        }
                    }
                    i4 = i5;
                }
            }
            if (i2 <= i6) {
            } else {
                throw new IllegalArgumentException(f7578d);
            }
        } finally {
        }
        return new String(cArr, 0, i4);
    }
}
