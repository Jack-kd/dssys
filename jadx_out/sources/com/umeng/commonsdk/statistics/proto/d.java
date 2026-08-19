package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.cl;
import com.umeng.analytics.pro.db;
import com.umeng.analytics.pro.de;
import com.umeng.analytics.pro.dk;
import com.umeng.analytics.pro.dl;
import com.umeng.analytics.pro.dq;
import com.umeng.analytics.pro.dr;
import com.umeng.analytics.pro.dt;
import com.umeng.analytics.pro.dv;
import com.umeng.analytics.pro.dx;
import com.umeng.analytics.pro.dy;
import com.umeng.analytics.pro.ea;
import com.umeng.analytics.pro.ed;
import com.umeng.analytics.pro.ee;
import com.umeng.analytics.pro.eg;
import com.umeng.analytics.pro.ei;
import com.umeng.analytics.pro.ej;
import com.umeng.analytics.pro.ek;
import com.umeng.analytics.pro.el;
import com.umeng.analytics.pro.em;
import com.umeng.analytics.pro.en;
import com.umeng.analytics.pro.eo;
import com.umeng.analytics.pro.ep;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public class d implements de<d, e>, Serializable, Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final Map<e, dq> f50403d;

    /* renamed from: e, reason: collision with root package name */
    private static final long f50404e = 2846460275012375038L;

    /* renamed from: f, reason: collision with root package name */
    private static final ei f50405f = new ei("Imprint");

    /* renamed from: g, reason: collision with root package name */
    private static final dy f50406g = new dy("property", ek.f49293k, 1);

    /* renamed from: h, reason: collision with root package name */
    private static final dy f50407h = new dy(cl.f49059n, (byte) 8, 2);

    /* renamed from: i, reason: collision with root package name */
    private static final dy f50408i = new dy("checksum", (byte) 11, 3);

    /* renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends el>, em> f50409j;

    /* renamed from: k, reason: collision with root package name */
    private static final int f50410k = 0;

    /* renamed from: a, reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.e> f50411a;

    /* renamed from: b, reason: collision with root package name */
    public int f50412b;

    /* renamed from: c, reason: collision with root package name */
    public String f50413c;

    /* renamed from: l, reason: collision with root package name */
    private byte f50414l;

    public static class a extends en<d> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, d dVar) throws dk {
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
                            eg.a(edVar, b3);
                        } else if (b3 == 11) {
                            dVar.f50413c = edVar.z();
                            dVar.c(true);
                        } else {
                            eg.a(edVar, b3);
                        }
                    } else if (b3 == 8) {
                        dVar.f50412b = edVar.w();
                        dVar.b(true);
                    } else {
                        eg.a(edVar, b3);
                    }
                } else if (b3 == 13) {
                    ea eaVarN = edVar.n();
                    dVar.f50411a = new HashMap(eaVarN.f49262c * 2);
                    for (int i2 = 0; i2 < eaVarN.f49262c; i2++) {
                        String strZ = edVar.z();
                        com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                        eVar.read(edVar);
                        dVar.f50411a.put(strZ, eVar);
                    }
                    edVar.o();
                    dVar.a(true);
                } else {
                    eg.a(edVar, b3);
                }
                edVar.m();
            }
            edVar.k();
            if (dVar.h()) {
                dVar.l();
                return;
            }
            throw new ee("Required field 'version' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, d dVar) throws dk {
            dVar.l();
            edVar.a(d.f50405f);
            if (dVar.f50411a != null) {
                edVar.a(d.f50406g);
                edVar.a(new ea((byte) 11, (byte) 12, dVar.f50411a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f50411a.entrySet()) {
                    edVar.a(entry.getKey());
                    entry.getValue().write(edVar);
                }
                edVar.e();
                edVar.c();
            }
            edVar.a(d.f50407h);
            edVar.a(dVar.f50412b);
            edVar.c();
            if (dVar.f50413c != null) {
                edVar.a(d.f50408i);
                edVar.a(dVar.f50413c);
                edVar.c();
            }
            edVar.d();
            edVar.b();
        }
    }

    public static class b implements em {
        private b() {
        }

        @Override // com.umeng.analytics.pro.em
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    public static class c extends eo<d> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.el
        public void a(ed edVar, d dVar) throws dk {
            ej ejVar = (ej) edVar;
            ejVar.a(dVar.f50411a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f50411a.entrySet()) {
                ejVar.a(entry.getKey());
                entry.getValue().write(ejVar);
            }
            ejVar.a(dVar.f50412b);
            ejVar.a(dVar.f50413c);
        }

        @Override // com.umeng.analytics.pro.el
        public void b(ed edVar, d dVar) throws dk {
            ej ejVar = (ej) edVar;
            ea eaVar = new ea((byte) 11, (byte) 12, ejVar.w());
            dVar.f50411a = new HashMap(eaVar.f49262c * 2);
            for (int i2 = 0; i2 < eaVar.f49262c; i2++) {
                String strZ = ejVar.z();
                com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                eVar.read(ejVar);
                dVar.f50411a.put(strZ, eVar);
            }
            dVar.a(true);
            dVar.f50412b = ejVar.w();
            dVar.b(true);
            dVar.f50413c = ejVar.z();
            dVar.c(true);
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.d$d, reason: collision with other inner class name */
    public static class C0867d implements em {
        private C0867d() {
        }

        @Override // com.umeng.analytics.pro.em
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap map = new HashMap();
        f50409j = map;
        map.put(en.class, new b());
        map.put(eo.class, new C0867d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PROPERTY, (e) new dq("property", (byte) 1, new dt(ek.f49293k, new dr((byte) 11), new dv((byte) 12, com.umeng.commonsdk.statistics.proto.e.class))));
        enumMap.put((EnumMap) e.VERSION, (e) new dq(cl.f49059n, (byte) 1, new dr((byte) 8)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new dq("checksum", (byte) 1, new dr((byte) 11)));
        Map<e, dq> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f50403d = mapUnmodifiableMap;
        dq.a(d.class, mapUnmodifiableMap);
    }

    public d() {
        this.f50414l = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public d deepCopy() {
        return new d(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f50411a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.e> c() {
        return this.f50411a;
    }

    @Override // com.umeng.analytics.pro.de
    public void clear() {
        this.f50411a = null;
        b(false);
        this.f50412b = 0;
        this.f50413c = null;
    }

    public void d() {
        this.f50411a = null;
    }

    public boolean e() {
        return this.f50411a != null;
    }

    public int f() {
        return this.f50412b;
    }

    public void g() {
        this.f50414l = db.b(this.f50414l, 0);
    }

    public boolean h() {
        return db.a(this.f50414l, 0);
    }

    public String i() {
        return this.f50413c;
    }

    public void j() {
        this.f50413c = null;
    }

    public boolean k() {
        return this.f50413c != null;
    }

    public void l() throws dk {
        if (this.f50411a == null) {
            throw new ee("Required field 'property' was not present! Struct: " + toString());
        }
        if (this.f50413c != null) {
            return;
        }
        throw new ee("Required field 'checksum' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.de
    public void read(ed edVar) throws dk {
        f50409j.get(edVar.D()).b().b(edVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f50411a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f50412b);
        sb.append(", ");
        sb.append("checksum:");
        String str = this.f50413c;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.de
    public void write(ed edVar) throws dk {
        f50409j.get(edVar.D()).b().a(edVar, this);
    }

    public enum e implements dl {
        PROPERTY(1, "property"),
        VERSION(2, cl.f49059n),
        CHECKSUM(3, "checksum");


        /* renamed from: d, reason: collision with root package name */
        private static final Map<String, e> f50418d = new HashMap();

        /* renamed from: e, reason: collision with root package name */
        private final short f50420e;

        /* renamed from: f, reason: collision with root package name */
        private final String f50421f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f50418d.put(eVar.b(), eVar);
            }
        }

        e(short s2, String str) {
            this.f50420e = s2;
            this.f50421f = str;
        }

        public static e a(int i2) {
            if (i2 == 1) {
                return PROPERTY;
            }
            if (i2 == 2) {
                return VERSION;
            }
            if (i2 != 3) {
                return null;
            }
            return CHECKSUM;
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
            return this.f50421f;
        }

        public static e a(String str) {
            return f50418d.get(str);
        }

        @Override // com.umeng.analytics.pro.dl
        public short a() {
            return this.f50420e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.e eVar) {
        if (this.f50411a == null) {
            this.f50411a = new HashMap();
        }
        this.f50411a.put(str, eVar);
    }

    public void b(boolean z2) {
        this.f50414l = db.a(this.f50414l, 0, z2);
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.f50413c = null;
    }

    public d(Map<String, com.umeng.commonsdk.statistics.proto.e> map, int i2, String str) {
        this();
        this.f50411a = map;
        this.f50412b = i2;
        b(true);
        this.f50413c = str;
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public d a(Map<String, com.umeng.commonsdk.statistics.proto.e> map) {
        this.f50411a = map;
        return this;
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.f50411a = null;
    }

    public d a(int i2) {
        this.f50412b = i2;
        b(true);
        return this;
    }

    public d(d dVar) {
        this.f50414l = (byte) 0;
        this.f50414l = dVar.f50414l;
        if (dVar.e()) {
            HashMap map = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f50411a.entrySet()) {
                map.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.e(entry.getValue()));
            }
            this.f50411a = map;
        }
        this.f50412b = dVar.f50412b;
        if (dVar.k()) {
            this.f50413c = dVar.f50413c;
        }
    }

    public d a(String str) {
        this.f50413c = str;
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new dx(new ep(objectOutputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f50414l = (byte) 0;
            read(new dx(new ep(objectInputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
