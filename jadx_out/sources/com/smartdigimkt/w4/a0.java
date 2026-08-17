package com.smartdigimkt.w4;

import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes5.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static final a0 f44943a = new a0();

    public final byte[] a(Object obj) {
        Set<String> set = (Set) obj;
        if (set.isEmpty()) {
            return new byte[0];
        }
        int size = set.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int i2 = 0;
        int i3 = 0;
        for (String str : set) {
            if (str == null) {
                i2 += 5;
                iArr[i3] = -1;
            } else {
                int iA = q.a(str);
                strArr[i3] = str;
                iArr[i3] = iA;
                i2 = ((iA >> 7) == 0 ? 1 : (iA >> 14) == 0 ? 2 : (iA >> 21) == 0 ? 3 : (iA >> 28) == 0 ? 4 : 5) + iA + i2;
            }
            i3++;
        }
        q qVar = new q(0, new byte[i2]);
        for (int i4 = 0; i4 < size; i4++) {
            int i5 = iArr[i4];
            int i6 = qVar.f44990c;
            int i7 = i5;
            while ((i7 & (-128)) != 0) {
                qVar.f44989b[i6] = (byte) ((i7 & 127) | 128);
                i7 >>>= 7;
                i6++;
            }
            qVar.f44989b[i6] = (byte) i7;
            qVar.f44990c = i6 + 1;
            if (i5 >= 0) {
                qVar.b(strArr[i4]);
            }
        }
        return qVar.f44989b;
    }

    public final LinkedHashSet a(byte[] bArr, int i2, int i3) {
        int i4;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i3 > 0) {
            q qVar = new q(i2, bArr);
            int i5 = i2 + i3;
            while (true) {
                i4 = qVar.f44990c;
                if (i4 >= i5) {
                    break;
                }
                byte[] bArr2 = qVar.f44989b;
                int i6 = i4 + 1;
                qVar.f44990c = i6;
                int i7 = bArr2[i4];
                if ((i7 >> 7) != 0) {
                    int i8 = i4 + 2;
                    qVar.f44990c = i8;
                    i7 = (i7 & 127) | (bArr2[i6] << 7);
                    if ((i7 >> 14) != 0) {
                        int i9 = i7 & 16383;
                        int i10 = i4 + 3;
                        qVar.f44990c = i10;
                        int i11 = i9 | (bArr2[i8] << 14);
                        if ((i11 >> 21) == 0) {
                            i7 = i11;
                        } else {
                            int i12 = i4 + 4;
                            qVar.f44990c = i12;
                            i7 = (bArr2[i10] << 21) | (i11 & 2097151);
                            if ((i7 >> 28) != 0) {
                                qVar.f44990c = i4 + 5;
                                i7 = (268435455 & i7) | (bArr2[i12] << 28);
                            }
                        }
                    }
                }
                linkedHashSet.add(qVar.c(i7));
            }
            if (i4 != i5) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }
}
