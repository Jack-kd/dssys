package com.ubix.ssp.ad.e.a0;

import com.umeng.analytics.pro.ek;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes5.dex */
public class n {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static final int[] f46361a;

        /* renamed from: b, reason: collision with root package name */
        private static final int[] f46362b;

        /* renamed from: c, reason: collision with root package name */
        static final b f46363c;

        /* renamed from: d, reason: collision with root package name */
        static final b f46364d;

        /* renamed from: e, reason: collision with root package name */
        static final b f46365e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f46366f;

        /* renamed from: g, reason: collision with root package name */
        private final boolean f46367g;

        static {
            int[] iArr = new int[256];
            f46361a = iArr;
            Arrays.fill(iArr, -1);
            for (int i2 = 0; i2 < c.f46368a.length; i2++) {
                f46361a[c.f46368a[i2]] = i2;
            }
            f46361a[61] = -2;
            int[] iArr2 = new int[256];
            f46362b = iArr2;
            Arrays.fill(iArr2, -1);
            for (int i3 = 0; i3 < c.f46369b.length; i3++) {
                f46362b[c.f46369b[i3]] = i3;
            }
            f46362b[61] = -2;
            f46363c = new b(false, false);
            f46364d = new b(true, false);
            f46365e = new b(false, true);
        }

        private b(boolean z2, boolean z3) {
            this.f46366f = z2;
            this.f46367g = z3;
        }

        private int a(byte[] bArr, int i2, int i3) {
            int i4;
            int[] iArr = this.f46366f ? f46362b : f46361a;
            int i5 = i3 - i2;
            int i6 = 0;
            if (i5 == 0) {
                return 0;
            }
            if (i5 < 2) {
                if (this.f46367g && iArr[0] == -1) {
                    return 0;
                }
                throw new IllegalArgumentException("Input byte[] should at least have 2 bytes for base64 bytes");
            }
            if (this.f46367g) {
                int i7 = 0;
                while (true) {
                    if (i2 >= i3) {
                        break;
                    }
                    int i8 = i2 + 1;
                    int i9 = bArr[i2] & 255;
                    if (i9 == 61) {
                        i5 -= (i3 - i8) + 1;
                        break;
                    }
                    if (iArr[i9] == -1) {
                        i7++;
                    }
                    i2 = i8;
                }
                i5 -= i7;
            } else if (bArr[i3 - 1] == 61) {
                i6 = bArr[i3 - 2] == 61 ? 2 : 1;
            }
            if (i6 == 0 && (i4 = i5 & 3) != 0) {
                i6 = 4 - i4;
            }
            return (((i5 + 3) / 4) * 3) - i6;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
        
            if (r4 != 18) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
        
            if (r4 != 6) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
        
            r15[r5] = (byte) (r3 >> 16);
            r5 = r5 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
        
            if (r4 != 0) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
        
            r1 = r5 + 1;
            r15[r5] = (byte) (r3 >> 16);
            r5 = r5 + 2;
            r15[r1] = (byte) (r3 >> 8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
        
            if (r4 == 12) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x009a, code lost:
        
            if (r13 >= r14) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x009e, code lost:
        
            if (r11.f46367g == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00a0, code lost:
        
            r15 = r13 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00a6, code lost:
        
            if (r0[r12[r13]] >= 0) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00a8, code lost:
        
            r13 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00aa, code lost:
        
            r13 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00c1, code lost:
        
            throw new java.lang.IllegalArgumentException("Input byte array has incorrect ending byte at " + r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00c2, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ca, code lost:
        
            throw new java.lang.IllegalArgumentException("Last unit does not have enough valid bits");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int a(byte[] r12, int r13, int r14, byte[] r15) {
            /*
                Method dump skipped, instructions count: 203
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a0.n.b.a(byte[], int, int, byte[]):int");
        }

        public byte[] a(String str) {
            return a(str.getBytes(StandardCharsets.ISO_8859_1));
        }

        public byte[] a(byte[] bArr) {
            int iA = a(bArr, 0, bArr.length);
            byte[] bArr2 = new byte[iA];
            int iA2 = a(bArr, 0, bArr.length, bArr2);
            return iA2 != iA ? Arrays.copyOf(bArr2, iA2) : bArr2;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private static final char[] f46368a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

        /* renamed from: b, reason: collision with root package name */
        private static final char[] f46369b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};

        /* renamed from: c, reason: collision with root package name */
        private static final byte[] f46370c;

        /* renamed from: d, reason: collision with root package name */
        static final c f46371d;

        /* renamed from: e, reason: collision with root package name */
        static final c f46372e;

        /* renamed from: f, reason: collision with root package name */
        static final c f46373f;

        /* renamed from: g, reason: collision with root package name */
        private final byte[] f46374g;

        /* renamed from: h, reason: collision with root package name */
        private final int f46375h;

        /* renamed from: i, reason: collision with root package name */
        private final boolean f46376i;

        /* renamed from: j, reason: collision with root package name */
        private final boolean f46377j;

        static {
            byte[] bArr = {ek.f49293k, 10};
            f46370c = bArr;
            f46371d = new c(false, null, -1, true);
            f46372e = new c(true, null, -1, true);
            f46373f = new c(false, bArr, 76, true);
        }

        private c(boolean z2, byte[] bArr, int i2, boolean z3) {
            this.f46376i = z2;
            this.f46374g = bArr;
            this.f46375h = i2;
            this.f46377j = z3;
        }

        private final int a(int i2) {
            int i3;
            if (this.f46377j) {
                i3 = ((i2 + 2) / 3) * 4;
            } else {
                int i4 = i2 % 3;
                i3 = ((i2 / 3) * 4) + (i4 == 0 ? 0 : i4 + 1);
            }
            int i5 = this.f46375h;
            return i5 > 0 ? i3 + (((i3 - 1) / i5) * this.f46374g.length) : i3;
        }

        public String b(byte[] bArr) {
            byte[] bArrA = a(bArr);
            return new String(bArrA, 0, 0, bArrA.length);
        }

        private int a(byte[] bArr, int i2, int i3, byte[] bArr2) {
            int i4;
            char[] cArr = this.f46376i ? f46369b : f46368a;
            int i5 = ((i3 - i2) / 3) * 3;
            int i6 = i2 + i5;
            int i7 = this.f46375h;
            if (i7 > 0 && i5 > (i4 = (i7 / 4) * 3)) {
                i5 = i4;
            }
            int i8 = i2;
            int i9 = 0;
            while (i8 < i6) {
                int iMin = Math.min(i8 + i5, i6);
                int i10 = i8;
                int i11 = i9;
                while (i10 < iMin) {
                    int i12 = i10 + 2;
                    int i13 = ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10] & 255) << 16);
                    i10 += 3;
                    int i14 = i13 | (bArr[i12] & 255);
                    bArr2[i11] = (byte) cArr[(i14 >>> 18) & 63];
                    bArr2[i11 + 1] = (byte) cArr[(i14 >>> 12) & 63];
                    int i15 = i11 + 3;
                    bArr2[i11 + 2] = (byte) cArr[(i14 >>> 6) & 63];
                    i11 += 4;
                    bArr2[i15] = (byte) cArr[i14 & 63];
                }
                int i16 = ((iMin - i8) / 3) * 4;
                i9 += i16;
                if (i16 == this.f46375h && iMin < i3) {
                    byte[] bArr3 = this.f46374g;
                    int length = bArr3.length;
                    int i17 = 0;
                    while (i17 < length) {
                        bArr2[i9] = bArr3[i17];
                        i17++;
                        i9++;
                    }
                }
                i8 = iMin;
            }
            if (i8 >= i3) {
                return i9;
            }
            int i18 = i8 + 1;
            int i19 = bArr[i8] & 255;
            int i20 = i9 + 1;
            bArr2[i9] = (byte) cArr[i19 >> 2];
            if (i18 == i3) {
                int i21 = i9 + 2;
                bArr2[i20] = (byte) cArr[(i19 << 4) & 63];
                if (!this.f46377j) {
                    return i21;
                }
                int i22 = i9 + 3;
                bArr2[i21] = 61;
                int i23 = i9 + 4;
                bArr2[i22] = 61;
                return i23;
            }
            int i24 = bArr[i18] & 255;
            bArr2[i20] = (byte) cArr[((i19 << 4) & 63) | (i24 >> 4)];
            int i25 = i9 + 3;
            bArr2[i9 + 2] = (byte) cArr[(i24 << 2) & 63];
            if (!this.f46377j) {
                return i25;
            }
            int i26 = i9 + 4;
            bArr2[i25] = 61;
            return i26;
        }

        public byte[] a(byte[] bArr) {
            int iA = a(bArr.length);
            byte[] bArr2 = new byte[iA];
            int iA2 = a(bArr, 0, bArr.length, bArr2);
            return iA2 != iA ? Arrays.copyOf(bArr2, iA2) : bArr2;
        }
    }

    private n() {
    }

    public static b a() {
        return b.f46363c;
    }

    public static c b() {
        return c.f46371d;
    }
}
