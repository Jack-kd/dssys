package com.ubix.ssp.ad.e.y.a;

import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class e extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    public String f47624b;

    /* renamed from: c, reason: collision with root package name */
    public a[] f47625c;

    /* renamed from: d, reason: collision with root package name */
    public long f47626d;

    /* renamed from: e, reason: collision with root package name */
    public long f47627e;

    /* renamed from: f, reason: collision with root package name */
    public long f47628f;

    /* renamed from: g, reason: collision with root package name */
    public String f47629g;

    public e() {
        e();
    }

    public static e a(byte[] bArr) {
        return (e) com.ubix.ssp.ad.e.y.c.f.a(new e(), bArr);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        if (!this.f47624b.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47624b);
        }
        a[] aVarArr = this.f47625c;
        if (aVarArr != null && aVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                a[] aVarArr2 = this.f47625c;
                if (i2 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i2];
                if (aVar != null) {
                    iB += com.ubix.ssp.ad.e.y.c.b.b(2, aVar);
                }
                i2++;
            }
        }
        long j2 = this.f47626d;
        if (j2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(3, j2);
        }
        long j3 = this.f47627e;
        if (j3 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(4, j3);
        }
        long j4 = this.f47628f;
        if (j4 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(5, j4);
        }
        return !this.f47629g.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(6, this.f47629g) : iB;
    }

    public e e() {
        this.f47624b = "";
        this.f47625c = a.f();
        this.f47626d = 0L;
        this.f47627e = 0L;
        this.f47628f = 0L;
        this.f47629g = "";
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public e a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        while (true) {
            int iW = aVar.w();
            if (iW == 0) {
                break;
            }
            if (iW == 10) {
                this.f47624b = aVar.v();
            } else if (iW == 18) {
                int iA = com.ubix.ssp.ad.e.y.c.h.a(aVar, 18);
                a[] aVarArr = this.f47625c;
                int length = aVarArr == null ? 0 : aVarArr.length;
                int i2 = iA + length;
                a[] aVarArr2 = new a[i2];
                if (length != 0) {
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                }
                while (length < i2 - 1) {
                    a aVar2 = new a();
                    aVarArr2[length] = aVar2;
                    aVar.a(aVar2);
                    aVar.w();
                    length++;
                }
                a aVar3 = new a();
                aVarArr2[length] = aVar3;
                aVar.a(aVar3);
                this.f47625c = aVarArr2;
            } else if (iW == 24) {
                this.f47626d = aVar.l();
            } else if (iW == 32) {
                this.f47627e = aVar.l();
            } else if (iW == 40) {
                this.f47628f = aVar.l();
            } else if (iW == 50) {
                this.f47629g = aVar.v();
            } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                break;
            }
        }
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        if (!this.f47624b.equals("")) {
            bVar.b(1, this.f47624b);
        }
        a[] aVarArr = this.f47625c;
        if (aVarArr != null && aVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                a[] aVarArr2 = this.f47625c;
                if (i2 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i2];
                if (aVar != null) {
                    bVar.d(2, aVar);
                }
                i2++;
            }
        }
        long j2 = this.f47626d;
        if (j2 != 0) {
            bVar.g(3, j2);
        }
        long j3 = this.f47627e;
        if (j3 != 0) {
            bVar.g(4, j3);
        }
        long j4 = this.f47628f;
        if (j4 != 0) {
            bVar.g(5, j4);
        }
        if (!this.f47629g.equals("")) {
            bVar.b(6, this.f47629g);
        }
        super.a(bVar);
    }
}
