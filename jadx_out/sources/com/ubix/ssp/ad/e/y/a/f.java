package com.ubix.ssp.ad.e.y.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ubix.ssp.ad.e.y.c.b;
import com.umeng.commonsdk.statistics.UMErrorCode;

/* loaded from: classes5.dex */
public final class f extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: A, reason: collision with root package name */
    public String f47630A;

    /* renamed from: B, reason: collision with root package name */
    public String[] f47631B;

    /* renamed from: C, reason: collision with root package name */
    public String f47632C;

    /* renamed from: D, reason: collision with root package name */
    public String f47633D;

    /* renamed from: E, reason: collision with root package name */
    public c f47634E;

    /* renamed from: F, reason: collision with root package name */
    public String[] f47635F;

    /* renamed from: G, reason: collision with root package name */
    public String[] f47636G;

    /* renamed from: H, reason: collision with root package name */
    public float f47637H;

    /* renamed from: I, reason: collision with root package name */
    public String f47638I;

    /* renamed from: J, reason: collision with root package name */
    public String f47639J;

    /* renamed from: K, reason: collision with root package name */
    public a[] f47640K;

    /* renamed from: L, reason: collision with root package name */
    public int f47641L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f47642M;

    /* renamed from: N, reason: collision with root package name */
    public int f47643N;

    /* renamed from: O, reason: collision with root package name */
    public String f47644O;

    /* renamed from: b, reason: collision with root package name */
    public b f47645b;

    /* renamed from: c, reason: collision with root package name */
    public int f47646c;

    /* renamed from: d, reason: collision with root package name */
    public int f47647d;

    /* renamed from: e, reason: collision with root package name */
    public String f47648e;

    /* renamed from: f, reason: collision with root package name */
    public String f47649f;

    /* renamed from: g, reason: collision with root package name */
    public String f47650g;

    /* renamed from: h, reason: collision with root package name */
    public String f47651h;

    /* renamed from: i, reason: collision with root package name */
    public String f47652i;

    /* renamed from: j, reason: collision with root package name */
    public String f47653j;

    /* renamed from: k, reason: collision with root package name */
    public int f47654k;

    /* renamed from: l, reason: collision with root package name */
    public i f47655l;

    /* renamed from: m, reason: collision with root package name */
    public float f47656m;

    /* renamed from: n, reason: collision with root package name */
    public String f47657n;

    /* renamed from: o, reason: collision with root package name */
    public int f47658o;

    /* renamed from: p, reason: collision with root package name */
    public String f47659p;

    /* renamed from: q, reason: collision with root package name */
    public int f47660q;

    /* renamed from: r, reason: collision with root package name */
    public String f47661r;

    /* renamed from: s, reason: collision with root package name */
    public String f47662s;

    /* renamed from: t, reason: collision with root package name */
    public int f47663t;

    /* renamed from: u, reason: collision with root package name */
    public long f47664u;

    /* renamed from: v, reason: collision with root package name */
    public long f47665v;

    /* renamed from: w, reason: collision with root package name */
    public int f47666w;

    /* renamed from: x, reason: collision with root package name */
    public int f47667x;

    /* renamed from: y, reason: collision with root package name */
    public String f47668y;

    /* renamed from: z, reason: collision with root package name */
    public String f47669z;

    public static final class a extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        private static volatile a[] f47670b;

        /* renamed from: c, reason: collision with root package name */
        public String f47671c;

        /* renamed from: d, reason: collision with root package name */
        public int f47672d;

        public a() {
            e();
        }

        public static a[] f() {
            if (f47670b == null) {
                synchronized (com.ubix.ssp.ad.e.y.c.c.f47827c) {
                    try {
                        if (f47670b == null) {
                            f47670b = new a[0];
                        }
                    } finally {
                    }
                }
            }
            return f47670b;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            if (!this.f47671c.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47671c);
            }
            int i2 = this.f47672d;
            return i2 != 0 ? iB + com.ubix.ssp.ad.e.y.c.b.c(2, i2) : iB;
        }

        public a e() {
            this.f47671c = "";
            this.f47672d = 0;
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            if (!this.f47671c.equals("")) {
                bVar.b(1, this.f47671c);
            }
            int i2 = this.f47672d;
            if (i2 != 0) {
                bVar.i(2, i2);
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
                    this.f47671c = aVar.v();
                } else if (iW == 16) {
                    this.f47672d = aVar.k();
                } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                    break;
                }
            }
            return this;
        }
    }

    public static final class b extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        public String f47673b;

        /* renamed from: c, reason: collision with root package name */
        public String f47674c;

        /* renamed from: d, reason: collision with root package name */
        public String f47675d;

        /* renamed from: e, reason: collision with root package name */
        public String f47676e;

        /* renamed from: f, reason: collision with root package name */
        public String f47677f;

        /* renamed from: g, reason: collision with root package name */
        public String f47678g;

        /* renamed from: h, reason: collision with root package name */
        public String f47679h;

        /* renamed from: i, reason: collision with root package name */
        public String f47680i;

        /* renamed from: j, reason: collision with root package name */
        public String f47681j;

        /* renamed from: k, reason: collision with root package name */
        public String f47682k;

        /* renamed from: l, reason: collision with root package name */
        public String f47683l;

        /* renamed from: m, reason: collision with root package name */
        public String f47684m;

        /* renamed from: n, reason: collision with root package name */
        public String f47685n;

        /* renamed from: o, reason: collision with root package name */
        public String f47686o;

        /* renamed from: p, reason: collision with root package name */
        public String f47687p;

        /* renamed from: q, reason: collision with root package name */
        public String f47688q;

        public b() {
            e();
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            if (!this.f47673b.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47673b);
            }
            if (!this.f47674c.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47674c);
            }
            if (!this.f47675d.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(3, this.f47675d);
            }
            if (!this.f47676e.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(4, this.f47676e);
            }
            if (!this.f47677f.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(5, this.f47677f);
            }
            if (!this.f47678g.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47678g);
            }
            if (!this.f47679h.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(7, this.f47679h);
            }
            if (!this.f47680i.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(8, this.f47680i);
            }
            if (!this.f47681j.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(9, this.f47681j);
            }
            if (!this.f47682k.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(10, this.f47682k);
            }
            if (!this.f47683l.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(11, this.f47683l);
            }
            if (!this.f47684m.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(12, this.f47684m);
            }
            if (!this.f47685n.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(14, this.f47685n);
            }
            if (!this.f47686o.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(15, this.f47686o);
            }
            if (!this.f47687p.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(16, this.f47687p);
            }
            return !this.f47688q.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(17, this.f47688q) : iB;
        }

        public b e() {
            this.f47673b = "";
            this.f47674c = "";
            this.f47675d = "";
            this.f47676e = "";
            this.f47677f = "";
            this.f47678g = "";
            this.f47679h = "";
            this.f47680i = "";
            this.f47681j = "";
            this.f47682k = "";
            this.f47683l = "";
            this.f47684m = "";
            this.f47685n = "";
            this.f47686o = "";
            this.f47687p = "";
            this.f47688q = "";
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            if (!this.f47673b.equals("")) {
                bVar.b(1, this.f47673b);
            }
            if (!this.f47674c.equals("")) {
                bVar.b(2, this.f47674c);
            }
            if (!this.f47675d.equals("")) {
                bVar.b(3, this.f47675d);
            }
            if (!this.f47676e.equals("")) {
                bVar.b(4, this.f47676e);
            }
            if (!this.f47677f.equals("")) {
                bVar.b(5, this.f47677f);
            }
            if (!this.f47678g.equals("")) {
                bVar.b(6, this.f47678g);
            }
            if (!this.f47679h.equals("")) {
                bVar.b(7, this.f47679h);
            }
            if (!this.f47680i.equals("")) {
                bVar.b(8, this.f47680i);
            }
            if (!this.f47681j.equals("")) {
                bVar.b(9, this.f47681j);
            }
            if (!this.f47682k.equals("")) {
                bVar.b(10, this.f47682k);
            }
            if (!this.f47683l.equals("")) {
                bVar.b(11, this.f47683l);
            }
            if (!this.f47684m.equals("")) {
                bVar.b(12, this.f47684m);
            }
            if (!this.f47685n.equals("")) {
                bVar.b(14, this.f47685n);
            }
            if (!this.f47686o.equals("")) {
                bVar.b(15, this.f47686o);
            }
            if (!this.f47687p.equals("")) {
                bVar.b(16, this.f47687p);
            }
            if (!this.f47688q.equals("")) {
                bVar.b(17, this.f47688q);
            }
            super.a(bVar);
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
            while (true) {
                int iW = aVar.w();
                switch (iW) {
                    case 0:
                        break;
                    case 10:
                        this.f47673b = aVar.v();
                        break;
                    case 18:
                        this.f47674c = aVar.v();
                        break;
                    case 26:
                        this.f47675d = aVar.v();
                        break;
                    case 34:
                        this.f47676e = aVar.v();
                        break;
                    case 42:
                        this.f47677f = aVar.v();
                        break;
                    case 50:
                        this.f47678g = aVar.v();
                        break;
                    case 58:
                        this.f47679h = aVar.v();
                        break;
                    case 66:
                        this.f47680i = aVar.v();
                        break;
                    case 74:
                        this.f47681j = aVar.v();
                        break;
                    case 82:
                        this.f47682k = aVar.v();
                        break;
                    case 90:
                        this.f47683l = aVar.v();
                        break;
                    case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME /* 98 */:
                        this.f47684m = aVar.v();
                        break;
                    case 114:
                        this.f47685n = aVar.v();
                        break;
                    case UMErrorCode.E_UM_BE_ERROR_WORK_MODE /* 122 */:
                        this.f47686o = aVar.v();
                        break;
                    case MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE /* 130 */:
                        this.f47687p = aVar.v();
                        break;
                    case MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_END_TIME /* 138 */:
                        this.f47688q = aVar.v();
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

    public static final class c extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        public String f47689b;

        /* renamed from: c, reason: collision with root package name */
        public String f47690c;

        /* renamed from: d, reason: collision with root package name */
        public long f47691d;

        /* renamed from: e, reason: collision with root package name */
        public long f47692e;

        /* renamed from: f, reason: collision with root package name */
        public String f47693f;

        /* renamed from: g, reason: collision with root package name */
        public String f47694g;

        /* renamed from: h, reason: collision with root package name */
        public String f47695h;

        public c() {
            e();
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            if (!this.f47689b.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47689b);
            }
            if (!this.f47690c.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47690c);
            }
            long j2 = this.f47691d;
            if (j2 != 0) {
                iB += com.ubix.ssp.ad.e.y.c.b.b(3, j2);
            }
            long j3 = this.f47692e;
            if (j3 != 0) {
                iB += com.ubix.ssp.ad.e.y.c.b.b(4, j3);
            }
            if (!this.f47693f.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(5, this.f47693f);
            }
            if (!this.f47694g.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47694g);
            }
            return !this.f47695h.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(7, this.f47695h) : iB;
        }

        public c e() {
            this.f47689b = "";
            this.f47690c = "";
            this.f47691d = 0L;
            this.f47692e = 0L;
            this.f47693f = "";
            this.f47694g = "";
            this.f47695h = "";
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            if (!this.f47689b.equals("")) {
                bVar.b(1, this.f47689b);
            }
            if (!this.f47690c.equals("")) {
                bVar.b(2, this.f47690c);
            }
            long j2 = this.f47691d;
            if (j2 != 0) {
                bVar.g(3, j2);
            }
            long j3 = this.f47692e;
            if (j3 != 0) {
                bVar.g(4, j3);
            }
            if (!this.f47693f.equals("")) {
                bVar.b(5, this.f47693f);
            }
            if (!this.f47694g.equals("")) {
                bVar.b(6, this.f47694g);
            }
            if (!this.f47695h.equals("")) {
                bVar.b(7, this.f47695h);
            }
            super.a(bVar);
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public c a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
            while (true) {
                int iW = aVar.w();
                if (iW == 0) {
                    break;
                }
                if (iW == 10) {
                    this.f47689b = aVar.v();
                } else if (iW == 18) {
                    this.f47690c = aVar.v();
                } else if (iW == 24) {
                    this.f47691d = aVar.l();
                } else if (iW == 32) {
                    this.f47692e = aVar.l();
                } else if (iW == 42) {
                    this.f47693f = aVar.v();
                } else if (iW == 50) {
                    this.f47694g = aVar.v();
                } else if (iW == 58) {
                    this.f47695h = aVar.v();
                } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                    break;
                }
            }
            return this;
        }
    }

    public f() {
        e();
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        b bVar = this.f47645b;
        if (bVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(1, bVar);
        }
        int i2 = this.f47646c;
        if (i2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(2, i2);
        }
        int i3 = this.f47647d;
        if (i3 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(3, i3);
        }
        if (!this.f47648e.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(4, this.f47648e);
        }
        if (!this.f47649f.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(5, this.f47649f);
        }
        if (!this.f47650g.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47650g);
        }
        if (!this.f47651h.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(7, this.f47651h);
        }
        if (!this.f47652i.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(8, this.f47652i);
        }
        if (!this.f47653j.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(9, this.f47653j);
        }
        int i4 = this.f47654k;
        if (i4 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(10, i4);
        }
        i iVar = this.f47655l;
        if (iVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(11, iVar);
        }
        if (Float.floatToIntBits(this.f47656m) != Float.floatToIntBits(0.0f)) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(12, this.f47656m);
        }
        if (!this.f47657n.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(13, this.f47657n);
        }
        int i5 = this.f47658o;
        if (i5 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(14, i5);
        }
        if (!this.f47659p.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(15, this.f47659p);
        }
        int i6 = this.f47660q;
        if (i6 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(16, i6);
        }
        if (!this.f47661r.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(18, this.f47661r);
        }
        if (!this.f47662s.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(19, this.f47662s);
        }
        int i7 = this.f47663t;
        if (i7 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(20, i7);
        }
        long j2 = this.f47664u;
        if (j2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(21, j2);
        }
        long j3 = this.f47665v;
        if (j3 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(22, j3);
        }
        int i8 = this.f47666w;
        if (i8 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(23, i8);
        }
        int i9 = this.f47667x;
        if (i9 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(24, i9);
        }
        if (!this.f47668y.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(25, this.f47668y);
        }
        if (!this.f47669z.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(26, this.f47669z);
        }
        if (!this.f47630A.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(27, this.f47630A);
        }
        String[] strArr = this.f47631B;
        int i10 = 0;
        if (strArr != null && strArr.length > 0) {
            int i11 = 0;
            int iA = 0;
            int i12 = 0;
            while (true) {
                String[] strArr2 = this.f47631B;
                if (i11 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i11];
                if (str != null) {
                    i12++;
                    iA += com.ubix.ssp.ad.e.y.c.b.a(str);
                }
                i11++;
            }
            iB = iB + iA + (i12 * 2);
        }
        if (!this.f47632C.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(29, this.f47632C);
        }
        if (!this.f47633D.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(30, this.f47633D);
        }
        c cVar = this.f47634E;
        if (cVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(31, cVar);
        }
        String[] strArr3 = this.f47635F;
        if (strArr3 != null && strArr3.length > 0) {
            int i13 = 0;
            int iA2 = 0;
            int i14 = 0;
            while (true) {
                String[] strArr4 = this.f47635F;
                if (i13 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i13];
                if (str2 != null) {
                    i14++;
                    iA2 += com.ubix.ssp.ad.e.y.c.b.a(str2);
                }
                i13++;
            }
            iB = iB + iA2 + (i14 * 2);
        }
        String[] strArr5 = this.f47636G;
        if (strArr5 != null && strArr5.length > 0) {
            int i15 = 0;
            int iA3 = 0;
            int i16 = 0;
            while (true) {
                String[] strArr6 = this.f47636G;
                if (i15 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i15];
                if (str3 != null) {
                    i16++;
                    iA3 += com.ubix.ssp.ad.e.y.c.b.a(str3);
                }
                i15++;
            }
            iB = iB + iA3 + (i16 * 2);
        }
        if (Float.floatToIntBits(this.f47637H) != Float.floatToIntBits(0.0f)) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(34, this.f47637H);
        }
        if (!this.f47638I.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(35, this.f47638I);
        }
        if (!this.f47639J.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(36, this.f47639J);
        }
        a[] aVarArr = this.f47640K;
        if (aVarArr != null && aVarArr.length > 0) {
            while (true) {
                a[] aVarArr2 = this.f47640K;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i10];
                if (aVar != null) {
                    iB += com.ubix.ssp.ad.e.y.c.b.b(37, aVar);
                }
                i10++;
            }
        }
        int i17 = this.f47641L;
        if (i17 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(38, i17);
        }
        boolean z2 = this.f47642M;
        if (z2) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(39, z2);
        }
        int i18 = this.f47643N;
        if (i18 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(40, i18);
        }
        return !this.f47644O.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(41, this.f47644O) : iB;
    }

    public f e() {
        this.f47645b = null;
        this.f47646c = 0;
        this.f47647d = 0;
        this.f47648e = "";
        this.f47649f = "";
        this.f47650g = "";
        this.f47651h = "";
        this.f47652i = "";
        this.f47653j = "";
        this.f47654k = 0;
        this.f47655l = null;
        this.f47656m = 0.0f;
        this.f47657n = "";
        this.f47658o = 0;
        this.f47659p = "";
        this.f47660q = 0;
        this.f47661r = "";
        this.f47662s = "";
        this.f47663t = 0;
        this.f47664u = 0L;
        this.f47665v = 0L;
        this.f47666w = 0;
        this.f47667x = 0;
        this.f47668y = "";
        this.f47669z = "";
        this.f47630A = "";
        String[] strArr = com.ubix.ssp.ad.e.y.c.h.f47835f;
        this.f47631B = strArr;
        this.f47632C = "";
        this.f47633D = "";
        this.f47634E = null;
        this.f47635F = strArr;
        this.f47636G = strArr;
        this.f47637H = 0.0f;
        this.f47638I = "";
        this.f47639J = "";
        this.f47640K = a.f();
        this.f47641L = 0;
        this.f47642M = false;
        this.f47643N = 0;
        this.f47644O = "";
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        b bVar2 = this.f47645b;
        if (bVar2 != null) {
            bVar.d(1, bVar2);
        }
        int i2 = this.f47646c;
        if (i2 != 0) {
            bVar.i(2, i2);
        }
        int i3 = this.f47647d;
        if (i3 != 0) {
            bVar.i(3, i3);
        }
        if (!this.f47648e.equals("")) {
            bVar.b(4, this.f47648e);
        }
        if (!this.f47649f.equals("")) {
            bVar.b(5, this.f47649f);
        }
        if (!this.f47650g.equals("")) {
            bVar.b(6, this.f47650g);
        }
        if (!this.f47651h.equals("")) {
            bVar.b(7, this.f47651h);
        }
        if (!this.f47652i.equals("")) {
            bVar.b(8, this.f47652i);
        }
        if (!this.f47653j.equals("")) {
            bVar.b(9, this.f47653j);
        }
        int i4 = this.f47654k;
        if (i4 != 0) {
            bVar.i(10, i4);
        }
        i iVar = this.f47655l;
        if (iVar != null) {
            bVar.d(11, iVar);
        }
        if (Float.floatToIntBits(this.f47656m) != Float.floatToIntBits(0.0f)) {
            bVar.b(12, this.f47656m);
        }
        if (!this.f47657n.equals("")) {
            bVar.b(13, this.f47657n);
        }
        int i5 = this.f47658o;
        if (i5 != 0) {
            bVar.i(14, i5);
        }
        if (!this.f47659p.equals("")) {
            bVar.b(15, this.f47659p);
        }
        int i6 = this.f47660q;
        if (i6 != 0) {
            bVar.i(16, i6);
        }
        if (!this.f47661r.equals("")) {
            bVar.b(18, this.f47661r);
        }
        if (!this.f47662s.equals("")) {
            bVar.b(19, this.f47662s);
        }
        int i7 = this.f47663t;
        if (i7 != 0) {
            bVar.i(20, i7);
        }
        long j2 = this.f47664u;
        if (j2 != 0) {
            bVar.g(21, j2);
        }
        long j3 = this.f47665v;
        if (j3 != 0) {
            bVar.g(22, j3);
        }
        int i8 = this.f47666w;
        if (i8 != 0) {
            bVar.i(23, i8);
        }
        int i9 = this.f47667x;
        if (i9 != 0) {
            bVar.i(24, i9);
        }
        if (!this.f47668y.equals("")) {
            bVar.b(25, this.f47668y);
        }
        if (!this.f47669z.equals("")) {
            bVar.b(26, this.f47669z);
        }
        if (!this.f47630A.equals("")) {
            bVar.b(27, this.f47630A);
        }
        String[] strArr = this.f47631B;
        int i10 = 0;
        if (strArr != null && strArr.length > 0) {
            int i11 = 0;
            while (true) {
                String[] strArr2 = this.f47631B;
                if (i11 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i11];
                if (str != null) {
                    bVar.b(28, str);
                }
                i11++;
            }
        }
        if (!this.f47632C.equals("")) {
            bVar.b(29, this.f47632C);
        }
        if (!this.f47633D.equals("")) {
            bVar.b(30, this.f47633D);
        }
        c cVar = this.f47634E;
        if (cVar != null) {
            bVar.d(31, cVar);
        }
        String[] strArr3 = this.f47635F;
        if (strArr3 != null && strArr3.length > 0) {
            int i12 = 0;
            while (true) {
                String[] strArr4 = this.f47635F;
                if (i12 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i12];
                if (str2 != null) {
                    bVar.b(32, str2);
                }
                i12++;
            }
        }
        String[] strArr5 = this.f47636G;
        if (strArr5 != null && strArr5.length > 0) {
            int i13 = 0;
            while (true) {
                String[] strArr6 = this.f47636G;
                if (i13 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i13];
                if (str3 != null) {
                    bVar.b(33, str3);
                }
                i13++;
            }
        }
        if (Float.floatToIntBits(this.f47637H) != Float.floatToIntBits(0.0f)) {
            bVar.b(34, this.f47637H);
        }
        if (!this.f47638I.equals("")) {
            bVar.b(35, this.f47638I);
        }
        if (!this.f47639J.equals("")) {
            bVar.b(36, this.f47639J);
        }
        a[] aVarArr = this.f47640K;
        if (aVarArr != null && aVarArr.length > 0) {
            while (true) {
                a[] aVarArr2 = this.f47640K;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i10];
                if (aVar != null) {
                    bVar.d(37, aVar);
                }
                i10++;
            }
        }
        int i14 = this.f47641L;
        if (i14 != 0) {
            bVar.i(38, i14);
        }
        boolean z2 = this.f47642M;
        if (z2) {
            bVar.b(39, z2);
        }
        int i15 = this.f47643N;
        if (i15 != 0) {
            bVar.i(40, i15);
        }
        if (!this.f47644O.equals("")) {
            bVar.b(41, this.f47644O);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public f a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        com.ubix.ssp.ad.e.y.c.f fVar;
        while (true) {
            int iW = aVar.w();
            switch (iW) {
                case 0:
                    break;
                case 10:
                    if (this.f47645b == null) {
                        this.f47645b = new b();
                    }
                    fVar = this.f47645b;
                    break;
                case 16:
                    this.f47646c = aVar.k();
                    continue;
                case 24:
                    this.f47647d = aVar.k();
                    continue;
                case 34:
                    this.f47648e = aVar.v();
                    continue;
                case 42:
                    this.f47649f = aVar.v();
                    continue;
                case 50:
                    this.f47650g = aVar.v();
                    continue;
                case 58:
                    this.f47651h = aVar.v();
                    continue;
                case 66:
                    this.f47652i = aVar.v();
                    continue;
                case 74:
                    this.f47653j = aVar.v();
                    continue;
                case 80:
                    this.f47654k = aVar.k();
                    continue;
                case 90:
                    if (this.f47655l == null) {
                        this.f47655l = new i();
                    }
                    fVar = this.f47655l;
                    break;
                case 101:
                    this.f47656m = aVar.j();
                    continue;
                case 106:
                    this.f47657n = aVar.v();
                    continue;
                case 112:
                    this.f47658o = aVar.k();
                    continue;
                case UMErrorCode.E_UM_BE_ERROR_WORK_MODE /* 122 */:
                    this.f47659p = aVar.v();
                    continue;
                case 128:
                    this.f47660q = aVar.k();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_LAZY_SEEK /* 146 */:
                    this.f47661r = aVar.v();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_REUSE_SOCKET /* 154 */:
                    this.f47662s = aVar.v();
                    continue;
                case 160:
                    this.f47663t = aVar.k();
                    continue;
                case 168:
                    this.f47664u = aVar.l();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HURRY_THRESHOLD /* 176 */:
                    this.f47665v = aVar.l();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_HW_CONTROL_BY_OPPO /* 184 */:
                    this.f47666w = aVar.k();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT /* 192 */:
                    this.f47667x = aVar.k();
                    continue;
                case 202:
                    this.f47668y = aVar.v();
                    continue;
                case 210:
                    this.f47669z = aVar.v();
                    continue;
                case 218:
                    this.f47630A = aVar.v();
                    continue;
                case 226:
                    int iA = com.ubix.ssp.ad.e.y.c.h.a(aVar, 226);
                    String[] strArr = this.f47631B;
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
                    this.f47631B = strArr2;
                    continue;
                case 234:
                    this.f47632C = aVar.v();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE /* 242 */:
                    this.f47633D = aVar.v();
                    continue;
                case 250:
                    if (this.f47634E == null) {
                        this.f47634E = new c();
                    }
                    fVar = this.f47634E;
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
                    int iA2 = com.ubix.ssp.ad.e.y.c.h.a(aVar, MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE);
                    String[] strArr3 = this.f47635F;
                    int length2 = strArr3 == null ? 0 : strArr3.length;
                    int i3 = iA2 + length2;
                    String[] strArr4 = new String[i3];
                    if (length2 != 0) {
                        System.arraycopy(strArr3, 0, strArr4, 0, length2);
                    }
                    while (length2 < i3 - 1) {
                        strArr4[length2] = aVar.v();
                        aVar.w();
                        length2++;
                    }
                    strArr4[length2] = aVar.v();
                    this.f47635F = strArr4;
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME /* 266 */:
                    int iA3 = com.ubix.ssp.ad.e.y.c.h.a(aVar, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME);
                    String[] strArr5 = this.f47636G;
                    int length3 = strArr5 == null ? 0 : strArr5.length;
                    int i4 = iA3 + length3;
                    String[] strArr6 = new String[i4];
                    if (length3 != 0) {
                        System.arraycopy(strArr5, 0, strArr6, 0, length3);
                    }
                    while (length3 < i4 - 1) {
                        strArr6[length3] = aVar.v();
                        aVar.w();
                        length3++;
                    }
                    strArr6[length3] = aVar.v();
                    this.f47636G = strArr6;
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE /* 277 */:
                    this.f47637H = aVar.j();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS /* 282 */:
                    this.f47638I = aVar.v();
                    continue;
                case 290:
                    this.f47639J = aVar.v();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX /* 298 */:
                    int iA4 = com.ubix.ssp.ad.e.y.c.h.a(aVar, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX);
                    a[] aVarArr = this.f47640K;
                    int length4 = aVarArr == null ? 0 : aVarArr.length;
                    int i5 = iA4 + length4;
                    a[] aVarArr2 = new a[i5];
                    if (length4 != 0) {
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, length4);
                    }
                    while (length4 < i5 - 1) {
                        a aVar2 = new a();
                        aVarArr2[length4] = aVar2;
                        aVar.a(aVar2);
                        aVar.w();
                        length4++;
                    }
                    a aVar3 = new a();
                    aVarArr2[length4] = aVar3;
                    aVar.a(aVar3);
                    this.f47640K = aVarArr2;
                    continue;
                case 304:
                    this.f47641L = aVar.k();
                    continue;
                case 312:
                    this.f47642M = aVar.d();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME /* 320 */:
                    this.f47643N = aVar.k();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST /* 330 */:
                    this.f47644O = aVar.v();
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
