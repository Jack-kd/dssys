package com.ubix.ssp.ad.e.y.a;

import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class c extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    public String f47596b;

    /* renamed from: c, reason: collision with root package name */
    public String f47597c;

    /* renamed from: d, reason: collision with root package name */
    public String f47598d;

    /* renamed from: e, reason: collision with root package name */
    public String f47599e;

    /* renamed from: f, reason: collision with root package name */
    public a f47600f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f47601g;

    /* renamed from: h, reason: collision with root package name */
    public String f47602h;

    /* renamed from: i, reason: collision with root package name */
    public String[] f47603i;

    /* renamed from: j, reason: collision with root package name */
    public String f47604j;

    /* renamed from: k, reason: collision with root package name */
    public String f47605k;

    /* renamed from: l, reason: collision with root package name */
    public String f47606l;

    public static final class a extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        public double f47607b;

        /* renamed from: c, reason: collision with root package name */
        public double f47608c;

        /* renamed from: d, reason: collision with root package name */
        public String f47609d;

        /* renamed from: e, reason: collision with root package name */
        public String f47610e;

        /* renamed from: f, reason: collision with root package name */
        public String f47611f;

        /* renamed from: g, reason: collision with root package name */
        public String f47612g;

        /* renamed from: h, reason: collision with root package name */
        public String f47613h;

        public a() {
            e();
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            if (Double.doubleToLongBits(this.f47607b) != Double.doubleToLongBits(0.0d)) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47607b);
            }
            if (Double.doubleToLongBits(this.f47608c) != Double.doubleToLongBits(0.0d)) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47608c);
            }
            if (!this.f47609d.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(3, this.f47609d);
            }
            if (!this.f47610e.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(4, this.f47610e);
            }
            if (!this.f47611f.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(5, this.f47611f);
            }
            if (!this.f47612g.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47612g);
            }
            return !this.f47613h.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(7, this.f47613h) : iB;
        }

        public a e() {
            this.f47607b = 0.0d;
            this.f47608c = 0.0d;
            this.f47609d = "";
            this.f47610e = "";
            this.f47611f = "";
            this.f47612g = "";
            this.f47613h = "";
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            if (Double.doubleToLongBits(this.f47607b) != Double.doubleToLongBits(0.0d)) {
                bVar.b(1, this.f47607b);
            }
            if (Double.doubleToLongBits(this.f47608c) != Double.doubleToLongBits(0.0d)) {
                bVar.b(2, this.f47608c);
            }
            if (!this.f47609d.equals("")) {
                bVar.b(3, this.f47609d);
            }
            if (!this.f47610e.equals("")) {
                bVar.b(4, this.f47610e);
            }
            if (!this.f47611f.equals("")) {
                bVar.b(5, this.f47611f);
            }
            if (!this.f47612g.equals("")) {
                bVar.b(6, this.f47612g);
            }
            if (!this.f47613h.equals("")) {
                bVar.b(7, this.f47613h);
            }
            super.a(bVar);
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public a a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
            while (true) {
                int iW = aVar.w();
                if (iW == 0) {
                    break;
                }
                if (iW == 9) {
                    this.f47607b = aVar.f();
                } else if (iW == 17) {
                    this.f47608c = aVar.f();
                } else if (iW == 26) {
                    this.f47609d = aVar.v();
                } else if (iW == 34) {
                    this.f47610e = aVar.v();
                } else if (iW == 42) {
                    this.f47611f = aVar.v();
                } else if (iW == 50) {
                    this.f47612g = aVar.v();
                } else if (iW == 58) {
                    this.f47613h = aVar.v();
                } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                    break;
                }
            }
            return this;
        }
    }

    public c() {
        e();
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        if (!this.f47596b.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47596b);
        }
        if (!this.f47597c.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47597c);
        }
        if (!this.f47598d.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(3, this.f47598d);
        }
        if (!this.f47599e.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(4, this.f47599e);
        }
        a aVar = this.f47600f;
        if (aVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(5, aVar);
        }
        boolean z2 = this.f47601g;
        if (z2) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(6, z2);
        }
        if (!this.f47602h.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(7, this.f47602h);
        }
        String[] strArr = this.f47603i;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            int iA = 0;
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.f47603i;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    i3++;
                    iA += com.ubix.ssp.ad.e.y.c.b.a(str);
                }
                i2++;
            }
            iB = iB + iA + i3;
        }
        if (!this.f47604j.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(9, this.f47604j);
        }
        if (!this.f47605k.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(10, this.f47605k);
        }
        return !this.f47606l.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(11, this.f47606l) : iB;
    }

    public c e() {
        this.f47596b = "";
        this.f47597c = "";
        this.f47598d = "";
        this.f47599e = "";
        this.f47600f = null;
        this.f47601g = false;
        this.f47602h = "";
        this.f47603i = com.ubix.ssp.ad.e.y.c.h.f47835f;
        this.f47604j = "";
        this.f47605k = "";
        this.f47606l = "";
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        if (!this.f47596b.equals("")) {
            bVar.b(1, this.f47596b);
        }
        if (!this.f47597c.equals("")) {
            bVar.b(2, this.f47597c);
        }
        if (!this.f47598d.equals("")) {
            bVar.b(3, this.f47598d);
        }
        if (!this.f47599e.equals("")) {
            bVar.b(4, this.f47599e);
        }
        a aVar = this.f47600f;
        if (aVar != null) {
            bVar.d(5, aVar);
        }
        boolean z2 = this.f47601g;
        if (z2) {
            bVar.b(6, z2);
        }
        if (!this.f47602h.equals("")) {
            bVar.b(7, this.f47602h);
        }
        String[] strArr = this.f47603i;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.f47603i;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    bVar.b(8, str);
                }
                i2++;
            }
        }
        if (!this.f47604j.equals("")) {
            bVar.b(9, this.f47604j);
        }
        if (!this.f47605k.equals("")) {
            bVar.b(10, this.f47605k);
        }
        if (!this.f47606l.equals("")) {
            bVar.b(11, this.f47606l);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public c a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        while (true) {
            int iW = aVar.w();
            switch (iW) {
                case 0:
                    break;
                case 10:
                    this.f47596b = aVar.v();
                    break;
                case 18:
                    this.f47597c = aVar.v();
                    break;
                case 26:
                    this.f47598d = aVar.v();
                    break;
                case 34:
                    this.f47599e = aVar.v();
                    break;
                case 42:
                    if (this.f47600f == null) {
                        this.f47600f = new a();
                    }
                    aVar.a(this.f47600f);
                    break;
                case 48:
                    this.f47601g = aVar.d();
                    break;
                case 58:
                    this.f47602h = aVar.v();
                    break;
                case 66:
                    int iA = com.ubix.ssp.ad.e.y.c.h.a(aVar, 66);
                    String[] strArr = this.f47603i;
                    int length = strArr == null ? 0 : strArr.length;
                    int i2 = iA + length;
                    String[] strArr2 = new String[i2];
                    if (length != 0) {
                        System.arraycopy(strArr, 0, strArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        strArr2[length] = aVar.v();
                        aVar.w();
                        length++;
                    }
                    strArr2[length] = aVar.v();
                    this.f47603i = strArr2;
                    break;
                case 74:
                    this.f47604j = aVar.v();
                    break;
                case 82:
                    this.f47605k = aVar.v();
                    break;
                case 90:
                    this.f47606l = aVar.v();
                    break;
                default:
                    if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }
}
