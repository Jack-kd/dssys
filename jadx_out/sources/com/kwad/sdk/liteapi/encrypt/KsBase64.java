package com.kwad.sdk.liteapi.encrypt;

import android.text.TextUtils;
import androidx.annotation.Keep;
import java.nio.charset.Charset;
import java.util.Arrays;

@Keep
/* loaded from: classes4.dex */
public class KsBase64 {
    private static final String PRE = "sDAkk/dS";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    public static class b {
        static final b bib = new b(false, null, -1, true);
        static final b bic = new b(true, null, -1, false);
        private static final char[] toBase64 = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        private static final char[] toBase64URL = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
        private final boolean doPadding;
        private final boolean isURL;
        private final byte[] newline = null;
        private final int linemax = -1;

        private b(boolean z2, byte[] bArr, int i2, boolean z3) {
            this.isURL = z2;
            this.doPadding = z3;
        }

        private int encode0(byte[] bArr, int i2, int i3, byte[] bArr2) {
            char[] cArr = this.isURL ? toBase64URL : toBase64;
            int i4 = (i3 / 3) * 3;
            int i5 = this.linemax;
            int i6 = (i5 <= 0 || i4 <= (i5 / 4) * 3) ? i4 : (i5 / 4) * 3;
            int i7 = 0;
            int i8 = 0;
            while (i7 < i4) {
                int iMin = Math.min(i7 + i6, i4);
                int i9 = i7;
                int i10 = i8;
                while (i9 < iMin) {
                    int i11 = i9 + 2;
                    int i12 = ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9] & 255) << 16);
                    i9 += 3;
                    int i13 = i12 | (bArr[i11] & 255);
                    bArr2[i10] = (byte) cArr[(i13 >>> 18) & 63];
                    bArr2[i10 + 1] = (byte) cArr[(i13 >>> 12) & 63];
                    int i14 = i10 + 3;
                    bArr2[i10 + 2] = (byte) cArr[(i13 >>> 6) & 63];
                    i10 += 4;
                    bArr2[i14] = (byte) cArr[i13 & 63];
                }
                int i15 = ((iMin - i7) / 3) * 4;
                i8 += i15;
                if (i15 == this.linemax && iMin < i3) {
                    byte[] bArr3 = this.newline;
                    int length = bArr3.length;
                    int i16 = 0;
                    while (i16 < length) {
                        bArr2[i8] = bArr3[i16];
                        i16++;
                        i8++;
                    }
                }
                i7 = iMin;
            }
            if (i7 >= i3) {
                return i8;
            }
            int i17 = i7 + 1;
            int i18 = bArr[i7] & 255;
            int i19 = i8 + 1;
            bArr2[i8] = (byte) cArr[i18 >> 2];
            if (i17 == i3) {
                int i20 = i8 + 2;
                bArr2[i19] = (byte) cArr[(i18 << 4) & 63];
                if (!this.doPadding) {
                    return i20;
                }
                int i21 = i8 + 3;
                bArr2[i20] = 61;
                int i22 = i8 + 4;
                bArr2[i21] = 61;
                return i22;
            }
            int i23 = bArr[i17] & 255;
            bArr2[i19] = (byte) cArr[((i18 << 4) & 63) | (i23 >> 4)];
            int i24 = i8 + 3;
            bArr2[i8 + 2] = (byte) cArr[(i23 << 2) & 63];
            if (!this.doPadding) {
                return i24;
            }
            int i25 = i8 + 4;
            bArr2[i24] = 61;
            return i25;
        }

        private final int outLength(int i2) {
            int i3;
            if (this.doPadding) {
                i3 = ((i2 + 2) / 3) * 4;
            } else {
                int i4 = i2 % 3;
                i3 = ((i2 / 3) * 4) + (i4 == 0 ? 0 : i4 + 1);
            }
            int i5 = this.linemax;
            return i5 > 0 ? i3 + (((i3 - 1) / i5) * this.newline.length) : i3;
        }

        public final byte[] encode(byte[] bArr) {
            int iOutLength = outLength(bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iEncode0 = encode0(bArr, 0, bArr.length, bArr2);
            return iEncode0 != iOutLength ? Arrays.copyOf(bArr2, iEncode0) : bArr2;
        }
    }

    private KsBase64() {
    }

    public static String decodeKsSdk(String str) {
        return TextUtils.isEmpty(str) ? "" : str.startsWith(PRE) ? new String(getDecoder().decode(str.substring(8)), UTF_8) : str;
    }

    public static String encodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return PRE + new String(getEncoder().encode(str.getBytes()), UTF_8);
    }

    public static a getDecoder() {
        return a.bhY;
    }

    public static b getEncoder() {
        return b.bib;
    }

    public static a getMimeDecoder() {
        return a.bia;
    }

    public static a getUrlSafeDecoder() {
        return a.bhZ;
    }

    public static b getUrlSafeEncoder() {
        return b.bic;
    }

    public static boolean isEncodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(PRE);
    }

    public static class a {
        private static final int[] fromBase64;
        private final boolean isMIME;
        private final boolean isURL;
        static final a bhY = new a(false, false);
        static final a bhZ = new a(true, false);
        static final a bia = new a(false, true);
        private static final int[] fromBase64URL = new int[256];

        static {
            int[] iArr = new int[256];
            fromBase64 = iArr;
            Arrays.fill(iArr, -1);
            for (int i2 = 0; i2 < b.toBase64.length; i2++) {
                fromBase64[b.toBase64[i2]] = i2;
            }
            fromBase64[61] = -2;
            Arrays.fill(fromBase64URL, -1);
            for (int i3 = 0; i3 < b.toBase64URL.length; i3++) {
                fromBase64URL[b.toBase64URL[i3]] = i3;
            }
            fromBase64URL[61] = -2;
        }

        private a(boolean z2, boolean z3) {
            this.isURL = z2;
            this.isMIME = z3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
        
            if (r4 != 18) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0079, code lost:
        
            if (r4 != 6) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x007b, code lost:
        
            r15[r5] = (byte) (r3 >> 16);
            r5 = r5 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0084, code lost:
        
            if (r4 != 0) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0086, code lost:
        
            r1 = r5 + 1;
            r15[r5] = (byte) (r3 >> 16);
            r5 = r5 + 2;
            r15[r1] = (byte) (r3 >> 8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0097, code lost:
        
            if (r4 == 12) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0099, code lost:
        
            if (r13 >= r14) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x009d, code lost:
        
            if (r11.isMIME == false) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x009f, code lost:
        
            r15 = r13 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00a5, code lost:
        
            if (r0[r12[r13]] >= 0) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00a7, code lost:
        
            r13 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00a9, code lost:
        
            r13 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00bd, code lost:
        
            throw new java.lang.IllegalArgumentException("Input byte array has incorrect ending byte at " + r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00be, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00c6, code lost:
        
            throw new java.lang.IllegalArgumentException("Last unit does not have enough valid bits");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int decode0(byte[] r12, int r13, int r14, byte[] r15) {
            /*
                Method dump skipped, instructions count: 199
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.liteapi.encrypt.KsBase64.a.decode0(byte[], int, int, byte[]):int");
        }

        private int outLength(byte[] bArr, int i2, int i3) {
            int i4;
            int[] iArr = this.isURL ? fromBase64URL : fromBase64;
            int i5 = 0;
            if (i3 == 0) {
                return 0;
            }
            if (i3 < 2) {
                if (this.isMIME && iArr[0] == -1) {
                    return 0;
                }
                throw new IllegalArgumentException("Input byte[] should at least have 2 bytes for base64 bytes");
            }
            if (this.isMIME) {
                int i6 = 0;
                while (true) {
                    if (i2 >= i3) {
                        break;
                    }
                    int i7 = i2 + 1;
                    int i8 = bArr[i2] & 255;
                    if (i8 == 61) {
                        i3 -= (i3 - i7) + 1;
                        break;
                    }
                    if (iArr[i8] == -1) {
                        i6++;
                    }
                    i2 = i7;
                }
                i3 -= i6;
            } else if (bArr[i3 - 1] == 61) {
                i5 = bArr[i3 + (-2)] == 61 ? 2 : 1;
            }
            if (i5 == 0 && (i4 = i3 & 3) != 0) {
                i5 = 4 - i4;
            }
            return (((i3 + 3) / 4) * 3) - i5;
        }

        public final byte[] decode(byte[] bArr) {
            int iOutLength = outLength(bArr, 0, bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iDecode0 = decode0(bArr, 0, bArr.length, bArr2);
            return iDecode0 != iOutLength ? Arrays.copyOf(bArr2, iDecode0) : bArr2;
        }

        public final byte[] decode(String str) {
            return decode(str.getBytes(KsBase64.ISO_8859_1));
        }
    }
}
