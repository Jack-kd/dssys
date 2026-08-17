package com.octopus.ad.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.core.common.f.f;
import com.anythink.core.common.f.g;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.octopus.ad.a.e;
import com.octopus.ad.a.g;
import com.octopus.ad.model.ComplianceInfo;
import com.octopus.ad.model.ShakeValue;
import com.qq.e.comm.constants.Constants;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.models.ClickCommon;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.crypto.NoSuchPaddingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class c {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private g.f f33292a;

        /* renamed from: b, reason: collision with root package name */
        private String f33293b;

        /* renamed from: c, reason: collision with root package name */
        private String f33294c;

        /* renamed from: d, reason: collision with root package name */
        private List<e> f33295d;

        public g.f a() {
            return this.f33292a;
        }

        public String b() {
            return this.f33293b;
        }

        public List<e> c() {
            return this.f33295d;
        }

        public int d() {
            List<e> list = this.f33295d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public void a(g.f fVar) {
            this.f33292a = fVar;
        }

        public void b(String str) {
            this.f33294c = str;
        }

        public void a(String str) {
            this.f33293b = str;
        }

        public void a(List<e> list) {
            this.f33295d = list;
        }
    }

    public static class aa {

        /* renamed from: a, reason: collision with root package name */
        private String f33296a;

        /* renamed from: b, reason: collision with root package name */
        private String f33297b;

        /* renamed from: c, reason: collision with root package name */
        private String f33298c;

        /* renamed from: d, reason: collision with root package name */
        private String f33299d;

        /* renamed from: e, reason: collision with root package name */
        private String f33300e;

        /* renamed from: f, reason: collision with root package name */
        private String f33301f;

        /* renamed from: g, reason: collision with root package name */
        private String f33302g;

        public String a() {
            return this.f33296a;
        }

        public String b() {
            return this.f33297b;
        }

        public String c() {
            return this.f33298c;
        }

        public String d() {
            return this.f33299d;
        }

        public String e() {
            return this.f33300e;
        }

        public String f() {
            return this.f33301f;
        }

        public String g() {
            return this.f33302g;
        }

        public void a(String str) {
            this.f33296a = str;
        }

        public void b(String str) {
            this.f33297b = str;
        }

        public void c(String str) {
            this.f33298c = str;
        }

        public void d(String str) {
            this.f33299d = str;
        }

        public void e(String str) {
            this.f33300e = str;
        }

        public void f(String str) {
            this.f33301f = str;
        }

        public void g(String str) {
            this.f33302g = str;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private String f33303a;

        /* renamed from: b, reason: collision with root package name */
        private String f33304b;

        /* renamed from: c, reason: collision with root package name */
        private String f33305c;

        /* renamed from: d, reason: collision with root package name */
        private int f33306d;

        /* renamed from: e, reason: collision with root package name */
        private String f33307e;

        /* renamed from: f, reason: collision with root package name */
        private String f33308f;

        /* renamed from: g, reason: collision with root package name */
        private String f33309g;

        /* renamed from: h, reason: collision with root package name */
        private String f33310h;

        /* renamed from: i, reason: collision with root package name */
        private String f33311i;

        /* renamed from: j, reason: collision with root package name */
        private com.octopus.ad.a.e f33312j;

        /* renamed from: k, reason: collision with root package name */
        private ComplianceInfo f33313k;

        /* renamed from: l, reason: collision with root package name */
        private com.octopus.ad.a.i f33314l;

        /* renamed from: m, reason: collision with root package name */
        private String f33315m;

        /* renamed from: n, reason: collision with root package name */
        private boolean f33316n;

        /* renamed from: o, reason: collision with root package name */
        private boolean f33317o;

        /* renamed from: p, reason: collision with root package name */
        private boolean f33318p;

        /* renamed from: q, reason: collision with root package name */
        private boolean f33319q;

        /* renamed from: r, reason: collision with root package name */
        private int f33320r;

        /* renamed from: s, reason: collision with root package name */
        private i f33321s;

        /* renamed from: t, reason: collision with root package name */
        private a f33322t;

        /* renamed from: u, reason: collision with root package name */
        private C0710b f33323u;

        /* renamed from: v, reason: collision with root package name */
        private ArrayList<String> f33324v;

        /* renamed from: w, reason: collision with root package name */
        private ArrayList<String> f33325w;

        /* renamed from: x, reason: collision with root package name */
        private List<aa> f33326x;

        /* renamed from: y, reason: collision with root package name */
        private List<i> f33327y;

        public static class a {

            /* renamed from: a, reason: collision with root package name */
            private List<String> f33328a;

            /* renamed from: b, reason: collision with root package name */
            private List<String> f33329b;

            /* renamed from: c, reason: collision with root package name */
            private List<String> f33330c;

            /* renamed from: d, reason: collision with root package name */
            private List<String> f33331d;

            /* renamed from: e, reason: collision with root package name */
            private List<String> f33332e;

            /* renamed from: f, reason: collision with root package name */
            private List<String> f33333f;

            /* renamed from: g, reason: collision with root package name */
            private List<String> f33334g;

            /* renamed from: h, reason: collision with root package name */
            private List<String> f33335h;

            /* renamed from: i, reason: collision with root package name */
            private List<String> f33336i;

            /* renamed from: j, reason: collision with root package name */
            private List<String> f33337j;

            /* renamed from: k, reason: collision with root package name */
            private List<String> f33338k;

            /* renamed from: l, reason: collision with root package name */
            private List<String> f33339l;

            /* renamed from: m, reason: collision with root package name */
            private List<String> f33340m;

            /* renamed from: n, reason: collision with root package name */
            private List<String> f33341n;

            /* renamed from: o, reason: collision with root package name */
            private List<String> f33342o;

            public void a(List<String> list) {
                this.f33328a = list;
            }

            public void b(List<String> list) {
                this.f33329b = list;
            }

            public void c(List<String> list) {
                this.f33330c = list;
            }

            public void d(List<String> list) {
                this.f33331d = list;
            }

            public void e(List<String> list) {
                this.f33332e = list;
            }

            public void f(List<String> list) {
                this.f33333f = list;
            }

            public void g(List<String> list) {
                this.f33334g = list;
            }

            public void h(List<String> list) {
                this.f33335h = list;
            }

            public void i(List<String> list) {
                this.f33336i = list;
            }

            public void j(List<String> list) {
                this.f33337j = list;
            }

            public void k(List<String> list) {
                this.f33338k = list;
            }

            public void l(List<String> list) {
                this.f33339l = list;
            }

            public void m(List<String> list) {
                this.f33340m = list;
            }

            public void n(List<String> list) {
                this.f33341n = list;
            }

            public void o(List<String> list) {
                this.f33342o = list;
            }

            public List<String> a() {
                return this.f33329b;
            }

            public List<String> b() {
                return this.f33330c;
            }

            public List<String> c() {
                return this.f33331d;
            }

            public List<String> d() {
                return this.f33332e;
            }
        }

        /* renamed from: com.octopus.ad.a.c$b$b, reason: collision with other inner class name */
        public static class C0710b {

            /* renamed from: a, reason: collision with root package name */
            private List<String> f33343a;

            /* renamed from: b, reason: collision with root package name */
            private List<String> f33344b;

            /* renamed from: c, reason: collision with root package name */
            private List<String> f33345c;

            /* renamed from: d, reason: collision with root package name */
            private List<String> f33346d;

            /* renamed from: e, reason: collision with root package name */
            private List<String> f33347e;

            /* renamed from: f, reason: collision with root package name */
            private List<a> f33348f;

            /* renamed from: com.octopus.ad.a.c$b$b$a */
            public static class a {

                /* renamed from: a, reason: collision with root package name */
                private int f33349a;

                /* renamed from: b, reason: collision with root package name */
                private List<String> f33350b;

                public void a(int i2) {
                    this.f33349a = i2;
                }

                public void a(List<String> list) {
                    this.f33350b = list;
                }
            }

            public void a(List<String> list) {
                this.f33343a = list;
            }

            public void b(List<String> list) {
                this.f33344b = list;
            }

            public void c(List<String> list) {
                this.f33345c = list;
            }

            public void d(List<String> list) {
                this.f33346d = list;
            }

            public void e(List<String> list) {
                this.f33347e = list;
            }

            public void f(List<a> list) {
                this.f33348f = list;
            }
        }

        public String a() {
            return this.f33303a;
        }

        public String b() {
            return this.f33304b;
        }

        public String c() {
            return this.f33305c;
        }

        public int d() {
            return this.f33306d;
        }

        public String e() {
            return this.f33307e;
        }

        public String f() {
            return this.f33308f;
        }

        public String g() {
            return this.f33310h;
        }

        public String h() {
            return this.f33311i;
        }

        public ComplianceInfo i() {
            return this.f33313k;
        }

        public String j() {
            return this.f33315m;
        }

        public i k() {
            return this.f33321s;
        }

        public boolean l() {
            return this.f33317o;
        }

        public boolean m() {
            return this.f33316n;
        }

        public boolean n() {
            return this.f33318p;
        }

        public boolean o() {
            return this.f33319q;
        }

        public a p() {
            return this.f33322t;
        }

        public com.octopus.ad.a.i q() {
            return this.f33314l;
        }

        public com.octopus.ad.a.e r() {
            return this.f33312j;
        }

        public ArrayList<String> s() {
            return this.f33324v;
        }

        public ArrayList<String> t() {
            return this.f33325w;
        }

        public List<aa> u() {
            return this.f33326x;
        }

        public List<i> v() {
            return this.f33327y;
        }

        public void a(String str) {
            this.f33303a = str;
        }

        public void b(String str) {
            this.f33304b = str;
        }

        public void c(String str) {
            this.f33305c = str;
        }

        public void d(String str) {
            this.f33307e = str;
        }

        public void e(String str) {
            this.f33308f = str;
        }

        public void f(String str) {
            this.f33309g = str;
        }

        public void g(String str) {
            this.f33310h = str;
        }

        public void h(String str) {
            this.f33311i = str;
        }

        public void a(int i2) {
            this.f33306d = i2;
        }

        public void b(boolean z2) {
            this.f33316n = z2;
        }

        public void c(boolean z2) {
            this.f33318p = z2;
        }

        public void d(boolean z2) {
            this.f33319q = z2;
        }

        public void a(ComplianceInfo complianceInfo) {
            this.f33313k = complianceInfo;
        }

        public void b(int i2) {
            this.f33320r = i2;
        }

        public void a(boolean z2) {
            this.f33317o = z2;
        }

        public void b(ArrayList<String> arrayList) {
            this.f33325w = arrayList;
        }

        public void a(a aVar) {
            this.f33322t = aVar;
        }

        public void b(List<i> list) {
            this.f33327y = list;
        }

        public void a(C0710b c0710b) {
            this.f33323u = c0710b;
        }

        public void a(com.octopus.ad.a.i iVar) {
            this.f33314l = iVar;
        }

        public void a(com.octopus.ad.a.e eVar) {
            this.f33312j = eVar;
        }

        public void a(ArrayList<String> arrayList) {
            this.f33324v = arrayList;
        }

        public void a(List<aa> list) {
            this.f33326x = list;
        }
    }

    /* renamed from: com.octopus.ad.a.c$c, reason: collision with other inner class name */
    public static class C0711c {

        /* renamed from: a, reason: collision with root package name */
        private String f33351a;

        /* renamed from: b, reason: collision with root package name */
        private String f33352b;

        /* renamed from: c, reason: collision with root package name */
        private String f33353c;

        /* renamed from: d, reason: collision with root package name */
        private String f33354d;

        public String a() {
            return this.f33351a;
        }

        public String b() {
            return this.f33352b;
        }

        public String c() {
            return this.f33353c;
        }

        public String d() {
            return this.f33354d;
        }

        public void a(String str) {
            this.f33351a = str;
        }

        public void b(String str) {
            this.f33352b = str;
        }

        public void c(String str) {
            this.f33353c = str;
        }

        public void d(String str) {
            this.f33354d = str;
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private String f33355a;

        /* renamed from: b, reason: collision with root package name */
        private b f33356b;

        /* renamed from: c, reason: collision with root package name */
        private C0711c f33357c;

        /* renamed from: d, reason: collision with root package name */
        private List<a> f33358d;

        /* renamed from: e, reason: collision with root package name */
        private List<Object> f33359e;

        /* renamed from: f, reason: collision with root package name */
        private int f33360f;

        /* renamed from: g, reason: collision with root package name */
        private String f33361g;

        /* renamed from: h, reason: collision with root package name */
        private String f33362h;

        /* renamed from: i, reason: collision with root package name */
        private long f33363i;

        public String a() {
            return this.f33355a;
        }

        public String b() {
            return this.f33362h;
        }

        public long c() {
            return this.f33363i;
        }

        public b d() {
            return this.f33356b;
        }

        public int e() {
            List<a> list = this.f33358d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public C0711c f() {
            return this.f33357c;
        }

        public List<a> g() {
            return this.f33358d;
        }

        public List<Object> h() {
            return this.f33359e;
        }

        public int i() {
            List<Object> list = this.f33359e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public int j() {
            return this.f33360f;
        }

        public String k() {
            return this.f33361g;
        }

        public void a(String str) {
            this.f33355a = str;
        }

        public void b(String str) {
            this.f33362h = str;
        }

        public void c(String str) {
            this.f33361g = str;
        }

        public void a(long j2) {
            this.f33363i = j2;
        }

        public void a(b bVar) {
            this.f33356b = bVar;
        }

        public void a(C0711c c0711c) {
            this.f33357c = c0711c;
        }

        public void a(List<a> list) {
            this.f33358d = list;
        }

        public void a(int i2) {
            this.f33360f = i2;
        }
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        private String f33364a;

        /* renamed from: b, reason: collision with root package name */
        private String f33365b;

        /* renamed from: c, reason: collision with root package name */
        private String f33366c;

        /* renamed from: d, reason: collision with root package name */
        private String f33367d;

        public void a(String str) {
            this.f33364a = str;
        }

        public void b(String str) {
            this.f33365b = str;
        }

        public void c(String str) {
            this.f33366c = str;
        }

        public void d(String str) {
            this.f33367d = str;
        }

        public String a() {
            return this.f33366c;
        }
    }

    public static class f {

        /* renamed from: a, reason: collision with root package name */
        private String f33368a;

        /* renamed from: b, reason: collision with root package name */
        private String f33369b;

        public String a() {
            return this.f33368a;
        }

        public String b() {
            return this.f33369b;
        }

        public void a(String str) {
            this.f33368a = str;
        }

        public void b(String str) {
            this.f33369b = str;
        }
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        private int f33370a;

        /* renamed from: b, reason: collision with root package name */
        private int f33371b;

        /* renamed from: c, reason: collision with root package name */
        private int f33372c;

        /* renamed from: d, reason: collision with root package name */
        private int f33373d;

        public int a() {
            return this.f33370a;
        }

        public int b() {
            return this.f33371b;
        }

        public void c(int i2) {
            this.f33372c = i2;
        }

        public void d(int i2) {
            this.f33373d = i2;
        }

        public void a(int i2) {
            this.f33370a = i2;
        }

        public void b(int i2) {
            this.f33371b = i2;
        }

        public int c() {
            return this.f33373d;
        }
    }

    public static class h {

        /* renamed from: a, reason: collision with root package name */
        private int f33374a;

        /* renamed from: b, reason: collision with root package name */
        private int f33375b;

        public void a(int i2) {
            this.f33374a = i2;
        }

        public void b(int i2) {
            this.f33375b = i2;
        }
    }

    public static class i {

        /* renamed from: a, reason: collision with root package name */
        private String f33376a;

        /* renamed from: b, reason: collision with root package name */
        private String f33377b;

        /* renamed from: c, reason: collision with root package name */
        private String f33378c;

        /* renamed from: d, reason: collision with root package name */
        private String f33379d;

        /* renamed from: e, reason: collision with root package name */
        private String f33380e;

        /* renamed from: f, reason: collision with root package name */
        private String f33381f;

        /* renamed from: g, reason: collision with root package name */
        private String f33382g;

        /* renamed from: h, reason: collision with root package name */
        private String f33383h;

        /* renamed from: i, reason: collision with root package name */
        private String f33384i;

        /* renamed from: j, reason: collision with root package name */
        private String f33385j;

        public String a() {
            return this.f33376a;
        }

        public String b() {
            return this.f33377b;
        }

        public String c() {
            return this.f33378c;
        }

        public String d() {
            return this.f33379d;
        }

        public String e() {
            return this.f33380e;
        }

        public void f(String str) {
            this.f33381f = str;
        }

        public void g(String str) {
            this.f33382g = str;
        }

        public void h(String str) {
            this.f33383h = str;
        }

        public void i(String str) {
            this.f33384i = str;
        }

        public void j(String str) {
            this.f33385j = str;
        }

        public void a(String str) {
            this.f33376a = str;
        }

        public void b(String str) {
            this.f33377b = str;
        }

        public void c(String str) {
            this.f33378c = str;
        }

        public void d(String str) {
            this.f33379d = str;
        }

        public void e(String str) {
            this.f33380e = str;
        }
    }

    public static class j {

        /* renamed from: a, reason: collision with root package name */
        private int f33386a;

        public int a() {
            return this.f33386a;
        }

        public void a(int i2) {
            this.f33386a = i2;
        }
    }

    public static class k {

        /* renamed from: a, reason: collision with root package name */
        private int f33387a;

        /* renamed from: b, reason: collision with root package name */
        private int f33388b;

        /* renamed from: c, reason: collision with root package name */
        private double f33389c;

        /* renamed from: d, reason: collision with root package name */
        private double f33390d;

        public int a() {
            return this.f33387a;
        }

        public int b() {
            return this.f33388b;
        }

        public double c() {
            return this.f33389c;
        }

        public double d() {
            return this.f33390d;
        }

        public void a(int i2) {
            this.f33387a = i2;
        }

        public void b(int i2) {
            this.f33388b = i2;
        }

        public void a(double d2) {
            this.f33389c = d2;
        }

        public void b(double d2) {
            this.f33390d = d2;
        }
    }

    public static class l {

        /* renamed from: a, reason: collision with root package name */
        private int f33391a;

        /* renamed from: b, reason: collision with root package name */
        private int f33392b;

        /* renamed from: c, reason: collision with root package name */
        private String f33393c;

        /* renamed from: d, reason: collision with root package name */
        private String f33394d;

        public int a() {
            return this.f33391a;
        }

        public int b() {
            return this.f33392b;
        }

        public String c() {
            return this.f33393c;
        }

        public String d() {
            return this.f33394d;
        }

        public void a(int i2) {
            this.f33391a = i2;
        }

        public void b(int i2) {
            this.f33392b = i2;
        }

        public void a(String str) {
            this.f33393c = str;
        }

        public void b(String str) {
            this.f33394d = str;
        }
    }

    public static class m {

        /* renamed from: a, reason: collision with root package name */
        private List<String> f33395a;

        /* renamed from: b, reason: collision with root package name */
        private List<String> f33396b;

        /* renamed from: c, reason: collision with root package name */
        private long f33397c;

        public List<String> a() {
            return this.f33395a;
        }

        public List<String> b() {
            return this.f33396b;
        }

        public long c() {
            return this.f33397c;
        }

        public void a(List<String> list) {
            this.f33395a = list;
        }

        public void b(List<String> list) {
            this.f33396b = list;
        }

        public void a(long j2) {
            this.f33397c = j2;
        }
    }

    public static class n {

        /* renamed from: a, reason: collision with root package name */
        private int f33398a;

        /* renamed from: b, reason: collision with root package name */
        private int f33399b;

        public void a(int i2) {
            this.f33398a = i2;
        }

        public void b(int i2) {
            this.f33399b = i2;
        }

        public int a() {
            return this.f33399b;
        }
    }

    public static class o {

        /* renamed from: a, reason: collision with root package name */
        private int f33400a;

        /* renamed from: b, reason: collision with root package name */
        private int f33401b;

        public void a(int i2) {
            this.f33400a = i2;
        }

        public void b(int i2) {
            this.f33401b = i2;
        }
    }

    public static class p {

        /* renamed from: a, reason: collision with root package name */
        private n f33402a;

        /* renamed from: b, reason: collision with root package name */
        private s f33403b;

        /* renamed from: c, reason: collision with root package name */
        private v f33404c;

        /* renamed from: d, reason: collision with root package name */
        private t f33405d;

        public n a() {
            return this.f33402a;
        }

        public s b() {
            return this.f33403b;
        }

        public v c() {
            return this.f33404c;
        }

        public t d() {
            return this.f33405d;
        }

        public void a(n nVar) {
            this.f33402a = nVar;
        }

        public void a(s sVar) {
            this.f33403b = sVar;
        }

        public void a(v vVar) {
            this.f33404c = vVar;
        }

        public void a(t tVar) {
            this.f33405d = tVar;
        }
    }

    public static class q {

        /* renamed from: a, reason: collision with root package name */
        private int f33406a;

        /* renamed from: b, reason: collision with root package name */
        private int f33407b;

        /* renamed from: c, reason: collision with root package name */
        private int f33408c;

        /* renamed from: d, reason: collision with root package name */
        private int f33409d;

        /* renamed from: e, reason: collision with root package name */
        private int f33410e;

        public int a() {
            return this.f33406a;
        }

        public int b() {
            return this.f33407b;
        }

        public int c() {
            return this.f33408c;
        }

        public int d() {
            return this.f33409d;
        }

        public int e() {
            return this.f33410e;
        }

        public void a(int i2) {
            this.f33406a = i2;
        }

        public void b(int i2) {
            this.f33407b = i2;
        }

        public void c(int i2) {
            this.f33408c = i2;
        }

        public void d(int i2) {
            this.f33409d = i2;
        }

        public void e(int i2) {
            this.f33410e = i2;
        }
    }

    public static class r {

        /* renamed from: a, reason: collision with root package name */
        private int f33411a;

        /* renamed from: b, reason: collision with root package name */
        private int f33412b;

        public void a(int i2) {
            this.f33411a = i2;
        }

        public void b(int i2) {
            this.f33412b = i2;
        }
    }

    public static class s {

        /* renamed from: a, reason: collision with root package name */
        private int f33413a;

        /* renamed from: b, reason: collision with root package name */
        private String f33414b;

        public int a() {
            return this.f33413a;
        }

        public String b() {
            return this.f33414b;
        }

        public void a(int i2) {
            this.f33413a = i2;
        }

        public void a(String str) {
            this.f33414b = str;
        }
    }

    public static class t {

        /* renamed from: a, reason: collision with root package name */
        private int f33415a;

        /* renamed from: b, reason: collision with root package name */
        private String f33416b;

        public int a() {
            return this.f33415a;
        }

        public String b() {
            return this.f33416b;
        }

        public void a(int i2) {
            this.f33415a = i2;
        }

        public void a(String str) {
            this.f33416b = str;
        }
    }

    public static class u {

        /* renamed from: a, reason: collision with root package name */
        private int f33417a;

        /* renamed from: b, reason: collision with root package name */
        private String f33418b;

        /* renamed from: c, reason: collision with root package name */
        private String f33419c;

        /* renamed from: d, reason: collision with root package name */
        private String f33420d;

        /* renamed from: e, reason: collision with root package name */
        private String f33421e;

        /* renamed from: f, reason: collision with root package name */
        private String f33422f;

        /* renamed from: g, reason: collision with root package name */
        private String f33423g;

        /* renamed from: h, reason: collision with root package name */
        private int f33424h;

        /* renamed from: i, reason: collision with root package name */
        private int f33425i;

        /* renamed from: j, reason: collision with root package name */
        private boolean f33426j;

        /* renamed from: k, reason: collision with root package name */
        private boolean f33427k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f33428l;

        /* renamed from: m, reason: collision with root package name */
        private boolean f33429m = true;

        /* renamed from: n, reason: collision with root package name */
        private Boolean f33430n;

        /* renamed from: o, reason: collision with root package name */
        private boolean f33431o;

        /* renamed from: p, reason: collision with root package name */
        private boolean f33432p;

        /* renamed from: q, reason: collision with root package name */
        private long f33433q;

        /* renamed from: r, reason: collision with root package name */
        private k f33434r;

        /* renamed from: s, reason: collision with root package name */
        private l f33435s;

        /* renamed from: t, reason: collision with root package name */
        private z f33436t;

        /* renamed from: u, reason: collision with root package name */
        private com.octopus.ad.a.h f33437u;

        /* renamed from: v, reason: collision with root package name */
        private ShakeValue f33438v;

        /* renamed from: w, reason: collision with root package name */
        private List<w> f33439w;

        /* renamed from: x, reason: collision with root package name */
        private Map<String, Object> f33440x;

        public int a() {
            List<w> list = this.f33439w;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public int b() {
            return this.f33417a;
        }

        public String c() {
            return this.f33418b;
        }

        public boolean d() {
            return this.f33426j;
        }

        public int e() {
            return this.f33424h;
        }

        public int f() {
            return this.f33425i;
        }

        public boolean g() {
            return this.f33427k;
        }

        public boolean h() {
            return this.f33428l;
        }

        public String i() {
            return this.f33420d;
        }

        public String j() {
            return this.f33421e;
        }

        public String k() {
            return this.f33422f;
        }

        public String l() {
            return this.f33423g;
        }

        public boolean m() {
            return this.f33429m;
        }

        public Boolean n() {
            return this.f33430n;
        }

        public boolean o() {
            return this.f33431o;
        }

        public boolean p() {
            return this.f33432p;
        }

        public k q() {
            return this.f33434r;
        }

        public l r() {
            return this.f33435s;
        }

        public z s() {
            return this.f33436t;
        }

        public com.octopus.ad.a.h t() {
            return this.f33437u;
        }

        public ShakeValue u() {
            return this.f33438v;
        }

        public Map<String, Object> v() {
            return this.f33440x;
        }

        public List<w> w() {
            return this.f33439w;
        }

        public void a(int i2) {
            this.f33417a = i2;
        }

        public void b(int i2) {
            this.f33424h = i2;
        }

        public void c(int i2) {
            this.f33425i = i2;
        }

        public void d(boolean z2) {
            com.octopus.ad.internal.c.o.a(com.octopus.ad.internal.q.a().l(), "logReportFlag", Boolean.valueOf(z2));
        }

        public void e(String str) {
            this.f33423g = str;
        }

        public void f(String str) {
            this.f33421e = str;
        }

        public void g(boolean z2) {
            this.f33432p = z2;
        }

        public void a(String str) {
            this.f33418b = str;
        }

        public void b(boolean z2) {
            this.f33427k = z2;
        }

        public void c(boolean z2) {
            this.f33428l = z2;
        }

        public void e(boolean z2) {
            this.f33429m = z2;
        }

        public void f(boolean z2) {
            this.f33431o = z2;
        }

        public void a(boolean z2) {
            this.f33426j = z2;
        }

        public void b(String str) {
            this.f33419c = str;
        }

        public void c(String str) {
            this.f33420d = str;
        }

        public void d(String str) {
            this.f33422f = str;
        }

        private static u b(String str, String str2, long j2, String str3, boolean z2) throws JSONException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
            u uVar;
            String str4;
            String str5;
            String str6;
            String str7;
            String str8;
            String str9;
            String str10;
            String str11;
            u uVar2;
            ArrayList arrayList;
            int i2;
            String str12;
            String str13;
            String str14;
            String str15;
            String str16;
            String str17;
            w wVar;
            String str18;
            w wVar2;
            JSONArray jSONArray;
            int i3;
            String str19;
            String str20;
            String str21;
            String str22;
            String str23;
            w wVar3;
            u uVar3;
            String str24;
            ArrayList arrayList2;
            JSONObject jSONObject;
            d dVar;
            String str25;
            String str26;
            String str27;
            String str28;
            String str29;
            String str30;
            String str31;
            String str32;
            String str33;
            JSONArray jSONArray2;
            String str34;
            JSONArray jSONArray3;
            String str35;
            ArrayList arrayList3;
            JSONObject jSONObject2;
            JSONArray jSONArray4;
            ArrayList arrayList4;
            int i4;
            String str36;
            String str37;
            String str38;
            String str39;
            w wVar4;
            d dVar2;
            u uVar4;
            String str40;
            String str41;
            String str42;
            String str43;
            String str44;
            String str45;
            String str46;
            ArrayList arrayList5;
            JSONArray jSONArray5;
            JSONObject jSONObject3;
            int i5;
            ArrayList arrayList6;
            ArrayList arrayList7;
            String str47;
            String str48;
            String str49;
            String str50;
            w wVar5;
            a aVar;
            d dVar3;
            String str51;
            String str52;
            String str53;
            String str54;
            String str55;
            String str56;
            String str57;
            String str58;
            String str59;
            JSONObject jSONObject4;
            w wVar6;
            String str60;
            String strB = str3;
            String str61 = "cover";
            String str62 = "dspName";
            String str63 = "deepLink";
            String str64 = "icon";
            String str65 = "description";
            String str66 = g.a.f3271h;
            String str67 = "resId";
            String str68 = "cpaDelay";
            com.octopus.ad.d.b.f.b("ServerResponse", "slotId = " + str + "，requestId = " + str2 + "，encryptStr = " + strB);
            Boolean bool = (Boolean) com.octopus.ad.internal.c.o.c(com.octopus.ad.internal.q.a().f35026t, "encrypt", Boolean.TRUE);
            if (bool == null || bool.booleanValue() || z2) {
                strB = com.octopus.ad.d.b.a.b(com.octopus.ad.d.b.e.a(), strB);
                com.octopus.ad.d.b.f.e("ServerResponse", "decryptStr = " + strB);
            }
            u uVar5 = new u();
            if (strB != null) {
                try {
                    JSONObject jSONObject5 = new JSONObject(strB);
                    uVar5.a(jSONObject5.optString("errcode"));
                    uVar5.b(jSONObject5.optString("errmsg"));
                    uVar5.a(jSONObject5.optBoolean("preload"));
                    uVar5.b(jSONObject5.optInt("priority", 1));
                    uVar5.c(jSONObject5.optInt("cpaDelay"));
                    uVar5.b(jSONObject5.optBoolean("initSo"));
                    uVar5.c(jSONObject5.optBoolean("isHook"));
                    uVar5.d(jSONObject5.optBoolean("logReportFlag", true));
                    uVar5.a(jSONObject5.optInt("status"));
                    uVar5.c(jSONObject5.optString("boostId"));
                    uVar5.f(jSONObject5.optString("boostIds"));
                    uVar5.a(jSONObject5.optLong("ts"));
                    JSONObject jSONObjectB = com.octopus.ad.internal.c.k.b(jSONObject5, "extTracking");
                    if (jSONObjectB != null) {
                        m mVar = new m();
                        mVar.a(com.octopus.ad.internal.c.k.a(jSONObjectB.optJSONArray("iUrls")));
                        mVar.b(com.octopus.ad.internal.c.k.a(jSONObjectB.optJSONArray("cUrls")));
                        mVar.a(com.octopus.ad.internal.c.k.e(jSONObjectB, "eInterval"));
                        uVar5.a(mVar);
                    }
                    JSONArray jSONArrayOptJSONArray = jSONObject5.optJSONArray("spaceInfo");
                    ArrayList arrayList8 = new ArrayList();
                    if (b(jSONArrayOptJSONArray)) {
                        int i6 = 0;
                        while (i6 < jSONArrayOptJSONArray.length()) {
                            w wVar7 = new w();
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i6);
                            if (jSONObjectOptJSONObject != null) {
                                wVar7.a(jSONObjectOptJSONObject.optString("slotId"));
                                wVar7.b(jSONObjectOptJSONObject.optString("spaceParam"));
                                wVar7.a(g.a.a(jSONObjectOptJSONObject.optInt("adpType")));
                                wVar7.a(jSONObjectOptJSONObject.optInt("refreshInterval"));
                                wVar7.c(jSONObjectOptJSONObject.optString("wordText"));
                                wVar7.b(jSONObjectOptJSONObject.optInt("filter"));
                                wVar7.a(g.h.a(jSONObjectOptJSONObject.optInt("screenDirection")));
                                wVar7.d(jSONObjectOptJSONObject.optString("width"));
                                wVar7.e(jSONObjectOptJSONObject.optString("height"));
                                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("adpPosition");
                                if (jSONObjectOptJSONObject2 != null) {
                                    i2 = i6;
                                    f fVar = new f();
                                    fVar.a(jSONObjectOptJSONObject2.optString("x"));
                                    fVar.b(jSONObjectOptJSONObject2.optString("y"));
                                    wVar7.a(fVar);
                                } else {
                                    i2 = i6;
                                }
                                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("interEvent");
                                String str69 = "clk";
                                ArrayList arrayList9 = arrayList8;
                                if (jSONObjectOptJSONObject3 != null) {
                                    str11 = str68;
                                    p pVar = new p();
                                    str12 = str61;
                                    JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("shakeEvent");
                                    str13 = str62;
                                    if (jSONObjectOptJSONObject4 != null) {
                                        str6 = str63;
                                        v vVar = new v();
                                        str14 = str64;
                                        int iD = com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject4, "v");
                                        str8 = str65;
                                        int iD2 = com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject4, "show");
                                        str15 = str66;
                                        int iD3 = com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject4, "time");
                                        str16 = str67;
                                        wVar6 = wVar7;
                                        str60 = "v";
                                        double dF = com.octopus.ad.internal.c.k.f(jSONObjectOptJSONObject4, "sr");
                                        str59 = "o";
                                        jSONObject4 = jSONObjectOptJSONObject3;
                                        double dF2 = com.octopus.ad.internal.c.k.f(jSONObjectOptJSONObject4, "ang");
                                        vVar.a(iD);
                                        vVar.d(iD2);
                                        vVar.a(dF);
                                        vVar.b(dF2);
                                        vVar.f(iD3);
                                        vVar.g(jSONObjectOptJSONObject4.optInt("clk", 1));
                                        vVar.b(jSONObjectOptJSONObject4.getInt("or"));
                                        vVar.c(jSONObjectOptJSONObject4.getInt("sn"));
                                        vVar.a(jSONObjectOptJSONObject4.getString("tx"));
                                        vVar.e(jSONObjectOptJSONObject4.getInt("type"));
                                        pVar.a(vVar);
                                        if (iD == 1 && iD2 == 1) {
                                            ShakeValue shakeValue = new ShakeValue();
                                            shakeValue.setAcceleration(Math.max(dF * 10.0d, 15.0d));
                                            shakeValue.setAngle(Math.max(dF2, 35.0d));
                                            shakeValue.setTime(Math.max(iD3, 3));
                                            uVar5.a(shakeValue);
                                        }
                                    } else {
                                        str6 = str63;
                                        str14 = str64;
                                        str8 = str65;
                                        str15 = str66;
                                        str16 = str67;
                                        str59 = "o";
                                        jSONObject4 = jSONObjectOptJSONObject3;
                                        wVar6 = wVar7;
                                        str60 = "v";
                                    }
                                    JSONObject jSONObject6 = jSONObject4;
                                    JSONObject jSONObjectOptJSONObject5 = jSONObject6.optJSONObject("scrollEvent");
                                    if (jSONObjectOptJSONObject5 != null) {
                                        t tVar = new t();
                                        str18 = str60;
                                        tVar.a(jSONObjectOptJSONObject5.getInt(str18));
                                        tVar.a(jSONObjectOptJSONObject5.getString("tx"));
                                        pVar.a(tVar);
                                    } else {
                                        str18 = str60;
                                    }
                                    JSONObject jSONObjectOptJSONObject6 = jSONObject6.optJSONObject("fullScreenClk");
                                    if (jSONObjectOptJSONObject6 != null) {
                                        n nVar = new n();
                                        nVar.a(jSONObjectOptJSONObject6.getInt(str18));
                                        str17 = str59;
                                        nVar.b(jSONObjectOptJSONObject6.getInt(str17));
                                        pVar.a(nVar);
                                    } else {
                                        str17 = str59;
                                    }
                                    JSONObject jSONObjectOptJSONObject7 = jSONObject6.optJSONObject("regionScreenClk");
                                    if (jSONObjectOptJSONObject7 != null) {
                                        s sVar = new s();
                                        sVar.a(jSONObjectOptJSONObject7.getInt(str18));
                                        sVar.a(jSONObjectOptJSONObject7.getString("tx"));
                                        pVar.a(sVar);
                                    }
                                    wVar = wVar6;
                                    wVar.a(pVar);
                                } else {
                                    str12 = str61;
                                    str13 = str62;
                                    str6 = str63;
                                    str14 = str64;
                                    str8 = str65;
                                    str15 = str66;
                                    str16 = str67;
                                    str11 = str68;
                                    str17 = "o";
                                    wVar = wVar7;
                                    str18 = "v";
                                }
                                JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject.optJSONObject("strategy");
                                if (jSONObjectOptJSONObject8 != null) {
                                    x xVar = new x();
                                    JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject8.optJSONObject("pass");
                                    if (jSONObjectOptJSONObject9 != null) {
                                        r rVar = new r();
                                        rVar.a(jSONObjectOptJSONObject9.getInt(str18));
                                        rVar.b(jSONObjectOptJSONObject9.getInt(str17));
                                        xVar.a(rVar);
                                        uVar5.g(jSONObjectOptJSONObject9.getInt(str17) == 1);
                                    }
                                    JSONObject jSONObjectOptJSONObject10 = jSONObjectOptJSONObject8.optJSONObject("aoclk");
                                    if (jSONObjectOptJSONObject10 != null) {
                                        g gVar = new g();
                                        gVar.a(jSONObjectOptJSONObject10.getInt("co"));
                                        gVar.b(jSONObjectOptJSONObject10.getInt("ct"));
                                        gVar.c(jSONObjectOptJSONObject10.getInt("cr"));
                                        gVar.d(jSONObjectOptJSONObject10.getInt("cro"));
                                        xVar.a(gVar);
                                    }
                                    JSONObject jSONObjectOptJSONObject11 = jSONObjectOptJSONObject8.optJSONObject("impCallback");
                                    if (jSONObjectOptJSONObject11 != null) {
                                        o oVar = new o();
                                        oVar.a(jSONObjectOptJSONObject11.getInt(str18));
                                        oVar.b(jSONObjectOptJSONObject11.getInt(str17));
                                        xVar.a(oVar);
                                        uVar5.e(jSONObjectOptJSONObject11.getInt(str17) == 1);
                                    }
                                    JSONObject jSONObjectOptJSONObject12 = jSONObjectOptJSONObject8.optJSONObject("callback");
                                    if (jSONObjectOptJSONObject12 != null) {
                                        h hVar = new h();
                                        hVar.a(jSONObjectOptJSONObject12.getInt(str18));
                                        hVar.b(jSONObjectOptJSONObject12.getInt(str17));
                                        xVar.a(hVar);
                                        uVar5.a(Boolean.valueOf(jSONObjectOptJSONObject12.getInt(str17) == 1));
                                    }
                                    JSONObject jSONObjectOptJSONObject13 = jSONObjectOptJSONObject8.optJSONObject("touchclk");
                                    if (jSONObjectOptJSONObject13 != null) {
                                        y yVar = new y();
                                        yVar.a(jSONObjectOptJSONObject13.getInt(str17));
                                        xVar.a(yVar);
                                        uVar5.f(jSONObjectOptJSONObject13.getInt(str17) == 1);
                                    }
                                    JSONObject jSONObjectOptJSONObject14 = jSONObjectOptJSONObject8.optJSONObject("dialog");
                                    if (jSONObjectOptJSONObject14 != null) {
                                        j jVar = new j();
                                        jVar.a(jSONObjectOptJSONObject14.getInt(str18));
                                        xVar.a(jVar);
                                    }
                                    JSONObject jSONObjectOptJSONObject15 = jSONObjectOptJSONObject8.optJSONObject("nDpUp");
                                    if (jSONObjectOptJSONObject15 != null) {
                                        q qVar = new q();
                                        qVar.a(com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject15, "eo"));
                                        qVar.c(com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject15, "et"));
                                        qVar.b(com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject15, "co"));
                                        qVar.d(com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject15, "ct"));
                                        qVar.e(com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject15, "lo"));
                                        xVar.a(qVar);
                                    }
                                    JSONObject jSONObjectOptJSONObject16 = jSONObjectOptJSONObject8.optJSONObject("dpClk");
                                    if (jSONObjectOptJSONObject16 != null) {
                                        k kVar = new k();
                                        kVar.a(jSONObjectOptJSONObject16.getInt("co"));
                                        kVar.b(jSONObjectOptJSONObject16.getInt("ct"));
                                        kVar.a(jSONObjectOptJSONObject16.getDouble("cx"));
                                        kVar.b(jSONObjectOptJSONObject16.getDouble("cy"));
                                        xVar.a(kVar);
                                        uVar5.a(kVar);
                                    }
                                    JSONObject jSONObjectOptJSONObject17 = jSONObjectOptJSONObject8.optJSONObject("dpInt");
                                    if (jSONObjectOptJSONObject17 != null) {
                                        l lVar = new l();
                                        lVar.a(jSONObjectOptJSONObject17.getInt("ct"));
                                        lVar.a(jSONObjectOptJSONObject17.getString(f.a.f3242b));
                                        lVar.b(jSONObjectOptJSONObject17.getString("pkg"));
                                        lVar.b(jSONObjectOptJSONObject17.getInt("ploy"));
                                        xVar.a(lVar);
                                        uVar5.a(lVar);
                                    }
                                    JSONObject jSONObjectOptJSONObject18 = jSONObjectOptJSONObject8.optJSONObject("vdp");
                                    if (jSONObjectOptJSONObject18 != null) {
                                        z zVar = new z();
                                        zVar.a(jSONObjectOptJSONObject18.getInt("co"));
                                        zVar.b(jSONObjectOptJSONObject18.getInt("ct"));
                                        xVar.a(zVar);
                                        uVar5.a(zVar);
                                    }
                                    uVar5.e(com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject8, "dpForbid"));
                                    wVar.a(xVar);
                                }
                                wVar.a(jSONObjectOptJSONObject.optBoolean("autoClose"));
                                wVar.b(jSONObjectOptJSONObject.optBoolean("manualClosable"));
                                wVar.c(jSONObjectOptJSONObject.optBoolean("isStopover"));
                                wVar.d(jSONObjectOptJSONObject.optBoolean("quickReward"));
                                wVar.e(jSONObjectOptJSONObject.optBoolean("isEndPage"));
                                wVar.f(jSONObjectOptJSONObject.optBoolean("isTexture"));
                                wVar.g(jSONObjectOptJSONObject.optBoolean("isWaitCache"));
                                wVar.c(jSONObjectOptJSONObject.optInt("maxTime"));
                                wVar.d(jSONObjectOptJSONObject.optInt("minTime"));
                                wVar.e(jSONObjectOptJSONObject.optInt("repeatNum"));
                                wVar.h(jSONObjectOptJSONObject.optBoolean("wifiPreload"));
                                wVar.i(jSONObjectOptJSONObject.optBoolean(C1244a.f35698z));
                                wVar.j(jSONObjectOptJSONObject.optBoolean("fullScreen"));
                                wVar.k(jSONObjectOptJSONObject.optBoolean("usePkg"));
                                wVar.l(jSONObjectOptJSONObject.optBoolean("newDp"));
                                wVar.g(jSONObjectOptJSONObject.optInt("preheat"));
                                wVar.m(jSONObjectOptJSONObject.optBoolean("listenCancel"));
                                wVar.n(jSONObjectOptJSONObject.optBoolean("clickBackClose"));
                                wVar.o(jSONObjectOptJSONObject.optBoolean("checkOtherDp"));
                                wVar.p(jSONObjectOptJSONObject.optBoolean("backgroundDim"));
                                wVar.q(jSONObjectOptJSONObject.optBoolean("autoPlay"));
                                wVar.i(jSONObjectOptJSONObject.optInt("orgID"));
                                wVar.f(jSONObjectOptJSONObject.optInt("callModel", 200));
                                wVar.j(jSONObjectOptJSONObject.optInt("contentType"));
                                wVar.f(jSONObjectOptJSONObject.optString("changeUrl"));
                                wVar.h(jSONObjectOptJSONObject.optInt("changeDelay", 5000));
                                wVar.g(jSONObjectOptJSONObject.optString("appID"));
                                wVar.k(jSONObjectOptJSONObject.optInt("acratio"));
                                wVar.r(com.octopus.ad.internal.c.k.g(jSONObjectOptJSONObject, "isShakeAd"));
                                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("adResponse");
                                ArrayList arrayList10 = new ArrayList();
                                if (b(jSONArrayOptJSONArray2)) {
                                    int i7 = 0;
                                    while (i7 < jSONArrayOptJSONArray2.length()) {
                                        JSONObject jSONObjectOptJSONObject19 = jSONArrayOptJSONArray2.optJSONObject(i7);
                                        if (jSONObjectOptJSONObject19 != null) {
                                            d dVar4 = new d();
                                            dVar4.a(jSONObjectOptJSONObject19.optString("extInfo"));
                                            dVar4.b(jSONObjectOptJSONObject19.optString("adid"));
                                            JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject19.optJSONArray("contentInfo");
                                            ArrayList arrayList11 = new ArrayList();
                                            String str70 = "packageName";
                                            String str71 = "landingPageUrl";
                                            String str72 = "appDownloadURL";
                                            if (b(jSONArrayOptJSONArray3)) {
                                                int i8 = 0;
                                                while (i8 < jSONArrayOptJSONArray3.length()) {
                                                    JSONObject jSONObjectOptJSONObject20 = jSONArrayOptJSONArray3.optJSONObject(i8);
                                                    JSONArray jSONArray6 = jSONArrayOptJSONArray2;
                                                    a aVar2 = new a();
                                                    int i9 = i7;
                                                    aVar2.a(jSONObjectOptJSONObject20.optString(ClickCommon.CLICK_SCENE_TEMPLATE));
                                                    aVar2.b(jSONObjectOptJSONObject20.optString("richText"));
                                                    aVar2.a(g.f.a(jSONObjectOptJSONObject20.optInt("renderType")));
                                                    JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject20.optJSONArray("adcontentSlot");
                                                    if (b(jSONArrayOptJSONArray4)) {
                                                        ArrayList arrayList12 = new ArrayList();
                                                        jSONArray4 = jSONArrayOptJSONArray3;
                                                        i4 = i8;
                                                        int i10 = 0;
                                                        while (i10 < jSONArrayOptJSONArray4.length()) {
                                                            JSONObject jSONObjectOptJSONObject21 = jSONArrayOptJSONArray4.optJSONObject(i10);
                                                            if (jSONObjectOptJSONObject21 != null) {
                                                                jSONArray5 = jSONArrayOptJSONArray4;
                                                                e eVar = new e();
                                                                i5 = i10;
                                                                int iD4 = com.octopus.ad.internal.c.k.d(jSONObjectOptJSONObject21, "resType");
                                                                str50 = str16;
                                                                wVar5 = wVar;
                                                                String strC = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str50);
                                                                arrayList5 = arrayList10;
                                                                String str73 = str15;
                                                                str55 = str69;
                                                                String strC2 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str73);
                                                                jSONObject3 = jSONObjectOptJSONObject19;
                                                                str49 = str8;
                                                                dVar3 = dVar4;
                                                                String strC3 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str49);
                                                                arrayList6 = arrayList11;
                                                                str48 = str14;
                                                                aVar = aVar2;
                                                                String strC4 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str48);
                                                                ArrayList arrayList13 = arrayList12;
                                                                String strC5 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, "content");
                                                                str47 = str6;
                                                                u uVar6 = uVar5;
                                                                try {
                                                                    String strC6 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str47);
                                                                    String strC7 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str72);
                                                                    String str74 = str72;
                                                                    String strC8 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str71);
                                                                    String str75 = str71;
                                                                    String strC9 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str70);
                                                                    String str76 = str70;
                                                                    str57 = str13;
                                                                    String strC10 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str57);
                                                                    str53 = str12;
                                                                    String strC11 = com.octopus.ad.internal.c.k.c(jSONObjectOptJSONObject21, str53);
                                                                    HashMap map = new HashMap();
                                                                    map.put(str50, strC);
                                                                    map.put(str73, strC2);
                                                                    map.put(str49, strC3);
                                                                    map.put(str48, strC4);
                                                                    map.put("imageMode", Integer.valueOf(iD4));
                                                                    String str77 = str11;
                                                                    map.put(str77, Integer.valueOf(uVar6.f()));
                                                                    if (!TextUtils.isEmpty(strC11)) {
                                                                        map.put(str53, strC11);
                                                                    }
                                                                    if (!TextUtils.isEmpty(strC10)) {
                                                                        map.put(str57, strC10);
                                                                    }
                                                                    if (!TextUtils.isEmpty(strC6)) {
                                                                        map.put(str47, strC6);
                                                                    }
                                                                    if (TextUtils.isEmpty(strC7)) {
                                                                        str52 = str74;
                                                                    } else {
                                                                        str52 = str74;
                                                                        map.put(str52, strC7);
                                                                    }
                                                                    if (TextUtils.isEmpty(strC8)) {
                                                                        str51 = str75;
                                                                    } else {
                                                                        str51 = str75;
                                                                        map.put(str51, strC8);
                                                                    }
                                                                    if (TextUtils.isEmpty(strC9)) {
                                                                        str56 = str76;
                                                                    } else {
                                                                        str56 = str76;
                                                                        map.put(str56, strC9);
                                                                    }
                                                                    if (iD4 == 0) {
                                                                        str58 = strC5;
                                                                        map.put("imageUrl", str58);
                                                                    } else {
                                                                        str58 = strC5;
                                                                        map.put("videoUrl", str58);
                                                                    }
                                                                    uVar = uVar6;
                                                                    try {
                                                                        uVar.a(map);
                                                                        str11 = str77;
                                                                        str54 = str73;
                                                                        eVar.b(jSONObjectOptJSONObject21.optString(TKDownloadReason.KSAD_TK_MD5));
                                                                        eVar.c(str58);
                                                                        eVar.d(strC11);
                                                                        String strOptString = jSONObjectOptJSONObject21.optString("mime");
                                                                        eVar.a(strOptString);
                                                                        arrayList7 = arrayList13;
                                                                        arrayList7.add(eVar);
                                                                        uVar.d(strOptString);
                                                                    } catch (Exception e2) {
                                                                        e = e2;
                                                                        com.octopus.ad.internal.o.a(new com.octopus.ad.internal.l("JSONERROR", str, str2, System.currentTimeMillis() - j2, e.getMessage()));
                                                                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e);
                                                                        return uVar;
                                                                    }
                                                                } catch (Exception e3) {
                                                                    e = e3;
                                                                    uVar = uVar6;
                                                                    com.octopus.ad.internal.o.a(new com.octopus.ad.internal.l("JSONERROR", str, str2, System.currentTimeMillis() - j2, e.getMessage()));
                                                                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e);
                                                                    return uVar;
                                                                }
                                                            } else {
                                                                arrayList5 = arrayList10;
                                                                jSONArray5 = jSONArrayOptJSONArray4;
                                                                jSONObject3 = jSONObjectOptJSONObject19;
                                                                i5 = i10;
                                                                arrayList6 = arrayList11;
                                                                arrayList7 = arrayList12;
                                                                str47 = str6;
                                                                str48 = str14;
                                                                str49 = str8;
                                                                str50 = str16;
                                                                wVar5 = wVar;
                                                                aVar = aVar2;
                                                                dVar3 = dVar4;
                                                                uVar = uVar5;
                                                                str51 = str71;
                                                                str52 = str72;
                                                                str53 = str12;
                                                                str54 = str15;
                                                                str55 = str69;
                                                                str56 = str70;
                                                                str57 = str13;
                                                            }
                                                            str6 = str47;
                                                            str71 = str51;
                                                            arrayList12 = arrayList7;
                                                            str13 = str57;
                                                            str70 = str56;
                                                            str69 = str55;
                                                            jSONArrayOptJSONArray4 = jSONArray5;
                                                            arrayList10 = arrayList5;
                                                            uVar5 = uVar;
                                                            str15 = str54;
                                                            wVar = wVar5;
                                                            str16 = str50;
                                                            str12 = str53;
                                                            i10 = i5 + 1;
                                                            str72 = str52;
                                                            aVar2 = aVar;
                                                            dVar4 = dVar3;
                                                            str8 = str49;
                                                            str14 = str48;
                                                            jSONObjectOptJSONObject19 = jSONObject3;
                                                            arrayList11 = arrayList6;
                                                        }
                                                        arrayList3 = arrayList10;
                                                        jSONObject2 = jSONObjectOptJSONObject19;
                                                        arrayList4 = arrayList11;
                                                        str36 = str6;
                                                        str37 = str14;
                                                        str38 = str8;
                                                        str39 = str16;
                                                        wVar4 = wVar;
                                                        dVar2 = dVar4;
                                                        uVar4 = uVar5;
                                                        str40 = str71;
                                                        str41 = str72;
                                                        str42 = str12;
                                                        str43 = str15;
                                                        str44 = str69;
                                                        str45 = str70;
                                                        str46 = str13;
                                                        aVar2.a(arrayList12);
                                                    } else {
                                                        arrayList3 = arrayList10;
                                                        jSONObject2 = jSONObjectOptJSONObject19;
                                                        jSONArray4 = jSONArrayOptJSONArray3;
                                                        arrayList4 = arrayList11;
                                                        i4 = i8;
                                                        str36 = str6;
                                                        str37 = str14;
                                                        str38 = str8;
                                                        str39 = str16;
                                                        wVar4 = wVar;
                                                        dVar2 = dVar4;
                                                        uVar4 = uVar5;
                                                        str40 = str71;
                                                        str41 = str72;
                                                        str42 = str12;
                                                        str43 = str15;
                                                        str44 = str69;
                                                        str45 = str70;
                                                        str46 = str13;
                                                    }
                                                    ArrayList arrayList14 = arrayList4;
                                                    arrayList14.add(aVar2);
                                                    i8 = i4 + 1;
                                                    str6 = str36;
                                                    str14 = str37;
                                                    str71 = str40;
                                                    str13 = str46;
                                                    str70 = str45;
                                                    str69 = str44;
                                                    jSONArrayOptJSONArray2 = jSONArray6;
                                                    i7 = i9;
                                                    uVar5 = uVar4;
                                                    arrayList11 = arrayList14;
                                                    str15 = str43;
                                                    wVar = wVar4;
                                                    arrayList10 = arrayList3;
                                                    str16 = str39;
                                                    str12 = str42;
                                                    jSONArrayOptJSONArray3 = jSONArray4;
                                                    str72 = str41;
                                                    dVar4 = dVar2;
                                                    str8 = str38;
                                                    jSONObjectOptJSONObject19 = jSONObject2;
                                                }
                                                jSONArray = jSONArrayOptJSONArray2;
                                                arrayList2 = arrayList10;
                                                i3 = i7;
                                                jSONObject = jSONObjectOptJSONObject19;
                                                dVar = dVar4;
                                                ArrayList arrayList15 = arrayList11;
                                                str25 = str72;
                                                str19 = str12;
                                                str26 = str6;
                                                str27 = str14;
                                                str28 = str8;
                                                str22 = str15;
                                                str29 = str16;
                                                wVar3 = wVar;
                                                uVar3 = uVar5;
                                                str30 = str69;
                                                str31 = str71;
                                                str32 = str70;
                                                str33 = str13;
                                                dVar.a(arrayList15);
                                            } else {
                                                jSONArray = jSONArrayOptJSONArray2;
                                                arrayList2 = arrayList10;
                                                i3 = i7;
                                                jSONObject = jSONObjectOptJSONObject19;
                                                dVar = dVar4;
                                                str25 = "appDownloadURL";
                                                str19 = str12;
                                                str26 = str6;
                                                str27 = str14;
                                                str28 = str8;
                                                str22 = str15;
                                                str29 = str16;
                                                wVar3 = wVar;
                                                uVar3 = uVar5;
                                                str30 = str69;
                                                str31 = "landingPageUrl";
                                                str32 = "packageName";
                                                str33 = str13;
                                            }
                                            JSONObject jSONObject7 = jSONObject;
                                            JSONObject jSONObjectOptJSONObject22 = jSONObject7.optJSONObject("adLogo");
                                            if (jSONObjectOptJSONObject22 != null) {
                                                C0711c c0711c = new C0711c();
                                                c0711c.b(jSONObjectOptJSONObject22.optString("adLabel"));
                                                c0711c.a(jSONObjectOptJSONObject22.optString("adLabelUrl"));
                                                c0711c.d(jSONObjectOptJSONObject22.optString("sourceLabel"));
                                                c0711c.c(jSONObjectOptJSONObject22.optString("sourceUrl"));
                                                dVar.a(c0711c);
                                            }
                                            dVar.a(jSONObject7.optInt("price"));
                                            dVar.c(jSONObject7.optString("tagid"));
                                            str6 = str26;
                                            str8 = str28;
                                            dVar.a(jSONObject7.optLong("validTime", com.octopus.ad.internal.q.f34985y));
                                            b bVar = new b();
                                            JSONObject jSONObjectOptJSONObject23 = jSONObject7.optJSONObject("interactInfo");
                                            if (jSONObjectOptJSONObject23 != null) {
                                                JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject23.optJSONArray("thirdpartInfo");
                                                if (b(jSONArrayOptJSONArray5)) {
                                                    ArrayList arrayList16 = new ArrayList();
                                                    int i11 = 0;
                                                    while (i11 < jSONArrayOptJSONArray5.length()) {
                                                        JSONObject jSONObjectOptJSONObject24 = jSONArrayOptJSONArray5.optJSONObject(i11);
                                                        if (jSONObjectOptJSONObject24 != null) {
                                                            jSONArray3 = jSONArrayOptJSONArray5;
                                                            i iVar = new i();
                                                            str35 = str29;
                                                            iVar.b(jSONObjectOptJSONObject24.optString(Constants.KEYS.EXPOSED_CLICK_URL_KEY));
                                                            iVar.a(jSONObjectOptJSONObject24.optString("viewUrl"));
                                                            iVar.c(jSONObjectOptJSONObject24.optString("dpSucessUrl"));
                                                            iVar.d(jSONObjectOptJSONObject24.optString("downSucessUrl"));
                                                            iVar.e(jSONObjectOptJSONObject24.optString("lurl"));
                                                            iVar.f(jSONObjectOptJSONObject24.optString("convertUrl"));
                                                            iVar.j(jSONObjectOptJSONObject24.optString("onFinish"));
                                                            iVar.h(jSONObjectOptJSONObject24.optString("onPause"));
                                                            iVar.i(jSONObjectOptJSONObject24.optString("onRecover"));
                                                            iVar.g(jSONObjectOptJSONObject24.optString("onStart"));
                                                            arrayList16.add(iVar);
                                                        } else {
                                                            jSONArray3 = jSONArrayOptJSONArray5;
                                                            str35 = str29;
                                                        }
                                                        i11++;
                                                        jSONArrayOptJSONArray5 = jSONArray3;
                                                        str29 = str35;
                                                    }
                                                    str23 = str29;
                                                    bVar.b((List<i>) arrayList16);
                                                } else {
                                                    str23 = str29;
                                                }
                                                bVar.a(com.octopus.ad.internal.c.k.a(jSONObjectOptJSONObject23.optJSONArray("impTrackDomainList")));
                                                bVar.b(com.octopus.ad.internal.c.k.a(jSONObjectOptJSONObject23.optJSONArray("clkTrackDomainList")));
                                                JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject23.optJSONArray("videoTrackers");
                                                if (b(jSONArrayOptJSONArray6)) {
                                                    ArrayList arrayList17 = new ArrayList();
                                                    str21 = str27;
                                                    int i12 = 0;
                                                    while (i12 < jSONArrayOptJSONArray6.length()) {
                                                        JSONObject jSONObjectOptJSONObject25 = jSONArrayOptJSONArray6.optJSONObject(i12);
                                                        if (jSONObjectOptJSONObject25 != null) {
                                                            jSONArray2 = jSONArrayOptJSONArray6;
                                                            aa aaVar = new aa();
                                                            str34 = str33;
                                                            aaVar.a(jSONObjectOptJSONObject25.optString("start"));
                                                            aaVar.b(jSONObjectOptJSONObject25.optString(C1244a.f35682j));
                                                            aaVar.c(jSONObjectOptJSONObject25.optString("quarter"));
                                                            aaVar.d(jSONObjectOptJSONObject25.optString("half"));
                                                            aaVar.e(jSONObjectOptJSONObject25.optString("threeQuarter"));
                                                            aaVar.f(jSONObjectOptJSONObject25.optString("complete"));
                                                            aaVar.g(jSONObjectOptJSONObject25.optString("exit"));
                                                            arrayList17.add(aaVar);
                                                        } else {
                                                            jSONArray2 = jSONArrayOptJSONArray6;
                                                            str34 = str33;
                                                        }
                                                        i12++;
                                                        jSONArrayOptJSONArray6 = jSONArray2;
                                                        str33 = str34;
                                                    }
                                                    str20 = str33;
                                                    bVar.a((List<aa>) arrayList17);
                                                } else {
                                                    str21 = str27;
                                                    str20 = str33;
                                                }
                                                bVar.d(jSONObjectOptJSONObject23.optString("apkName"));
                                                bVar.g(jSONObjectOptJSONObject23.optString("appDesc"));
                                                bVar.h(jSONObjectOptJSONObject23.optString(str25));
                                                bVar.f(jSONObjectOptJSONObject23.optString("appStoreID"));
                                                bVar.a(jSONObjectOptJSONObject23.optString(str31));
                                                bVar.b(jSONObjectOptJSONObject23.optString("deeplinkUrl"));
                                                bVar.c(jSONObjectOptJSONObject23.optString(com.anythink.core.common.m.f.f5775Y));
                                                bVar.a(jSONObjectOptJSONObject23.optInt("interactType"));
                                                bVar.e(jSONObjectOptJSONObject23.optString(str32));
                                                bVar.b(jSONObjectOptJSONObject23.optBoolean("checkSuccess"));
                                                bVar.a(jSONObjectOptJSONObject23.optBoolean("useBuiltInBrow"));
                                                bVar.c(com.octopus.ad.internal.c.k.a(jSONObjectOptJSONObject23, "dpCancelOpenUrl", true));
                                                bVar.d(jSONObjectOptJSONObject23.optBoolean("preloadWebView"));
                                                bVar.b(jSONObjectOptJSONObject23.optInt("openExternal"));
                                                JSONObject jSONObjectOptJSONObject26 = jSONObjectOptJSONObject23.optJSONObject("complianceInfo");
                                                if (jSONObjectOptJSONObject26 != null) {
                                                    ComplianceInfo complianceInfo = new ComplianceInfo();
                                                    complianceInfo.setAppName(jSONObjectOptJSONObject26.optString(cl.f49061p));
                                                    complianceInfo.setAppVersion(jSONObjectOptJSONObject26.optString("appVersion"));
                                                    complianceInfo.setDeveloperName(jSONObjectOptJSONObject26.optString("developerName"));
                                                    complianceInfo.setPrivacyUrl(jSONObjectOptJSONObject26.optString("privacyUrl"));
                                                    complianceInfo.setPermissionsUrl(jSONObjectOptJSONObject26.optString("permissionsUrl"));
                                                    complianceInfo.setFunctionDescUrl(jSONObjectOptJSONObject26.optString("functionDescUrl"));
                                                    complianceInfo.setAppIconURL(jSONObjectOptJSONObject26.optString("appIconURL"));
                                                    bVar.a(complianceInfo);
                                                }
                                                JSONObject jSONObjectOptJSONObject27 = jSONObjectOptJSONObject23.optJSONObject("wxReq");
                                                if (jSONObjectOptJSONObject27 != null) {
                                                    com.octopus.ad.a.i iVar2 = new com.octopus.ad.a.i();
                                                    iVar2.a(jSONObjectOptJSONObject27.optString("path"));
                                                    iVar2.b(jSONObjectOptJSONObject27.optString("appId"));
                                                    iVar2.c(jSONObjectOptJSONObject27.optString("userName"));
                                                    bVar.a(iVar2);
                                                }
                                                JSONObject jSONObjectB2 = com.octopus.ad.internal.c.k.b(jSONObjectOptJSONObject23, "videoMacroExt");
                                                if (jSONObjectB2 != null) {
                                                    com.octopus.ad.a.h hVar2 = new com.octopus.ad.a.h();
                                                    hVar2.a(com.octopus.ad.internal.c.k.c(jSONObjectB2, "__oct_video_start_ts__"));
                                                    hVar2.b(com.octopus.ad.internal.c.k.c(jSONObjectB2, "__oct_video_end_ts__"));
                                                    uVar3.a(hVar2);
                                                }
                                                JSONObject jSONObjectB3 = com.octopus.ad.internal.c.k.b(jSONObjectOptJSONObject23, "clkMacroExt");
                                                if (jSONObjectB3 != null) {
                                                    com.octopus.ad.a.e eVar2 = new com.octopus.ad.a.e();
                                                    eVar2.d(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_down_x__"));
                                                    eVar2.e(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_down_y__"));
                                                    eVar2.f(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_down_time__"));
                                                    eVar2.a(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_up_x__"));
                                                    eVar2.b(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_up_y__"));
                                                    eVar2.c(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_up_time__"));
                                                    eVar2.g(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_x_max_acc__"));
                                                    eVar2.h(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_y_max_acc__"));
                                                    eVar2.i(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_z_max_acc__"));
                                                    eVar2.k(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_shake_acc__"));
                                                    eVar2.l(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_shake_ang__"));
                                                    eVar2.j(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_shake_cnt__"));
                                                    eVar2.m(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_turn_x__"));
                                                    eVar2.n(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_turn_y__"));
                                                    eVar2.o(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_turn_z__"));
                                                    eVar2.p(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_turn_time__"));
                                                    eVar2.q(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_s_time__"));
                                                    eVar2.r(com.octopus.ad.internal.c.k.c(jSONObjectB3, "__oct_ms_time__"));
                                                    eVar2.a(com.octopus.ad.internal.c.k.d(jSONObjectB3, "accMultiple"));
                                                    JSONObject jSONObjectB4 = com.octopus.ad.internal.c.k.b(jSONObjectB3, "__oct_click_type__");
                                                    if (jSONObjectB4 != null) {
                                                        e.a aVar3 = new e.a();
                                                        str24 = str30;
                                                        aVar3.a(com.octopus.ad.internal.c.k.c(jSONObjectB4, str24));
                                                        aVar3.b(com.octopus.ad.internal.c.k.c(jSONObjectB4, "shake"));
                                                        aVar3.c(com.octopus.ad.internal.c.k.c(jSONObjectB4, "scroll"));
                                                        eVar2.a(aVar3);
                                                    } else {
                                                        str24 = str30;
                                                    }
                                                    bVar.a(eVar2);
                                                } else {
                                                    str24 = str30;
                                                }
                                                JSONObject jSONObjectOptJSONObject28 = jSONObjectOptJSONObject23.optJSONObject("followTrackExt");
                                                if (jSONObjectOptJSONObject28 != null) {
                                                    b.a aVar4 = new b.a();
                                                    aVar4.a(a(jSONObjectOptJSONObject28.optJSONArray("open")));
                                                    aVar4.b(a(jSONObjectOptJSONObject28.optJSONArray("beginDownload")));
                                                    aVar4.c(a(jSONObjectOptJSONObject28.optJSONArray("download")));
                                                    aVar4.d(a(jSONObjectOptJSONObject28.optJSONArray("beginInstall")));
                                                    aVar4.e(a(jSONObjectOptJSONObject28.optJSONArray("install")));
                                                    aVar4.f(a(jSONObjectOptJSONObject28.optJSONArray("active")));
                                                    aVar4.g(a(jSONObjectOptJSONObject28.optJSONArray("close")));
                                                    aVar4.h(a(jSONObjectOptJSONObject28.optJSONArray("showSlide")));
                                                    aVar4.j(a(jSONObjectOptJSONObject28.optJSONArray("pageClose")));
                                                    aVar4.i(a(jSONObjectOptJSONObject28.optJSONArray("pageLoad")));
                                                    aVar4.k(a(jSONObjectOptJSONObject28.optJSONArray("pageAction")));
                                                    aVar4.l(a(jSONObjectOptJSONObject28.optJSONArray("deepLinkSuccess")));
                                                    aVar4.m(a(jSONObjectOptJSONObject28.optJSONArray("deepLinkFail")));
                                                    aVar4.n(a(jSONObjectOptJSONObject28.optJSONArray("dpAppInstalled")));
                                                    aVar4.o(a(jSONObjectOptJSONObject28.optJSONArray("dpAppNotInstalled")));
                                                    bVar.a(aVar4);
                                                }
                                                JSONObject jSONObjectOptJSONObject29 = jSONObjectOptJSONObject23.optJSONObject("videoTrackExt");
                                                if (jSONObjectOptJSONObject29 != null) {
                                                    b.C0710b c0710b = new b.C0710b();
                                                    c0710b.a(a(jSONObjectOptJSONObject29.optJSONArray("start")));
                                                    c0710b.b(a(jSONObjectOptJSONObject29.optJSONArray(C1244a.f35682j)));
                                                    c0710b.c(a(jSONObjectOptJSONObject29.optJSONArray("continue")));
                                                    c0710b.d(a(jSONObjectOptJSONObject29.optJSONArray("exit")));
                                                    c0710b.e(a(jSONObjectOptJSONObject29.optJSONArray("complete")));
                                                    JSONArray jSONArrayOptJSONArray7 = jSONObjectOptJSONObject29.optJSONArray("showTrack");
                                                    ArrayList arrayList18 = new ArrayList();
                                                    if (b(jSONArrayOptJSONArray7)) {
                                                        for (int i13 = 0; i13 < jSONArrayOptJSONArray7.length(); i13++) {
                                                            JSONObject jSONObjectOptJSONObject30 = jSONArrayOptJSONArray7.optJSONObject(i13);
                                                            if (jSONObjectOptJSONObject30 != null) {
                                                                b.C0710b.a aVar5 = new b.C0710b.a();
                                                                aVar5.a(jSONObjectOptJSONObject30.optInt(bv.aI));
                                                                aVar5.a(a(jSONObjectOptJSONObject30.optJSONArray("url")));
                                                                arrayList18.add(aVar5);
                                                            }
                                                        }
                                                        c0710b.f(arrayList18);
                                                    }
                                                    bVar.a(c0710b);
                                                }
                                                dVar.a(bVar);
                                            } else {
                                                str23 = str29;
                                                str21 = str27;
                                                str20 = str33;
                                                str24 = str30;
                                            }
                                            arrayList10 = arrayList2;
                                            arrayList10.add(dVar);
                                        } else {
                                            jSONArray = jSONArrayOptJSONArray2;
                                            i3 = i7;
                                            str19 = str12;
                                            str20 = str13;
                                            str21 = str14;
                                            str22 = str15;
                                            str23 = str16;
                                            wVar3 = wVar;
                                            uVar3 = uVar5;
                                            str24 = str69;
                                        }
                                        i7 = i3 + 1;
                                        str69 = str24;
                                        str15 = str22;
                                        jSONArrayOptJSONArray2 = jSONArray;
                                        uVar5 = uVar3;
                                        str12 = str19;
                                        wVar = wVar3;
                                        str16 = str23;
                                        str14 = str21;
                                        str13 = str20;
                                    }
                                    wVar2 = wVar;
                                    uVar2 = uVar5;
                                    str4 = str12;
                                    str5 = str13;
                                    str7 = str14;
                                    str9 = str15;
                                    str10 = str16;
                                    wVar2.a(arrayList10);
                                } else {
                                    wVar2 = wVar;
                                    uVar2 = uVar5;
                                    str4 = str12;
                                    str5 = str13;
                                    str7 = str14;
                                    str9 = str15;
                                    str10 = str16;
                                }
                                arrayList = arrayList9;
                                arrayList.add(wVar2);
                            } else {
                                str4 = str61;
                                str5 = str62;
                                str6 = str63;
                                str7 = str64;
                                str8 = str65;
                                str9 = str66;
                                str10 = str67;
                                str11 = str68;
                                uVar2 = uVar5;
                                arrayList = arrayList8;
                                i2 = i6;
                            }
                            i6 = i2 + 1;
                            uVar5 = uVar2;
                            arrayList8 = arrayList;
                            str61 = str4;
                            str68 = str11;
                            str66 = str9;
                            str64 = str7;
                            str63 = str6;
                            str67 = str10;
                            str65 = str8;
                            str62 = str5;
                        }
                        uVar = uVar5;
                        uVar.a(arrayList8);
                        return uVar;
                    }
                } catch (Exception e4) {
                    e = e4;
                    uVar = uVar5;
                }
            }
            return uVar5;
        }

        public void a(Boolean bool) {
            this.f33430n = bool;
        }

        public void a(k kVar) {
            this.f33434r = kVar;
        }

        public void a(l lVar) {
            this.f33435s = lVar;
        }

        public void a(z zVar) {
            this.f33436t = zVar;
        }

        public void a(com.octopus.ad.a.h hVar) {
            this.f33437u = hVar;
        }

        public void a(ShakeValue shakeValue) {
            this.f33438v = shakeValue;
        }

        public void a(long j2) {
            this.f33433q = j2;
        }

        public void a(Map<String, Object> map) {
            this.f33440x = map;
        }

        public void a(List<w> list) {
            this.f33439w = list;
        }

        public static u a(InputStream inputStream, String str, String str2, long j2, boolean z2) {
            if (inputStream == null) {
                return null;
            }
            try {
                String strA = a(inputStream);
                if (TextUtils.isEmpty(strA)) {
                    return null;
                }
                com.octopus.ad.d.b.f.d("OctopusAd_Time", "是否缓存广告：" + z2);
                if (z2) {
                    com.octopus.ad.internal.c.o.a(com.octopus.ad.internal.q.a().l(), "adPreRsp_" + str, strA + "@#&!" + str2 + "@#&!" + System.currentTimeMillis());
                }
                return b(str, str2, j2, strA, false);
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                return null;
            }
        }

        public static u a(String str, String str2, long j2, String str3, boolean z2) {
            try {
                return b(str, str2, j2, str3, z2);
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                return null;
            }
        }

        private static String a(InputStream inputStream) throws IOException {
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

        private static ArrayList<String> a(JSONArray jSONArray) throws JSONException {
            ArrayList<String> arrayList = new ArrayList<>();
            if (b(jSONArray)) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.getString(i2));
                }
            }
            return arrayList;
        }

        public void a(m mVar) {
            List<String> listB;
            if (mVar == null || (listB = mVar.b()) == null || listB.isEmpty()) {
                return;
            }
            List<String> listA = mVar.a();
            if (listA != null && !listA.isEmpty()) {
                Iterator<String> it = listA.iterator();
                while (it.hasNext()) {
                    new com.octopus.ad.internal.i(it.next()).b();
                }
                b(listB).sendEmptyMessageDelayed(0, mVar.c());
                return;
            }
            Iterator<String> it2 = listB.iterator();
            while (it2.hasNext()) {
                new com.octopus.ad.internal.i(it2.next()).b();
            }
        }

        private static boolean b(JSONArray jSONArray) {
            return jSONArray != null && jSONArray.length() > 0;
        }

        private static Handler b(final List<String> list) {
            HandlerThread handlerThread = new HandlerThread("OctHandlerThread");
            handlerThread.start();
            return new Handler(handlerThread.getLooper()) { // from class: com.octopus.ad.a.c.u.1
                @Override // android.os.Handler
                public void handleMessage(@NonNull Message message) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        new com.octopus.ad.internal.i((String) it.next()).b();
                    }
                }
            };
        }
    }

    public static class v {

        /* renamed from: a, reason: collision with root package name */
        private int f33442a;

        /* renamed from: b, reason: collision with root package name */
        private int f33443b;

        /* renamed from: c, reason: collision with root package name */
        private int f33444c;

        /* renamed from: d, reason: collision with root package name */
        private int f33445d;

        /* renamed from: e, reason: collision with root package name */
        private int f33446e;

        /* renamed from: f, reason: collision with root package name */
        private int f33447f;

        /* renamed from: g, reason: collision with root package name */
        private int f33448g;

        /* renamed from: h, reason: collision with root package name */
        private double f33449h;

        /* renamed from: i, reason: collision with root package name */
        private double f33450i;

        /* renamed from: j, reason: collision with root package name */
        private String f33451j;

        public v() {
            this.f33444c = 1;
            this.f33449h = 1.5d;
        }

        public int a() {
            return this.f33442a;
        }

        public int b() {
            return this.f33443b;
        }

        public int c() {
            return this.f33445d;
        }

        public double d() {
            return this.f33449h;
        }

        public String e() {
            return this.f33451j;
        }

        public double f() {
            return this.f33450i;
        }

        public int g() {
            return this.f33444c;
        }

        public int h() {
            return this.f33446e;
        }

        public int i() {
            return this.f33448g;
        }

        public void a(int i2) {
            this.f33442a = i2;
        }

        public void b(int i2) {
            this.f33443b = i2;
        }

        public void c(int i2) {
            this.f33445d = i2;
        }

        public void d(int i2) {
            this.f33444c = i2;
        }

        public void e(int i2) {
            this.f33446e = i2;
        }

        public void f(int i2) {
            this.f33447f = i2;
        }

        public void g(int i2) {
            this.f33448g = i2;
        }

        public void a(double d2) {
            this.f33449h = d2;
        }

        public void b(double d2) {
            this.f33450i = d2;
        }

        public v(double d2, double d3, int i2, String str, int i3, int i4, int i5, int i6) {
            this.f33449h = d2;
            this.f33445d = i2;
            this.f33450i = d3;
            this.f33451j = str;
            this.f33444c = i3;
            this.f33443b = i4;
            this.f33446e = i5;
            this.f33447f = i6;
        }

        public void a(String str) {
            this.f33451j = str;
        }
    }

    public static class w {

        /* renamed from: A, reason: collision with root package name */
        private boolean f33452A;

        /* renamed from: B, reason: collision with root package name */
        private boolean f33453B;

        /* renamed from: C, reason: collision with root package name */
        private boolean f33454C;

        /* renamed from: D, reason: collision with root package name */
        private boolean f33455D;

        /* renamed from: E, reason: collision with root package name */
        private boolean f33456E;

        /* renamed from: F, reason: collision with root package name */
        private boolean f33457F;

        /* renamed from: G, reason: collision with root package name */
        private boolean f33458G;

        /* renamed from: H, reason: collision with root package name */
        private boolean f33459H;

        /* renamed from: I, reason: collision with root package name */
        private boolean f33460I;

        /* renamed from: J, reason: collision with root package name */
        private String f33461J;

        /* renamed from: K, reason: collision with root package name */
        private int f33462K;

        /* renamed from: L, reason: collision with root package name */
        private int f33463L;

        /* renamed from: M, reason: collision with root package name */
        private int f33464M;

        /* renamed from: N, reason: collision with root package name */
        private int f33465N;

        /* renamed from: O, reason: collision with root package name */
        private String f33466O;

        /* renamed from: P, reason: collision with root package name */
        private int f33467P;

        /* renamed from: Q, reason: collision with root package name */
        private List<d> f33468Q;

        /* renamed from: a, reason: collision with root package name */
        private String f33469a;

        /* renamed from: b, reason: collision with root package name */
        private String f33470b;

        /* renamed from: c, reason: collision with root package name */
        private g.a f33471c;

        /* renamed from: d, reason: collision with root package name */
        private int f33472d;

        /* renamed from: e, reason: collision with root package name */
        private String f33473e;

        /* renamed from: f, reason: collision with root package name */
        private g.h f33474f;

        /* renamed from: g, reason: collision with root package name */
        private int f33475g;

        /* renamed from: h, reason: collision with root package name */
        private String f33476h;

        /* renamed from: i, reason: collision with root package name */
        private String f33477i;

        /* renamed from: j, reason: collision with root package name */
        private f f33478j;

        /* renamed from: k, reason: collision with root package name */
        private p f33479k;

        /* renamed from: l, reason: collision with root package name */
        private x f33480l;

        /* renamed from: m, reason: collision with root package name */
        private boolean f33481m;

        /* renamed from: n, reason: collision with root package name */
        private boolean f33482n;

        /* renamed from: o, reason: collision with root package name */
        private boolean f33483o;

        /* renamed from: p, reason: collision with root package name */
        private boolean f33484p;

        /* renamed from: q, reason: collision with root package name */
        private boolean f33485q;

        /* renamed from: r, reason: collision with root package name */
        private boolean f33486r;

        /* renamed from: s, reason: collision with root package name */
        private boolean f33487s;

        /* renamed from: t, reason: collision with root package name */
        private int f33488t;

        /* renamed from: u, reason: collision with root package name */
        private int f33489u;

        /* renamed from: v, reason: collision with root package name */
        private int f33490v;

        /* renamed from: w, reason: collision with root package name */
        private int f33491w;

        /* renamed from: x, reason: collision with root package name */
        private boolean f33492x;

        /* renamed from: y, reason: collision with root package name */
        private boolean f33493y;

        /* renamed from: z, reason: collision with root package name */
        private boolean f33494z;

        public boolean A() {
            return this.f33453B;
        }

        public int B() {
            return this.f33464M;
        }

        public int C() {
            return this.f33491w;
        }

        public boolean D() {
            return this.f33454C;
        }

        public boolean E() {
            return this.f33455D;
        }

        public boolean F() {
            return this.f33456E;
        }

        public boolean G() {
            return this.f33457F;
        }

        public boolean H() {
            return this.f33458G;
        }

        public boolean I() {
            return this.f33459H;
        }

        public boolean J() {
            return this.f33460I;
        }

        public String K() {
            return this.f33461J;
        }

        public int L() {
            return this.f33462K;
        }

        public int M() {
            return this.f33467P;
        }

        public List<d> N() {
            return this.f33468Q;
        }

        public int O() {
            List<d> list = this.f33468Q;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public String a() {
            return this.f33469a;
        }

        public String b() {
            return this.f33470b;
        }

        public g.a c() {
            return this.f33471c;
        }

        public int d() {
            return this.f33472d;
        }

        public String e() {
            return this.f33473e;
        }

        public g.h f() {
            return this.f33474f;
        }

        public int g() {
            return this.f33475g;
        }

        public String h() {
            return this.f33476h;
        }

        public String i() {
            return this.f33477i;
        }

        public f j() {
            return this.f33478j;
        }

        public p k() {
            return this.f33479k;
        }

        public x l() {
            return this.f33480l;
        }

        public boolean m() {
            return this.f33481m;
        }

        public boolean n() {
            return this.f33482n;
        }

        public boolean o() {
            return this.f33483o;
        }

        public boolean p() {
            return this.f33484p;
        }

        public boolean q() {
            return this.f33485q;
        }

        public boolean r() {
            return this.f33486r;
        }

        public boolean s() {
            return this.f33487s;
        }

        public int t() {
            return this.f33488t;
        }

        public int u() {
            return this.f33489u;
        }

        public int v() {
            return this.f33490v;
        }

        public boolean w() {
            return this.f33492x;
        }

        public boolean x() {
            return this.f33493y;
        }

        public boolean y() {
            return this.f33494z;
        }

        public boolean z() {
            return this.f33452A;
        }

        public void a(String str) {
            this.f33469a = str;
        }

        public void b(String str) {
            this.f33470b = str;
        }

        public void c(String str) {
            this.f33473e = str;
        }

        public void d(String str) {
            this.f33476h = str;
        }

        public void e(String str) {
            this.f33477i = str;
        }

        public void f(boolean z2) {
            this.f33486r = z2;
        }

        public void g(boolean z2) {
            this.f33487s = z2;
        }

        public void h(boolean z2) {
            this.f33492x = z2;
        }

        public void i(boolean z2) {
            this.f33493y = z2;
        }

        public void j(boolean z2) {
            this.f33494z = z2;
        }

        public void k(boolean z2) {
            this.f33452A = z2;
        }

        public void l(boolean z2) {
            this.f33453B = z2;
        }

        public void m(boolean z2) {
            this.f33454C = z2;
        }

        public void n(boolean z2) {
            this.f33455D = z2;
        }

        public void o(boolean z2) {
            this.f33456E = z2;
        }

        public void p(boolean z2) {
            this.f33457F = z2;
        }

        public void q(boolean z2) {
            this.f33458G = z2;
        }

        public void r(boolean z2) {
            this.f33460I = z2;
        }

        public void a(g.a aVar) {
            this.f33471c = aVar;
        }

        public void b(int i2) {
            this.f33475g = i2;
        }

        public void c(boolean z2) {
            this.f33483o = z2;
        }

        public void d(boolean z2) {
            this.f33484p = z2;
        }

        public void e(boolean z2) {
            this.f33485q = z2;
        }

        public void f(int i2) {
            this.f33464M = i2;
        }

        public void g(int i2) {
            this.f33491w = i2;
        }

        public void h(int i2) {
            this.f33462K = i2;
        }

        public void i(int i2) {
            this.f33463L = i2;
        }

        public void j(int i2) {
            this.f33465N = i2;
        }

        public void k(int i2) {
            this.f33467P = i2;
        }

        public void a(int i2) {
            this.f33472d = i2;
        }

        public void b(boolean z2) {
            this.f33482n = z2;
        }

        public void c(int i2) {
            this.f33488t = i2;
        }

        public void d(int i2) {
            this.f33489u = i2;
        }

        public void e(int i2) {
            this.f33490v = i2;
        }

        public void f(String str) {
            this.f33461J = str;
        }

        public void g(String str) {
            this.f33466O = str;
        }

        public void a(g.h hVar) {
            this.f33474f = hVar;
        }

        public void a(f fVar) {
            this.f33478j = fVar;
        }

        public void a(p pVar) {
            this.f33479k = pVar;
        }

        public void a(x xVar) {
            this.f33480l = xVar;
        }

        public void a(boolean z2) {
            this.f33481m = z2;
        }

        public void a(List<d> list) {
            this.f33468Q = list;
        }
    }

    public static class x {

        /* renamed from: a, reason: collision with root package name */
        private r f33495a;

        /* renamed from: b, reason: collision with root package name */
        private g f33496b;

        /* renamed from: c, reason: collision with root package name */
        private o f33497c;

        /* renamed from: d, reason: collision with root package name */
        private h f33498d;

        /* renamed from: e, reason: collision with root package name */
        private y f33499e;

        /* renamed from: f, reason: collision with root package name */
        private j f33500f;

        /* renamed from: g, reason: collision with root package name */
        private q f33501g;

        /* renamed from: h, reason: collision with root package name */
        private k f33502h;

        /* renamed from: i, reason: collision with root package name */
        private l f33503i;

        /* renamed from: j, reason: collision with root package name */
        private z f33504j;

        public void a(r rVar) {
            this.f33495a = rVar;
        }

        public j b() {
            return this.f33500f;
        }

        public q c() {
            return this.f33501g;
        }

        public g a() {
            return this.f33496b;
        }

        public void a(g gVar) {
            this.f33496b = gVar;
        }

        public void a(o oVar) {
            this.f33497c = oVar;
        }

        public void a(h hVar) {
            this.f33498d = hVar;
        }

        public void a(y yVar) {
            this.f33499e = yVar;
        }

        public void a(j jVar) {
            this.f33500f = jVar;
        }

        public void a(q qVar) {
            this.f33501g = qVar;
        }

        public void a(k kVar) {
            this.f33502h = kVar;
        }

        public void a(l lVar) {
            this.f33503i = lVar;
        }

        public void a(z zVar) {
            this.f33504j = zVar;
        }
    }

    public static class y {

        /* renamed from: a, reason: collision with root package name */
        private int f33505a;

        public void a(int i2) {
            this.f33505a = i2;
        }
    }

    public static class z {

        /* renamed from: a, reason: collision with root package name */
        private int f33506a;

        /* renamed from: b, reason: collision with root package name */
        private int f33507b;

        public int a() {
            return this.f33506a;
        }

        public int b() {
            return this.f33507b;
        }

        public void a(int i2) {
            this.f33506a = i2;
        }

        public void b(int i2) {
            this.f33507b = i2;
        }
    }
}
