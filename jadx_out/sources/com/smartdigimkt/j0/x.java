package com.smartdigimkt.j0;

import android.util.Pair;

/* loaded from: classes5.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final l0 f41035a = new l0();

    /* renamed from: b, reason: collision with root package name */
    public final m0 f41036b = new m0();

    /* renamed from: c, reason: collision with root package name */
    public long f41037c;

    /* renamed from: d, reason: collision with root package name */
    public n0 f41038d;

    /* renamed from: e, reason: collision with root package name */
    public int f41039e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f41040f;

    /* renamed from: g, reason: collision with root package name */
    public v f41041g;

    /* renamed from: h, reason: collision with root package name */
    public v f41042h;

    /* renamed from: i, reason: collision with root package name */
    public v f41043i;

    /* renamed from: j, reason: collision with root package name */
    public int f41044j;

    /* renamed from: k, reason: collision with root package name */
    public Object f41045k;

    /* renamed from: l, reason: collision with root package name */
    public long f41046l;

    public final v a() {
        v vVar = this.f41041g;
        if (vVar != null) {
            if (vVar == this.f41042h) {
                this.f41042h = vVar.f41021i;
            }
            vVar.a();
            int i2 = this.f41044j - 1;
            this.f41044j = i2;
            if (i2 == 0) {
                this.f41043i = null;
                v vVar2 = this.f41041g;
                this.f41045k = vVar2.f41014b;
                this.f41046l = vVar2.f41020h.f41028a.f44850d;
            }
            this.f41041g = this.f41041g.f41021i;
        } else {
            v vVar3 = this.f41043i;
            this.f41041g = vVar3;
            this.f41042h = vVar3;
        }
        return this.f41041g;
    }

    public final v b() {
        return c() ? this.f41041g : this.f41043i;
    }

    public final boolean c() {
        return this.f41041g != null;
    }

    public final boolean d() {
        v vVar;
        v vVarB = b();
        if (vVarB == null) {
            return true;
        }
        while (true) {
            int iA = this.f41038d.a(vVarB.f41020h.f41028a.f44847a, this.f41035a, this.f41036b, this.f41039e, this.f41040f);
            while (true) {
                vVar = vVarB.f41021i;
                if (vVar == null || vVarB.f41020h.f41033f) {
                    break;
                }
                vVarB = vVar;
            }
            if (iA == -1 || vVar == null || vVar.f41020h.f41028a.f44847a != iA) {
                break;
            }
            vVarB = vVar;
        }
        boolean zA = a(vVarB);
        w wVar = vVarB.f41020h;
        vVarB.f41020h = a(wVar, wVar.f41028a);
        return (zA && c()) ? false : true;
    }

    public final boolean a(v vVar) {
        if (vVar != null) {
            this.f41043i = vVar;
            boolean z2 = false;
            while (true) {
                vVar = vVar.f41021i;
                if (vVar != null) {
                    if (vVar == this.f41042h) {
                        this.f41042h = this.f41041g;
                        z2 = true;
                    }
                    vVar.a();
                    this.f41044j--;
                } else {
                    this.f41043i.f41021i = null;
                    return z2;
                }
            }
        } else {
            throw new IllegalStateException();
        }
    }

    public final void a(boolean z2) {
        v vVarB = b();
        if (vVarB != null) {
            this.f41045k = z2 ? vVarB.f41014b : null;
            this.f41046l = vVarB.f41020h.f41028a.f44850d;
            vVarB.a();
            a(vVarB);
        } else if (!z2) {
            this.f41045k = null;
        }
        this.f41041g = null;
        this.f41043i = null;
        this.f41042h = null;
        this.f41044j = 0;
    }

    public final com.smartdigimkt.w0.m a(int i2, long j2) {
        long j3;
        int i3;
        int iA;
        Object obj = this.f41038d.a(i2, this.f41035a, true).f40932a;
        int i4 = this.f41035a.f40933b;
        Object obj2 = this.f41045k;
        int i5 = 0;
        if (obj2 != null && (iA = this.f41038d.a(obj2)) != -1 && this.f41038d.a(iA, this.f41035a, false).f40933b == i4) {
            j3 = this.f41046l;
        } else {
            v vVarB = b();
            while (true) {
                if (vVarB != null) {
                    if (vVarB.f41014b.equals(obj)) {
                        j3 = vVarB.f41020h.f41028a.f44850d;
                        break;
                    }
                    vVarB = vVarB.f41021i;
                } else {
                    v vVarB2 = b();
                    while (true) {
                        if (vVarB2 != null) {
                            int iA2 = this.f41038d.a(vVarB2.f41014b);
                            if (iA2 != -1 && this.f41038d.a(iA2, this.f41035a, false).f40933b == i4) {
                                j3 = vVarB2.f41020h.f41028a.f44850d;
                                break;
                            }
                            vVarB2 = vVarB2.f41021i;
                        } else {
                            j3 = this.f41037c;
                            this.f41037c = 1 + j3;
                            break;
                        }
                    }
                }
            }
        }
        this.f41038d.a(i2, this.f41035a, false);
        int iB = this.f41035a.b(j2);
        if (iB == -1) {
            return new com.smartdigimkt.w0.m(i2, -1, -1, j3);
        }
        long j4 = j3;
        com.smartdigimkt.x0.a aVar = this.f41035a.f40936e.f45057c[iB];
        while (true) {
            int[] iArr = aVar.f45053a;
            if (i5 >= iArr.length || (i3 = iArr[i5]) == 0 || i3 == 1) {
                break;
            }
            i5++;
        }
        return new com.smartdigimkt.w0.m(i2, iB, i5, j4);
    }

    public final w a(v vVar, long j2) {
        int i2;
        int i3;
        com.smartdigimkt.w0.m mVar;
        int i4;
        w wVar = vVar.f41020h;
        int i5 = 0;
        if (wVar.f41033f) {
            int iA = this.f41038d.a(wVar.f41028a.f44847a, this.f41035a, this.f41036b, this.f41039e, this.f41040f);
            if (iA == -1) {
                return null;
            }
            int i6 = this.f41038d.a(iA, this.f41035a, true).f40933b;
            Object obj = this.f41035a.f40932a;
            long j3 = wVar.f41028a.f44850d;
            long jLongValue = 0;
            if (this.f41038d.a(i6, this.f41036b, 0L).f40942c == iA) {
                Pair pairA = this.f41038d.a(this.f41036b, this.f41035a, i6, -9223372036854775807L, Math.max(0L, (vVar.f41017e + wVar.f41032e) - j2));
                if (pairA == null) {
                    return null;
                }
                iA = ((Integer) pairA.first).intValue();
                jLongValue = ((Long) pairA.second).longValue();
                v vVar2 = vVar.f41021i;
                if (vVar2 != null && vVar2.f41014b.equals(obj)) {
                    j3 = vVar.f41021i.f41020h.f41028a.f44850d;
                } else {
                    j3 = this.f41037c;
                    this.f41037c = 1 + j3;
                }
            }
            long j4 = j3;
            this.f41038d.a(iA, this.f41035a, false);
            int iB = this.f41035a.b(jLongValue);
            if (iB == -1) {
                mVar = new com.smartdigimkt.w0.m(iA, -1, -1, j4);
            } else {
                int i7 = iA;
                com.smartdigimkt.x0.a aVar = this.f41035a.f40936e.f45057c[iB];
                int i8 = 0;
                while (true) {
                    int[] iArr = aVar.f45053a;
                    if (i8 >= iArr.length || (i4 = iArr[i8]) == 0 || i4 == 1) {
                        break;
                    }
                    i8++;
                }
                mVar = new com.smartdigimkt.w0.m(i7, iB, i8, j4);
            }
            com.smartdigimkt.w0.m mVar2 = mVar;
            this.f41038d.a(mVar2.f44847a, this.f41035a, false);
            if (mVar2.a()) {
                this.f41035a.f40936e.f45057c[mVar2.f44848b].getClass();
                return null;
            }
            return a(mVar2.f44847a, jLongValue, mVar2.f44850d);
        }
        com.smartdigimkt.w0.m mVar3 = wVar.f41028a;
        this.f41038d.a(mVar3.f44847a, this.f41035a, false);
        if (mVar3.a()) {
            this.f41035a.f40936e.f45057c[mVar3.f44848b].getClass();
            return null;
        }
        long j5 = wVar.f41030c;
        if (j5 != Long.MIN_VALUE) {
            int iB2 = this.f41035a.b(j5);
            if (iB2 == -1) {
                return a(mVar3.f44847a, wVar.f41030c, mVar3.f44850d);
            }
            com.smartdigimkt.x0.a aVar2 = this.f41035a.f40936e.f45057c[iB2];
            while (true) {
                int[] iArr2 = aVar2.f45053a;
                if (i5 >= iArr2.length || (i3 = iArr2[i5]) == 0 || i3 == 1) {
                    break;
                }
                i5++;
            }
            this.f41035a.f40936e.f45057c[iB2].getClass();
            return null;
        }
        com.smartdigimkt.x0.b bVar = this.f41035a.f40936e;
        int i9 = bVar.f45055a;
        if (i9 == 0) {
            return null;
        }
        int i10 = i9 - 1;
        if (bVar.f45056b[i10] == Long.MIN_VALUE) {
            bVar.f45057c[i10].getClass();
            com.smartdigimkt.x0.a aVar3 = this.f41035a.f40936e.f45057c[i10];
            while (true) {
                int[] iArr3 = aVar3.f45053a;
                if (i5 >= iArr3.length || (i2 = iArr3[i5]) == 0 || i2 == 1) {
                    break;
                }
                i5++;
            }
            this.f41035a.f40936e.f45057c[i10].getClass();
        }
        return null;
    }

    public final w a(w wVar, com.smartdigimkt.w0.m mVar) {
        long j2;
        long j3;
        long j4 = wVar.f41029b;
        long j5 = wVar.f41030c;
        boolean zA = a(mVar, j5);
        boolean zA2 = a(mVar, zA);
        this.f41038d.a(mVar.f44847a, this.f41035a, false);
        if (mVar.a()) {
            l0 l0Var = this.f41035a;
            l0Var.f40936e.f45057c[mVar.f44848b].getClass();
            j3 = -9223372036854775807L;
        } else if (j5 == Long.MIN_VALUE) {
            j3 = this.f41035a.f40934c;
        } else {
            j2 = j5;
            return new w(mVar, j4, j5, wVar.f41031d, j2, zA, zA2);
        }
        j2 = j3;
        return new w(mVar, j4, j5, wVar.f41031d, j2, zA, zA2);
    }

    public final w a(int i2, long j2, long j3) {
        com.smartdigimkt.w0.m mVar = new com.smartdigimkt.w0.m(i2, -1, -1, j3);
        this.f41038d.a(i2, this.f41035a, false);
        int iA = this.f41035a.a(j2);
        long j4 = iA == -1 ? Long.MIN_VALUE : this.f41035a.f40936e.f45056b[iA];
        boolean zA = a(mVar, j4);
        return new w(mVar, j2, j4, -9223372036854775807L, j4 == Long.MIN_VALUE ? this.f41035a.f40934c : j4, zA, a(mVar, zA));
    }

    public final boolean a(com.smartdigimkt.w0.m mVar, long j2) {
        int i2 = this.f41038d.a(mVar.f44847a, this.f41035a, false).f40936e.f45055a;
        if (i2 == 0) {
            return true;
        }
        int i3 = i2 - 1;
        boolean zA = mVar.a();
        com.smartdigimkt.x0.b bVar = this.f41035a.f40936e;
        if (bVar.f45056b[i3] != Long.MIN_VALUE) {
            return !zA && j2 == Long.MIN_VALUE;
        }
        bVar.f45057c[i3].getClass();
        return false;
    }

    public final boolean a(com.smartdigimkt.w0.m mVar, boolean z2) {
        return !this.f41038d.a(this.f41038d.a(mVar.f44847a, this.f41035a, false).f40933b, this.f41036b).f40941b && this.f41038d.a(mVar.f44847a, this.f41035a, this.f41036b, this.f41039e, this.f41040f) == -1 && z2;
    }
}
