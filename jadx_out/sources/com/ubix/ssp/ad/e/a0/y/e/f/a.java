package com.ubix.ssp.ad.e.a0.y.e.f;

import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: d, reason: collision with root package name */
    private int f46564d;

    /* renamed from: e, reason: collision with root package name */
    private int f46565e;

    /* renamed from: a, reason: collision with root package name */
    private b f46561a = new b(310);

    /* renamed from: b, reason: collision with root package name */
    private c[] f46562b = new c[310];

    /* renamed from: c, reason: collision with root package name */
    private d[] f46563c = new d[310];

    /* renamed from: f, reason: collision with root package name */
    private double[] f46566f = new double[310];

    public class b {

        /* renamed from: a, reason: collision with root package name */
        C0815a[] f46567a;

        /* renamed from: com.ubix.ssp.ad.e.a0.y.e.f.a$b$a, reason: collision with other inner class name */
        public class C0815a {

            /* renamed from: a, reason: collision with root package name */
            int f46569a;

            /* renamed from: b, reason: collision with root package name */
            int f46570b;

            /* renamed from: c, reason: collision with root package name */
            int f46571c;

            /* renamed from: d, reason: collision with root package name */
            double f46572d;

            public C0815a() {
            }

            public double a() {
                return a.this.f46566f[this.f46570b + 1] - a.this.f46566f[this.f46569a];
            }

            public int b() {
                return (this.f46569a + this.f46570b) >> 1;
            }

            public void a(int i2, int i3) {
                this.f46569a = i2;
                this.f46570b = i3;
                this.f46572d = 0.0d;
                this.f46571c = 0;
            }
        }

        public b(int i2) {
            int i3 = i2 * 3;
            this.f46567a = new C0815a[i3];
            for (int i4 = 1; i4 < i3; i4++) {
                this.f46567a[i4] = new C0815a();
            }
        }

        public void a(int i2) {
            double dA;
            C0815a[] c0815aArr = this.f46567a;
            C0815a c0815a = c0815aArr[i2];
            if (c0815a.f46571c > 0) {
                dA = c0815a.a();
            } else if (c0815a.f46569a == c0815a.f46570b) {
                dA = 0.0d;
            } else {
                int i3 = i2 << 1;
                dA = c0815aArr[i3].f46572d + c0815aArr[i3 | 1].f46572d;
            }
            c0815a.f46572d = dA;
        }

        public void a(int i2, int i3, int i4) {
            this.f46567a[i4].a(i2, i3);
            if (i2 == i3) {
                return;
            }
            int iB = this.f46567a[i4].b();
            int i5 = i4 << 1;
            a(i2, iB, i5);
            a(iB + 1, i3, i5 | 1);
        }

        public void a(int i2, int i3, int i4, int i5) {
            C0815a c0815a = this.f46567a[i4];
            if (c0815a.f46569a >= i2 && c0815a.f46570b <= i3) {
                c0815a.f46571c += i5;
                a(i4);
                return;
            }
            int iB = c0815a.b();
            if (i2 <= iB) {
                a(i2, i3, i4 << 1, i5);
            }
            if (i3 > iB) {
                a(i2, i3, (i4 << 1) | 1, i5);
            }
            a(i4);
        }
    }

    public class c implements Comparable<c> {

        /* renamed from: a, reason: collision with root package name */
        int f46574a;

        /* renamed from: b, reason: collision with root package name */
        int f46575b;

        /* renamed from: c, reason: collision with root package name */
        int f46576c;

        /* renamed from: d, reason: collision with root package name */
        double f46577d;

        private c() {
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            double d2 = this.f46577d;
            double d3 = cVar.f46577d;
            if (d2 < d3) {
                return -1;
            }
            return (d2 != d3 || this.f46576c <= cVar.f46576c) ? 1 : -1;
        }
    }

    public class d implements Comparable<d> {

        /* renamed from: a, reason: collision with root package name */
        int f46579a;

        /* renamed from: b, reason: collision with root package name */
        double f46580b;

        private d() {
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return this.f46580b < dVar.f46580b ? -1 : 1;
        }
    }

    public a() {
        for (int i2 = 0; i2 <= 300; i2 += 2) {
            this.f46562b[i2] = new c();
            int i3 = i2 + 1;
            this.f46562b[i3] = new c();
            this.f46563c[i2] = new d();
            this.f46563c[i3] = new d();
        }
    }

    private void b(List<com.ubix.ssp.ad.e.a0.y.e.f.b> list) {
        int i2 = 1;
        for (com.ubix.ssp.ad.e.a0.y.e.f.b bVar : list) {
            c[] cVarArr = this.f46562b;
            c cVar = cVarArr[i2];
            cVar.f46577d = bVar.f46582a;
            cVar.f46576c = 1;
            d[] dVarArr = this.f46563c;
            d dVar = dVarArr[i2];
            dVar.f46579a = i2;
            dVar.f46580b = bVar.f46583b;
            int i3 = i2 + 1;
            c cVar2 = cVarArr[i3];
            cVar2.f46577d = bVar.f46584c;
            cVar2.f46576c = -1;
            d dVar2 = dVarArr[i3];
            dVar2.f46579a = -i2;
            dVar2.f46580b = bVar.f46585d;
            i2 += 2;
        }
    }

    public double a(List<com.ubix.ssp.ad.e.a0.y.e.f.b> list) {
        double d2 = 0.0d;
        try {
            System.currentTimeMillis();
            this.f46564d = list.size();
            b(list);
            a();
            Arrays.sort(this.f46562b, 1, (this.f46564d * 2) + 1);
            this.f46561a.a(1, this.f46565e - 1, 1);
            b bVar = this.f46561a;
            c cVar = this.f46562b[1];
            bVar.a(cVar.f46574a, cVar.f46575b - 1, 1, 1);
            for (int i2 = 2; i2 <= this.f46564d * 2; i2++) {
                b bVar2 = this.f46561a;
                double d3 = bVar2.f46567a[1].f46572d;
                c[] cVarArr = this.f46562b;
                c cVar2 = cVarArr[i2];
                d2 += d3 * (cVar2.f46577d - cVarArr[i2 - 1].f46577d);
                bVar2.a(cVar2.f46574a, cVar2.f46575b - 1, 1, cVar2.f46576c);
            }
            System.currentTimeMillis();
            new DecimalFormat("0.00");
            return d2;
        } catch (Throwable th) {
            th.printStackTrace();
            return d2;
        }
    }

    private void a() {
        Arrays.sort(this.f46563c, 1, (this.f46564d * 2) + 1);
        this.f46565e = 1;
        for (int i2 = 1; i2 <= this.f46564d * 2; i2++) {
            if (i2 > 1) {
                d[] dVarArr = this.f46563c;
                if (dVarArr[i2].f46580b != dVarArr[i2 - 1].f46580b) {
                    this.f46565e++;
                }
            }
            double[] dArr = this.f46566f;
            int i3 = this.f46565e;
            d dVar = this.f46563c[i2];
            dArr[i3] = dVar.f46580b;
            int i4 = dVar.f46579a;
            c[] cVarArr = this.f46562b;
            if (i4 > 0) {
                c cVar = cVarArr[i4];
                cVarArr[i4 + 1].f46574a = i3;
                cVar.f46574a = i3;
            } else {
                int i5 = -i4;
                c cVar2 = cVarArr[i5];
                cVarArr[i5 + 1].f46575b = i3;
                cVar2.f46575b = i3;
            }
        }
    }
}
