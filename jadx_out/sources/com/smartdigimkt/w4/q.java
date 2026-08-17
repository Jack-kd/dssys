package com.smartdigimkt.w4;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.ek;
import java.nio.charset.StandardCharsets;
import okio.Utf8;

/* loaded from: classes5.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public char[] f44988a = null;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f44989b;

    /* renamed from: c, reason: collision with root package name */
    public int f44990c;

    public q(int i2, byte[] bArr) {
        this.f44989b = bArr;
        this.f44990c = i2;
    }

    public final void a(byte b3) {
        byte[] bArr = this.f44989b;
        int i2 = this.f44990c;
        this.f44990c = i2 + 1;
        bArr[i2] = b3;
    }

    public final void b(int i2, int i3) {
        byte[] bArr = this.f44989b;
        bArr[i2] = (byte) i3;
        bArr[i2 + 1] = (byte) (i3 >> 8);
        bArr[i2 + 2] = (byte) (i3 >> 16);
        bArr[i2 + 3] = (byte) (i3 >> 24);
    }

    public final String c(int i2) {
        if (i2 < 0) {
            return null;
        }
        if (i2 == 0) {
            return "";
        }
        String str = i2 > 2048 ? new String(this.f44989b, this.f44990c, i2, StandardCharsets.UTF_8) : a(this.f44989b, this.f44990c, i2);
        this.f44990c += i2;
        return str;
    }

    public final int a() {
        byte[] bArr = this.f44989b;
        int i2 = this.f44990c;
        int i3 = ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
        int i4 = i2 + 3;
        int i5 = i3 | ((bArr[i2 + 2] & 255) << 16);
        this.f44990c = i2 + 4;
        return (bArr[i4] << 24) | i5;
    }

    public final void a(int i2, long j2) {
        byte[] bArr = this.f44989b;
        bArr[i2] = (byte) j2;
        bArr[i2 + 1] = (byte) (j2 >> 8);
        bArr[i2 + 2] = (byte) (j2 >> 16);
        bArr[i2 + 3] = (byte) (j2 >> 24);
        bArr[i2 + 4] = (byte) (j2 >> 32);
        bArr[i2 + 5] = (byte) (j2 >> 40);
        bArr[i2 + 6] = (byte) (j2 >> 48);
        bArr[i2 + 7] = (byte) (j2 >> 56);
    }

    public final String b(int i2) {
        return c(i2);
    }

    public final void b(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        byte[] bArr = this.f44989b;
        int i2 = this.f44990c;
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
        this.f44990c = i2;
    }

    public final long a(int i2) {
        byte[] bArr = this.f44989b;
        int i3 = i2 + 6;
        return (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i3] & 255) << 48) | (bArr[i2 + 7] << 56);
    }

    public static int a(String str) {
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

    public final synchronized String a(byte[] bArr, int i2, int i3) {
        char[] cArr;
        int i4;
        int i5;
        try {
            cArr = this.f44988a;
            if (cArr == null) {
                if (i3 <= 256) {
                    cArr = new char[256];
                } else {
                    cArr = new char[2048];
                }
                this.f44988a = cArr;
            } else if (cArr.length < i3) {
                cArr = new char[2048];
                this.f44988a = cArr;
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
                            throw new IllegalArgumentException("Invalid String");
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
                            throw new IllegalArgumentException("Invalid String");
                        }
                    } else {
                        byte b7 = bArr[i7];
                        int i9 = i2 + 3;
                        byte b8 = bArr[i2 + 2];
                        i2 += 4;
                        byte b9 = bArr[i9];
                        if (b7 <= -65) {
                            if ((((b7 + 112) + (b3 << 28)) >> 30) == 0 && b8 <= -65 && b9 <= -65) {
                                int i10 = ((b7 & 63) << 12) | ((b3 & 7) << 18) | ((b8 & 63) << 6) | (b9 & 63);
                                int i11 = i4 + 1;
                                cArr[i4] = (char) ((i10 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                                i4 += 2;
                                cArr[i11] = (char) ((i10 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                            }
                        }
                        throw new IllegalArgumentException("Invalid String");
                    }
                    i4 = i5;
                }
            }
            if (i2 <= i6) {
            } else {
                throw new IllegalArgumentException("Invalid String");
            }
        } finally {
        }
        return new String(cArr, 0, i4);
    }

    public final long a(int i2, int i3) {
        long jA = 0;
        if (i3 <= 0) {
            return 0L;
        }
        int i4 = i3 >> 3;
        int i5 = i3 & 7;
        int i6 = 0;
        int i7 = i2;
        for (int i8 = 0; i8 < i4; i8++) {
            jA ^= a(i7);
            i7 += 8;
        }
        while (i6 < (i5 << 3)) {
            jA ^= (this.f44989b[i7] & 255) << i6;
            i6 += 8;
            i7++;
        }
        int i9 = (i2 & 7) << 3;
        return (jA >>> (64 - i9)) | (jA << i9);
    }
}
