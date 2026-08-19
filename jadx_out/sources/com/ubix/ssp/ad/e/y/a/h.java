package com.ubix.ssp.ad.e.y.a;

import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class h extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    public b f47755b;

    /* renamed from: c, reason: collision with root package name */
    public a f47756c;

    public static final class a extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        public String f47757b;

        public a() {
            e();
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            return !this.f47757b.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(1, this.f47757b) : iB;
        }

        public a e() {
            this.f47757b = "";
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            if (!this.f47757b.equals("")) {
                bVar.b(1, this.f47757b);
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
                if (iW == 10) {
                    this.f47757b = aVar.v();
                } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                    break;
                }
            }
            return this;
        }
    }

    public static final class b extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        public String f47758b;

        /* renamed from: c, reason: collision with root package name */
        public String f47759c;

        /* renamed from: d, reason: collision with root package name */
        public String f47760d;

        /* renamed from: e, reason: collision with root package name */
        public String f47761e;

        /* renamed from: f, reason: collision with root package name */
        public String f47762f;

        /* renamed from: g, reason: collision with root package name */
        public float f47763g;

        /* renamed from: h, reason: collision with root package name */
        public String f47764h;

        /* renamed from: i, reason: collision with root package name */
        public String f47765i;

        /* renamed from: j, reason: collision with root package name */
        public String f47766j;

        public b() {
            e();
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            if (!this.f47758b.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47758b);
            }
            if (!this.f47759c.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47759c);
            }
            if (!this.f47760d.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(3, this.f47760d);
            }
            if (!this.f47761e.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(4, this.f47761e);
            }
            if (!this.f47762f.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(5, this.f47762f);
            }
            if (Float.floatToIntBits(this.f47763g) != Float.floatToIntBits(0.0f)) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47763g);
            }
            if (!this.f47764h.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(7, this.f47764h);
            }
            if (!this.f47765i.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(8, this.f47765i);
            }
            return !this.f47766j.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(9, this.f47766j) : iB;
        }

        public b e() {
            this.f47758b = "";
            this.f47759c = "";
            this.f47760d = "";
            this.f47761e = "";
            this.f47762f = "";
            this.f47763g = 0.0f;
            this.f47764h = "";
            this.f47765i = "";
            this.f47766j = "";
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            if (!this.f47758b.equals("")) {
                bVar.b(1, this.f47758b);
            }
            if (!this.f47759c.equals("")) {
                bVar.b(2, this.f47759c);
            }
            if (!this.f47760d.equals("")) {
                bVar.b(3, this.f47760d);
            }
            if (!this.f47761e.equals("")) {
                bVar.b(4, this.f47761e);
            }
            if (!this.f47762f.equals("")) {
                bVar.b(5, this.f47762f);
            }
            if (Float.floatToIntBits(this.f47763g) != Float.floatToIntBits(0.0f)) {
                bVar.b(6, this.f47763g);
            }
            if (!this.f47764h.equals("")) {
                bVar.b(7, this.f47764h);
            }
            if (!this.f47765i.equals("")) {
                bVar.b(8, this.f47765i);
            }
            if (!this.f47766j.equals("")) {
                bVar.b(9, this.f47766j);
            }
            super.a(bVar);
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
            while (true) {
                int iW = aVar.w();
                if (iW == 0) {
                    break;
                }
                if (iW == 10) {
                    this.f47758b = aVar.v();
                } else if (iW == 18) {
                    this.f47759c = aVar.v();
                } else if (iW == 26) {
                    this.f47760d = aVar.v();
                } else if (iW == 34) {
                    this.f47761e = aVar.v();
                } else if (iW == 42) {
                    this.f47762f = aVar.v();
                } else if (iW == 53) {
                    this.f47763g = aVar.j();
                } else if (iW == 58) {
                    this.f47764h = aVar.v();
                } else if (iW == 66) {
                    this.f47765i = aVar.v();
                } else if (iW == 74) {
                    this.f47766j = aVar.v();
                } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                    break;
                }
            }
            return this;
        }
    }

    public h() {
        e();
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        b bVar = this.f47755b;
        if (bVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(1, bVar);
        }
        a aVar = this.f47756c;
        return aVar != null ? iB + com.ubix.ssp.ad.e.y.c.b.b(2, aVar) : iB;
    }

    public h e() {
        this.f47755b = null;
        this.f47756c = null;
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        b bVar2 = this.f47755b;
        if (bVar2 != null) {
            bVar.d(1, bVar2);
        }
        a aVar = this.f47756c;
        if (aVar != null) {
            bVar.d(2, aVar);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public h a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        com.ubix.ssp.ad.e.y.c.f fVar;
        while (true) {
            int iW = aVar.w();
            if (iW == 0) {
                break;
            }
            if (iW == 10) {
                if (this.f47755b == null) {
                    this.f47755b = new b();
                }
                fVar = this.f47755b;
            } else if (iW == 18) {
                if (this.f47756c == null) {
                    this.f47756c = new a();
                }
                fVar = this.f47756c;
            } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                break;
            }
            aVar.a(fVar);
        }
        return this;
    }
}
