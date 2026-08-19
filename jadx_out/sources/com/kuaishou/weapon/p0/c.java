package com.kuaishou.weapon.p0;

import java.io.UnsupportedEncodingException;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f30918a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f30919b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f30920c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f30921d = 4;

    /* renamed from: e, reason: collision with root package name */
    public static final int f30922e = 8;

    /* renamed from: f, reason: collision with root package name */
    public static final int f30923f = 16;

    /* renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f30924g = true;

    /* renamed from: h, reason: collision with root package name */
    private static final Pattern f30925h = Pattern.compile("^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$");

    public static abstract class a {

        /* renamed from: a, reason: collision with root package name */
        public byte[] f30926a;

        /* renamed from: b, reason: collision with root package name */
        public int f30927b;

        public abstract int a(int i2);

        public abstract boolean a(byte[] bArr, int i2, int i3, boolean z2);
    }

    public static class b extends a {

        /* renamed from: c, reason: collision with root package name */
        private static final int[] f30928c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: d, reason: collision with root package name */
        private static final int[] f30929d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: e, reason: collision with root package name */
        private static final int f30930e = -1;

        /* renamed from: f, reason: collision with root package name */
        private static final int f30931f = -2;

        /* renamed from: g, reason: collision with root package name */
        private int f30932g;

        /* renamed from: h, reason: collision with root package name */
        private int f30933h;

        /* renamed from: i, reason: collision with root package name */
        private final int[] f30934i;

        public b(int i2, byte[] bArr) {
            this.f30926a = bArr;
            this.f30934i = (i2 & 8) == 0 ? f30928c : f30929d;
            this.f30932g = 0;
            this.f30933h = 0;
        }

        @Override // com.kuaishou.weapon.p0.c.a
        public int a(int i2) {
            return ((i2 * 3) / 4) + 10;
        }

        @Override // com.kuaishou.weapon.p0.c.a
        public boolean a(byte[] bArr, int i2, int i3, boolean z2) {
            int i4 = this.f30932g;
            if (i4 == 6) {
                return false;
            }
            int i5 = i3 + i2;
            int i6 = this.f30933h;
            byte[] bArr2 = this.f30926a;
            int[] iArr = this.f30934i;
            int i7 = 0;
            int i8 = i6;
            int i9 = i4;
            int i10 = i2;
            while (i10 < i5) {
                if (i9 == 0) {
                    while (true) {
                        int i11 = i10 + 4;
                        if (i11 > i5 || (i8 = (iArr[bArr[i10] & 255] << 18) | (iArr[bArr[i10 + 1] & 255] << 12) | (iArr[bArr[i10 + 2] & 255] << 6) | iArr[bArr[i10 + 3] & 255]) < 0) {
                            break;
                        }
                        bArr2[i7 + 2] = (byte) i8;
                        bArr2[i7 + 1] = (byte) (i8 >> 8);
                        bArr2[i7] = (byte) (i8 >> 16);
                        i7 += 3;
                        i10 = i11;
                    }
                    if (i10 >= i5) {
                        break;
                    }
                }
                int i12 = i10 + 1;
                int i13 = iArr[bArr[i10] & 255];
                if (i9 != 0) {
                    if (i9 == 1) {
                        if (i13 < 0) {
                            if (i13 != -1) {
                                this.f30932g = 6;
                                return false;
                            }
                        }
                        i8 = (i8 << 6) | i13;
                    } else if (i9 == 2) {
                        if (i13 < 0) {
                            if (i13 == -2) {
                                bArr2[i7] = (byte) (i8 >> 4);
                                i7++;
                                i9 = 4;
                            } else if (i13 != -1) {
                                this.f30932g = 6;
                                return false;
                            }
                        }
                        i8 = (i8 << 6) | i13;
                    } else if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 == 5 && i13 != -1) {
                                this.f30932g = 6;
                                return false;
                            }
                        } else if (i13 != -2) {
                            if (i13 != -1) {
                                this.f30932g = 6;
                                return false;
                            }
                        }
                    } else if (i13 >= 0) {
                        i8 = (i8 << 6) | i13;
                        bArr2[i7 + 2] = (byte) i8;
                        bArr2[i7 + 1] = (byte) (i8 >> 8);
                        bArr2[i7] = (byte) (i8 >> 16);
                        i7 += 3;
                        i9 = 0;
                    } else if (i13 == -2) {
                        bArr2[i7 + 1] = (byte) (i8 >> 2);
                        bArr2[i7] = (byte) (i8 >> 10);
                        i7 += 2;
                        i9 = 5;
                    } else if (i13 != -1) {
                        this.f30932g = 6;
                        return false;
                    }
                    i9++;
                } else if (i13 >= 0) {
                    i9++;
                    i8 = i13;
                } else if (i13 != -1) {
                    this.f30932g = 6;
                    return false;
                }
                i10 = i12;
            }
            if (!z2) {
                this.f30932g = i9;
                this.f30933h = i8;
                this.f30927b = i7;
                return true;
            }
            if (i9 == 1) {
                this.f30932g = 6;
                return false;
            }
            if (i9 == 2) {
                bArr2[i7] = (byte) (i8 >> 4);
                i7++;
            } else if (i9 == 3) {
                int i14 = i7 + 1;
                bArr2[i7] = (byte) (i8 >> 10);
                i7 += 2;
                bArr2[i14] = (byte) (i8 >> 2);
            } else if (i9 == 4) {
                this.f30932g = 6;
                return false;
            }
            this.f30932g = i9;
            this.f30927b = i7;
            return true;
        }
    }

    /* renamed from: com.kuaishou.weapon.p0.c$c, reason: collision with other inner class name */
    public static class C0458c extends a {

        /* renamed from: c, reason: collision with root package name */
        public static final int f30935c = 19;

        /* renamed from: h, reason: collision with root package name */
        static final /* synthetic */ boolean f30936h = true;

        /* renamed from: i, reason: collision with root package name */
        private static final byte[] f30937i = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.f35450P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.f35451Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.f35453S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.f35452R, 121, 122, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 43, 47};

        /* renamed from: j, reason: collision with root package name */
        private static final byte[] f30938j = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.f35450P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.f35451Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.f35453S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.f35452R, 121, 122, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 45, 95};

        /* renamed from: d, reason: collision with root package name */
        int f30939d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f30940e;

        /* renamed from: f, reason: collision with root package name */
        public final boolean f30941f;

        /* renamed from: g, reason: collision with root package name */
        public final boolean f30942g;

        /* renamed from: k, reason: collision with root package name */
        private final byte[] f30943k;

        /* renamed from: l, reason: collision with root package name */
        private int f30944l;

        /* renamed from: m, reason: collision with root package name */
        private final byte[] f30945m;

        public C0458c(int i2, byte[] bArr) {
            this.f30926a = bArr;
            this.f30940e = (i2 & 1) == 0;
            boolean z2 = (i2 & 2) == 0;
            this.f30941f = z2;
            this.f30942g = (i2 & 4) != 0;
            this.f30945m = (i2 & 8) == 0 ? f30937i : f30938j;
            this.f30943k = new byte[2];
            this.f30939d = 0;
            this.f30944l = z2 ? 19 : -1;
        }

        @Override // com.kuaishou.weapon.p0.c.a
        public int a(int i2) {
            return ((i2 * 8) / 5) + 10;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x01c6  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01d3 A[ADDED_TO_REGION] */
        @Override // com.kuaishou.weapon.p0.c.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(byte[] r18, int r19, int r20, boolean r21) {
            /*
                Method dump skipped, instructions count: 523
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.c.C0458c.a(byte[], int, int, boolean):boolean");
        }
    }

    private c() {
    }

    public static byte[] a(String str, int i2) {
        return a(str.getBytes(), i2);
    }

    public static String b(String str, int i2) {
        try {
            return new String(a(str.getBytes(), i2));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static byte[] c(byte[] bArr, int i2) {
        try {
            return c(bArr, 0, bArr.length, i2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] a(byte[] bArr) {
        return a(bArr, 0, bArr.length, 0);
    }

    public static byte[] c(byte[] bArr, int i2, int i3, int i4) {
        C0458c c0458c = new C0458c(i4, null);
        int i5 = (i3 / 3) * 4;
        if (!c0458c.f30940e) {
            int i6 = i3 % 3;
            if (i6 == 1) {
                i5 += 2;
            } else if (i6 == 2) {
                i5 += 3;
            }
        } else if (i3 % 3 > 0) {
            i5 += 4;
        }
        if (c0458c.f30941f && i3 > 0) {
            i5 += (((i3 - 1) / 57) + 1) * (c0458c.f30942g ? 2 : 1);
        }
        c0458c.f30926a = new byte[i5];
        c0458c.a(bArr, i2, i3, true);
        if (f30924g || c0458c.f30927b == i5) {
            return c0458c.f30926a;
        }
        throw new AssertionError();
    }

    public static byte[] a(byte[] bArr, int i2) {
        return a(bArr, 0, bArr.length, i2);
    }

    public static String b(byte[] bArr, int i2) {
        try {
            return new String(c(bArr, i2), "US-ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    public static byte[] a(byte[] bArr, int i2, int i3, int i4) {
        b bVar = new b(i4, new byte[(i3 * 3) / 4]);
        if (bVar.a(bArr, i2, i3, true)) {
            int i5 = bVar.f30927b;
            byte[] bArr2 = bVar.f30926a;
            if (i5 == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i5];
            System.arraycopy(bArr2, 0, bArr3, 0, i5);
            return bArr3;
        }
        throw new IllegalArgumentException("bad base-64");
    }

    public static String b(byte[] bArr, int i2, int i3, int i4) {
        try {
            return new String(c(bArr, i2, i3, i4), "US-ASCII");
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    public static String a(byte[] bArr, String str) {
        try {
            return new String(c(bArr, 0), str);
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    public static boolean a(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    return f30925h.matcher(str).matches();
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
