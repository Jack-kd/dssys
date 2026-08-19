package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.de;
import com.umeng.analytics.pro.dk;
import com.umeng.analytics.pro.dl;
import com.umeng.analytics.pro.dq;
import com.umeng.analytics.pro.dr;
import com.umeng.analytics.pro.ds;
import com.umeng.analytics.pro.dt;
import com.umeng.analytics.pro.dv;
import com.umeng.analytics.pro.dx;
import com.umeng.analytics.pro.dy;
import com.umeng.analytics.pro.dz;
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
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class c implements de<c, e>, Serializable, Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final Map<e, dq> f50385d;

    /* renamed from: e, reason: collision with root package name */
    private static final long f50386e = -5764118265293965743L;

    /* renamed from: f, reason: collision with root package name */
    private static final ei f50387f = new ei("IdTracking");

    /* renamed from: g, reason: collision with root package name */
    private static final dy f50388g = new dy("snapshots", ek.f49293k, 1);

    /* renamed from: h, reason: collision with root package name */
    private static final dy f50389h = new dy("journals", ek.f49295m, 2);

    /* renamed from: i, reason: collision with root package name */
    private static final dy f50390i = new dy("checksum", (byte) 11, 3);

    /* renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends el>, em> f50391j;

    /* renamed from: a, reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.b> f50392a;

    /* renamed from: b, reason: collision with root package name */
    public List<com.umeng.commonsdk.statistics.proto.a> f50393b;

    /* renamed from: c, reason: collision with root package name */
    public String f50394c;

    /* renamed from: k, reason: collision with root package name */
    private e[] f50395k;

    public static class a extends en<c> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, c cVar) throws dk {
            edVar.j();
            while (true) {
                dy dyVarL = edVar.l();
                byte b3 = dyVarL.f49250b;
                if (b3 == 0) {
                    edVar.k();
                    cVar.n();
                    return;
                }
                short s2 = dyVarL.f49251c;
                int i2 = 0;
                if (s2 != 1) {
                    if (s2 != 2) {
                        if (s2 != 3) {
                            eg.a(edVar, b3);
                        } else if (b3 == 11) {
                            cVar.f50394c = edVar.z();
                            cVar.c(true);
                        } else {
                            eg.a(edVar, b3);
                        }
                    } else if (b3 == 15) {
                        dz dzVarP = edVar.p();
                        cVar.f50393b = new ArrayList(dzVarP.f49253b);
                        while (i2 < dzVarP.f49253b) {
                            com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                            aVar.read(edVar);
                            cVar.f50393b.add(aVar);
                            i2++;
                        }
                        edVar.q();
                        cVar.b(true);
                    } else {
                        eg.a(edVar, b3);
                    }
                } else if (b3 == 13) {
                    ea eaVarN = edVar.n();
                    cVar.f50392a = new HashMap(eaVarN.f49262c * 2);
                    while (i2 < eaVarN.f49262c) {
                        String strZ = edVar.z();
                        com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                        bVar.read(edVar);
                        cVar.f50392a.put(strZ, bVar);
                        i2++;
                    }
                    edVar.o();
                    cVar.a(true);
                } else {
                    eg.a(edVar, b3);
                }
                edVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, c cVar) throws dk {
            cVar.n();
            edVar.a(c.f50387f);
            if (cVar.f50392a != null) {
                edVar.a(c.f50388g);
                edVar.a(new ea((byte) 11, (byte) 12, cVar.f50392a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f50392a.entrySet()) {
                    edVar.a(entry.getKey());
                    entry.getValue().write(edVar);
                }
                edVar.e();
                edVar.c();
            }
            if (cVar.f50393b != null && cVar.j()) {
                edVar.a(c.f50389h);
                edVar.a(new dz((byte) 12, cVar.f50393b.size()));
                Iterator<com.umeng.commonsdk.statistics.proto.a> it = cVar.f50393b.iterator();
                while (it.hasNext()) {
                    it.next().write(edVar);
                }
                edVar.f();
                edVar.c();
            }
            if (cVar.f50394c != null && cVar.m()) {
                edVar.a(c.f50390i);
                edVar.a(cVar.f50394c);
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

    /* renamed from: com.umeng.commonsdk.statistics.proto.c$c, reason: collision with other inner class name */
    public static class C0866c extends eo<c> {
        private C0866c() {
        }

        @Override // com.umeng.analytics.pro.el
        public void a(ed edVar, c cVar) throws dk {
            ej ejVar = (ej) edVar;
            ejVar.a(cVar.f50392a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f50392a.entrySet()) {
                ejVar.a(entry.getKey());
                entry.getValue().write(ejVar);
            }
            BitSet bitSet = new BitSet();
            if (cVar.j()) {
                bitSet.set(0);
            }
            if (cVar.m()) {
                bitSet.set(1);
            }
            ejVar.a(bitSet, 2);
            if (cVar.j()) {
                ejVar.a(cVar.f50393b.size());
                Iterator<com.umeng.commonsdk.statistics.proto.a> it = cVar.f50393b.iterator();
                while (it.hasNext()) {
                    it.next().write(ejVar);
                }
            }
            if (cVar.m()) {
                ejVar.a(cVar.f50394c);
            }
        }

        @Override // com.umeng.analytics.pro.el
        public void b(ed edVar, c cVar) throws dk {
            ej ejVar = (ej) edVar;
            ea eaVar = new ea((byte) 11, (byte) 12, ejVar.w());
            cVar.f50392a = new HashMap(eaVar.f49262c * 2);
            for (int i2 = 0; i2 < eaVar.f49262c; i2++) {
                String strZ = ejVar.z();
                com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                bVar.read(ejVar);
                cVar.f50392a.put(strZ, bVar);
            }
            cVar.a(true);
            BitSet bitSetB = ejVar.b(2);
            if (bitSetB.get(0)) {
                dz dzVar = new dz((byte) 12, ejVar.w());
                cVar.f50393b = new ArrayList(dzVar.f49253b);
                for (int i3 = 0; i3 < dzVar.f49253b; i3++) {
                    com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                    aVar.read(ejVar);
                    cVar.f50393b.add(aVar);
                }
                cVar.b(true);
            }
            if (bitSetB.get(1)) {
                cVar.f50394c = ejVar.z();
                cVar.c(true);
            }
        }
    }

    public static class d implements em {
        private d() {
        }

        @Override // com.umeng.analytics.pro.em
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0866c b() {
            return new C0866c();
        }
    }

    static {
        HashMap map = new HashMap();
        f50391j = map;
        map.put(en.class, new b());
        map.put(eo.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.SNAPSHOTS, (e) new dq("snapshots", (byte) 1, new dt(ek.f49293k, new dr((byte) 11), new dv((byte) 12, com.umeng.commonsdk.statistics.proto.b.class))));
        enumMap.put((EnumMap) e.JOURNALS, (e) new dq("journals", (byte) 2, new ds(ek.f49295m, new dv((byte) 12, com.umeng.commonsdk.statistics.proto.a.class))));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new dq("checksum", (byte) 2, new dr((byte) 11)));
        Map<e, dq> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f50385d = mapUnmodifiableMap;
        dq.a(c.class, mapUnmodifiableMap);
    }

    public c() {
        this.f50395k = new e[]{e.JOURNALS, e.CHECKSUM};
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public c deepCopy() {
        return new c(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f50392a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.b> c() {
        return this.f50392a;
    }

    @Override // com.umeng.analytics.pro.de
    public void clear() {
        this.f50392a = null;
        this.f50393b = null;
        this.f50394c = null;
    }

    public void d() {
        this.f50392a = null;
    }

    public boolean e() {
        return this.f50392a != null;
    }

    public int f() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.f50393b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public Iterator<com.umeng.commonsdk.statistics.proto.a> g() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.f50393b;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public List<com.umeng.commonsdk.statistics.proto.a> h() {
        return this.f50393b;
    }

    public void i() {
        this.f50393b = null;
    }

    public boolean j() {
        return this.f50393b != null;
    }

    public String k() {
        return this.f50394c;
    }

    public void l() {
        this.f50394c = null;
    }

    public boolean m() {
        return this.f50394c != null;
    }

    public void n() throws dk {
        if (this.f50392a != null) {
            return;
        }
        throw new ee("Required field 'snapshots' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.de
    public void read(ed edVar) throws dk {
        f50391j.get(edVar.D()).b().b(edVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdTracking(");
        sb.append("snapshots:");
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f50392a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        if (j()) {
            sb.append(", ");
            sb.append("journals:");
            List<com.umeng.commonsdk.statistics.proto.a> list = this.f50393b;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("checksum:");
            String str = this.f50394c;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.de
    public void write(ed edVar) throws dk {
        f50391j.get(edVar.D()).b().a(edVar, this);
    }

    public enum e implements dl {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");


        /* renamed from: d, reason: collision with root package name */
        private static final Map<String, e> f50399d = new HashMap();

        /* renamed from: e, reason: collision with root package name */
        private final short f50401e;

        /* renamed from: f, reason: collision with root package name */
        private final String f50402f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f50399d.put(eVar.b(), eVar);
            }
        }

        e(short s2, String str) {
            this.f50401e = s2;
            this.f50402f = str;
        }

        public static e a(int i2) {
            if (i2 == 1) {
                return SNAPSHOTS;
            }
            if (i2 == 2) {
                return JOURNALS;
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
            return this.f50402f;
        }

        public static e a(String str) {
            return f50399d.get(str);
        }

        @Override // com.umeng.analytics.pro.dl
        public short a() {
            return this.f50401e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.b bVar) {
        if (this.f50392a == null) {
            this.f50392a = new HashMap();
        }
        this.f50392a.put(str, bVar);
    }

    public void b(boolean z2) {
        if (z2) {
            return;
        }
        this.f50393b = null;
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.f50394c = null;
    }

    public c(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this();
        this.f50392a = map;
    }

    public c(c cVar) {
        this.f50395k = new e[]{e.JOURNALS, e.CHECKSUM};
        if (cVar.e()) {
            HashMap map = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f50392a.entrySet()) {
                map.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.b(entry.getValue()));
            }
            this.f50392a = map;
        }
        if (cVar.j()) {
            ArrayList arrayList = new ArrayList();
            Iterator<com.umeng.commonsdk.statistics.proto.a> it = cVar.f50393b.iterator();
            while (it.hasNext()) {
                arrayList.add(new com.umeng.commonsdk.statistics.proto.a(it.next()));
            }
            this.f50393b = arrayList;
        }
        if (cVar.m()) {
            this.f50394c = cVar.f50394c;
        }
    }

    public c a(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this.f50392a = map;
        return this;
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.f50392a = null;
    }

    public void a(com.umeng.commonsdk.statistics.proto.a aVar) {
        if (this.f50393b == null) {
            this.f50393b = new ArrayList();
        }
        this.f50393b.add(aVar);
    }

    public c a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f50393b = list;
        return this;
    }

    public c a(String str) {
        this.f50394c = str;
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

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            read(new dx(new ep(objectInputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
