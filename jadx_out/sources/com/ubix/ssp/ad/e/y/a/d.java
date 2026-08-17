package com.ubix.ssp.ad.e.y.a;

import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class d extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    public String f47614b;

    /* renamed from: c, reason: collision with root package name */
    public String f47615c;

    /* renamed from: d, reason: collision with root package name */
    public k f47616d;

    /* renamed from: e, reason: collision with root package name */
    public c f47617e;

    /* renamed from: f, reason: collision with root package name */
    public f f47618f;

    /* renamed from: g, reason: collision with root package name */
    public b[] f47619g;

    /* renamed from: h, reason: collision with root package name */
    public String f47620h;

    /* renamed from: i, reason: collision with root package name */
    public String f47621i;

    /* renamed from: j, reason: collision with root package name */
    public int f47622j;

    /* renamed from: k, reason: collision with root package name */
    public String f47623k;

    public d() {
        e();
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        if (!this.f47614b.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47614b);
        }
        if (!this.f47615c.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47615c);
        }
        k kVar = this.f47616d;
        if (kVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(3, kVar);
        }
        c cVar = this.f47617e;
        if (cVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(4, cVar);
        }
        f fVar = this.f47618f;
        if (fVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(5, fVar);
        }
        b[] bVarArr = this.f47619g;
        if (bVarArr != null && bVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                b[] bVarArr2 = this.f47619g;
                if (i2 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i2];
                if (bVar != null) {
                    iB += com.ubix.ssp.ad.e.y.c.b.b(6, bVar);
                }
                i2++;
            }
        }
        if (!this.f47620h.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(7, this.f47620h);
        }
        if (!this.f47621i.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(8, this.f47621i);
        }
        int i3 = this.f47622j;
        if (i3 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(9, i3);
        }
        return !this.f47623k.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(10, this.f47623k) : iB;
    }

    public d e() {
        this.f47614b = "";
        this.f47615c = "";
        this.f47616d = null;
        this.f47617e = null;
        this.f47618f = null;
        this.f47619g = b.f();
        this.f47620h = "";
        this.f47621i = "";
        this.f47622j = 0;
        this.f47623k = "";
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        if (!this.f47614b.equals("")) {
            bVar.b(1, this.f47614b);
        }
        if (!this.f47615c.equals("")) {
            bVar.b(2, this.f47615c);
        }
        k kVar = this.f47616d;
        if (kVar != null) {
            bVar.d(3, kVar);
        }
        c cVar = this.f47617e;
        if (cVar != null) {
            bVar.d(4, cVar);
        }
        f fVar = this.f47618f;
        if (fVar != null) {
            bVar.d(5, fVar);
        }
        b[] bVarArr = this.f47619g;
        if (bVarArr != null && bVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                b[] bVarArr2 = this.f47619g;
                if (i2 >= bVarArr2.length) {
                    break;
                }
                b bVar2 = bVarArr2[i2];
                if (bVar2 != null) {
                    bVar.d(6, bVar2);
                }
                i2++;
            }
        }
        if (!this.f47620h.equals("")) {
            bVar.b(7, this.f47620h);
        }
        if (!this.f47621i.equals("")) {
            bVar.b(8, this.f47621i);
        }
        int i3 = this.f47622j;
        if (i3 != 0) {
            bVar.i(9, i3);
        }
        if (!this.f47623k.equals("")) {
            bVar.b(10, this.f47623k);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public d a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        com.ubix.ssp.ad.e.y.c.f fVar;
        while (true) {
            int iW = aVar.w();
            switch (iW) {
                case 0:
                    break;
                case 10:
                    this.f47614b = aVar.v();
                    continue;
                case 18:
                    this.f47615c = aVar.v();
                    continue;
                case 26:
                    if (this.f47616d == null) {
                        this.f47616d = new k();
                    }
                    fVar = this.f47616d;
                    break;
                case 34:
                    if (this.f47617e == null) {
                        this.f47617e = new c();
                    }
                    fVar = this.f47617e;
                    break;
                case 42:
                    if (this.f47618f == null) {
                        this.f47618f = new f();
                    }
                    fVar = this.f47618f;
                    break;
                case 50:
                    int iA = com.ubix.ssp.ad.e.y.c.h.a(aVar, 50);
                    b[] bVarArr = this.f47619g;
                    int length = bVarArr == null ? 0 : bVarArr.length;
                    int i2 = iA + length;
                    b[] bVarArr2 = new b[i2];
                    if (length != 0) {
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        b bVar = new b();
                        bVarArr2[length] = bVar;
                        aVar.a(bVar);
                        aVar.w();
                        length++;
                    }
                    b bVar2 = new b();
                    bVarArr2[length] = bVar2;
                    aVar.a(bVar2);
                    this.f47619g = bVarArr2;
                    continue;
                case 58:
                    this.f47620h = aVar.v();
                    continue;
                case 66:
                    this.f47621i = aVar.v();
                    continue;
                case 72:
                    this.f47622j = aVar.k();
                    continue;
                case 82:
                    this.f47623k = aVar.v();
                    continue;
                default:
                    if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                        break;
                    } else {
                        continue;
                    }
            }
            aVar.a(fVar);
        }
        return this;
    }
}
