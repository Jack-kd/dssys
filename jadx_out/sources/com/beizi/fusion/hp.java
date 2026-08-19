package com.beizi.fusion;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class hp {

    /* renamed from: a, reason: collision with root package name */
    public static final fp f14362a;

    /* renamed from: b, reason: collision with root package name */
    public static final gp f14363b;

    /* renamed from: c, reason: collision with root package name */
    public static final fp f14364c;

    /* renamed from: d, reason: collision with root package name */
    public static final fp f14365d;

    /* renamed from: e, reason: collision with root package name */
    public static final gp f14366e;

    /* renamed from: f, reason: collision with root package name */
    public static final fp f14367f;

    /* renamed from: g, reason: collision with root package name */
    public static final gp f14368g;

    /* renamed from: h, reason: collision with root package name */
    public static final fp f14369h;

    /* renamed from: i, reason: collision with root package name */
    public static final gp f14370i;

    /* renamed from: j, reason: collision with root package name */
    public static final fp f14371j;

    /* renamed from: k, reason: collision with root package name */
    public static final gp f14372k;

    /* renamed from: l, reason: collision with root package name */
    public static final fp f14373l;

    /* renamed from: m, reason: collision with root package name */
    public static final fp f14374m;

    /* renamed from: n, reason: collision with root package name */
    public static final fp f14375n;

    /* renamed from: o, reason: collision with root package name */
    public static final fp f14376o;

    /* renamed from: p, reason: collision with root package name */
    public static final gp f14377p;

    /* renamed from: q, reason: collision with root package name */
    public static final fp f14378q;

    /* renamed from: r, reason: collision with root package name */
    public static final fp f14379r;

    /* renamed from: s, reason: collision with root package name */
    public static final gp f14380s;

    /* renamed from: t, reason: collision with root package name */
    public static final fp f14381t;

    /* renamed from: u, reason: collision with root package name */
    public static final gp f14382u;

    /* renamed from: v, reason: collision with root package name */
    public static final gp f14383v;

    public class a extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Character ch) throws IOException {
            rgVar.c(ch == null ? null : String.valueOf(ch));
        }
    }

    public class b extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, String str) throws IOException {
            rgVar.c(str);
        }
    }

    public class c extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, wg wgVar) throws IOException {
            rgVar.a(wgVar);
        }
    }

    public class d extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, ig igVar) throws IOException {
            if (igVar == null || igVar.e()) {
                rgVar.k();
                return;
            }
            if (igVar.g()) {
                og ogVarC = igVar.c();
                if (ogVarC.o()) {
                    rgVar.a(ogVarC.l());
                    return;
                } else if (ogVarC.n()) {
                    rgVar.c(ogVarC.j());
                    return;
                } else {
                    rgVar.c(ogVarC.m());
                    return;
                }
            }
            if (igVar.d()) {
                rgVar.c();
                Iterator it = igVar.a().iterator();
                while (it.hasNext()) {
                    a(rgVar, (ig) it.next());
                }
                rgVar.e();
                return;
            }
            if (!igVar.f()) {
                throw new IllegalArgumentException("Couldn't write " + igVar.getClass());
            }
            rgVar.d();
            for (Map.Entry entry : igVar.b().h()) {
                rgVar.a((String) entry.getKey());
                a(rgVar, (ig) entry.getValue());
            }
            rgVar.f();
        }
    }

    public class e implements gp {
    }

    public class f implements gp {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f14384a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ fp f14385b;

        public f(Class cls, fp fpVar) {
            this.f14384a = cls;
            this.f14385b = fpVar;
        }

        public String toString() {
            return "Factory[type=" + this.f14384a.getName() + ",adapter=" + this.f14385b + "]";
        }
    }

    public class g implements gp {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f14386a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f14387b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ fp f14388c;

        public g(Class cls, Class cls2, fp fpVar) {
            this.f14386a = cls;
            this.f14387b = cls2;
            this.f14388c = fpVar;
        }

        public String toString() {
            return "Factory[type=" + this.f14387b.getName() + "+" + this.f14386a.getName() + ",adapter=" + this.f14388c + "]";
        }
    }

    public class h implements gp {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f14389a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ fp f14390b;

        public h(Class cls, fp fpVar) {
            this.f14389a = cls;
            this.f14390b = fpVar;
        }

        public String toString() {
            return "Factory[typeHierarchy=" + this.f14389a.getName() + ",adapter=" + this.f14390b + "]";
        }
    }

    public class i extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Class cls) {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }

    public class j extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Boolean bool) throws IOException {
            rgVar.a(bool);
        }
    }

    public class k extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Boolean bool) throws IOException {
            rgVar.c(bool == null ? "null" : bool.toString());
        }
    }

    public class l extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
            } else {
                rgVar.a(number.byteValue());
            }
        }
    }

    public class m extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
            } else {
                rgVar.a(number.shortValue());
            }
        }
    }

    public class n extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
            } else {
                rgVar.a(number.intValue());
            }
        }
    }

    public class o extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
            } else {
                rgVar.a(number.longValue());
            }
        }
    }

    public class p extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
                return;
            }
            if (!(number instanceof Float)) {
                number = Float.valueOf(number.floatValue());
            }
            rgVar.a(number);
        }
    }

    public class q extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
            } else {
                rgVar.a(number.doubleValue());
            }
        }
    }

    static {
        fp fpVarA = new i().a();
        f14362a = fpVarA;
        f14363b = a(Class.class, fpVarA);
        j jVar = new j();
        f14364c = jVar;
        f14365d = new k();
        f14366e = a(Boolean.TYPE, Boolean.class, jVar);
        l lVar = new l();
        f14367f = lVar;
        f14368g = a(Byte.TYPE, Byte.class, lVar);
        m mVar = new m();
        f14369h = mVar;
        f14370i = a(Short.TYPE, Short.class, mVar);
        n nVar = new n();
        f14371j = nVar;
        f14372k = a(Integer.TYPE, Integer.class, nVar);
        f14373l = new o();
        f14374m = new p();
        f14375n = new q();
        a aVar = new a();
        f14376o = aVar;
        f14377p = a(Character.TYPE, Character.class, aVar);
        b bVar = new b();
        f14378q = bVar;
        f14379r = new c();
        f14380s = a(String.class, bVar);
        d dVar = new d();
        f14381t = dVar;
        f14382u = b(ig.class, dVar);
        f14383v = new e();
    }

    public static gp a(Class cls, fp fpVar) {
        return new f(cls, fpVar);
    }

    public static gp b(Class cls, fp fpVar) {
        return new h(cls, fpVar);
    }

    public static gp a(Class cls, Class cls2, fp fpVar) {
        return new g(cls, cls2, fpVar);
    }
}
