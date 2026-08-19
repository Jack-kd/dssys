package com.smartdigimkt.w0;

import java.io.EOFException;

/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.z0.b f44757a;

    /* renamed from: b, reason: collision with root package name */
    public final int f44758b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f44759c;

    /* renamed from: d, reason: collision with root package name */
    public final a0 f44760d;

    /* renamed from: e, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f44761e;

    /* renamed from: f, reason: collision with root package name */
    public c0 f44762f;

    /* renamed from: g, reason: collision with root package name */
    public c0 f44763g;

    /* renamed from: h, reason: collision with root package name */
    public c0 f44764h;

    /* renamed from: i, reason: collision with root package name */
    public com.smartdigimkt.j0.s f44765i;

    /* renamed from: j, reason: collision with root package name */
    public long f44766j;

    /* renamed from: k, reason: collision with root package name */
    public d0 f44767k;

    public e0(com.smartdigimkt.z0.b bVar) {
        this.f44757a = bVar;
        ((com.smartdigimkt.z0.l) bVar).getClass();
        this.f44758b = 65536;
        this.f44759c = new b0();
        this.f44760d = new a0();
        this.f44761e = new com.smartdigimkt.a1.l(32);
        c0 c0Var = new c0(65536, 0L);
        this.f44762f = c0Var;
        this.f44763g = c0Var;
        this.f44764h = c0Var;
    }

    public final void a() {
        long jA;
        b0 b0Var = this.f44759c;
        synchronized (b0Var) {
            int i2 = b0Var.f44741i;
            if (i2 == 0) {
                jA = -1;
            } else {
                jA = b0Var.a(i2);
            }
        }
        a(jA);
    }

    public final long b() {
        long j2;
        b0 b0Var = this.f44759c;
        synchronized (b0Var) {
            j2 = b0Var.f44746n;
        }
        return j2;
    }

    public final com.smartdigimkt.j0.s c() {
        com.smartdigimkt.j0.s sVar;
        b0 b0Var = this.f44759c;
        synchronized (b0Var) {
            sVar = b0Var.f44748p ? null : b0Var.f44749q;
        }
        return sVar;
    }

    public final void d() {
        b0 b0Var = this.f44759c;
        int i2 = 0;
        b0Var.f44741i = 0;
        b0Var.f44742j = 0;
        b0Var.f44743k = 0;
        b0Var.f44744l = 0;
        b0Var.f44747o = true;
        b0Var.f44745m = Long.MIN_VALUE;
        b0Var.f44746n = Long.MIN_VALUE;
        c0 c0Var = this.f44762f;
        if (c0Var.f44752c) {
            c0 c0Var2 = this.f44764h;
            int i3 = (((int) (c0Var2.f44750a - c0Var.f44750a)) / this.f44758b) + (c0Var2.f44752c ? 1 : 0);
            com.smartdigimkt.z0.a[] aVarArr = new com.smartdigimkt.z0.a[i3];
            while (i2 < i3) {
                aVarArr[i2] = c0Var.f44753d;
                c0Var.f44753d = null;
                c0 c0Var3 = c0Var.f44754e;
                c0Var.f44754e = null;
                i2++;
                c0Var = c0Var3;
            }
            ((com.smartdigimkt.z0.l) this.f44757a).a(aVarArr);
        }
        c0 c0Var4 = new c0(this.f44758b, 0L);
        this.f44762f = c0Var4;
        this.f44763g = c0Var4;
        this.f44764h = c0Var4;
        this.f44766j = 0L;
        ((com.smartdigimkt.z0.l) this.f44757a).a();
    }

    public final int a(long j2, boolean z2) {
        b0 b0Var = this.f44759c;
        synchronized (b0Var) {
            int iC = b0Var.c(b0Var.f44744l);
            if (b0Var.a() && j2 >= b0Var.f44738f[iC] && (j2 <= b0Var.f44746n || z2)) {
                int iA = b0Var.a(iC, b0Var.f44741i - b0Var.f44744l, j2, true);
                if (iA == -1) {
                    return -1;
                }
                b0Var.f44744l += iA;
                return iA;
            }
            return -1;
        }
    }

    public final void a(long j2, byte[] bArr, int i2) {
        while (true) {
            c0 c0Var = this.f44763g;
            if (j2 < c0Var.f44751b) {
                break;
            } else {
                this.f44763g = c0Var.f44754e;
            }
        }
        int i3 = i2;
        while (i3 > 0) {
            int iMin = Math.min(i3, (int) (this.f44763g.f44751b - j2));
            c0 c0Var2 = this.f44763g;
            com.smartdigimkt.z0.a aVar = c0Var2.f44753d;
            System.arraycopy(aVar.f45349a, ((int) (j2 - c0Var2.f44750a)) + aVar.f45350b, bArr, i2 - i3, iMin);
            i3 -= iMin;
            j2 += iMin;
            c0 c0Var3 = this.f44763g;
            if (j2 == c0Var3.f44751b) {
                this.f44763g = c0Var3.f44754e;
            }
        }
    }

    public final void a(long j2) {
        c0 c0Var;
        if (j2 == -1) {
            return;
        }
        while (true) {
            c0Var = this.f44762f;
            if (j2 < c0Var.f44751b) {
                break;
            }
            com.smartdigimkt.z0.b bVar = this.f44757a;
            com.smartdigimkt.z0.a aVar = c0Var.f44753d;
            com.smartdigimkt.z0.l lVar = (com.smartdigimkt.z0.l) bVar;
            synchronized (lVar) {
                com.smartdigimkt.z0.a[] aVarArr = lVar.f45378a;
                aVarArr[0] = aVar;
                lVar.a(aVarArr);
            }
            c0 c0Var2 = this.f44762f;
            c0Var2.f44753d = null;
            c0 c0Var3 = c0Var2.f44754e;
            c0Var2.f44754e = null;
            this.f44762f = c0Var3;
        }
        if (this.f44763g.f44750a < c0Var.f44750a) {
            this.f44763g = c0Var;
        }
    }

    public final void a(com.smartdigimkt.j0.s sVar) {
        boolean z2;
        if (sVar == null) {
            sVar = null;
        }
        b0 b0Var = this.f44759c;
        synchronized (b0Var) {
            z2 = true;
            if (sVar == null) {
                b0Var.f44748p = true;
            } else {
                b0Var.f44748p = false;
                if (!com.smartdigimkt.a1.t.a(sVar, b0Var.f44749q)) {
                    b0Var.f44749q = sVar;
                }
            }
            z2 = false;
        }
        d0 d0Var = this.f44767k;
        if (d0Var == null || !z2) {
            return;
        }
        i iVar = (i) d0Var;
        iVar.f44813n.post(iVar.f44811l);
    }

    public final int a(com.smartdigimkt.o0.b bVar, int i2) throws InterruptedException, EOFException {
        com.smartdigimkt.o0.b bVar2;
        int iA = a(i2);
        c0 c0Var = this.f44764h;
        com.smartdigimkt.z0.a aVar = c0Var.f44753d;
        byte[] bArr = aVar.f45349a;
        int i3 = ((int) (this.f44766j - c0Var.f44750a)) + aVar.f45350b;
        int i4 = bVar.f42194g;
        int iA2 = 0;
        if (i4 != 0) {
            int iMin = Math.min(i4, iA);
            System.arraycopy(bVar.f42192e, 0, bArr, i3, iMin);
            int i5 = bVar.f42194g - iMin;
            bVar.f42194g = i5;
            bVar.f42193f = 0;
            byte[] bArr2 = bVar.f42192e;
            byte[] bArr3 = i5 < bArr2.length - 524288 ? new byte[65536 + i5] : bArr2;
            System.arraycopy(bArr2, iMin, bArr3, 0, i5);
            bVar.f42192e = bArr3;
            iA2 = iMin;
        }
        if (iA2 == 0) {
            bVar2 = bVar;
            iA2 = bVar.a(bArr, i3, iA, 0, true);
        } else {
            bVar2 = bVar;
        }
        if (iA2 != -1) {
            bVar2.f42191d += iA2;
        }
        if (iA2 != -1) {
            long j2 = this.f44766j + iA2;
            this.f44766j = j2;
            c0 c0Var2 = this.f44764h;
            if (j2 == c0Var2.f44751b) {
                this.f44764h = c0Var2.f44754e;
            }
            return iA2;
        }
        throw new EOFException();
    }

    public final void a(int i2, com.smartdigimkt.a1.l lVar) {
        while (i2 > 0) {
            int iA = a(i2);
            c0 c0Var = this.f44764h;
            com.smartdigimkt.z0.a aVar = c0Var.f44753d;
            lVar.a(aVar.f45349a, ((int) (this.f44766j - c0Var.f44750a)) + aVar.f45350b, iA);
            i2 -= iA;
            long j2 = this.f44766j + iA;
            this.f44766j = j2;
            c0 c0Var2 = this.f44764h;
            if (j2 == c0Var2.f44751b) {
                this.f44764h = c0Var2.f44754e;
            }
        }
    }

    public final void a(long j2, int i2, int i3, int i4, com.smartdigimkt.o0.m mVar) {
        this.f44759c.a(j2, i2, (this.f44766j - i3) - i4, i3, mVar);
    }

    public final int a(int i2) {
        com.smartdigimkt.z0.a aVar;
        c0 c0Var = this.f44764h;
        if (!c0Var.f44752c) {
            com.smartdigimkt.z0.l lVar = (com.smartdigimkt.z0.l) this.f44757a;
            synchronized (lVar) {
                try {
                    lVar.f45380c++;
                    int i3 = lVar.f45381d;
                    if (i3 > 0) {
                        com.smartdigimkt.z0.a[] aVarArr = lVar.f45382e;
                        int i4 = i3 - 1;
                        lVar.f45381d = i4;
                        aVar = aVarArr[i4];
                        aVarArr[i4] = null;
                    } else {
                        aVar = new com.smartdigimkt.z0.a(0, new byte[65536]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c0 c0Var2 = new c0(this.f44758b, this.f44764h.f44751b);
            c0Var.f44753d = aVar;
            c0Var.f44754e = c0Var2;
            c0Var.f44752c = true;
        }
        return Math.min(i2, (int) (this.f44764h.f44751b - this.f44766j));
    }
}
