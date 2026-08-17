package com.ubix.ssp.ad.e.y.a;

import com.ubix.ssp.ad.e.y.c.b;

/* loaded from: classes5.dex */
public final class k extends com.ubix.ssp.ad.e.y.c.f {

    /* renamed from: b, reason: collision with root package name */
    public String f47775b;

    /* renamed from: c, reason: collision with root package name */
    public String[] f47776c;

    /* renamed from: d, reason: collision with root package name */
    public String f47777d;

    /* renamed from: e, reason: collision with root package name */
    public String[] f47778e;

    /* renamed from: f, reason: collision with root package name */
    public String[] f47779f;

    /* renamed from: g, reason: collision with root package name */
    public String[] f47780g;

    /* renamed from: h, reason: collision with root package name */
    public int f47781h;

    /* renamed from: i, reason: collision with root package name */
    public int f47782i;

    public k() {
        e();
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        if (!this.f47775b.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47775b);
        }
        String[] strArr = this.f47776c;
        int i2 = 0;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            int iA = 0;
            int i4 = 0;
            while (true) {
                String[] strArr2 = this.f47776c;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    i4++;
                    iA += com.ubix.ssp.ad.e.y.c.b.a(str);
                }
                i3++;
            }
            iB = iB + iA + i4;
        }
        String[] strArr3 = this.f47778e;
        if (strArr3 != null && strArr3.length > 0) {
            int i5 = 0;
            int iA2 = 0;
            int i6 = 0;
            while (true) {
                String[] strArr4 = this.f47778e;
                if (i5 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i5];
                if (str2 != null) {
                    i6++;
                    iA2 += com.ubix.ssp.ad.e.y.c.b.a(str2);
                }
                i5++;
            }
            iB = iB + iA2 + i6;
        }
        if (!this.f47777d.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47777d);
        }
        String[] strArr5 = this.f47779f;
        if (strArr5 != null && strArr5.length > 0) {
            int i7 = 0;
            int iA3 = 0;
            int i8 = 0;
            while (true) {
                String[] strArr6 = this.f47779f;
                if (i7 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i7];
                if (str3 != null) {
                    i8++;
                    iA3 += com.ubix.ssp.ad.e.y.c.b.a(str3);
                }
                i7++;
            }
            iB = iB + iA3 + i8;
        }
        String[] strArr7 = this.f47780g;
        if (strArr7 != null && strArr7.length > 0) {
            int iA4 = 0;
            int i9 = 0;
            while (true) {
                String[] strArr8 = this.f47780g;
                if (i2 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i2];
                if (str4 != null) {
                    i9++;
                    iA4 += com.ubix.ssp.ad.e.y.c.b.a(str4);
                }
                i2++;
            }
            iB = iB + iA4 + i9;
        }
        int i10 = this.f47781h;
        if (i10 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.f(9, i10);
        }
        int i11 = this.f47782i;
        return i11 != 0 ? iB + com.ubix.ssp.ad.e.y.c.b.f(10, i11) : iB;
    }

    public k e() {
        this.f47775b = "";
        String[] strArr = com.ubix.ssp.ad.e.y.c.h.f47835f;
        this.f47776c = strArr;
        this.f47777d = "";
        this.f47778e = strArr;
        this.f47779f = strArr;
        this.f47780g = strArr;
        this.f47781h = 0;
        this.f47782i = 0;
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        if (!this.f47775b.equals("")) {
            bVar.b(1, this.f47775b);
        }
        String[] strArr = this.f47776c;
        int i2 = 0;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.f47776c;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    bVar.b(4, str);
                }
                i3++;
            }
        }
        String[] strArr3 = this.f47778e;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr4 = this.f47778e;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i4];
                if (str2 != null) {
                    bVar.b(5, str2);
                }
                i4++;
            }
        }
        if (!this.f47777d.equals("")) {
            bVar.b(6, this.f47777d);
        }
        String[] strArr5 = this.f47779f;
        if (strArr5 != null && strArr5.length > 0) {
            int i5 = 0;
            while (true) {
                String[] strArr6 = this.f47779f;
                if (i5 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i5];
                if (str3 != null) {
                    bVar.b(7, str3);
                }
                i5++;
            }
        }
        String[] strArr7 = this.f47780g;
        if (strArr7 != null && strArr7.length > 0) {
            while (true) {
                String[] strArr8 = this.f47780g;
                if (i2 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i2];
                if (str4 != null) {
                    bVar.b(8, str4);
                }
                i2++;
            }
        }
        int i6 = this.f47781h;
        if (i6 != 0) {
            bVar.m(9, i6);
        }
        int i7 = this.f47782i;
        if (i7 != 0) {
            bVar.m(10, i7);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public k a(com.ubix.ssp.ad.e.y.c.a aVar) throws com.ubix.ssp.ad.e.y.c.d {
        while (true) {
            int iW = aVar.w();
            if (iW == 0) {
                break;
            }
            if (iW == 10) {
                this.f47775b = aVar.v();
            } else if (iW == 34) {
                int iA = com.ubix.ssp.ad.e.y.c.h.a(aVar, 34);
                String[] strArr = this.f47776c;
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
                this.f47776c = strArr2;
            } else if (iW == 42) {
                int iA2 = com.ubix.ssp.ad.e.y.c.h.a(aVar, 42);
                String[] strArr3 = this.f47778e;
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
                this.f47778e = strArr4;
            } else if (iW == 50) {
                this.f47777d = aVar.v();
            } else if (iW == 58) {
                int iA3 = com.ubix.ssp.ad.e.y.c.h.a(aVar, 58);
                String[] strArr5 = this.f47779f;
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
                this.f47779f = strArr6;
            } else if (iW == 66) {
                int iA4 = com.ubix.ssp.ad.e.y.c.h.a(aVar, 66);
                String[] strArr7 = this.f47780g;
                int length4 = strArr7 == null ? 0 : strArr7.length;
                int i5 = iA4 + length4;
                String[] strArr8 = new String[i5];
                if (length4 != 0) {
                    System.arraycopy(strArr7, 0, strArr8, 0, length4);
                }
                while (length4 < i5 - 1) {
                    strArr8[length4] = aVar.v();
                    aVar.w();
                    length4++;
                }
                strArr8[length4] = aVar.v();
                this.f47780g = strArr8;
            } else if (iW == 72) {
                this.f47781h = aVar.x();
            } else if (iW == 80) {
                this.f47782i = aVar.x();
            } else if (!com.ubix.ssp.ad.e.y.c.h.b(aVar, iW)) {
                break;
            }
        }
        return this;
    }
}
