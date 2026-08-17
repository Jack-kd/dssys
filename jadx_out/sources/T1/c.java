package T1;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.e;
import com.umeng.analytics.pro.ek;
import io.flutter.embedding.android.KeyboardMap;
import java.lang.reflect.Array;

/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f555a = {58, e.f35444J, 42, 34, 26, 18, 10, 2, 60, e.f35446L, 44, 36, 28, 20, 12, 4, 62, e.f35448N, 46, 38, 30, 22, ek.f49294l, 6, com.anythink.core.common.s.a.c.f7561b, 56, e.f35442H, 40, 32, 24, ek.f49296n, 8, 57, e.f35443I, 41, 33, 25, 17, 9, 1, 59, e.f35445K, 43, 35, 27, 19, 11, 3, 61, e.f35447M, 45, 37, 29, 21, ek.f49293k, 5, 63, e.f35449O, 47, 39, 31, 23, ek.f49295m, 7};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f556b = {32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, 11, 12, ek.f49293k, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, ek.f49296n, 17, 18, 19, 20, 21, 20, 21, 22, 23, 24, 25, 24, 25, 26, 27, 28, 29, 28, 29, 30, 31, 32, 1};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f557c = {57, e.f35443I, 41, 33, 25, 17, 9, 1, 58, e.f35444J, 42, 34, 26, 18, 10, 2, 59, e.f35445K, 43, 35, 27, 19, 11, 3, 60, e.f35446L, 44, 36, 63, e.f35449O, 47, 39, 31, 23, ek.f49295m, 7, 62, e.f35448N, 46, 38, 30, 22, ek.f49294l, 6, 61, e.f35447M, 45, 37, 29, 21, ek.f49293k, 5, 28, 20, 12, 4};

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f558d = {1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1};

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f559e = {9, 18, ek.f49294l, 17, 11, 24, 1, 5, 22, 25, 3, 28, ek.f49295m, 6, 21, 10, 35, 38, 23, 19, 12, 4, 26, 8, 43, e.f35448N, ek.f49296n, 7, 27, 20, ek.f49293k, 2, 0, 0, 41, e.f35446L, 31, 37, 47, e.f35449O, 0, 0, 30, 40, e.f35445K, 45, 33, e.f35442H, 0, 0, 44, e.f35443I, 39, 56, 34, e.f35447M, 0, 0, 46, 42, e.f35444J, 36, 29, 32};

    /* renamed from: f, reason: collision with root package name */
    public static final byte[][] f560f = {new byte[]{ek.f49294l, 4, ek.f49293k, 1, 2, ek.f49295m, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7, 0, ek.f49295m, 7, 4, ek.f49294l, 2, ek.f49293k, 1, 10, 6, 12, 11, 9, 5, 3, 8, 4, 1, ek.f49294l, 8, ek.f49293k, 6, 2, 11, ek.f49295m, 12, 9, 7, 3, 10, 5, 0, ek.f49295m, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, ek.f49294l, 10, 0, 6, ek.f49293k}, new byte[]{ek.f49295m, 1, 8, ek.f49294l, 6, 11, 3, 4, 9, 7, 2, ek.f49293k, 12, 0, 5, 10, 3, ek.f49293k, 4, 7, ek.f49295m, 2, 8, ek.f49294l, 12, 0, 1, 10, 6, 9, 11, 5, 0, ek.f49294l, 7, 11, 10, 4, ek.f49293k, 1, 5, 8, 12, 6, 9, 3, 2, ek.f49295m, ek.f49293k, 8, 10, 1, 3, ek.f49295m, 4, 2, 11, 6, 7, 12, 0, 5, ek.f49294l, 9}, new byte[]{10, 0, 9, ek.f49294l, 6, 3, ek.f49295m, 5, 1, ek.f49293k, 12, 7, 11, 4, 2, 8, ek.f49293k, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, ek.f49294l, 12, 11, ek.f49295m, 1, ek.f49293k, 6, 4, 9, 8, ek.f49295m, 3, 0, 11, 1, 2, 12, 5, 10, ek.f49294l, 7, 1, 10, ek.f49293k, 0, 6, 9, 8, 7, 4, ek.f49295m, ek.f49294l, 3, 11, 5, 2, 12}, new byte[]{7, ek.f49293k, ek.f49294l, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, ek.f49295m, ek.f49293k, 8, 11, 5, 6, ek.f49295m, 0, 3, 4, 7, 2, 12, 1, 10, ek.f49294l, 9, 10, 6, 9, 0, 12, 11, 7, ek.f49293k, ek.f49295m, 1, 3, ek.f49294l, 5, 2, 8, 4, 3, ek.f49295m, 0, 6, 10, 1, ek.f49293k, 8, 9, 4, 5, 11, 12, 7, 2, ek.f49294l}, new byte[]{2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, ek.f49295m, ek.f49293k, 0, ek.f49294l, 9, ek.f49294l, 11, 2, 12, 4, 7, ek.f49293k, 1, 5, 0, ek.f49295m, 10, 3, 9, 8, 6, 4, 2, 1, 11, 10, ek.f49293k, 7, 8, ek.f49295m, 9, 12, 5, 6, 3, 0, ek.f49294l, 11, 8, 12, 7, 1, ek.f49294l, 2, ek.f49293k, 6, ek.f49295m, 0, 9, 10, 4, 5, 3}, new byte[]{12, 1, 10, ek.f49295m, 9, 2, 6, 8, 0, ek.f49293k, 3, 4, ek.f49294l, 7, 5, 11, 10, ek.f49295m, 4, 2, 7, 12, 9, 5, 6, 1, ek.f49293k, ek.f49294l, 0, 11, 3, 8, 9, ek.f49294l, ek.f49295m, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, ek.f49293k, 11, 6, 4, 3, 2, 12, 9, 5, ek.f49295m, 10, 11, ek.f49294l, 1, 7, 6, 0, 8, ek.f49293k}, new byte[]{4, 11, 2, ek.f49294l, ek.f49295m, 0, 8, ek.f49293k, 3, 12, 9, 7, 5, 10, 6, 1, ek.f49293k, 0, 11, 7, 4, 9, 1, 10, ek.f49294l, 3, 5, 12, 2, ek.f49295m, 8, 6, 1, 4, 11, ek.f49293k, 12, 3, 7, ek.f49294l, 10, ek.f49295m, 6, 8, 0, 5, 9, 2, 6, 11, ek.f49293k, 8, 1, 4, 10, 7, 9, 5, 0, ek.f49295m, ek.f49294l, 2, 3, 12}, new byte[]{ek.f49293k, 2, 8, 4, 6, ek.f49295m, 11, 1, 10, 9, 3, ek.f49294l, 5, 0, 12, 7, 1, ek.f49295m, ek.f49293k, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, ek.f49294l, 9, 2, 7, 11, 4, 1, 9, 12, ek.f49294l, 2, 0, 6, 10, ek.f49293k, ek.f49295m, 3, 5, 8, 2, 1, ek.f49294l, 7, 4, 10, 8, ek.f49293k, ek.f49295m, 12, 9, 0, 3, 5, 6, 11}};

    /* renamed from: g, reason: collision with root package name */
    public static final byte[] f561g = {ek.f49296n, 7, 20, 21, 29, 12, 28, 17, 1, ek.f49295m, 23, 26, 5, 18, 31, 10, 2, 8, 24, ek.f49294l, 32, 27, 3, 9, 19, ek.f49293k, 30, 6, 22, 11, 4, 25};

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f562h = {1, 2, 3, 4, 17, 18, 19, 20, 5, 6, 7, 8, 21, 22, 23, 24, 9, 10, 11, 12, 25, 26, 27, 28, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 29, 30, 31, 32, 33, 34, 35, 36, e.f35443I, e.f35444J, e.f35445K, e.f35446L, 37, 38, 39, 40, e.f35447M, e.f35448N, e.f35449O, 56, 41, 42, 43, 44, 57, 58, 59, 60, 45, 46, 47, e.f35442H, 61, 62, 63, com.anythink.core.common.s.a.c.f7561b};

    /* renamed from: i, reason: collision with root package name */
    public static final byte[] f563i = {46, 47, e.f35442H, e.f35443I, e.f35444J, e.f35445K, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, e.f35450P, 77, 78, 79, 80, 81, 82, e.f35451Q, 84, 85, 86, 87, e.f35453S, 89, 90, 97, 98, 99, 100, 101, 102, e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, e.f35452R, 121, 122};

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f564j = new byte[128];

    /* renamed from: k, reason: collision with root package name */
    public static final long[][] f565k;

    /* renamed from: l, reason: collision with root package name */
    public static final long[][][] f566l;

    /* renamed from: m, reason: collision with root package name */
    public static final long[][] f567m;

    /* renamed from: n, reason: collision with root package name */
    public static final long[][] f568n;

    /* renamed from: o, reason: collision with root package name */
    public static final long[][] f569o;

    static {
        int i2 = 64;
        Class cls = Long.TYPE;
        f565k = (long[][]) Array.newInstance((Class<?>) cls, 16, 16);
        f566l = (long[][][]) Array.newInstance((Class<?>) cls, 2, 16, 16);
        f567m = (long[][]) Array.newInstance((Class<?>) cls, 8, 16);
        f568n = (long[][]) Array.newInstance((Class<?>) cls, 8, 64);
        f569o = (long[][]) Array.newInstance((Class<?>) cls, 16, 16);
        byte[] bArr = new byte[64];
        byte[] bArr2 = new byte[64];
        for (int i3 = 0; i3 < 64; i3++) {
            f564j[f563i[i3]] = (byte) i3;
        }
        for (int i4 = 0; i4 < 64; i4++) {
            bArr[i4] = 0;
        }
        for (int i5 = 0; i5 < 64; i5++) {
            byte b3 = f559e[i5];
            if (b3 != 0) {
                byte b4 = f558d[0];
                int i6 = b3 + (b4 - 1);
                if (i6 % 28 < b4) {
                    i6 -= 28;
                }
                int i7 = f557c[i6];
                if (i7 > 0) {
                    int i8 = i7 - 1;
                    i7 = ((i8 | 7) - (i8 & 7)) + 1;
                }
                bArr[i5] = (byte) i7;
            }
        }
        d(f565k, bArr, 8);
        for (int i9 = 0; i9 < 2; i9++) {
            for (int i10 = 0; i10 < 64; i10++) {
                bArr2[i10] = 0;
                bArr[i10] = 0;
            }
            for (int i11 = 0; i11 < 64; i11++) {
                byte b5 = f559e[i11];
                if (b5 != 0) {
                    bArr2[b5 - 1] = (byte) (i11 + 1);
                }
            }
            for (int i12 = 0; i12 < 64; i12++) {
                byte b6 = f559e[i12];
                if (b6 != 0) {
                    int i13 = b6 + i9;
                    if (i13 % 28 <= i9) {
                        i13 -= 28;
                    }
                    bArr[i12] = bArr2[i13];
                }
            }
            d(f566l[i9], bArr, 8);
        }
        for (int i14 = 0; i14 < 8; i14++) {
            int i15 = 0;
            while (i15 < 8) {
                int i16 = i15 < 2 ? 0 : f555a[f556b[((i14 * 6) + i15) - 2] - 1];
                if (i16 > 32) {
                    i16 -= 32;
                } else if (i16 > 0) {
                    i16--;
                }
                if (i16 > 0) {
                    int i17 = i16 - 1;
                    i16 = ((i17 | 7) - (i17 & 7)) + 1;
                }
                bArr[(i14 * 8) + i15] = (byte) i16;
                i15++;
            }
        }
        d(f567m, bArr, 8);
        int i18 = 0;
        while (i18 < 64) {
            int i19 = f555a[f562h[i18] - 1];
            if (i19 > 0) {
                int i20 = i19 - 1;
                i19 = ((i20 | 7) - (i20 & 7)) + 1;
            }
            i18++;
            bArr[i19 - 1] = (byte) i18;
        }
        d(f569o, bArr, 8);
        for (int i21 = 0; i21 < 48; i21++) {
            bArr[i21] = f561g[f556b[i21] - 1];
        }
        int i22 = 0;
        while (i22 < 8) {
            int i23 = 0;
            while (i23 < i2) {
                byte b7 = f560f[i22][((i23 & 1) << 5) | (((i23 >> 1) & 1) << 3) | (((i23 >> 2) & 1) << 2) | (((i23 >> 3) & 1) << 1) | ((i23 >> 4) & 1) | (((i23 >> 5) & 1) << 4)];
                int i24 = ((b7 & 1) << 3) | ((b7 >> 3) & 1) | (((b7 >> 2) & 1) << 1) | (((b7 >> 1) & 1) << 2);
                for (int i25 = 0; i25 < 32; i25++) {
                    bArr2[i25] = 0;
                }
                for (int i26 = 0; i26 < 4; i26++) {
                    bArr2[(i22 * 4) + i26] = (byte) ((i24 >> i26) & 1);
                }
                int i27 = 24;
                long j2 = 0;
                while (true) {
                    int i28 = i27 - 1;
                    if (i28 >= 0) {
                        j2 = (bArr2[bArr[i28] - 1] << 32) | (j2 << 1) | bArr2[r16[i27 + 23] - 1];
                        i27 = i28;
                        bArr = bArr;
                    }
                }
                f568n[i22][i23] = h(j2);
                i23++;
                i2 = 64;
            }
            i22++;
            i2 = 64;
        }
    }

    public static String a(String str, String str2) {
        byte[] bArr = new byte[13];
        if (str == null || str2 == null) {
            return "*";
        }
        int length = str.length();
        int i2 = 0;
        long jCharAt = 0;
        while (i2 < 8) {
            jCharAt = (jCharAt << 8) | (i2 < length ? str.charAt(i2) * 2 : 0);
            i2++;
        }
        long[] jArrC = c(jCharAt);
        int i3 = 0;
        int i4 = 2;
        while (true) {
            i4--;
            if (i4 < 0) {
                break;
            }
            char cCharAt = i4 < str2.length() ? str2.charAt(i4) : '.';
            bArr[i4] = (byte) cCharAt;
            i3 = (i3 << 6) | (f564j[cCharAt] & 255);
        }
        long jB = b(0L, i3, 25, jArrC);
        int i5 = 12;
        bArr[12] = f563i[(((int) jB) << 2) & 63];
        char c2 = 4;
        while (true) {
            jB >>= c2;
            i5--;
            if (i5 < 2) {
                return new String(bArr, 0, 13);
            }
            bArr[i5] = f563i[((int) jB) & 63];
            c2 = 6;
        }
    }

    public static long b(long j2, int i2, int i3, long[] jArr) {
        int iG = g(i2);
        long j3 = j2 & 6148914691236517205L;
        boolean z2 = true;
        long j4 = (j2 & (-6148914694099828736L)) | ((j2 >> 1) & 1431655765);
        char c2 = ' ';
        long j5 = KeyboardMap.kValueMask;
        int i4 = (int) (((((j3 << 32) | (j3 << 1)) & (-4294967296L)) | ((j4 | (j4 >> 32)) & KeyboardMap.kValueMask)) >> 32);
        long[][] jArr2 = f567m;
        long jE = e(i4, jArr2);
        long j6 = jE;
        long jE2 = e((int) jE, jArr2);
        int i5 = i3;
        while (true) {
            int i6 = i5 - 1;
            if (i6 < 0) {
                boolean z3 = z2;
                return f(((jE2 >> 35) & 252645135) | ((jE2 << (z3 ? 1L : 0L)) & 4042322160L) | ((((j6 >> 35) & 252645135) | ((j6 << (z3 ? 1L : 0L)) & 4042322160L)) << c2), f569o);
            }
            int i7 = 0;
            while (i7 < 8) {
                int i8 = i7 << 1;
                boolean z4 = z2;
                long j7 = iG;
                long j8 = ((jE2 >> c2) ^ jE2) & j7 & j5;
                long j9 = jArr[i8] ^ ((j8 | (j8 << c2)) ^ jE2);
                long[][] jArr3 = f568n;
                long[] jArr4 = jArr3[0];
                long j10 = j5;
                long j11 = jArr4[(int) ((j9 >> 58) & 63)];
                long[] jArr5 = jArr3[z4 ? 1 : 0];
                char c3 = c2;
                long j12 = j6;
                long j13 = j11 ^ jArr5[(int) ((j9 >> 50) & 63)];
                long[] jArr6 = jArr3[2];
                long j14 = j13 ^ jArr6[(int) ((j9 >> 42) & 63)];
                long[] jArr7 = jArr3[3];
                long j15 = j14 ^ jArr7[(int) ((j9 >> 34) & 63)];
                long[] jArr8 = jArr3[4];
                int i9 = i7;
                long j16 = j15 ^ jArr8[(int) ((j9 >> 26) & 63)];
                long[] jArr9 = jArr3[5];
                long j17 = j16 ^ jArr9[(int) ((j9 >> 18) & 63)];
                long[] jArr10 = jArr3[6];
                long j18 = j17 ^ jArr10[(int) ((j9 >> 10) & 63)];
                long[] jArr11 = jArr3[7];
                long j19 = j12 ^ (j18 ^ jArr11[(int) ((j9 >> 2) & 63)]);
                long j20 = ((j19 >> c3) ^ j19) & j7 & j10;
                long j21 = ((j20 | (j20 << c3)) ^ j19) ^ jArr[i8 + 1];
                jE2 ^= (((((jArr6[(int) ((j21 >> 42) & 63)] ^ (jArr4[(int) ((j21 >> 58) & 63)] ^ jArr5[(int) ((j21 >> 50) & 63)])) ^ jArr7[(int) ((j21 >> 34) & 63)]) ^ jArr8[(int) ((j21 >> 26) & 63)]) ^ jArr9[(int) ((j21 >> 18) & 63)]) ^ jArr10[(int) ((j21 >> 10) & 63)]) ^ jArr11[(int) ((j21 >> 2) & 63)];
                i7 = i9 + 1;
                c2 = c3;
                z2 = z4 ? 1 : 0;
                j6 = j19;
                iG = iG;
                i6 = i6;
                j5 = j10;
            }
            int i10 = iG;
            long j22 = j6 ^ jE2;
            jE2 ^= j22;
            j6 = j22 ^ jE2;
            iG = i10;
            i5 = i6;
        }
    }

    public static long[] c(long j2) {
        long jF = f(j2, f565k);
        long[] jArr = new long[16];
        jArr[0] = jF & (-217020518463700993L);
        for (int i2 = 1; i2 < 16; i2++) {
            jArr[i2] = jF;
            jF = f(jF, f566l[f558d[i2] - 1]);
            jArr[i2] = jF & (-217020518463700993L);
        }
        return jArr;
    }

    public static void d(long[][] jArr, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < i2 * 8; i3++) {
            int i4 = bArr[i3] - 1;
            if (i4 >= 0) {
                int i5 = i4 >> 2;
                int i6 = 1 << (i4 & 3);
                for (int i7 = 0; i7 < 16; i7++) {
                    int i8 = (i3 & 7) + ((7 - (i3 >> 3)) << 3);
                    if ((i7 & i6) != 0) {
                        long[] jArr2 = jArr[i5];
                        jArr2[i7] = jArr2[i7] | (1 << i8);
                    }
                }
            }
        }
    }

    public static long e(int i2, long[][] jArr) {
        long j2 = 0;
        int i3 = 4;
        while (true) {
            i3--;
            if (i3 < 0) {
                return j2;
            }
            int i4 = i3 << 1;
            j2 = j2 | jArr[i4][i2 & 15] | jArr[i4 + 1][(i2 & 255) >> 4];
            i2 >>= 8;
        }
    }

    public static long f(long j2, long[][] jArr) {
        long j3 = 0;
        int i2 = 8;
        while (true) {
            i2--;
            if (i2 < 0) {
                return j3;
            }
            int i3 = (int) (255 & j2);
            j2 >>= 8;
            int i4 = i2 << 1;
            j3 = j3 | jArr[i4][i3 & 15] | jArr[i4 + 1][i3 >> 4];
        }
    }

    public static int g(int i2) {
        return ((i2 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF) | ((i2 << 26) & (-67108864)) | ((i2 << 12) & 16515072) | ((i2 >> 2) & 64512);
    }

    public static long h(long j2) {
        return ((j2 >> 16) & 1082331758844L) | ((j2 << 26) & (-288230371923853312L)) | ((j2 << 12) & 70931694147600384L) | ((j2 >> 2) & 277076930264064L);
    }
}
