package com.beizi.fusion;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class r8 {

    /* renamed from: A, reason: collision with root package name */
    static final i8 f15894A = i8.f14443d;

    /* renamed from: B, reason: collision with root package name */
    static final String f15895B = null;

    /* renamed from: C, reason: collision with root package name */
    static final b8 f15896C = a8.f12630a;

    /* renamed from: D, reason: collision with root package name */
    static final dp f15897D = cp.f13256a;

    /* renamed from: E, reason: collision with root package name */
    static final dp f15898E = cp.f13257b;

    /* renamed from: z, reason: collision with root package name */
    static final po f15899z = null;

    /* renamed from: a, reason: collision with root package name */
    private final ThreadLocal f15900a;

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentMap f15901b;

    /* renamed from: c, reason: collision with root package name */
    private final c6 f15902c;

    /* renamed from: d, reason: collision with root package name */
    private final gg f15903d;

    /* renamed from: e, reason: collision with root package name */
    final List f15904e;

    /* renamed from: f, reason: collision with root package name */
    final x7 f15905f;

    /* renamed from: g, reason: collision with root package name */
    final b8 f15906g;

    /* renamed from: h, reason: collision with root package name */
    final Map f15907h;

    /* renamed from: i, reason: collision with root package name */
    final boolean f15908i;

    /* renamed from: j, reason: collision with root package name */
    final boolean f15909j;

    /* renamed from: k, reason: collision with root package name */
    final boolean f15910k;

    /* renamed from: l, reason: collision with root package name */
    final boolean f15911l;

    /* renamed from: m, reason: collision with root package name */
    final i8 f15912m;

    /* renamed from: n, reason: collision with root package name */
    final po f15913n;

    /* renamed from: o, reason: collision with root package name */
    final boolean f15914o;

    /* renamed from: p, reason: collision with root package name */
    final boolean f15915p;

    /* renamed from: q, reason: collision with root package name */
    final String f15916q;

    /* renamed from: r, reason: collision with root package name */
    final int f15917r;

    /* renamed from: s, reason: collision with root package name */
    final int f15918s;

    /* renamed from: t, reason: collision with root package name */
    final oh f15919t;

    /* renamed from: u, reason: collision with root package name */
    final List f15920u;

    /* renamed from: v, reason: collision with root package name */
    final List f15921v;

    /* renamed from: w, reason: collision with root package name */
    final dp f15922w;

    /* renamed from: x, reason: collision with root package name */
    final dp f15923x;

    /* renamed from: y, reason: collision with root package name */
    final List f15924y;

    public class a extends fp {
        public a() {
        }

        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
                return;
            }
            double dDoubleValue = number.doubleValue();
            r8.a(dDoubleValue);
            rgVar.a(dDoubleValue);
        }
    }

    public class b extends fp {
        public b() {
        }

        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
                return;
            }
            float fFloatValue = number.floatValue();
            r8.a(fFloatValue);
            if (!(number instanceof Float)) {
                number = Float.valueOf(fFloatValue);
            }
            rgVar.a(number);
        }
    }

    public class c extends fp {
        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Number number) throws IOException {
            if (number == null) {
                rgVar.k();
            } else {
                rgVar.c(number.toString());
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public r8() {
        x7 x7Var = x7.f17436e;
        b8 b8Var = f15896C;
        Map map = Collections.EMPTY_MAP;
        i8 i8Var = f15894A;
        po poVar = f15899z;
        oh ohVar = oh.f15432a;
        String str = f15895B;
        List list = Collections.EMPTY_LIST;
        this(x7Var, b8Var, map, false, false, false, true, i8Var, poVar, false, true, ohVar, str, 2, 2, list, list, list, f15897D, f15898E, list);
    }

    private fp a(boolean z2) {
        return z2 ? hp.f14375n : new a();
    }

    private fp b(boolean z2) {
        return z2 ? hp.f14374m : new b();
    }

    public String toString() {
        return "{serializeNulls:" + this.f15908i + ",factories:" + this.f15904e + ",instanceCreators:" + this.f15902c + "}";
    }

    public static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private static fp a(oh ohVar) {
        if (ohVar == oh.f15432a) {
            return hp.f14373l;
        }
        return new c();
    }

    public r8(x7 x7Var, b8 b8Var, Map map, boolean z2, boolean z3, boolean z4, boolean z5, i8 i8Var, po poVar, boolean z6, boolean z7, oh ohVar, String str, int i2, int i3, List list, List list2, List list3, dp dpVar, dp dpVar2, List list4) {
        this.f15900a = new ThreadLocal();
        this.f15901b = new ConcurrentHashMap();
        this.f15905f = x7Var;
        this.f15906g = b8Var;
        this.f15907h = map;
        c6 c6Var = new c6(map, z7, list4);
        this.f15902c = c6Var;
        this.f15908i = z2;
        this.f15909j = z3;
        this.f15910k = z4;
        this.f15911l = z5;
        this.f15912m = i8Var;
        this.f15913n = poVar;
        this.f15914o = z6;
        this.f15915p = z7;
        this.f15919t = ohVar;
        this.f15916q = str;
        this.f15917r = i2;
        this.f15918s = i3;
        this.f15920u = list;
        this.f15921v = list2;
        this.f15922w = dpVar;
        this.f15923x = dpVar2;
        this.f15924y = list4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp.f14382u);
        arrayList.add(kk.a(dpVar));
        arrayList.add(x7Var);
        arrayList.addAll(list3);
        arrayList.add(hp.f14380s);
        arrayList.add(hp.f14372k);
        arrayList.add(hp.f14366e);
        arrayList.add(hp.f14368g);
        arrayList.add(hp.f14370i);
        arrayList.add(hp.a(Long.TYPE, Long.class, a(ohVar)));
        arrayList.add(hp.a(Double.TYPE, Double.class, a(z6)));
        arrayList.add(hp.a(Float.TYPE, Float.class, b(z6)));
        arrayList.add(uj.a(dpVar2));
        arrayList.add(hp.f14377p);
        arrayList.add(hp.a(wg.class, hp.f14379r));
        arrayList.add(t2.f16290a);
        arrayList.add(hp.f14363b);
        arrayList.add(new m5(c6Var));
        arrayList.add(new vh(c6Var, z3));
        gg ggVar = new gg(c6Var);
        this.f15903d = ggVar;
        arrayList.add(ggVar);
        arrayList.add(new tl(c6Var, b8Var, x7Var, ggVar, list4));
        this.f15904e = Collections.unmodifiableList(arrayList);
    }

    public void a(ig igVar, Appendable appendable) {
        try {
            a(igVar, a(oo.a(appendable)));
        } catch (IOException e2) {
            throw new jg(e2);
        }
    }

    public void a(ig igVar, rg rgVar) {
        po poVarH = rgVar.h();
        boolean zI = rgVar.i();
        boolean zG = rgVar.g();
        rgVar.a(this.f15911l);
        rgVar.b(this.f15908i);
        po poVar = this.f15913n;
        if (poVar != null) {
            rgVar.a(poVar);
        } else if (rgVar.h() == po.LEGACY_STRICT) {
            rgVar.a(po.LENIENT);
        }
        try {
            try {
                oo.a(igVar, rgVar);
            } catch (IOException e2) {
                throw new jg(e2);
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON ): " + e3.getMessage(), e3);
            }
        } finally {
            rgVar.a(poVarH);
            rgVar.a(zI);
            rgVar.b(zG);
        }
    }

    public rg a(Writer writer) throws IOException {
        if (this.f15910k) {
            writer.write(")]}'\n");
        }
        rg rgVar = new rg(writer);
        rgVar.a(this.f15912m);
        rgVar.a(this.f15911l);
        po poVar = this.f15913n;
        if (poVar == null) {
            poVar = po.LEGACY_STRICT;
        }
        rgVar.a(poVar);
        rgVar.b(this.f15908i);
        return rgVar;
    }
}
