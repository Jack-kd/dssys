package com.anythink.core.common.s.a;

import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
final class k implements com.anythink.core.common.s.a.a.b<Set<String>> {

    /* renamed from: a, reason: collision with root package name */
    static final k f7623a = new k();

    private k() {
    }

    private static Set<String> b(byte[] bArr, int i2, int i3) {
        int i4;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i3 > 0) {
            f fVar = new f(bArr, i2);
            int i5 = i2 + i3;
            while (true) {
                i4 = fVar.f7580b;
                if (i4 >= i5) {
                    break;
                }
                byte[] bArr2 = fVar.f7579a;
                int i6 = i4 + 1;
                fVar.f7580b = i6;
                int i7 = bArr2[i4];
                if ((i7 >> 7) != 0) {
                    int i8 = i4 + 2;
                    fVar.f7580b = i8;
                    i7 = (i7 & 127) | (bArr2[i6] << 7);
                    if ((i7 >> 14) != 0) {
                        int i9 = i7 & 16383;
                        int i10 = i4 + 3;
                        fVar.f7580b = i10;
                        int i11 = i9 | (bArr2[i8] << 14);
                        if ((i11 >> 21) == 0) {
                            i7 = i11;
                        } else {
                            int i12 = i4 + 4;
                            fVar.f7580b = i12;
                            i7 = (bArr2[i10] << 21) | (i11 & 2097151);
                            if ((i7 >> 28) != 0) {
                                fVar.f7580b = i4 + 5;
                                i7 = (268435455 & i7) | (bArr2[i12] << 28);
                            }
                        }
                    }
                }
                linkedHashSet.add(fVar.d(i7));
            }
            if (i4 != i5) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }

    @Override // com.anythink.core.common.s.a.a.b
    public final /* synthetic */ byte[] a(Set<String> set) {
        Set<String> set2 = set;
        if (set2.isEmpty()) {
            return new byte[0];
        }
        int size = set2.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int i2 = 0;
        int i3 = 0;
        for (String str : set2) {
            if (str == null) {
                i2 += 5;
                iArr[i3] = -1;
            } else {
                int iB = f.b(str);
                strArr[i3] = str;
                iArr[i3] = iB;
                i2 += ((iB >> 7) == 0 ? 1 : (iB >> 14) == 0 ? 2 : (iB >> 21) == 0 ? 3 : (iB >> 28) == 0 ? 4 : 5) + iB;
            }
            i3++;
        }
        f fVar = new f(i2);
        for (int i4 = 0; i4 < size; i4++) {
            int i5 = iArr[i4];
            int i6 = fVar.f7580b;
            int i7 = i5;
            while ((i7 & (-128)) != 0) {
                fVar.f7579a[i6] = (byte) ((i7 & 127) | 128);
                i7 >>>= 7;
                i6++;
            }
            fVar.f7579a[i6] = (byte) i7;
            fVar.f7580b = i6 + 1;
            if (i5 >= 0) {
                fVar.a(strArr[i4]);
            }
        }
        return fVar.f7579a;
    }

    @Override // com.anythink.core.common.s.a.a.b
    public final String a() {
        return "StringSet";
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static byte[] a2(Set<String> set) {
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
                int iB = f.b(str);
                strArr[i3] = str;
                iArr[i3] = iB;
                i2 += ((iB >> 7) == 0 ? 1 : (iB >> 14) == 0 ? 2 : (iB >> 21) == 0 ? 3 : (iB >> 28) == 0 ? 4 : 5) + iB;
            }
            i3++;
        }
        f fVar = new f(i2);
        for (int i4 = 0; i4 < size; i4++) {
            int i5 = iArr[i4];
            int i6 = fVar.f7580b;
            int i7 = i5;
            while ((i7 & (-128)) != 0) {
                fVar.f7579a[i6] = (byte) ((i7 & 127) | 128);
                i7 >>>= 7;
                i6++;
            }
            fVar.f7579a[i6] = (byte) i7;
            fVar.f7580b = i6 + 1;
            if (i5 >= 0) {
                fVar.a(strArr[i4]);
            }
        }
        return fVar.f7579a;
    }

    @Override // com.anythink.core.common.s.a.a.b
    public final /* synthetic */ Set<String> a(byte[] bArr, int i2, int i3) {
        int i4;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i3 > 0) {
            f fVar = new f(bArr, i2);
            int i5 = i2 + i3;
            while (true) {
                i4 = fVar.f7580b;
                if (i4 >= i5) {
                    break;
                }
                byte[] bArr2 = fVar.f7579a;
                int i6 = i4 + 1;
                fVar.f7580b = i6;
                int i7 = bArr2[i4];
                if ((i7 >> 7) != 0) {
                    int i8 = i4 + 2;
                    fVar.f7580b = i8;
                    i7 = (i7 & 127) | (bArr2[i6] << 7);
                    if ((i7 >> 14) != 0) {
                        int i9 = i7 & 16383;
                        int i10 = i4 + 3;
                        fVar.f7580b = i10;
                        int i11 = i9 | (bArr2[i8] << 14);
                        if ((i11 >> 21) == 0) {
                            i7 = i11;
                        } else {
                            int i12 = i4 + 4;
                            fVar.f7580b = i12;
                            i7 = (bArr2[i10] << 21) | (i11 & 2097151);
                            if ((i7 >> 28) != 0) {
                                fVar.f7580b = i4 + 5;
                                i7 = (268435455 & i7) | (bArr2[i12] << 28);
                            }
                        }
                    }
                }
                linkedHashSet.add(fVar.d(i7));
            }
            if (i4 != i5) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }
}
