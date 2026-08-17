package com.smartdigimkt.t0;

import io.flutter.embedding.android.KeyboardMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.r0.d {

    /* renamed from: a, reason: collision with root package name */
    public static final int f44180a = com.smartdigimkt.a1.t.a("ID3");

    public static int a(int i2) {
        return (i2 == 0 || i2 == 3) ? 1 : 2;
    }

    public static h b(com.smartdigimkt.a1.l lVar, int i2, int i3, boolean z2, int i4) {
        int i5 = lVar.f39287b;
        int iA = a(i5, lVar.f39286a);
        String str = new String(lVar.f39286a, i5, iA - i5, "ISO-8859-1");
        lVar.c(iA + 1);
        int iE = lVar.e();
        boolean z3 = (iE & 2) != 0;
        boolean z4 = (iE & 1) != 0;
        int iE2 = lVar.e();
        String[] strArr = new String[iE2];
        for (int i6 = 0; i6 < iE2; i6++) {
            int i7 = lVar.f39287b;
            int iA2 = a(i7, lVar.f39286a);
            strArr[i6] = new String(lVar.f39286a, i7, iA2 - i7, "ISO-8859-1");
            lVar.c(iA2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i8 = i5 + i2;
        while (lVar.f39287b < i8) {
            o oVarA = a(i3, i4, lVar, z2);
            if (oVarA != null) {
                arrayList.add(oVarA);
            }
        }
        o[] oVarArr = new o[arrayList.size()];
        arrayList.toArray(oVarArr);
        return new h(str, z3, z4, strArr, oVarArr);
    }

    public static s c(int i2, com.smartdigimkt.a1.l lVar) {
        byte[] bArr = new byte[i2];
        lVar.a(bArr, 0, i2);
        int iA = a(0, bArr);
        String str = new String(bArr, 0, iA, "ISO-8859-1");
        int i3 = iA + 1;
        return new s(str, i2 <= i3 ? new byte[0] : Arrays.copyOfRange(bArr, i3, i2));
    }

    public static u d(int i2, com.smartdigimkt.a1.l lVar) {
        if (i2 < 1) {
            return null;
        }
        int iE = lVar.e();
        String strB = b(iE);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        lVar.a(bArr, 0, i3);
        int iA = a(bArr, 0, iE);
        String str = new String(bArr, 0, iA, strB);
        int iA2 = a(iE) + iA;
        return new u("TXXX", str, a(bArr, iA2, a(bArr, iA2, iE), strB));
    }

    public static w e(int i2, com.smartdigimkt.a1.l lVar) {
        if (i2 < 1) {
            return null;
        }
        int iE = lVar.e();
        String strB = b(iE);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        lVar.a(bArr, 0, i3);
        int iA = a(bArr, 0, iE);
        String str = new String(bArr, 0, iA, strB);
        int iA2 = a(iE) + iA;
        return new w("WXXX", str, a(bArr, iA2, a(iA2, bArr), "ISO-8859-1"));
    }

    public static int f(int i2, com.smartdigimkt.a1.l lVar) {
        byte[] bArr = lVar.f39286a;
        int i3 = lVar.f39287b;
        while (true) {
            int i4 = i3 + 1;
            if (i4 >= i2) {
                return i2;
            }
            if ((bArr[i3] & 255) == 255 && bArr[i4] == 0) {
                System.arraycopy(bArr, i3 + 2, bArr, i4, (i2 - i3) - 2);
                i2--;
            }
            i3 = i4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0020  */
    @Override // com.smartdigimkt.r0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.r0.c a(com.smartdigimkt.r0.f r15) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.t0.n.a(com.smartdigimkt.r0.f):com.smartdigimkt.r0.c");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0089 A[PHI: r3
      0x0089: PHI (r3v17 int) = (r3v6 int), (r3v20 int) binds: [B:41:0x0086, B:33:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(int r18, int r19, com.smartdigimkt.a1.l r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.t0.n.b(int, int, com.smartdigimkt.a1.l, boolean):boolean");
    }

    public static w b(int i2, com.smartdigimkt.a1.l lVar, String str) {
        byte[] bArr = new byte[i2];
        lVar.a(bArr, 0, i2);
        return new w(str, null, new String(bArr, 0, a(0, bArr), "ISO-8859-1"));
    }

    public static l b(int i2, com.smartdigimkt.a1.l lVar) {
        byte[] bArrCopyOfRange;
        int iE = lVar.e();
        String strB = b(iE);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        lVar.a(bArr, 0, i3);
        int iA = a(0, bArr);
        String str = new String(bArr, 0, iA, "ISO-8859-1");
        int i4 = iA + 1;
        int iA2 = a(bArr, i4, iE);
        String strA = a(bArr, i4, iA2, strB);
        int iA3 = a(iE) + iA2;
        int iA4 = a(bArr, iA3, iE);
        String strA2 = a(bArr, iA3, iA4, strB);
        int iA5 = a(iE) + iA4;
        if (i3 <= iA5) {
            bArrCopyOfRange = new byte[0];
        } else {
            bArrCopyOfRange = Arrays.copyOfRange(bArr, iA5, i3);
        }
        return new l(str, strA, strA2, bArrCopyOfRange);
    }

    public static f a(com.smartdigimkt.a1.l lVar, int i2, int i3, boolean z2, int i4) {
        int i5 = lVar.f39287b;
        int iA = a(i5, lVar.f39286a);
        String str = new String(lVar.f39286a, i5, iA - i5, "ISO-8859-1");
        lVar.c(iA + 1);
        int iA2 = lVar.a();
        int iA3 = lVar.a();
        long jF = lVar.f();
        if (jF == KeyboardMap.kValueMask) {
            jF = -1;
        }
        long jF2 = lVar.f();
        long j2 = jF2 == KeyboardMap.kValueMask ? -1L : jF2;
        ArrayList arrayList = new ArrayList();
        int i6 = i5 + i2;
        while (lVar.f39287b < i6) {
            o oVarA = a(i3, i4, lVar, z2);
            if (oVarA != null) {
                arrayList.add(oVarA);
            }
        }
        o[] oVarArr = new o[arrayList.size()];
        arrayList.toArray(oVarArr);
        return new f(str, iA2, iA3, jF, j2, oVarArr);
    }

    public static String b(int i2) {
        if (i2 == 1) {
            return "UTF-16";
        }
        if (i2 == 2) {
            return "UTF-16BE";
        }
        if (i2 != 3) {
            return "ISO-8859-1";
        }
        return "UTF-8";
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01a7 A[Catch: all -> 0x0104, UnsupportedEncodingException -> 0x01c4, TryCatch #2 {UnsupportedEncodingException -> 0x01c4, all -> 0x0104, blocks: (B:82:0x00fe, B:145:0x01b9, B:86:0x0109, B:93:0x011f, B:95:0x0127, B:103:0x0141, B:112:0x0159, B:123:0x0173, B:130:0x0184, B:136:0x0193, B:142:0x01a2, B:143:0x01a7), top: B:154:0x00f4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.smartdigimkt.t0.o a(int r20, int r21, com.smartdigimkt.a1.l r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.t0.n.a(int, int, com.smartdigimkt.a1.l, boolean):com.smartdigimkt.t0.o");
    }

    public static u a(int i2, com.smartdigimkt.a1.l lVar, String str) {
        if (i2 < 1) {
            return null;
        }
        int iE = lVar.e();
        String strB = b(iE);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        lVar.a(bArr, 0, i3);
        return new u(str, null, new String(bArr, 0, a(bArr, 0, iE), strB));
    }

    public static b a(com.smartdigimkt.a1.l lVar, int i2, int i3) {
        int iA;
        String lowerCase;
        byte[] bArrCopyOfRange;
        int iE = lVar.e();
        String strB = b(iE);
        int i4 = i2 - 1;
        byte[] bArr = new byte[i4];
        lVar.a(bArr, 0, i4);
        if (i3 == 2) {
            lowerCase = "image/" + new String(bArr, 0, 3, "ISO-8859-1").toLowerCase(Locale.US);
            if ("image/jpg".equals(lowerCase)) {
                lowerCase = DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_JPEG;
            }
            iA = 2;
        } else {
            iA = a(0, bArr);
            lowerCase = new String(bArr, 0, iA, "ISO-8859-1").toLowerCase(Locale.US);
            if (lowerCase.indexOf(47) == -1) {
                lowerCase = "image/".concat(lowerCase);
            }
        }
        int i5 = bArr[iA + 1] & 255;
        int i6 = iA + 2;
        int iA2 = a(bArr, i6, iE);
        String str = new String(bArr, i6, iA2 - i6, strB);
        int iA3 = a(iE) + iA2;
        if (i4 <= iA3) {
            bArrCopyOfRange = new byte[0];
        } else {
            bArrCopyOfRange = Arrays.copyOfRange(bArr, iA3, i4);
        }
        return new b(lowerCase, str, i5, bArrCopyOfRange);
    }

    public static j a(int i2, com.smartdigimkt.a1.l lVar) {
        if (i2 < 4) {
            return null;
        }
        int iE = lVar.e();
        String strB = b(iE);
        byte[] bArr = new byte[3];
        lVar.a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        lVar.a(bArr2, 0, i3);
        int iA = a(bArr2, 0, iE);
        String str2 = new String(bArr2, 0, iA, strB);
        int iA2 = a(iE) + iA;
        return new j(str, str2, a(bArr2, iA2, a(bArr2, iA2, iE), strB));
    }

    public static String a(int i2, int i3, int i4, int i5, int i6) {
        if (i2 == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6));
    }

    public static int a(byte[] bArr, int i2, int i3) {
        int iA = a(i2, bArr);
        if (i3 == 0 || i3 == 3) {
            return iA;
        }
        while (iA < bArr.length - 1) {
            if (iA % 2 == 0 && bArr[iA + 1] == 0) {
                return iA;
            }
            iA = a(iA + 1, bArr);
        }
        return bArr.length;
    }

    public static int a(int i2, byte[] bArr) {
        while (i2 < bArr.length) {
            if (bArr[i2] == 0) {
                return i2;
            }
            i2++;
        }
        return bArr.length;
    }

    public static String a(byte[] bArr, int i2, int i3, String str) {
        if (i3 > i2 && i3 <= bArr.length) {
            return new String(bArr, i2, i3 - i2, str);
        }
        return "";
    }
}
