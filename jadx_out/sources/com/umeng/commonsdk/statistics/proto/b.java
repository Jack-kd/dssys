package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.cl;
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
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public class b implements de<b, e>, Serializable, Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final Map<e, dq> f50365d;

    /* renamed from: e, reason: collision with root package name */
    private static final long f50366e = -6496538196005191531L;

    /* renamed from: f, reason: collision with root package name */
    private static final ei f50367f = new ei("IdSnapshot");

    /* renamed from: g, reason: collision with root package name */
    private static final dy f50368g = new dy("identity", (byte) 11, 1);

    /* renamed from: h, reason: collision with root package name */
    private static final dy f50369h = new dy("ts", (byte) 10, 2);

    /* renamed from: i, reason: collision with root package name */
    private static final dy f50370i = new dy(cl.f49059n, (byte) 8, 3);

    /* renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends el>, em> f50371j;

    /* renamed from: k, reason: collision with root package name */
    private static final int f50372k = 0;

    /* renamed from: l, reason: collision with root package name */
    private static final int f50373l = 1;

    /* renamed from: a, reason: collision with root package name */
    public String f50374a;

    /* renamed from: b, reason: collision with root package name */
    public long f50375b;

    /* renamed from: c, reason: collision with root package name */
    public int f50376c;

    /* renamed from: m, reason: collision with root package name */
    private byte f50377m;

    public static class a extends en<b> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, b bVar) throws dk {
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
                        } else if (b3 == 8) {
                            bVar.f50376c = edVar.w();
                            bVar.c(true);
                        } else {
                            eg.a(edVar, b3);
                        }
                    } else if (b3 == 10) {
                        bVar.f50375b = edVar.x();
                        bVar.b(true);
                    } else {
                        eg.a(edVar, b3);
                    }
                } else if (b3 == 11) {
                    bVar.f50374a = edVar.z();
                    bVar.a(true);
                } else {
                    eg.a(edVar, b3);
                }
                edVar.m();
            }
            edVar.k();
            if (!bVar.g()) {
                throw new ee("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
            if (bVar.j()) {
                bVar.k();
                return;
            }
            throw new ee("Required field 'version' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, b bVar) throws dk {
            bVar.k();
            edVar.a(b.f50367f);
            if (bVar.f50374a != null) {
                edVar.a(b.f50368g);
                edVar.a(bVar.f50374a);
                edVar.c();
            }
            edVar.a(b.f50369h);
            edVar.a(bVar.f50375b);
            edVar.c();
            edVar.a(b.f50370i);
            edVar.a(bVar.f50376c);
            edVar.c();
            edVar.d();
            edVar.b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b, reason: collision with other inner class name */
    public static class C0865b implements em {
        private C0865b() {
        }

        @Override // com.umeng.analytics.pro.em
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    public static class c extends eo<b> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.el
        public void a(ed edVar, b bVar) throws dk {
            ej ejVar = (ej) edVar;
            ejVar.a(bVar.f50374a);
            ejVar.a(bVar.f50375b);
            ejVar.a(bVar.f50376c);
        }

        @Override // com.umeng.analytics.pro.el
        public void b(ed edVar, b bVar) throws dk {
            ej ejVar = (ej) edVar;
            bVar.f50374a = ejVar.z();
            bVar.a(true);
            bVar.f50375b = ejVar.x();
            bVar.b(true);
            bVar.f50376c = ejVar.w();
            bVar.c(true);
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
        f50371j = map;
        map.put(en.class, new C0865b());
        map.put(eo.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.IDENTITY, (e) new dq("identity", (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new dq("ts", (byte) 1, new dr((byte) 10)));
        enumMap.put((EnumMap) e.VERSION, (e) new dq(cl.f49059n, (byte) 1, new dr((byte) 8)));
        Map<e, dq> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f50365d = mapUnmodifiableMap;
        dq.a(b.class, mapUnmodifiableMap);
    }

    public b() {
        this.f50377m = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b deepCopy() {
        return new b(this);
    }

    public String b() {
        return this.f50374a;
    }

    public void c() {
        this.f50374a = null;
    }

    @Override // com.umeng.analytics.pro.de
    public void clear() {
        this.f50374a = null;
        b(false);
        this.f50375b = 0L;
        c(false);
        this.f50376c = 0;
    }

    public boolean d() {
        return this.f50374a != null;
    }

    public long e() {
        return this.f50375b;
    }

    public void f() {
        this.f50377m = db.b(this.f50377m, 0);
    }

    public boolean g() {
        return db.a(this.f50377m, 0);
    }

    public int h() {
        return this.f50376c;
    }

    public void i() {
        this.f50377m = db.b(this.f50377m, 1);
    }

    public boolean j() {
        return db.a(this.f50377m, 1);
    }

    public void k() throws dk {
        if (this.f50374a != null) {
            return;
        }
        throw new ee("Required field 'identity' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.de
    public void read(ed edVar) throws dk {
        f50371j.get(edVar.D()).b().b(edVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        String str = this.f50374a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f50375b);
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f50376c);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.de
    public void write(ed edVar) throws dk {
        f50371j.get(edVar.D()).b().a(edVar, this);
    }

    public enum e implements dl {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, cl.f49059n);


        /* renamed from: d, reason: collision with root package name */
        private static final Map<String, e> f50381d = new HashMap();

        /* renamed from: e, reason: collision with root package name */
        private final short f50383e;

        /* renamed from: f, reason: collision with root package name */
        private final String f50384f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f50381d.put(eVar.b(), eVar);
            }
        }

        e(short s2, String str) {
            this.f50383e = s2;
            this.f50384f = str;
        }

        public static e a(int i2) {
            if (i2 == 1) {
                return IDENTITY;
            }
            if (i2 == 2) {
                return TS;
            }
            if (i2 != 3) {
                return null;
            }
            return VERSION;
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
            return this.f50384f;
        }

        public static e a(String str) {
            return f50381d.get(str);
        }

        @Override // com.umeng.analytics.pro.dl
        public short a() {
            return this.f50383e;
        }
    }

    public b a(String str) {
        this.f50374a = str;
        return this;
    }

    public void b(boolean z2) {
        this.f50377m = db.a(this.f50377m, 0, z2);
    }

    public void c(boolean z2) {
        this.f50377m = db.a(this.f50377m, 1, z2);
    }

    public b(String str, long j2, int i2) {
        this();
        this.f50374a = str;
        this.f50375b = j2;
        b(true);
        this.f50376c = i2;
        c(true);
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.f50374a = null;
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public b a(long j2) {
        this.f50375b = j2;
        b(true);
        return this;
    }

    public b a(int i2) {
        this.f50376c = i2;
        c(true);
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new dx(new ep(objectOutputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public b(b bVar) {
        this.f50377m = (byte) 0;
        this.f50377m = bVar.f50377m;
        if (bVar.d()) {
            this.f50374a = bVar.f50374a;
        }
        this.f50375b = bVar.f50375b;
        this.f50376c = bVar.f50376c;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f50377m = (byte) 0;
            read(new dx(new ep(objectInputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
