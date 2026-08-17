package com.beizi.fusion;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.LayoutModel;
import com.sigmob.sdk.base.models.ClickCommon;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class y1 {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private p7 f17490a;

        /* renamed from: b, reason: collision with root package name */
        private String f17491b;

        /* renamed from: c, reason: collision with root package name */
        private List f17492c;

        public void a(p7 p7Var) {
            this.f17490a = p7Var;
        }

        public int b() {
            List list = this.f17492c;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public p7 c() {
            return this.f17490a;
        }

        public String d() {
            return this.f17491b;
        }

        public void a(String str) {
            this.f17491b = str;
        }

        public List a() {
            return this.f17492c;
        }

        public void a(List list) {
            this.f17492c = list;
        }
    }

    public static class b {

        /* renamed from: A, reason: collision with root package name */
        private int f17493A;

        /* renamed from: a, reason: collision with root package name */
        private String f17494a;

        /* renamed from: b, reason: collision with root package name */
        private String f17495b;

        /* renamed from: c, reason: collision with root package name */
        private int f17496c;

        /* renamed from: d, reason: collision with root package name */
        private String f17497d;

        /* renamed from: e, reason: collision with root package name */
        private String f17498e;

        /* renamed from: f, reason: collision with root package name */
        private String f17499f;

        /* renamed from: g, reason: collision with root package name */
        private String f17500g;

        /* renamed from: h, reason: collision with root package name */
        private String f17501h;

        /* renamed from: i, reason: collision with root package name */
        private String f17502i;

        /* renamed from: j, reason: collision with root package name */
        private boolean f17503j;

        /* renamed from: k, reason: collision with root package name */
        private int f17504k;

        /* renamed from: l, reason: collision with root package name */
        private C0179b f17505l;

        /* renamed from: m, reason: collision with root package name */
        private c f17506m;

        /* renamed from: n, reason: collision with root package name */
        private List f17507n;

        /* renamed from: o, reason: collision with root package name */
        private String f17508o;

        /* renamed from: p, reason: collision with root package name */
        private String f17509p;

        /* renamed from: q, reason: collision with root package name */
        private String f17510q;

        /* renamed from: r, reason: collision with root package name */
        private String f17511r;

        /* renamed from: s, reason: collision with root package name */
        private String f17512s;

        /* renamed from: t, reason: collision with root package name */
        private String f17513t;

        /* renamed from: u, reason: collision with root package name */
        private String f17514u;

        /* renamed from: v, reason: collision with root package name */
        private a f17515v;

        /* renamed from: w, reason: collision with root package name */
        private String f17516w;

        /* renamed from: x, reason: collision with root package name */
        private String f17517x;

        /* renamed from: y, reason: collision with root package name */
        private String f17518y;

        /* renamed from: z, reason: collision with root package name */
        private String f17519z;

        public static class a {

            /* renamed from: a, reason: collision with root package name */
            private int f17520a;

            /* renamed from: b, reason: collision with root package name */
            private int f17521b;

            /* renamed from: c, reason: collision with root package name */
            private int f17522c;

            public int a() {
                return this.f17520a;
            }

            public int b() {
                return this.f17521b;
            }

            public int c() {
                return this.f17522c;
            }

            public void a(int i2) {
                this.f17520a = i2;
            }

            public void b(int i2) {
                this.f17521b = i2;
            }

            public void c(int i2) {
                this.f17522c = i2;
            }
        }

        /* renamed from: com.beizi.fusion.y1$b$b, reason: collision with other inner class name */
        public static class C0179b implements Serializable {

            /* renamed from: a, reason: collision with root package name */
            private List f17523a;

            /* renamed from: b, reason: collision with root package name */
            private List f17524b;

            /* renamed from: c, reason: collision with root package name */
            private List f17525c;

            /* renamed from: d, reason: collision with root package name */
            private List f17526d;

            /* renamed from: e, reason: collision with root package name */
            private List f17527e;

            /* renamed from: f, reason: collision with root package name */
            private List f17528f;

            /* renamed from: g, reason: collision with root package name */
            private List f17529g;

            /* renamed from: h, reason: collision with root package name */
            private List f17530h;

            /* renamed from: i, reason: collision with root package name */
            private List f17531i;

            /* renamed from: j, reason: collision with root package name */
            private List f17532j;

            /* renamed from: k, reason: collision with root package name */
            private List f17533k;

            /* renamed from: l, reason: collision with root package name */
            private List f17534l;

            /* renamed from: m, reason: collision with root package name */
            private List f17535m;

            /* renamed from: n, reason: collision with root package name */
            private List f17536n;

            /* renamed from: o, reason: collision with root package name */
            private List f17537o;

            /* renamed from: p, reason: collision with root package name */
            private List f17538p;

            /* renamed from: q, reason: collision with root package name */
            private List f17539q;

            /* renamed from: r, reason: collision with root package name */
            private List f17540r;

            public List a() {
                return this.f17524b;
            }

            public void b(List list) {
                this.f17524b = list;
            }

            public void c(List list) {
                this.f17526d = list;
            }

            public void d(List list) {
                this.f17529g = list;
            }

            public List e() {
                return this.f17525c;
            }

            public void f(List list) {
                this.f17534l = list;
            }

            public void g(List list) {
                this.f17525c = list;
            }

            public void h(List list) {
                this.f17537o = list;
            }

            public List i() {
                return this.f17523a;
            }

            public void j(List list) {
                this.f17527e = list;
            }

            public List k() {
                return this.f17535m;
            }

            public void l(List list) {
                this.f17523a = list;
            }

            public void m(List list) {
                this.f17533k = list;
            }

            public void n(List list) {
                this.f17532j = list;
            }

            public void o(List list) {
                this.f17531i = list;
            }

            public void p(List list) {
                this.f17539q = list;
            }

            public void q(List list) {
                this.f17535m = list;
            }

            public void r(List list) {
                this.f17530h = list;
            }

            public void a(List list) {
                this.f17528f = list;
            }

            public List b() {
                return this.f17526d;
            }

            public List c() {
                return this.f17536n;
            }

            public List d() {
                return this.f17534l;
            }

            public void e(List list) {
                this.f17536n = list;
            }

            public List f() {
                return this.f17537o;
            }

            public List g() {
                return this.f17538p;
            }

            public List h() {
                return this.f17540r;
            }

            public void i(List list) {
                this.f17538p = list;
            }

            public List j() {
                return this.f17539q;
            }

            public void k(List list) {
                this.f17540r = list;
            }
        }

        public static class c {

            /* renamed from: a, reason: collision with root package name */
            private List f17541a;

            /* renamed from: b, reason: collision with root package name */
            private List f17542b;

            /* renamed from: c, reason: collision with root package name */
            private List f17543c;

            /* renamed from: d, reason: collision with root package name */
            private List f17544d;

            /* renamed from: e, reason: collision with root package name */
            private List f17545e;

            /* renamed from: f, reason: collision with root package name */
            private List f17546f;

            public static class a {

                /* renamed from: a, reason: collision with root package name */
                private int f17547a;

                /* renamed from: b, reason: collision with root package name */
                private List f17548b;

                public void a(int i2) {
                    this.f17547a = i2;
                }

                public void a(List list) {
                    this.f17548b = list;
                }
            }

            public void a(List list) {
                this.f17545e = list;
            }

            public void b(List list) {
                this.f17543c = list;
            }

            public void c(List list) {
                this.f17544d = list;
            }

            public void d(List list) {
                this.f17542b = list;
            }

            public void e(List list) {
                this.f17546f = list;
            }

            public void f(List list) {
                this.f17541a = list;
            }
        }

        public void a(int i2) {
            this.f17496c = i2;
        }

        public String b() {
            return this.f17500g;
        }

        public void c(int i2) {
            this.f17504k = i2;
        }

        public String d() {
            return this.f17501h;
        }

        public String e() {
            return this.f17513t;
        }

        public String f() {
            return this.f17510q;
        }

        public String g() {
            return this.f17511r;
        }

        public String h() {
            return this.f17512s;
        }

        public void i(String str) {
            this.f17499f = str;
        }

        public void j(String str) {
            this.f17508o = str;
        }

        public String k() {
            return this.f17495b;
        }

        public void l(String str) {
            this.f17495b = str;
        }

        public void m(String str) {
            this.f17494a = str;
        }

        public int n() {
            return this.f17496c;
        }

        public void o(String str) {
            this.f17516w = str;
        }

        public String p() {
            return this.f17494a;
        }

        public void q(String str) {
            this.f17498e = str;
        }

        public String r() {
            return this.f17516w;
        }

        public String s() {
            return this.f17517x;
        }

        public String t() {
            return this.f17498e;
        }

        public String u() {
            return this.f17502i;
        }

        public List v() {
            return this.f17507n;
        }

        public String w() {
            return this.f17519z;
        }

        public String a() {
            return this.f17497d;
        }

        public void b(String str) {
            this.f17500g = str;
        }

        public String c() {
            return this.f17509p;
        }

        public void d(String str) {
            this.f17501h = str;
        }

        public void e(String str) {
            this.f17513t = str;
        }

        public void f(String str) {
            this.f17510q = str;
        }

        public void g(String str) {
            this.f17511r = str;
        }

        public void h(String str) {
            this.f17512s = str;
        }

        public String i() {
            return this.f17508o;
        }

        public String j() {
            return this.f17514u;
        }

        public void k(String str) {
            this.f17514u = str;
        }

        public a l() {
            return this.f17515v;
        }

        public C0179b m() {
            return this.f17505l;
        }

        public void n(String str) {
            this.f17518y = str;
        }

        public int o() {
            return this.f17493A;
        }

        public void p(String str) {
            this.f17517x = str;
        }

        public String q() {
            return this.f17518y;
        }

        public void r(String str) {
            this.f17519z = str;
        }

        public void a(String str) {
            this.f17497d = str;
        }

        public void b(int i2) {
            this.f17493A = i2;
        }

        public void c(String str) {
            this.f17509p = str;
        }

        public void a(boolean z2) {
            this.f17503j = z2;
        }

        public void a(C0179b c0179b) {
            this.f17505l = c0179b;
        }

        public void a(c cVar) {
            this.f17506m = cVar;
        }

        public void a(List list) {
            this.f17507n = list;
        }

        public void a(a aVar) {
            this.f17515v = aVar;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private String f17549a;

        /* renamed from: b, reason: collision with root package name */
        private String f17550b;

        /* renamed from: c, reason: collision with root package name */
        private String f17551c;

        /* renamed from: d, reason: collision with root package name */
        private String f17552d;

        public String a() {
            return this.f17550b;
        }

        public String b() {
            return this.f17549a;
        }

        public String c() {
            return this.f17552d;
        }

        public String d() {
            return this.f17551c;
        }

        public void a(String str) {
            this.f17550b = str;
        }

        public void b(String str) {
            this.f17549a = str;
        }

        public void c(String str) {
            this.f17552d = str;
        }

        public void d(String str) {
            this.f17551c = str;
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private String f17553a;

        /* renamed from: b, reason: collision with root package name */
        private b f17554b;

        /* renamed from: c, reason: collision with root package name */
        private c f17555c;

        /* renamed from: d, reason: collision with root package name */
        private List f17556d;

        /* renamed from: e, reason: collision with root package name */
        private List f17557e;

        /* renamed from: f, reason: collision with root package name */
        private String f17558f;

        /* renamed from: g, reason: collision with root package name */
        private String f17559g;

        /* renamed from: h, reason: collision with root package name */
        private e f17560h;

        /* renamed from: i, reason: collision with root package name */
        private y5 f17561i;

        /* renamed from: j, reason: collision with root package name */
        private String f17562j;

        /* renamed from: k, reason: collision with root package name */
        private int f17563k;

        /* renamed from: l, reason: collision with root package name */
        private lm f17564l;

        /* renamed from: m, reason: collision with root package name */
        private String f17565m;

        /* renamed from: n, reason: collision with root package name */
        private String f17566n;

        /* renamed from: o, reason: collision with root package name */
        private String f17567o;

        /* renamed from: p, reason: collision with root package name */
        private nj f17568p;

        /* renamed from: q, reason: collision with root package name */
        private zk f17569q;

        /* renamed from: r, reason: collision with root package name */
        private qh f17570r;

        /* renamed from: s, reason: collision with root package name */
        private int f17571s;

        /* renamed from: t, reason: collision with root package name */
        private boolean f17572t;

        /* renamed from: u, reason: collision with root package name */
        private boolean f17573u;

        /* renamed from: v, reason: collision with root package name */
        private un f17574v;

        /* renamed from: w, reason: collision with root package name */
        private fl f17575w;

        /* renamed from: x, reason: collision with root package name */
        private List f17576x;

        /* renamed from: y, reason: collision with root package name */
        private xk f17577y;

        /* renamed from: z, reason: collision with root package name */
        private int f17578z;

        public boolean A() {
            return this.f17572t;
        }

        public void a(String str) {
            this.f17559g = str;
        }

        public String b() {
            return this.f17559g;
        }

        public void c(String str) {
            this.f17553a = str;
        }

        public int d() {
            List list = this.f17557e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public void e(String str) {
            this.f17558f = str;
        }

        public void f(String str) {
            this.f17565m = str;
        }

        public void g(String str) {
            this.f17562j = str;
        }

        public fl h() {
            return this.f17575w;
        }

        public y5 i() {
            return this.f17561i;
        }

        public int j() {
            List list = this.f17556d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public List k() {
            return this.f17556d;
        }

        public int l() {
            return this.f17563k;
        }

        public b m() {
            return this.f17554b;
        }

        public qh n() {
            return this.f17570r;
        }

        public nj o() {
            return this.f17568p;
        }

        public xk p() {
            return this.f17577y;
        }

        public zk q() {
            return this.f17569q;
        }

        public String r() {
            return this.f17566n;
        }

        public String s() {
            return this.f17558f;
        }

        public String t() {
            return this.f17565m;
        }

        public lm u() {
            return this.f17564l;
        }

        public String v() {
            return this.f17562j;
        }

        public e w() {
            return this.f17560h;
        }

        public un x() {
            return this.f17574v;
        }

        public int y() {
            return this.f17571s;
        }

        public boolean z() {
            return this.f17573u;
        }

        public void a(b bVar) {
            this.f17554b = bVar;
        }

        public void b(List list) {
            this.f17556d = list;
        }

        public List c() {
            return this.f17557e;
        }

        public void d(String str) {
            this.f17566n = str;
        }

        public String e() {
            return this.f17567o;
        }

        public List f() {
            return this.f17576x;
        }

        public int g() {
            return this.f17578z;
        }

        public c a() {
            return this.f17555c;
        }

        public void b(int i2) {
            this.f17563k = i2;
        }

        public void c(int i2) {
            this.f17571s = i2;
        }

        public void a(c cVar) {
            this.f17555c = cVar;
        }

        public void b(String str) {
            this.f17567o = str;
        }

        public void a(e eVar) {
            this.f17560h = eVar;
        }

        public void b(boolean z2) {
            this.f17572t = z2;
        }

        public void a(y5 y5Var) {
            this.f17561i = y5Var;
        }

        public void a(lm lmVar) {
            this.f17564l = lmVar;
        }

        public void a(nj njVar) {
            this.f17568p = njVar;
        }

        public void a(zk zkVar) {
            this.f17569q = zkVar;
        }

        public void a(qh qhVar) {
            this.f17570r = qhVar;
        }

        public void a(boolean z2) {
            this.f17573u = z2;
        }

        public void a(un unVar) {
            this.f17574v = unVar;
        }

        public void a(fl flVar) {
            this.f17575w = flVar;
        }

        public void a(List list) {
            this.f17576x = list;
        }

        public void a(xk xkVar) {
            this.f17577y = xkVar;
        }

        public void a(int i2) {
            this.f17578z = i2;
        }
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        private boolean f17579a;

        /* renamed from: b, reason: collision with root package name */
        private double f17580b;

        /* renamed from: c, reason: collision with root package name */
        private double f17581c;

        public void a(boolean z2) {
            this.f17579a = z2;
        }

        public double b() {
            return this.f17580b;
        }

        public boolean c() {
            return this.f17579a;
        }

        public double a() {
            return this.f17581c;
        }

        public void b(double d2) {
            this.f17580b = d2;
        }

        public void a(double d2) {
            this.f17581c = d2;
        }
    }

    public static class f {

        /* renamed from: a, reason: collision with root package name */
        private String f17582a;

        /* renamed from: b, reason: collision with root package name */
        private String f17583b;

        public String a() {
            return this.f17583b;
        }

        public void b(String str) {
            this.f17582a = str;
        }

        public void a(String str) {
            this.f17583b = str;
        }
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        private int f17584a = -1;

        /* renamed from: b, reason: collision with root package name */
        private int f17585b = -1;

        /* renamed from: c, reason: collision with root package name */
        private int f17586c = -1;

        /* renamed from: d, reason: collision with root package name */
        private int f17587d = -1;

        /* renamed from: e, reason: collision with root package name */
        private String f17588e;

        /* renamed from: f, reason: collision with root package name */
        private String f17589f;

        /* renamed from: g, reason: collision with root package name */
        private String f17590g;

        public int a() {
            return this.f17586c;
        }

        public void b(int i2) {
            this.f17585b = i2;
        }

        public int c() {
            return this.f17585b;
        }

        public void d(int i2) {
            this.f17584a = i2;
        }

        public int e() {
            return this.f17584a;
        }

        public String f() {
            return this.f17589f;
        }

        public String g() {
            return this.f17588e;
        }

        public void a(int i2) {
            this.f17586c = i2;
        }

        public void b(String str) {
            this.f17589f = str;
        }

        public void c(int i2) {
            this.f17587d = i2;
        }

        public int d() {
            return this.f17587d;
        }

        public void a(String str) {
            this.f17590g = str;
        }

        public String b() {
            return this.f17590g;
        }

        public void c(String str) {
            this.f17588e = str;
        }
    }

    public static class h {

        /* renamed from: a, reason: collision with root package name */
        private String f17591a;

        /* renamed from: b, reason: collision with root package name */
        private String f17592b;

        /* renamed from: c, reason: collision with root package name */
        private String f17593c;

        /* renamed from: d, reason: collision with root package name */
        private String f17594d;

        /* renamed from: e, reason: collision with root package name */
        private String f17595e;

        /* renamed from: f, reason: collision with root package name */
        private String f17596f;

        /* renamed from: g, reason: collision with root package name */
        private String f17597g;

        /* renamed from: h, reason: collision with root package name */
        private String f17598h;

        /* renamed from: i, reason: collision with root package name */
        private String f17599i;

        /* renamed from: j, reason: collision with root package name */
        private String f17600j;

        public String a() {
            return this.f17592b;
        }

        public void b(String str) {
            this.f17593c = str;
        }

        public String c() {
            return this.f17594d;
        }

        public void d(String str) {
            this.f17595e = str;
        }

        public void e(String str) {
            this.f17596f = str;
        }

        public void f(String str) {
            this.f17594d = str;
        }

        public String g() {
            return this.f17591a;
        }

        public void h(String str) {
            this.f17599i = str;
        }

        public void i(String str) {
            this.f17600j = str;
        }

        public void j(String str) {
            this.f17591a = str;
        }

        public void a(String str) {
            this.f17592b = str;
        }

        public String b() {
            return this.f17597g;
        }

        public void c(String str) {
            this.f17597g = str;
        }

        public String d() {
            return this.f17598h;
        }

        public String e() {
            return this.f17599i;
        }

        public String f() {
            return this.f17600j;
        }

        public void g(String str) {
            this.f17598h = str;
        }
    }

    public static class i {

        /* renamed from: a, reason: collision with root package name */
        private int f17601a;

        /* renamed from: b, reason: collision with root package name */
        private String f17602b;

        /* renamed from: c, reason: collision with root package name */
        private String f17603c;

        /* renamed from: d, reason: collision with root package name */
        private long f17604d;

        /* renamed from: e, reason: collision with root package name */
        private List f17605e;

        public void a(int i2) {
            this.f17601a = i2;
        }

        public int b() {
            List list = this.f17605e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public int c() {
            return this.f17601a;
        }

        public long d() {
            return this.f17604d;
        }

        public void a(long j2) {
            this.f17604d = j2;
        }

        public void b(String str) {
            this.f17602b = str;
        }

        public void c(String str) {
            this.f17603c = str;
        }

        private static ArrayList b(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (a(jSONArray)) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.getString(i2));
                }
            }
            return arrayList;
        }

        public List a() {
            return this.f17605e;
        }

        public void a(List list) {
            this.f17605e = list;
        }

        public static String a(InputStream inputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 != -1) {
                    byteArrayOutputStream.write(bArr, 0, i2);
                } else {
                    return byteArrayOutputStream.toString("UTF-8");
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:133:0x05f6  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x0740  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x077f A[Catch: JSONException -> 0x01bc, TryCatch #10 {JSONException -> 0x01bc, blocks: (B:9:0x008c, B:11:0x0099, B:15:0x0111, B:17:0x0117, B:19:0x011f, B:22:0x0150, B:24:0x0156, B:26:0x015c, B:28:0x0187, B:29:0x0191, B:31:0x0197, B:33:0x019d, B:37:0x01c5, B:38:0x01ca, B:40:0x01d2, B:42:0x01de, B:43:0x01e8, B:45:0x01fc, B:47:0x0204, B:48:0x0230, B:50:0x023f, B:51:0x0246, B:53:0x0253, B:55:0x025f, B:56:0x0265, B:58:0x026b, B:60:0x0271, B:62:0x02d8, B:63:0x02db, B:64:0x02de, B:66:0x0384, B:67:0x0471, B:69:0x047e, B:72:0x04d1, B:74:0x04d7, B:76:0x04dd, B:78:0x0504, B:79:0x0509, B:81:0x0511, B:102:0x0559, B:234:0x0777, B:236:0x077f, B:237:0x0788, B:239:0x07c0, B:233:0x0774, B:101:0x0556, B:240:0x07d9, B:340:0x09ad, B:339:0x09a9, B:276:0x089a, B:277:0x089d, B:279:0x08a3, B:281:0x08ad, B:284:0x08b4, B:286:0x08bc, B:287:0x08c5, B:289:0x08cd, B:290:0x08d6, B:292:0x08dc, B:294:0x08e6, B:295:0x08e9, B:297:0x08ef, B:299:0x08f9, B:300:0x08fc, B:302:0x0904, B:304:0x0910, B:305:0x0913, B:307:0x0919, B:309:0x0923, B:310:0x0926, B:312:0x092c, B:314:0x0936, B:315:0x0939, B:317:0x0941, B:319:0x094d, B:320:0x0950, B:322:0x0958, B:324:0x0964, B:325:0x0967, B:327:0x096f, B:329:0x097b, B:330:0x097e, B:332:0x0986, B:334:0x0992, B:335:0x0995, B:337:0x099d, B:84:0x0517, B:86:0x051d, B:88:0x0528, B:90:0x052e, B:93:0x0538, B:95:0x053e, B:96:0x0545, B:98:0x054b, B:99:0x0552), top: B:374:0x008c, inners: #11, #20 }] */
        /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.beizi.fusion.y1.i a(java.lang.String r40) throws org.json.JSONException, javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
            /*
                Method dump skipped, instructions count: 2563
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.y1.i.a(java.lang.String):com.beizi.fusion.y1$i");
        }

        private static boolean a(JSONArray jSONArray) {
            return jSONArray != null && jSONArray.length() > 0;
        }
    }

    public static class j {

        /* renamed from: a, reason: collision with root package name */
        private String f17606a;

        /* renamed from: b, reason: collision with root package name */
        private k7 f17607b;

        /* renamed from: c, reason: collision with root package name */
        private int f17608c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f17609d;

        /* renamed from: e, reason: collision with root package name */
        private int f17610e;

        /* renamed from: f, reason: collision with root package name */
        private int f17611f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f17612g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f17613h;

        /* renamed from: i, reason: collision with root package name */
        private List f17614i;

        /* renamed from: j, reason: collision with root package name */
        private g f17615j;

        /* renamed from: k, reason: collision with root package name */
        private lm f17616k;

        /* renamed from: l, reason: collision with root package name */
        private int f17617l;

        /* renamed from: m, reason: collision with root package name */
        private int f17618m;

        /* renamed from: n, reason: collision with root package name */
        private y5 f17619n;

        /* renamed from: o, reason: collision with root package name */
        private nj f17620o;

        /* renamed from: p, reason: collision with root package name */
        private nj f17621p;

        /* renamed from: q, reason: collision with root package name */
        private zk f17622q;

        /* renamed from: r, reason: collision with root package name */
        private qh f17623r;

        /* renamed from: s, reason: collision with root package name */
        private jp f17624s;

        /* renamed from: t, reason: collision with root package name */
        private y4 f17625t;

        /* renamed from: u, reason: collision with root package name */
        private qp f17626u;

        /* renamed from: v, reason: collision with root package name */
        private g5 f17627v;

        /* renamed from: w, reason: collision with root package name */
        private int f17628w;

        public void a(String str) {
            this.f17606a = str;
        }

        public void b(int i2) {
            this.f17611f = i2;
        }

        public k7 c() {
            return this.f17607b;
        }

        public g d() {
            return this.f17615j;
        }

        public boolean e() {
            return this.f17609d;
        }

        public boolean f() {
            return this.f17613h;
        }

        public y4 g() {
            return this.f17625t;
        }

        public g5 h() {
            return this.f17627v;
        }

        public y5 i() {
            return this.f17619n;
        }

        public nj j() {
            return this.f17621p;
        }

        public qh k() {
            return this.f17623r;
        }

        public int l() {
            return this.f17610e;
        }

        public int m() {
            return this.f17611f;
        }

        public boolean n() {
            return this.f17612g;
        }

        public qp o() {
            return this.f17626u;
        }

        public nj p() {
            return this.f17620o;
        }

        public zk q() {
            return this.f17622q;
        }

        public int r() {
            return this.f17608c;
        }

        public lm s() {
            return this.f17616k;
        }

        public int t() {
            return this.f17628w;
        }

        public int u() {
            return this.f17617l;
        }

        public int v() {
            return this.f17618m;
        }

        public jp w() {
            return this.f17624s;
        }

        public void a(k7 k7Var) {
            this.f17607b = k7Var;
        }

        public void b(boolean z2) {
            this.f17613h = z2;
        }

        public void c(int i2) {
            this.f17608c = i2;
        }

        public void d(int i2) {
            this.f17628w = i2;
        }

        public void e(int i2) {
            this.f17617l = i2;
        }

        public void f(int i2) {
            this.f17618m = i2;
        }

        public void a(boolean z2) {
            this.f17609d = z2;
        }

        public List b() {
            return this.f17614i;
        }

        public void c(boolean z2) {
            this.f17612g = z2;
        }

        public void a(int i2) {
            this.f17610e = i2;
        }

        public void b(nj njVar) {
            this.f17620o = njVar;
        }

        public void a(List list) {
            this.f17614i = list;
        }

        public int a() {
            List list = this.f17614i;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public void a(g gVar) {
            this.f17615j = gVar;
        }

        public void a(lm lmVar) {
            this.f17616k = lmVar;
        }

        public void a(y5 y5Var) {
            this.f17619n = y5Var;
        }

        public void a(nj njVar) {
            this.f17621p = njVar;
        }

        public void a(zk zkVar) {
            this.f17622q = zkVar;
        }

        public void a(qh qhVar) {
            this.f17623r = qhVar;
        }

        public void a(jp jpVar) {
            this.f17624s = jpVar;
        }

        public void a(y4 y4Var) {
            this.f17625t = y4Var;
        }

        public void a(qp qpVar) {
            this.f17626u = qpVar;
        }

        public void a(g5 g5Var) {
            this.f17627v = g5Var;
        }
    }

    public static y4 m(JSONObject jSONObject) {
        try {
            y4 y4Var = new y4();
            if (jSONObject.has("list")) {
                y4Var.a(a(jSONObject.optJSONArray("list")));
            }
            if (jSONObject.has(com.umeng.analytics.pro.cl.f49059n)) {
                y4Var.a(jSONObject.optString(com.umeng.analytics.pro.cl.f49059n));
            }
            return y4Var;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d5 n(JSONObject jSONObject) {
        fl flVarV;
        if (jSONObject == null) {
            return null;
        }
        try {
            d5 d5Var = new d5();
            d5Var.a(jSONObject.optString("bgColor"));
            d5Var.b(jSONObject.optString("imageUrl"));
            if (!jSONObject.has("position") || (flVarV = v(jSONObject.optJSONObject("position"))) == null) {
                return d5Var;
            }
            d5Var.a(flVarV);
            return d5Var;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static g5 o(JSONObject jSONObject) {
        rh rhVarR;
        if (jSONObject == null) {
            return null;
        }
        try {
            g5 g5Var = new g5();
            g5Var.a(jSONObject.optInt("closeCfg"));
            g5Var.c(jSONObject.optInt("ncb"));
            g5Var.b(jSONObject.optDouble("angle"));
            g5Var.a(jSONObject.optDouble("acc"));
            if (jSONObject.has("lpStrategy") && (rhVarR = r(jSONObject.optJSONObject("lpStrategy"))) != null) {
                g5Var.a(rhVarR);
            }
            g5Var.b(jSONObject.optInt("closeSensor"));
            return g5Var;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static y5 p(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            y5 y5Var = new y5();
            if (jSONObject.has("maxAcc")) {
                y5Var.c(jSONObject.optDouble("maxAcc"));
            }
            if (jSONObject.has("angle")) {
                y5Var.a(jSONObject.optDouble("angle"));
            }
            if (jSONObject.has("duration")) {
                y5Var.b(jSONObject.optDouble("duration"));
            }
            if (jSONObject.has("direction")) {
                y5Var.a(jSONObject.optString("direction"));
            }
            return y5Var;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static qh q(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            qh qhVar = new qh();
            qhVar.e(jSONObject.optInt("random"));
            qhVar.a(jSONObject.optString("url"));
            qhVar.h(jSONObject.optInt("showMask"));
            qhVar.c(jSONObject.optInt("autoOpen"));
            qhVar.d(jSONObject.optInt("autoOpenType"));
            qhVar.f(jSONObject.optInt("repeatOpen"));
            qhVar.g(jSONObject.optInt("repeatOpenCount"));
            qhVar.a(jSONObject.optInt("againOpen"));
            qhVar.b(jSONObject.optInt("againOpenTime"));
            return qhVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static rh r(JSONObject jSONObject) {
        fl flVarV;
        if (jSONObject == null) {
            return null;
        }
        try {
            rh rhVar = new rh();
            rhVar.a(jSONObject.optInt("autoTime"));
            rhVar.c(jSONObject.optInt("removeTime"));
            rhVar.b(jSONObject.optInt("layer"));
            rhVar.d(jSONObject.optInt("type"));
            if (!jSONObject.has("position") || (flVarV = v(jSONObject.optJSONObject("position"))) == null) {
                return rhVar;
            }
            rhVar.a(flVarV);
            return rhVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static nj s(JSONObject jSONObject) {
        fl flVarV;
        if (jSONObject == null) {
            return null;
        }
        try {
            nj njVar = new nj();
            njVar.f(jSONObject.optInt("showTime"));
            njVar.d(jSONObject.optInt("duration"));
            njVar.g(jSONObject.optInt("slide"));
            njVar.a(jSONObject.optInt("animation"));
            njVar.c(jSONObject.optString("image"));
            njVar.d(jSONObject.optString(g.a.f3271h));
            njVar.b(jSONObject.optString("desc"));
            njVar.a(jSONObject.optString(ClickCommon.CLICK_AREA_BTN));
            njVar.c(jSONObject.optInt("btnClick"));
            njVar.b(jSONObject.optInt("autoTime"));
            njVar.e(jSONObject.optInt("layer"));
            if (!jSONObject.has("position") || (flVarV = v(jSONObject.optJSONObject("position"))) == null) {
                return njVar;
            }
            njVar.a(flVarV);
            return njVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static xk t(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String strOptString = jSONObject.optString("tokenInfo");
            String strOptString2 = jSONObject.optString("reqId");
            int iOptInt = jSONObject.optInt("failRetry");
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                xk xkVar = new xk();
                xkVar.b(strOptString);
                xkVar.a(strOptString2);
                xkVar.a(iOptInt);
                return xkVar;
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zk u(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            zk zkVar = new zk();
            zkVar.a(jSONObject.optInt("autoTime"));
            zkVar.d(jSONObject.optInt("multiDirection"));
            zkVar.b(jSONObject.optInt("isOpenSensor"));
            zkVar.c(jSONObject.optInt("isShowShakeView"));
            return zkVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static fl v(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            fl flVar = new fl();
            if (jSONObject.has(LayoutModel.MODEL_KEY_CENTER_X)) {
                flVar.a(jSONObject.optString(LayoutModel.MODEL_KEY_CENTER_X));
            }
            if (jSONObject.has(LayoutModel.MODEL_KEY_CENTER_Y)) {
                flVar.b(jSONObject.optString(LayoutModel.MODEL_KEY_CENTER_Y));
            }
            if (jSONObject.has("top")) {
                flVar.d(jSONObject.optString("top"));
            }
            if (jSONObject.has("width")) {
                flVar.e(jSONObject.optString("width"));
            }
            if (jSONObject.has("height")) {
                flVar.c(jSONObject.optString("height"));
            }
            if (jSONObject.has("x")) {
                flVar.f(jSONObject.optString("x"));
            }
            if (jSONObject.has("y")) {
                flVar.g(jSONObject.optString("y"));
            }
            return flVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.beizi.fusion.lm w(org.json.JSONObject r21) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.y1.w(org.json.JSONObject):com.beizi.fusion.lm");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static un x(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            un unVar = new un();
            unVar.e(jSONObject.optInt("isShow"));
            unVar.d(jSONObject.optDouble("normalStart"));
            unVar.c(jSONObject.optDouble("normalEnd"));
            unVar.g(jSONObject.optInt("normalCount"));
            unVar.f(jSONObject.optInt("normalAngle"));
            unVar.d(jSONObject.optInt("isClickRemove"));
            unVar.c(jSONObject.optInt("isClickCool"));
            unVar.b(jSONObject.optDouble("coolStart"));
            unVar.a(jSONObject.optDouble("coolEnd"));
            unVar.b(jSONObject.optInt("coolCount"));
            unVar.a(jSONObject.optInt("coolAngle"));
            return unVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static jp y(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            jp jpVar = new jp();
            jpVar.b(jSONObject.optInt("interval"));
            jpVar.a(jSONObject.optInt("closeType"));
            jpVar.d(jSONObject.optInt("privilegeClick"));
            jpVar.c(jSONObject.optInt("isScrollClick"));
            return jpVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static qp z(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            qp qpVar = new qp();
            qpVar.b(jSONObject.optInt("slideClick"));
            qpVar.a(jSONObject.optInt("clickState"));
            return qpVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static ap a(JSONObject jSONObject, String str) {
        JSONObject jSONObject2;
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (!jSONObject.has(str) || (jSONObject2 = jSONObject.getJSONObject(str)) == null) {
                return null;
            }
            ap apVar = new ap();
            if (jSONObject2.has(PrerollVideoResponse.NORMAL)) {
                apVar.b(jSONObject2.optString(PrerollVideoResponse.NORMAL));
            }
            if (jSONObject2.has("select")) {
                apVar.c(jSONObject2.optString("select"));
            }
            if (jSONObject2.has("finals")) {
                apVar.a(jSONObject2.optString("finals"));
            }
            return apVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static ArrayList a(JSONArray jSONArray) {
        try {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.getString(i2));
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
