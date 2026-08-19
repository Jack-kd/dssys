package com.smartdigimkt.j0;

import android.util.Log;

/* loaded from: classes5.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.w0.l f41013a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f41014b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.w0.f0[] f41015c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean[] f41016d;

    /* renamed from: e, reason: collision with root package name */
    public long f41017e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f41018f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f41019g;

    /* renamed from: h, reason: collision with root package name */
    public w f41020h;

    /* renamed from: i, reason: collision with root package name */
    public v f41021i;

    /* renamed from: j, reason: collision with root package name */
    public com.smartdigimkt.w0.k0 f41022j;

    /* renamed from: k, reason: collision with root package name */
    public com.smartdigimkt.y0.m f41023k;

    /* renamed from: l, reason: collision with root package name */
    public final a[] f41024l;

    /* renamed from: m, reason: collision with root package name */
    public final com.smartdigimkt.y0.l f41025m;

    /* renamed from: n, reason: collision with root package name */
    public final com.smartdigimkt.w0.j f41026n;

    /* renamed from: o, reason: collision with root package name */
    public com.smartdigimkt.y0.m f41027o;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2, types: [com.smartdigimkt.w0.b] */
    public v(a[] aVarArr, long j2, com.smartdigimkt.y0.l lVar, com.smartdigimkt.z0.l lVar2, com.smartdigimkt.w0.j jVar, Object obj, w wVar) {
        this.f41024l = aVarArr;
        this.f41017e = j2 - wVar.f41029b;
        this.f41025m = lVar;
        this.f41026n = jVar;
        obj.getClass();
        this.f41014b = obj;
        this.f41020h = wVar;
        this.f41015c = new com.smartdigimkt.w0.f0[aVarArr.length];
        this.f41016d = new boolean[aVarArr.length];
        com.smartdigimkt.w0.m mVar = wVar.f41028a;
        jVar.getClass();
        if (mVar.f44847a != 0) {
            throw new IllegalArgumentException();
        }
        com.smartdigimkt.w0.i iVar = new com.smartdigimkt.w0.i(jVar.f44834f, jVar.f44835g.a(), jVar.f44836h.a(), jVar.f44837i, new com.smartdigimkt.w0.x(jVar.f44830b.f44871c, mVar), jVar, lVar2, jVar.f44838j, jVar.f44839k);
        long j3 = wVar.f41030c;
        this.f41013a = j3 != Long.MIN_VALUE ? new com.smartdigimkt.w0.b(iVar, j3) : iVar;
    }

    public final long a(long j2, boolean z2, boolean[] zArr) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            com.smartdigimkt.y0.m mVar = this.f41023k;
            boolean z3 = true;
            if (i3 >= mVar.f45163a) {
                break;
            }
            boolean[] zArr2 = this.f41016d;
            if (z2 || !mVar.a(this.f41027o, i3)) {
                z3 = false;
            }
            zArr2[i3] = z3;
            i3++;
        }
        com.smartdigimkt.w0.f0[] f0VarArr = this.f41015c;
        int i4 = 0;
        while (true) {
            a[] aVarArr = this.f41024l;
            if (i4 >= aVarArr.length) {
                break;
            }
            if (aVarArr[i4].f40842a == 5) {
                f0VarArr[i4] = null;
            }
            i4++;
        }
        a(this.f41023k);
        com.smartdigimkt.y0.k kVar = this.f41023k.f45165c;
        long jA = this.f41013a.a((com.smartdigimkt.y0.h[]) kVar.f45161b.clone(), this.f41016d, this.f41015c, zArr, j2);
        com.smartdigimkt.w0.f0[] f0VarArr2 = this.f41015c;
        int i5 = 0;
        while (true) {
            a[] aVarArr2 = this.f41024l;
            if (i5 >= aVarArr2.length) {
                break;
            }
            if (aVarArr2[i5].f40842a == 5 && this.f41023k.a(i5)) {
                f0VarArr2[i5] = new com.smartdigimkt.w0.c();
            }
            i5++;
        }
        this.f41019g = false;
        while (true) {
            com.smartdigimkt.w0.f0[] f0VarArr3 = this.f41015c;
            if (i2 >= f0VarArr3.length) {
                return jA;
            }
            if (f0VarArr3[i2] != null) {
                if (!this.f41023k.a(i2)) {
                    throw new IllegalStateException();
                }
                if (this.f41024l[i2].f40842a != 5) {
                    this.f41019g = true;
                }
            } else if (kVar.f45161b[i2] != null) {
                throw new IllegalStateException();
            }
            i2++;
        }
    }

    public final boolean b() {
        com.smartdigimkt.y0.m mVarA = this.f41025m.a(this.f41024l, this.f41022j);
        com.smartdigimkt.y0.m mVar = this.f41027o;
        if (mVar != null && mVar.f45165c.f45160a == mVarA.f45165c.f45160a) {
            for (int i2 = 0; i2 < mVarA.f45165c.f45160a; i2++) {
                if (mVarA.a(mVar, i2)) {
                }
            }
            return false;
        }
        this.f41023k = mVarA;
        for (com.smartdigimkt.y0.h hVar : (com.smartdigimkt.y0.h[]) mVarA.f45165c.f45161b.clone()) {
        }
        return true;
    }

    public final void a() {
        a(null);
        try {
            if (this.f41020h.f41030c != Long.MIN_VALUE) {
                this.f41026n.a(((com.smartdigimkt.w0.b) this.f41013a).f44728a);
            } else {
                this.f41026n.a(this.f41013a);
            }
        } catch (RuntimeException e2) {
            Log.e("MediaPeriodHolder", "Period release failed.", e2);
        }
    }

    public final void a(com.smartdigimkt.y0.m mVar) {
        com.smartdigimkt.y0.m mVar2 = this.f41027o;
        if (mVar2 != null) {
            for (int i2 = 0; i2 < mVar2.f45163a; i2++) {
                mVar2.a(i2);
                com.smartdigimkt.y0.h hVar = mVar2.f45165c.f45161b[i2];
            }
        }
        this.f41027o = mVar;
        if (mVar != null) {
            for (int i3 = 0; i3 < mVar.f45163a; i3++) {
                mVar.a(i3);
                com.smartdigimkt.y0.h hVar2 = mVar.f45165c.f45161b[i3];
            }
        }
    }
}
