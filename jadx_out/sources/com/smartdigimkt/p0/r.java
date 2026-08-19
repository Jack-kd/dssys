package com.smartdigimkt.p0;

import java.io.EOFException;

/* loaded from: classes5.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f42506a = {com.smartdigimkt.a1.t.a("isom"), com.smartdigimkt.a1.t.a("iso2"), com.smartdigimkt.a1.t.a("iso3"), com.smartdigimkt.a1.t.a("iso4"), com.smartdigimkt.a1.t.a("iso5"), com.smartdigimkt.a1.t.a("iso6"), com.smartdigimkt.a1.t.a("avc1"), com.smartdigimkt.a1.t.a("hvc1"), com.smartdigimkt.a1.t.a("hev1"), com.smartdigimkt.a1.t.a("mp41"), com.smartdigimkt.a1.t.a("mp42"), com.smartdigimkt.a1.t.a("3g2a"), com.smartdigimkt.a1.t.a("3g2b"), com.smartdigimkt.a1.t.a("3gr6"), com.smartdigimkt.a1.t.a("3gs6"), com.smartdigimkt.a1.t.a("3ge6"), com.smartdigimkt.a1.t.a("3gg6"), com.smartdigimkt.a1.t.a("M4V "), com.smartdigimkt.a1.t.a("M4A "), com.smartdigimkt.a1.t.a("f4v "), com.smartdigimkt.a1.t.a("kddi"), com.smartdigimkt.a1.t.a("M4VP"), com.smartdigimkt.a1.t.a("qt  "), com.smartdigimkt.a1.t.a("MSNV")};

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(com.smartdigimkt.o0.b bVar, boolean z2) throws InterruptedException, EOFException {
        boolean z3;
        int i2;
        long j2 = bVar.f42190c;
        long j3 = -1;
        if (j2 == -1 || j2 > 4096) {
            j2 = 4096;
        }
        int i3 = (int) j2;
        com.smartdigimkt.a1.l lVar = new com.smartdigimkt.a1.l(64);
        boolean z4 = false;
        int i4 = 0;
        Object[] objArr = false;
        while (i4 < i3) {
            lVar.b(8);
            byte[] bArr = lVar.f39286a;
            if (bVar.a(8)) {
                System.arraycopy(bVar.f42192e, bVar.f42193f - 8, bArr, z4 ? 1 : 0, 8);
            }
            long jF = lVar.f();
            int iA = lVar.a();
            if (jF == 1) {
                byte[] bArr2 = lVar.f39286a;
                if (bVar.a(8)) {
                    System.arraycopy(bVar.f42192e, bVar.f42193f - 8, bArr2, 8, 8);
                }
                if (16 > lVar.f39286a.length) {
                    throw new IllegalArgumentException();
                }
                lVar.f39288c = 16;
                i2 = 16;
                jF = lVar.i();
            } else {
                if (jF == 0) {
                    long j4 = bVar.f42190c;
                    if (j4 != j3) {
                        jF = 8 + (j4 - bVar.f42191d);
                    }
                }
                i2 = 8;
            }
            long j5 = i2;
            if (jF < j5) {
                return z4;
            }
            i4 += i2;
            if (iA != c.f42291C) {
                if (iA == c.f42309L || iA == c.f42313N) {
                    z3 = true;
                    break;
                }
                long j6 = (i4 + jF) - j5;
                boolean z5 = z4 ? 1 : 0;
                if (j6 >= i3) {
                    break;
                }
                int i5 = (int) (jF - j5);
                i4 += i5;
                if (iA == c.f42329b) {
                    if (i5 < 8) {
                        return z5;
                    }
                    lVar.b(i5);
                    byte[] bArr3 = lVar.f39286a;
                    if (bVar.a(i5)) {
                        System.arraycopy(bVar.f42192e, bVar.f42193f - i5, bArr3, z5 ? 1 : 0, i5);
                    }
                    int i6 = i5 / 4;
                    for (int i7 = 0; i7 < i6; i7++) {
                        if (i7 != 1) {
                            int iA2 = lVar.a();
                            if ((iA2 >>> 8) != com.smartdigimkt.a1.t.a("3gp")) {
                                for (int i8 : f42506a) {
                                    if (i8 != iA2) {
                                    }
                                }
                            }
                            objArr = true;
                            break;
                        }
                        lVar.c(lVar.f39287b + 4);
                    }
                    if (objArr == false) {
                        return false;
                    }
                } else if (i5 != 0) {
                    bVar.a(i5);
                }
                j3 = -1;
                z4 = false;
            }
        }
        z3 = false;
        return objArr == true && z2 == z3;
    }
}
