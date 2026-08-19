package com.umeng.commonsdk.statistics.proto;

import com.anythink.core.common.f.f;
import com.umeng.analytics.pro.db;
import com.umeng.analytics.pro.de;
import com.umeng.analytics.pro.dk;
import com.umeng.analytics.pro.dl;
import com.umeng.analytics.pro.dq;
import com.umeng.analytics.pro.dr;
import com.umeng.analytics.pro.dx;
import com.umeng.analytics.pro.dy;
import com.umeng.analytics.pro.ed;
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
public class e implements de<e, EnumC0868e>, Serializable, Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final Map<EnumC0868e, dq> f50422d;

    /* renamed from: e, reason: collision with root package name */
    private static final long f50423e = 7501688097813630241L;

    /* renamed from: f, reason: collision with root package name */
    private static final ei f50424f = new ei("ImprintValue");

    /* renamed from: g, reason: collision with root package name */
    private static final dy f50425g = new dy(f.a.f3244d, (byte) 11, 1);

    /* renamed from: h, reason: collision with root package name */
    private static final dy f50426h = new dy("ts", (byte) 10, 2);

    /* renamed from: i, reason: collision with root package name */
    private static final dy f50427i = new dy("guid", (byte) 11, 3);

    /* renamed from: j, reason: collision with root package name */
    private static final Map<Class<? extends el>, em> f50428j;

    /* renamed from: k, reason: collision with root package name */
    private static final int f50429k = 0;

    /* renamed from: a, reason: collision with root package name */
    public String f50430a;

    /* renamed from: b, reason: collision with root package name */
    public long f50431b;

    /* renamed from: c, reason: collision with root package name */
    public String f50432c;

    /* renamed from: l, reason: collision with root package name */
    private byte f50433l;

    /* renamed from: m, reason: collision with root package name */
    private EnumC0868e[] f50434m;

    public static class a extends en<e> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, e eVar) throws dk {
            edVar.j();
            while (true) {
                dy dyVarL = edVar.l();
                byte b3 = dyVarL.f49250b;
                if (b3 == 0) {
                    edVar.k();
                    eVar.k();
                    return;
                }
                short s2 = dyVarL.f49251c;
                if (s2 != 1) {
                    if (s2 != 2) {
                        if (s2 != 3) {
                            eg.a(edVar, b3);
                        } else if (b3 == 11) {
                            eVar.f50432c = edVar.z();
                            eVar.c(true);
                        } else {
                            eg.a(edVar, b3);
                        }
                    } else if (b3 == 10) {
                        eVar.f50431b = edVar.x();
                        eVar.b(true);
                    } else {
                        eg.a(edVar, b3);
                    }
                } else if (b3 == 11) {
                    eVar.f50430a = edVar.z();
                    eVar.a(true);
                } else {
                    eg.a(edVar, b3);
                }
                edVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, e eVar) throws dk {
            eVar.k();
            edVar.a(e.f50424f);
            if (eVar.f50430a != null && eVar.d()) {
                edVar.a(e.f50425g);
                edVar.a(eVar.f50430a);
                edVar.c();
            }
            if (eVar.g()) {
                edVar.a(e.f50426h);
                edVar.a(eVar.f50431b);
                edVar.c();
            }
            if (eVar.f50432c != null && eVar.j()) {
                edVar.a(e.f50427i);
                edVar.a(eVar.f50432c);
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

    public static class c extends eo<e> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.el
        public void a(ed edVar, e eVar) throws dk {
            ej ejVar = (ej) edVar;
            BitSet bitSet = new BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            if (eVar.g()) {
                bitSet.set(1);
            }
            if (eVar.j()) {
                bitSet.set(2);
            }
            ejVar.a(bitSet, 3);
            if (eVar.d()) {
                ejVar.a(eVar.f50430a);
            }
            if (eVar.g()) {
                ejVar.a(eVar.f50431b);
            }
            if (eVar.j()) {
                ejVar.a(eVar.f50432c);
            }
        }

        @Override // com.umeng.analytics.pro.el
        public void b(ed edVar, e eVar) throws dk {
            ej ejVar = (ej) edVar;
            BitSet bitSetB = ejVar.b(3);
            if (bitSetB.get(0)) {
                eVar.f50430a = ejVar.z();
                eVar.a(true);
            }
            if (bitSetB.get(1)) {
                eVar.f50431b = ejVar.x();
                eVar.b(true);
            }
            if (bitSetB.get(2)) {
                eVar.f50432c = ejVar.z();
                eVar.c(true);
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
        f50428j = map;
        map.put(en.class, new b());
        map.put(eo.class, new d());
        EnumMap enumMap = new EnumMap(EnumC0868e.class);
        enumMap.put((EnumMap) EnumC0868e.VALUE, (EnumC0868e) new dq(f.a.f3244d, (byte) 2, new dr((byte) 11)));
        enumMap.put((EnumMap) EnumC0868e.TS, (EnumC0868e) new dq("ts", (byte) 2, new dr((byte) 10)));
        enumMap.put((EnumMap) EnumC0868e.GUID, (EnumC0868e) new dq("guid", (byte) 2, new dr((byte) 11)));
        Map<EnumC0868e, dq> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f50422d = mapUnmodifiableMap;
        dq.a(e.class, mapUnmodifiableMap);
    }

    public e() {
        this.f50433l = (byte) 0;
        this.f50434m = new EnumC0868e[]{EnumC0868e.VALUE, EnumC0868e.TS, EnumC0868e.GUID};
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public e deepCopy() {
        return new e(this);
    }

    public String b() {
        return this.f50430a;
    }

    public void c() {
        this.f50430a = null;
    }

    @Override // com.umeng.analytics.pro.de
    public void clear() {
        this.f50430a = null;
        b(false);
        this.f50431b = 0L;
        this.f50432c = null;
    }

    public boolean d() {
        return this.f50430a != null;
    }

    public long e() {
        return this.f50431b;
    }

    public void f() {
        this.f50433l = db.b(this.f50433l, 0);
    }

    public boolean g() {
        return db.a(this.f50433l, 0);
    }

    public String h() {
        return this.f50432c;
    }

    public void i() {
        this.f50432c = null;
    }

    public boolean j() {
        return this.f50432c != null;
    }

    public void k() throws dk {
    }

    @Override // com.umeng.analytics.pro.de
    public void read(ed edVar) throws dk {
        f50428j.get(edVar.D()).b().b(edVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ImprintValue(");
        if (d()) {
            sb.append("value:");
            String str = this.f50430a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.f50431b);
        sb.append(", ");
        sb.append("guid:");
        String str2 = this.f50432c;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.de
    public void write(ed edVar) throws dk {
        f50428j.get(edVar.D()).b().a(edVar, this);
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e, reason: collision with other inner class name */
    public enum EnumC0868e implements dl {
        VALUE(1, f.a.f3244d),
        TS(2, "ts"),
        GUID(3, "guid");


        /* renamed from: d, reason: collision with root package name */
        private static final Map<String, EnumC0868e> f50438d = new HashMap();

        /* renamed from: e, reason: collision with root package name */
        private final short f50440e;

        /* renamed from: f, reason: collision with root package name */
        private final String f50441f;

        static {
            Iterator it = EnumSet.allOf(EnumC0868e.class).iterator();
            while (it.hasNext()) {
                EnumC0868e enumC0868e = (EnumC0868e) it.next();
                f50438d.put(enumC0868e.b(), enumC0868e);
            }
        }

        EnumC0868e(short s2, String str) {
            this.f50440e = s2;
            this.f50441f = str;
        }

        public static EnumC0868e a(int i2) {
            if (i2 == 1) {
                return VALUE;
            }
            if (i2 == 2) {
                return TS;
            }
            if (i2 != 3) {
                return null;
            }
            return GUID;
        }

        public static EnumC0868e b(int i2) {
            EnumC0868e enumC0868eA = a(i2);
            if (enumC0868eA != null) {
                return enumC0868eA;
            }
            throw new IllegalArgumentException("Field " + i2 + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.dl
        public String b() {
            return this.f50441f;
        }

        public static EnumC0868e a(String str) {
            return f50438d.get(str);
        }

        @Override // com.umeng.analytics.pro.dl
        public short a() {
            return this.f50440e;
        }
    }

    public e a(String str) {
        this.f50430a = str;
        return this;
    }

    public void b(boolean z2) {
        this.f50433l = db.a(this.f50433l, 0, z2);
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.f50432c = null;
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.f50430a = null;
    }

    public e b(String str) {
        this.f50432c = str;
        return this;
    }

    public e(long j2, String str) {
        this();
        this.f50431b = j2;
        b(true);
        this.f50432c = str;
    }

    public e a(long j2) {
        this.f50431b = j2;
        b(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public EnumC0868e fieldForId(int i2) {
        return EnumC0868e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new dx(new ep(objectOutputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public e(e eVar) {
        this.f50433l = (byte) 0;
        this.f50434m = new EnumC0868e[]{EnumC0868e.VALUE, EnumC0868e.TS, EnumC0868e.GUID};
        this.f50433l = eVar.f50433l;
        if (eVar.d()) {
            this.f50430a = eVar.f50430a;
        }
        this.f50431b = eVar.f50431b;
        if (eVar.j()) {
            this.f50432c = eVar.f50432c;
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f50433l = (byte) 0;
            read(new dx(new ep(objectInputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
