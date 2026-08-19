package com.sigmob.sdk.archives.tar;

import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* loaded from: classes4.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final int f35483a = 255;

    private f() {
    }

    public static int a(String str, byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3 && i4 < str.length()) {
            bArr[i2 + i4] = (byte) str.charAt(i4);
            i4++;
        }
        while (i4 < i3) {
            bArr[i2 + i4] = 0;
            i4++;
        }
        return i2 + i3;
    }

    public static int b(long j2, byte[] bArr, int i2, int i3) {
        int i4 = i3 - 2;
        a(j2, bArr, i2, i4);
        bArr[i4 + i2] = 32;
        bArr[(i3 - 1) + i2] = 0;
        return i2 + i3;
    }

    public static int c(long j2, byte[] bArr, int i2, int i3) {
        int i4 = i3 - 1;
        a(j2, bArr, i2, i4);
        bArr[i4 + i2] = 32;
        return i2 + i3;
    }

    public static int d(long j2, byte[] bArr, int i2, int i3) {
        int i4 = i3 - 2;
        a(j2, bArr, i2, i4);
        bArr[i4 + i2] = 0;
        bArr[(i3 - 1) + i2] = 32;
        return i2 + i3;
    }

    public static long a(byte[] bArr) {
        long j2 = 0;
        for (byte b3 : bArr) {
            j2 += b3 & 255;
        }
        return j2;
    }

    public static String b(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer(i3);
        int i4 = i3 + i2;
        while (i2 < i4) {
            byte b3 = bArr[i2];
            if (b3 == 0) {
                break;
            }
            stringBuffer.append((char) (b3 & 255));
            i2++;
        }
        return stringBuffer.toString();
    }

    public static long a(byte[] bArr, int i2, int i3) {
        int i4 = i2 + i3;
        if (i3 < 2) {
            throw new IllegalArgumentException("Length " + i3 + " must be at least 2");
        }
        int i5 = i2;
        while (true) {
            long j2 = 0;
            if (i5 >= i4) {
                return 0L;
            }
            if (bArr[i5] != 0) {
                int i6 = i2;
                while (i6 < i4 && bArr[i6] == 32) {
                    i6++;
                }
                int i7 = i4 - 1;
                byte b3 = bArr[i7];
                if (b3 != 0 && b3 != 32) {
                    throw new IllegalArgumentException(a(bArr, i2, i3, i7, b3));
                }
                int i8 = i4 - 1;
                byte b4 = bArr[i4 - 2];
                if (b4 == 0 || b4 == 32) {
                    i8 = i4 - 2;
                }
                while (i6 < i8) {
                    byte b5 = bArr[i6];
                    if (b5 < 48 || b5 > 55) {
                        throw new IllegalArgumentException(a(bArr, i2, i3, i6, b5));
                    }
                    j2 = (j2 << 3) + (b5 - 48);
                    i6++;
                }
                return j2;
            }
            i5++;
        }
    }

    private static String a(byte[] bArr, int i2, int i3, int i4, byte b3) {
        return "Invalid byte " + ((int) b3) + " at offset " + (i4 - i2) + " in '" + new String(bArr, i2, i3).replaceAll(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, "{NUL}") + "' len=" + i3;
    }

    public static void a(long j2, byte[] bArr, int i2, int i3) {
        int i4;
        int i5 = i3 - 1;
        if (j2 == 0) {
            i4 = i3 - 2;
            bArr[i5 + i2] = e.f35442H;
        } else {
            long j3 = j2;
            while (i5 >= 0 && j3 != 0) {
                bArr[i2 + i5] = (byte) (((byte) (7 & j3)) + e.f35442H);
                j3 >>>= 3;
                i5--;
            }
            if (j3 != 0) {
                throw new IllegalArgumentException(j2 + "=" + Long.toOctalString(j2) + " will not fit in octal number buffer of length " + i3);
            }
            i4 = i5;
        }
        while (i4 >= 0) {
            bArr[i2 + i4] = e.f35442H;
            i4--;
        }
    }

    public static boolean a(byte[] bArr, int i2) {
        return bArr[i2] == 1;
    }
}
