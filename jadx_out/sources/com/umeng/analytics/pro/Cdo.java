package com.umeng.analytics.pro;

import com.umeng.analytics.pro.Cdo;
import com.umeng.analytics.pro.dl;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: com.umeng.analytics.pro.do, reason: invalid class name */
/* loaded from: classes5.dex */
public abstract class Cdo<T extends Cdo<?, ?>, F extends dl> implements de<T, F> {

    /* renamed from: c, reason: collision with root package name */
    private static final Map<Class<? extends el>, em> f49184c;

    /* renamed from: a, reason: collision with root package name */
    protected Object f49185a;

    /* renamed from: b, reason: collision with root package name */
    protected F f49186b;

    /* renamed from: com.umeng.analytics.pro.do$a */
    public static class a extends en<Cdo> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, Cdo cdo) throws dk {
            cdo.f49186b = null;
            cdo.f49185a = null;
            edVar.j();
            dy dyVarL = edVar.l();
            Object objA = cdo.a(edVar, dyVarL);
            cdo.f49185a = objA;
            if (objA != null) {
                cdo.f49186b = (F) cdo.a(dyVarL.f49251c);
            }
            edVar.m();
            edVar.l();
            edVar.k();
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, Cdo cdo) throws dk {
            if (cdo.a() == null || cdo.b() == null) {
                throw new ee("Cannot write a TUnion with no set value!");
            }
            edVar.a(cdo.d());
            edVar.a(cdo.c(cdo.f49186b));
            cdo.a(edVar);
            edVar.c();
            edVar.d();
            edVar.b();
        }
    }

    /* renamed from: com.umeng.analytics.pro.do$b */
    public static class b implements em {
        private b() {
        }

        @Override // com.umeng.analytics.pro.em
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* renamed from: com.umeng.analytics.pro.do$c */
    public static class c extends eo<Cdo> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, Cdo cdo) throws dk {
            cdo.f49186b = null;
            cdo.f49185a = null;
            short sV = edVar.v();
            Object objA = cdo.a(edVar, sV);
            cdo.f49185a = objA;
            if (objA != null) {
                cdo.f49186b = (F) cdo.a(sV);
            }
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, Cdo cdo) throws dk {
            if (cdo.a() == null || cdo.b() == null) {
                throw new ee("Cannot write a TUnion with no set value!");
            }
            edVar.a(cdo.f49186b.a());
            cdo.b(edVar);
        }
    }

    /* renamed from: com.umeng.analytics.pro.do$d */
    public static class d implements em {
        private d() {
        }

        @Override // com.umeng.analytics.pro.em
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap map = new HashMap();
        f49184c = map;
        map.put(en.class, new b());
        map.put(eo.class, new d());
    }

    public Cdo() {
        this.f49186b = null;
        this.f49185a = null;
    }

    private static Object a(Object obj) {
        return obj instanceof de ? ((de) obj).deepCopy() : obj instanceof ByteBuffer ? df.d((ByteBuffer) obj) : obj instanceof List ? a((List) obj) : obj instanceof Set ? a((Set) obj) : obj instanceof Map ? a((Map<Object, Object>) obj) : obj;
    }

    public abstract F a(short s2);

    public abstract Object a(ed edVar, dy dyVar) throws dk;

    public abstract Object a(ed edVar, short s2) throws dk;

    public abstract void a(ed edVar) throws dk;

    public Object b() {
        return this.f49185a;
    }

    public abstract void b(F f2, Object obj) throws ClassCastException;

    public abstract void b(ed edVar) throws dk;

    public abstract dy c(F f2);

    public boolean c() {
        return this.f49186b != null;
    }

    @Override // com.umeng.analytics.pro.de
    public final void clear() {
        this.f49186b = null;
        this.f49185a = null;
    }

    public abstract ei d();

    @Override // com.umeng.analytics.pro.de
    public void read(ed edVar) throws dk {
        f49184c.get(edVar.D()).b().b(edVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(getClass().getSimpleName());
        sb.append(" ");
        if (a() != null) {
            Object objB = b();
            sb.append(c(a()).f49249a);
            sb.append(":");
            if (objB instanceof ByteBuffer) {
                df.a((ByteBuffer) objB, sb);
            } else {
                sb.append(objB.toString());
            }
        }
        sb.append(">");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.de
    public void write(ed edVar) throws dk {
        f49184c.get(edVar.D()).b().a(edVar, this);
    }

    public boolean b(F f2) {
        return this.f49186b == f2;
    }

    public boolean b(int i2) {
        return b((Cdo<T, F>) a((short) i2));
    }

    public Cdo(F f2, Object obj) throws ClassCastException {
        a((Cdo<T, F>) f2, obj);
    }

    public Cdo(Cdo<T, F> cdo) {
        if (cdo.getClass().equals(getClass())) {
            this.f49186b = cdo.f49186b;
            this.f49185a = a(cdo.f49185a);
            return;
        }
        throw new ClassCastException();
    }

    private static Map a(Map<Object, Object> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            map2.put(a(entry.getKey()), a(entry.getValue()));
        }
        return map2;
    }

    private static Set a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(a(it.next()));
        }
        return hashSet;
    }

    private static List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        return arrayList;
    }

    public F a() {
        return this.f49186b;
    }

    public Object a(F f2) {
        if (f2 == this.f49186b) {
            return b();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f2 + " because union's set field is " + this.f49186b);
    }

    public Object a(int i2) {
        return a((Cdo<T, F>) a((short) i2));
    }

    public void a(F f2, Object obj) throws ClassCastException {
        b(f2, obj);
        this.f49186b = f2;
        this.f49185a = obj;
    }

    public void a(int i2, Object obj) throws ClassCastException {
        a((Cdo<T, F>) a((short) i2), obj);
    }
}
