package com.ubix.ssp.ad.e.y.a;

import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class j extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    private static volatile j[] f47771b;

    /* renamed from: c, reason: collision with root package name */
    public int f47772c;

    /* renamed from: d, reason: collision with root package name */
    public String f47773d;

    /* renamed from: e, reason: collision with root package name */
    public long f47774e;

    public j() {
        e();
    }

    public static j[] f() {
        if (f47771b == null) {
            synchronized (com.ubix.ssp.ad.e.y.c.c.f47827c) {
                try {
                    if (f47771b == null) {
                        f47771b = new j[0];
                    }
                } finally {
                }
            }
        }
        return f47771b;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        int i2 = this.f47772c;
        if (i2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(1, i2);
        }
        if (!this.f47773d.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47773d);
        }
        long j2 = this.f47774e;
        return j2 != 0 ? iB + com.ubix.ssp.ad.e.y.c.b.e(3, j2) : iB;
    }

    public j e() {
        this.f47772c = 0;
        this.f47773d = "";
        this.f47774e = 0L;
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        int i2 = this.f47772c;
        if (i2 != 0) {
            bVar.i(1, i2);
        }
        if (!this.f47773d.equals("")) {
            bVar.b(2, this.f47773d);
        }
        long j2 = this.f47774e;
        if (j2 != 0) {
            bVar.j(3, j2);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public j a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        while (true) {
            int iW = aVar.w();
            if (iW == 0) {
                break;
            }
            if (iW == 8) {
                this.f47772c = aVar.k();
            } else if (iW == 18) {
                this.f47773d = aVar.v();
            } else if (iW == 24) {
                this.f47774e = aVar.y();
            } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                break;
            }
        }
        return this;
    }
}
