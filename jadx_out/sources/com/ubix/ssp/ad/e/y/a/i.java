package com.ubix.ssp.ad.e.y.a;

import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class i extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    private static volatile i[] f47767b;

    /* renamed from: c, reason: collision with root package name */
    public int f47768c;

    /* renamed from: d, reason: collision with root package name */
    public int f47769d;

    /* renamed from: e, reason: collision with root package name */
    public String f47770e;

    public i() {
        e();
    }

    public static i[] f() {
        if (f47767b == null) {
            synchronized (com.ubix.ssp.ad.e.y.c.c.f47827c) {
                try {
                    if (f47767b == null) {
                        f47767b = new i[0];
                    }
                } finally {
                }
            }
        }
        return f47767b;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        int i2 = this.f47768c;
        if (i2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.f(1, i2);
        }
        int i3 = this.f47769d;
        if (i3 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.f(2, i3);
        }
        return !this.f47770e.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(3, this.f47770e) : iB;
    }

    public i e() {
        this.f47768c = 0;
        this.f47769d = 0;
        this.f47770e = "";
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        int i2 = this.f47768c;
        if (i2 != 0) {
            bVar.m(1, i2);
        }
        int i3 = this.f47769d;
        if (i3 != 0) {
            bVar.m(2, i3);
        }
        if (!this.f47770e.equals("")) {
            bVar.b(3, this.f47770e);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public i a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        while (true) {
            int iW = aVar.w();
            if (iW == 0) {
                break;
            }
            if (iW == 8) {
                this.f47768c = aVar.x();
            } else if (iW == 16) {
                this.f47769d = aVar.x();
            } else if (iW == 26) {
                this.f47770e = aVar.v();
            } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                break;
            }
        }
        return this;
    }
}
