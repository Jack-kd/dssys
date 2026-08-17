package com.ubix.ssp.ad.e.y.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class b extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    private static volatile b[] f47568b;

    /* renamed from: c, reason: collision with root package name */
    public String f47569c;

    /* renamed from: d, reason: collision with root package name */
    public int f47570d;

    /* renamed from: e, reason: collision with root package name */
    public int f47571e;

    /* renamed from: f, reason: collision with root package name */
    public a[] f47572f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f47573g;

    /* renamed from: h, reason: collision with root package name */
    public j f47574h;

    /* renamed from: i, reason: collision with root package name */
    public j[] f47575i;

    /* renamed from: j, reason: collision with root package name */
    public h f47576j;

    /* renamed from: k, reason: collision with root package name */
    public int f47577k;

    /* renamed from: l, reason: collision with root package name */
    public int f47578l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f47579m;

    /* renamed from: n, reason: collision with root package name */
    public int f47580n;

    /* renamed from: o, reason: collision with root package name */
    public String f47581o;

    /* renamed from: p, reason: collision with root package name */
    public String f47582p;

    /* renamed from: q, reason: collision with root package name */
    public int f47583q;

    /* renamed from: r, reason: collision with root package name */
    public int f47584r;

    /* renamed from: s, reason: collision with root package name */
    public int f47585s;

    /* renamed from: t, reason: collision with root package name */
    public C0835b f47586t;

    /* renamed from: u, reason: collision with root package name */
    public int f47587u;

    /* renamed from: v, reason: collision with root package name */
    public long f47588v;

    public static final class a extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        private static volatile a[] f47589b;

        /* renamed from: c, reason: collision with root package name */
        public int f47590c;

        /* renamed from: d, reason: collision with root package name */
        public i[] f47591d;

        /* renamed from: e, reason: collision with root package name */
        public int f47592e;

        /* renamed from: f, reason: collision with root package name */
        public int f47593f;

        public a() {
            e();
        }

        public static a[] f() {
            if (f47589b == null) {
                synchronized (com.ubix.ssp.ad.e.y.c.c.f47827c) {
                    try {
                        if (f47589b == null) {
                            f47589b = new a[0];
                        }
                    } finally {
                    }
                }
            }
            return f47589b;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            int i2 = this.f47590c;
            if (i2 != 0) {
                iB += com.ubix.ssp.ad.e.y.c.b.c(1, i2);
            }
            i[] iVarArr = this.f47591d;
            if (iVarArr != null && iVarArr.length > 0) {
                int i3 = 0;
                while (true) {
                    i[] iVarArr2 = this.f47591d;
                    if (i3 >= iVarArr2.length) {
                        break;
                    }
                    i iVar = iVarArr2[i3];
                    if (iVar != null) {
                        iB += com.ubix.ssp.ad.e.y.c.b.b(2, iVar);
                    }
                    i3++;
                }
            }
            int i4 = this.f47592e;
            if (i4 != 0) {
                iB += com.ubix.ssp.ad.e.y.c.b.c(3, i4);
            }
            int i5 = this.f47593f;
            return i5 != 0 ? iB + com.ubix.ssp.ad.e.y.c.b.c(4, i5) : iB;
        }

        public a e() {
            this.f47590c = 0;
            this.f47591d = i.f();
            this.f47592e = 0;
            this.f47593f = 0;
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            int i2 = this.f47590c;
            if (i2 != 0) {
                bVar.i(1, i2);
            }
            i[] iVarArr = this.f47591d;
            if (iVarArr != null && iVarArr.length > 0) {
                int i3 = 0;
                while (true) {
                    i[] iVarArr2 = this.f47591d;
                    if (i3 >= iVarArr2.length) {
                        break;
                    }
                    i iVar = iVarArr2[i3];
                    if (iVar != null) {
                        bVar.d(2, iVar);
                    }
                    i3++;
                }
            }
            int i4 = this.f47592e;
            if (i4 != 0) {
                bVar.i(3, i4);
            }
            int i5 = this.f47593f;
            if (i5 != 0) {
                bVar.i(4, i5);
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
                if (iW == 8) {
                    this.f47590c = aVar.k();
                } else if (iW == 18) {
                    int iA = com.ubix.ssp.ad.e.y.c.h.a(aVar, 18);
                    i[] iVarArr = this.f47591d;
                    int length = iVarArr == null ? 0 : iVarArr.length;
                    int i2 = iA + length;
                    i[] iVarArr2 = new i[i2];
                    if (length != 0) {
                        System.arraycopy(iVarArr, 0, iVarArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        i iVar = new i();
                        iVarArr2[length] = iVar;
                        aVar.a(iVar);
                        aVar.w();
                        length++;
                    }
                    i iVar2 = new i();
                    iVarArr2[length] = iVar2;
                    aVar.a(iVar2);
                    this.f47591d = iVarArr2;
                } else if (iW == 24) {
                    this.f47592e = aVar.k();
                } else if (iW == 32) {
                    this.f47593f = aVar.k();
                } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                    break;
                }
            }
            return this;
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.y.a.b$b, reason: collision with other inner class name */
    public static final class C0835b extends com.ubix.ssp.ad.e.y.c.f {

        /* renamed from: b, reason: collision with root package name */
        public String f47594b;

        /* renamed from: c, reason: collision with root package name */
        public String f47595c;

        public C0835b() {
            e();
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public int b() {
            int iB = super.b();
            if (!this.f47594b.equals("")) {
                iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47594b);
            }
            return !this.f47595c.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(2, this.f47595c) : iB;
        }

        public C0835b e() {
            this.f47594b = "";
            this.f47595c = "";
            this.f47829a = -1;
            return this;
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
            if (!this.f47594b.equals("")) {
                bVar.b(1, this.f47594b);
            }
            if (!this.f47595c.equals("")) {
                bVar.b(2, this.f47595c);
            }
            super.a(bVar);
        }

        @Override // com.ubix.ssp.ad.e.y.c.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0835b a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
            while (true) {
                int iW = aVar.w();
                if (iW == 0) {
                    break;
                }
                if (iW == 10) {
                    this.f47594b = aVar.v();
                } else if (iW == 18) {
                    this.f47595c = aVar.v();
                } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                    break;
                }
            }
            return this;
        }
    }

    public b() {
        e();
    }

    public static b[] f() {
        if (f47568b == null) {
            synchronized (com.ubix.ssp.ad.e.y.c.c.f47827c) {
                try {
                    if (f47568b == null) {
                        f47568b = new b[0];
                    }
                } finally {
                }
            }
        }
        return f47568b;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int[] iArr;
        int iB = super.b();
        if (!this.f47569c.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47569c);
        }
        int i2 = this.f47570d;
        if (i2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(2, i2);
        }
        int i3 = this.f47571e;
        if (i3 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(3, i3);
        }
        a[] aVarArr = this.f47572f;
        int i4 = 0;
        if (aVarArr != null && aVarArr.length > 0) {
            int i5 = 0;
            while (true) {
                a[] aVarArr2 = this.f47572f;
                if (i5 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i5];
                if (aVar != null) {
                    iB += com.ubix.ssp.ad.e.y.c.b.b(4, aVar);
                }
                i5++;
            }
        }
        int[] iArr2 = this.f47573g;
        if (iArr2 != null && iArr2.length > 0) {
            int i6 = 0;
            int iC = 0;
            while (true) {
                iArr = this.f47573g;
                if (i6 >= iArr.length) {
                    break;
                }
                iC += com.ubix.ssp.ad.e.y.c.b.c(iArr[i6]);
                i6++;
            }
            iB = iB + iC + iArr.length;
        }
        j jVar = this.f47574h;
        if (jVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(6, jVar);
        }
        j[] jVarArr = this.f47575i;
        if (jVarArr != null && jVarArr.length > 0) {
            while (true) {
                j[] jVarArr2 = this.f47575i;
                if (i4 >= jVarArr2.length) {
                    break;
                }
                j jVar2 = jVarArr2[i4];
                if (jVar2 != null) {
                    iB += com.ubix.ssp.ad.e.y.c.b.b(7, jVar2);
                }
                i4++;
            }
        }
        h hVar = this.f47576j;
        if (hVar != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(8, hVar);
        }
        int i7 = this.f47577k;
        if (i7 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(9, i7);
        }
        int i8 = this.f47578l;
        if (i8 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(10, i8);
        }
        boolean z2 = this.f47579m;
        if (z2) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(11, z2);
        }
        int i9 = this.f47580n;
        if (i9 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(12, i9);
        }
        if (!this.f47581o.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(13, this.f47581o);
        }
        if (!this.f47582p.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(14, this.f47582p);
        }
        int i10 = this.f47583q;
        if (i10 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(15, i10);
        }
        int i11 = this.f47584r;
        if (i11 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(16, i11);
        }
        int i12 = this.f47585s;
        if (i12 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(17, i12);
        }
        C0835b c0835b = this.f47586t;
        if (c0835b != null) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(18, c0835b);
        }
        int i13 = this.f47587u;
        if (i13 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(19, i13);
        }
        long j2 = this.f47588v;
        return j2 != 0 ? iB + com.ubix.ssp.ad.e.y.c.b.b(20, j2) : iB;
    }

    public b e() {
        this.f47569c = "";
        this.f47570d = 0;
        this.f47571e = 0;
        this.f47572f = a.f();
        this.f47573g = com.ubix.ssp.ad.e.y.c.h.f47830a;
        this.f47574h = null;
        this.f47575i = j.f();
        this.f47576j = null;
        this.f47577k = 0;
        this.f47578l = 0;
        this.f47579m = false;
        this.f47580n = 0;
        this.f47581o = "";
        this.f47582p = "";
        this.f47583q = 0;
        this.f47584r = 0;
        this.f47585s = 0;
        this.f47586t = null;
        this.f47587u = 0;
        this.f47588v = 0L;
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        if (!this.f47569c.equals("")) {
            bVar.b(1, this.f47569c);
        }
        int i2 = this.f47570d;
        if (i2 != 0) {
            bVar.i(2, i2);
        }
        int i3 = this.f47571e;
        if (i3 != 0) {
            bVar.i(3, i3);
        }
        a[] aVarArr = this.f47572f;
        int i4 = 0;
        if (aVarArr != null && aVarArr.length > 0) {
            int i5 = 0;
            while (true) {
                a[] aVarArr2 = this.f47572f;
                if (i5 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i5];
                if (aVar != null) {
                    bVar.d(4, aVar);
                }
                i5++;
            }
        }
        int[] iArr = this.f47573g;
        if (iArr != null && iArr.length > 0) {
            int i6 = 0;
            while (true) {
                int[] iArr2 = this.f47573g;
                if (i6 >= iArr2.length) {
                    break;
                }
                bVar.i(5, iArr2[i6]);
                i6++;
            }
        }
        j jVar = this.f47574h;
        if (jVar != null) {
            bVar.d(6, jVar);
        }
        j[] jVarArr = this.f47575i;
        if (jVarArr != null && jVarArr.length > 0) {
            while (true) {
                j[] jVarArr2 = this.f47575i;
                if (i4 >= jVarArr2.length) {
                    break;
                }
                j jVar2 = jVarArr2[i4];
                if (jVar2 != null) {
                    bVar.d(7, jVar2);
                }
                i4++;
            }
        }
        h hVar = this.f47576j;
        if (hVar != null) {
            bVar.d(8, hVar);
        }
        int i7 = this.f47577k;
        if (i7 != 0) {
            bVar.i(9, i7);
        }
        int i8 = this.f47578l;
        if (i8 != 0) {
            bVar.i(10, i8);
        }
        boolean z2 = this.f47579m;
        if (z2) {
            bVar.b(11, z2);
        }
        int i9 = this.f47580n;
        if (i9 != 0) {
            bVar.i(12, i9);
        }
        if (!this.f47581o.equals("")) {
            bVar.b(13, this.f47581o);
        }
        if (!this.f47582p.equals("")) {
            bVar.b(14, this.f47582p);
        }
        int i10 = this.f47583q;
        if (i10 != 0) {
            bVar.i(15, i10);
        }
        int i11 = this.f47584r;
        if (i11 != 0) {
            bVar.i(16, i11);
        }
        int i12 = this.f47585s;
        if (i12 != 0) {
            bVar.i(17, i12);
        }
        C0835b c0835b = this.f47586t;
        if (c0835b != null) {
            bVar.d(18, c0835b);
        }
        int i13 = this.f47587u;
        if (i13 != 0) {
            bVar.i(19, i13);
        }
        long j2 = this.f47588v;
        if (j2 != 0) {
            bVar.g(20, j2);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        com.ubix.ssp.ad.e.y.c.f fVar;
        while (true) {
            int iW = aVar.w();
            switch (iW) {
                case 0:
                    break;
                case 10:
                    this.f47569c = aVar.v();
                    continue;
                case 16:
                    this.f47570d = aVar.k();
                    continue;
                case 24:
                    this.f47571e = aVar.k();
                    continue;
                case 34:
                    int iA = com.ubix.ssp.ad.e.y.c.h.a(aVar, 34);
                    a[] aVarArr = this.f47572f;
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
                    this.f47572f = aVarArr2;
                    continue;
                case 40:
                    int iA2 = com.ubix.ssp.ad.e.y.c.h.a(aVar, 40);
                    int[] iArr = this.f47573g;
                    int length2 = iArr == null ? 0 : iArr.length;
                    int i3 = iA2 + length2;
                    int[] iArr2 = new int[i3];
                    if (length2 != 0) {
                        System.arraycopy(iArr, 0, iArr2, 0, length2);
                    }
                    while (length2 < i3 - 1) {
                        iArr2[length2] = aVar.k();
                        aVar.w();
                        length2++;
                    }
                    iArr2[length2] = aVar.k();
                    this.f47573g = iArr2;
                    continue;
                case 42:
                    int iD = aVar.d(aVar.p());
                    int iB = aVar.b();
                    int i4 = 0;
                    while (aVar.a() > 0) {
                        aVar.k();
                        i4++;
                    }
                    aVar.g(iB);
                    int[] iArr3 = this.f47573g;
                    int length3 = iArr3 == null ? 0 : iArr3.length;
                    int i5 = i4 + length3;
                    int[] iArr4 = new int[i5];
                    if (length3 != 0) {
                        System.arraycopy(iArr3, 0, iArr4, 0, length3);
                    }
                    while (length3 < i5) {
                        iArr4[length3] = aVar.k();
                        length3++;
                    }
                    this.f47573g = iArr4;
                    aVar.c(iD);
                    continue;
                case 50:
                    if (this.f47574h == null) {
                        this.f47574h = new j();
                    }
                    fVar = this.f47574h;
                    break;
                case 58:
                    int iA3 = com.ubix.ssp.ad.e.y.c.h.a(aVar, 58);
                    j[] jVarArr = this.f47575i;
                    int length4 = jVarArr == null ? 0 : jVarArr.length;
                    int i6 = iA3 + length4;
                    j[] jVarArr2 = new j[i6];
                    if (length4 != 0) {
                        System.arraycopy(jVarArr, 0, jVarArr2, 0, length4);
                    }
                    while (length4 < i6 - 1) {
                        j jVar = new j();
                        jVarArr2[length4] = jVar;
                        aVar.a(jVar);
                        aVar.w();
                        length4++;
                    }
                    j jVar2 = new j();
                    jVarArr2[length4] = jVar2;
                    aVar.a(jVar2);
                    this.f47575i = jVarArr2;
                    continue;
                case 66:
                    if (this.f47576j == null) {
                        this.f47576j = new h();
                    }
                    fVar = this.f47576j;
                    break;
                case 72:
                    this.f47577k = aVar.k();
                    continue;
                case 80:
                    this.f47578l = aVar.k();
                    continue;
                case 88:
                    this.f47579m = aVar.d();
                    continue;
                case 96:
                    this.f47580n = aVar.k();
                    continue;
                case 106:
                    this.f47581o = aVar.v();
                    continue;
                case 114:
                    this.f47582p = aVar.v();
                    continue;
                case 120:
                    this.f47583q = aVar.k();
                    continue;
                case 128:
                    this.f47584r = aVar.k();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH /* 136 */:
                    this.f47585s = aVar.k();
                    continue;
                case MediaPlayer.MEDIA_PLAYER_OPTION_LAZY_SEEK /* 146 */:
                    if (this.f47586t == null) {
                        this.f47586t = new C0835b();
                    }
                    fVar = this.f47586t;
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF /* 152 */:
                    this.f47587u = aVar.k();
                    continue;
                case 160:
                    this.f47588v = aVar.l();
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
