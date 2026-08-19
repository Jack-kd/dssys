package com.umeng.commonsdk.statistics.proto;

import com.anythink.core.e.b;
import com.umeng.analytics.pro.db;
import com.umeng.analytics.pro.de;
import com.umeng.analytics.pro.dk;
import com.umeng.analytics.pro.dl;
import com.umeng.analytics.pro.dq;
import com.umeng.analytics.pro.dr;
import com.umeng.analytics.pro.dx;
import com.umeng.analytics.pro.dy;
import com.umeng.analytics.pro.ed;
import com.umeng.analytics.pro.ee;
import com.umeng.analytics.pro.eg;
import com.umeng.analytics.pro.ei;
import com.umeng.analytics.pro.ej;
import com.umeng.analytics.pro.el;
import com.umeng.analytics.pro.em;
import com.umeng.analytics.pro.en;
import com.umeng.analytics.pro.eo;
import com.umeng.analytics.pro.ep;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public class a implements de<a, e>, Serializable, Cloneable {

    /* renamed from: e, reason: collision with root package name */
    public static final Map<e, dq> f50342e;

    /* renamed from: f, reason: collision with root package name */
    private static final long f50343f = 9132678615281394583L;

    /* renamed from: g, reason: collision with root package name */
    private static final ei f50344g = new ei("IdJournal");

    /* renamed from: h, reason: collision with root package name */
    private static final dy f50345h = new dy(b.a.f8705H, (byte) 11, 1);

    /* renamed from: i, reason: collision with root package name */
    private static final dy f50346i = new dy("old_id", (byte) 11, 2);

    /* renamed from: j, reason: collision with root package name */
    private static final dy f50347j = new dy("new_id", (byte) 11, 3);

    /* renamed from: k, reason: collision with root package name */
    private static final dy f50348k = new dy("ts", (byte) 10, 4);

    /* renamed from: l, reason: collision with root package name */
    private static final Map<Class<? extends el>, em> f50349l;

    /* renamed from: m, reason: collision with root package name */
    private static final int f50350m = 0;

    /* renamed from: a, reason: collision with root package name */
    public String f50351a;

    /* renamed from: b, reason: collision with root package name */
    public String f50352b;

    /* renamed from: c, reason: collision with root package name */
    public String f50353c;

    /* renamed from: d, reason: collision with root package name */
    public long f50354d;

    /* renamed from: n, reason: collision with root package name */
    private byte f50355n;

    /* renamed from: o, reason: collision with root package name */
    private e[] f50356o;

    /* renamed from: com.umeng.commonsdk.statistics.proto.a$a, reason: collision with other inner class name */
    public static class C0864a extends en<a> {
        private C0864a() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, a aVar) throws dk {
            edVar.j();
            while (true) {
                dy dyVarL = edVar.l();
                byte b3 = dyVarL.f49250b;
                if (b3 == 0) {
                    break;
                }
                short s2 = dyVarL.f49251c;
                if (s2 != 1) {
                    if (s2 != 2) {
                        if (s2 != 3) {
                            if (s2 != 4) {
                                eg.a(edVar, b3);
                            } else if (b3 == 10) {
                                aVar.f50354d = edVar.x();
                                aVar.d(true);
                            } else {
                                eg.a(edVar, b3);
                            }
                        } else if (b3 == 11) {
                            aVar.f50353c = edVar.z();
                            aVar.c(true);
                        } else {
                            eg.a(edVar, b3);
                        }
                    } else if (b3 == 11) {
                        aVar.f50352b = edVar.z();
                        aVar.b(true);
                    } else {
                        eg.a(edVar, b3);
                    }
                } else if (b3 == 11) {
                    aVar.f50351a = edVar.z();
                    aVar.a(true);
                } else {
                    eg.a(edVar, b3);
                }
                edVar.m();
            }
            edVar.k();
            if (aVar.m()) {
                aVar.n();
                return;
            }
            throw new ee("Required field 'ts' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, a aVar) throws dk {
            aVar.n();
            edVar.a(a.f50344g);
            if (aVar.f50351a != null) {
                edVar.a(a.f50345h);
                edVar.a(aVar.f50351a);
                edVar.c();
            }
            if (aVar.f50352b != null && aVar.g()) {
                edVar.a(a.f50346i);
                edVar.a(aVar.f50352b);
                edVar.c();
            }
            if (aVar.f50353c != null) {
                edVar.a(a.f50347j);
                edVar.a(aVar.f50353c);
                edVar.c();
            }
            edVar.a(a.f50348k);
            edVar.a(aVar.f50354d);
            edVar.c();
            edVar.d();
            edVar.b();
        }
    }

    public static class b implements em {
        private b() {
        }

        @Override // com.umeng.analytics.pro.em
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0864a b() {
            return new C0864a();
        }
    }

    public static class c extends eo<a> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.el
        public void a(ed edVar, a aVar) throws dk {
            ej ejVar = (ej) edVar;
            ejVar.a(aVar.f50351a);
            ejVar.a(aVar.f50353c);
            ejVar.a(aVar.f50354d);
            BitSet bitSet = new BitSet();
            if (aVar.g()) {
                bitSet.set(0);
            }
            ejVar.a(bitSet, 1);
            if (aVar.g()) {
                ejVar.a(aVar.f50352b);
            }
        }

        @Override // com.umeng.analytics.pro.el
        public void b(ed edVar, a aVar) throws dk {
            ej ejVar = (ej) edVar;
            aVar.f50351a = ejVar.z();
            aVar.a(true);
            aVar.f50353c = ejVar.z();
            aVar.c(true);
            aVar.f50354d = ejVar.x();
            aVar.d(true);
            if (ejVar.b(1).get(0)) {
                aVar.f50352b = ejVar.z();
                aVar.b(true);
            }
        }
    }

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
        f50349l = map;
        map.put(en.class, new b());
        map.put(eo.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.DOMAIN, (e) new dq(b.a.f8705H, (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.OLD_ID, (e) new dq("old_id", (byte) 2, new dr((byte) 11)));
        enumMap.put((EnumMap) e.NEW_ID, (e) new dq("new_id", (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new dq("ts", (byte) 1, new dr((byte) 10)));
        Map<e, dq> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f50342e = mapUnmodifiableMap;
        dq.a(a.class, mapUnmodifiableMap);
    }

    public a() {
        this.f50355n = (byte) 0;
        this.f50356o = new e[]{e.OLD_ID};
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a deepCopy() {
        return new a(this);
    }

    public String b() {
        return this.f50351a;
    }

    public void c() {
        this.f50351a = null;
    }

    @Override // com.umeng.analytics.pro.de
    public void clear() {
        this.f50351a = null;
        this.f50352b = null;
        this.f50353c = null;
        d(false);
        this.f50354d = 0L;
    }

    public boolean d() {
        return this.f50351a != null;
    }

    public String e() {
        return this.f50352b;
    }

    public void f() {
        this.f50352b = null;
    }

    public boolean g() {
        return this.f50352b != null;
    }

    public String h() {
        return this.f50353c;
    }

    public void i() {
        this.f50353c = null;
    }

    public boolean j() {
        return this.f50353c != null;
    }

    public long k() {
        return this.f50354d;
    }

    public void l() {
        this.f50355n = db.b(this.f50355n, 0);
    }

    public boolean m() {
        return db.a(this.f50355n, 0);
    }

    public void n() throws dk {
        if (this.f50351a == null) {
            throw new ee("Required field 'domain' was not present! Struct: " + toString());
        }
        if (this.f50353c != null) {
            return;
        }
        throw new ee("Required field 'new_id' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.de
    public void read(ed edVar) throws dk {
        f50349l.get(edVar.D()).b().b(edVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdJournal(");
        sb.append("domain:");
        String str = this.f50351a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (g()) {
            sb.append(", ");
            sb.append("old_id:");
            String str2 = this.f50352b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("new_id:");
        String str3 = this.f50353c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f50354d);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.de
    public void write(ed edVar) throws dk {
        f50349l.get(edVar.D()).b().a(edVar, this);
    }

    public enum e implements dl {
        DOMAIN(1, b.a.f8705H),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");


        /* renamed from: e, reason: collision with root package name */
        private static final Map<String, e> f50361e = new HashMap();

        /* renamed from: f, reason: collision with root package name */
        private final short f50363f;

        /* renamed from: g, reason: collision with root package name */
        private final String f50364g;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f50361e.put(eVar.b(), eVar);
            }
        }

        e(short s2, String str) {
            this.f50363f = s2;
            this.f50364g = str;
        }

        public static e a(int i2) {
            if (i2 == 1) {
                return DOMAIN;
            }
            if (i2 == 2) {
                return OLD_ID;
            }
            if (i2 == 3) {
                return NEW_ID;
            }
            if (i2 != 4) {
                return null;
            }
            return TS;
        }

        public static e b(int i2) {
            e eVarA = a(i2);
            if (eVarA != null) {
                return eVarA;
            }
            throw new IllegalArgumentException("Field " + i2 + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.dl
        public String b() {
            return this.f50364g;
        }

        public static e a(String str) {
            return f50361e.get(str);
        }

        @Override // com.umeng.analytics.pro.dl
        public short a() {
            return this.f50363f;
        }
    }

    public a a(String str) {
        this.f50351a = str;
        return this;
    }

    public a b(String str) {
        this.f50352b = str;
        return this;
    }

    public a c(String str) {
        this.f50353c = str;
        return this;
    }

    public void d(boolean z2) {
        this.f50355n = db.a(this.f50355n, 0, z2);
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.f50351a = null;
    }

    public void b(boolean z2) {
        if (z2) {
            return;
        }
        this.f50352b = null;
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.f50353c = null;
    }

    public a(String str, String str2, long j2) {
        this();
        this.f50351a = str;
        this.f50353c = str2;
        this.f50354d = j2;
        d(true);
    }

    public a a(long j2) {
        this.f50354d = j2;
        d(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new dx(new ep(objectOutputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public a(a aVar) {
        this.f50355n = (byte) 0;
        this.f50356o = new e[]{e.OLD_ID};
        this.f50355n = aVar.f50355n;
        if (aVar.d()) {
            this.f50351a = aVar.f50351a;
        }
        if (aVar.g()) {
            this.f50352b = aVar.f50352b;
        }
        if (aVar.j()) {
            this.f50353c = aVar.f50353c;
        }
        this.f50354d = aVar.f50354d;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f50355n = (byte) 0;
            read(new dx(new ep(objectInputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
