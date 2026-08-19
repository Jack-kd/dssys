package com.umeng.analytics.pro;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public class bw implements de<bw, e>, Serializable, Cloneable {

    /* renamed from: A, reason: collision with root package name */
    private static final int f48926A = 2;

    /* renamed from: B, reason: collision with root package name */
    private static final int f48927B = 3;

    /* renamed from: k, reason: collision with root package name */
    public static final Map<e, dq> f48928k;

    /* renamed from: l, reason: collision with root package name */
    private static final long f48929l = 420342210744516016L;

    /* renamed from: m, reason: collision with root package name */
    private static final ei f48930m = new ei("UMEnvelope");

    /* renamed from: n, reason: collision with root package name */
    private static final dy f48931n = new dy(cl.f49059n, (byte) 11, 1);

    /* renamed from: o, reason: collision with root package name */
    private static final dy f48932o = new dy("address", (byte) 11, 2);

    /* renamed from: p, reason: collision with root package name */
    private static final dy f48933p = new dy(com.umeng.ccg.a.f49739A, (byte) 11, 3);

    /* renamed from: q, reason: collision with root package name */
    private static final dy f48934q = new dy("serial_num", (byte) 8, 4);

    /* renamed from: r, reason: collision with root package name */
    private static final dy f48935r = new dy("ts_secs", (byte) 8, 5);

    /* renamed from: s, reason: collision with root package name */
    private static final dy f48936s = new dy("length", (byte) 8, 6);

    /* renamed from: t, reason: collision with root package name */
    private static final dy f48937t = new dy("entity", (byte) 11, 7);

    /* renamed from: u, reason: collision with root package name */
    private static final dy f48938u = new dy("guid", (byte) 11, 8);

    /* renamed from: v, reason: collision with root package name */
    private static final dy f48939v = new dy("checksum", (byte) 11, 9);

    /* renamed from: w, reason: collision with root package name */
    private static final dy f48940w = new dy("codex", (byte) 8, 10);

    /* renamed from: x, reason: collision with root package name */
    private static final Map<Class<? extends el>, em> f48941x;

    /* renamed from: y, reason: collision with root package name */
    private static final int f48942y = 0;

    /* renamed from: z, reason: collision with root package name */
    private static final int f48943z = 1;

    /* renamed from: C, reason: collision with root package name */
    private byte f48944C;

    /* renamed from: D, reason: collision with root package name */
    private e[] f48945D;

    /* renamed from: a, reason: collision with root package name */
    public String f48946a;

    /* renamed from: b, reason: collision with root package name */
    public String f48947b;

    /* renamed from: c, reason: collision with root package name */
    public String f48948c;

    /* renamed from: d, reason: collision with root package name */
    public int f48949d;

    /* renamed from: e, reason: collision with root package name */
    public int f48950e;

    /* renamed from: f, reason: collision with root package name */
    public int f48951f;

    /* renamed from: g, reason: collision with root package name */
    public ByteBuffer f48952g;

    /* renamed from: h, reason: collision with root package name */
    public String f48953h;

    /* renamed from: i, reason: collision with root package name */
    public String f48954i;

    /* renamed from: j, reason: collision with root package name */
    public int f48955j;

    public static class a extends en<bw> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(ed edVar, bw bwVar) throws dk {
            edVar.j();
            while (true) {
                dy dyVarL = edVar.l();
                byte b3 = dyVarL.f49250b;
                if (b3 == 0) {
                    edVar.k();
                    if (!bwVar.m()) {
                        throw new ee("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!bwVar.p()) {
                        throw new ee("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (bwVar.s()) {
                        bwVar.G();
                        return;
                    }
                    throw new ee("Required field 'length' was not found in serialized data! Struct: " + toString());
                }
                switch (dyVarL.f49251c) {
                    case 1:
                        if (b3 != 11) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48946a = edVar.z();
                            bwVar.a(true);
                            break;
                        }
                    case 2:
                        if (b3 != 11) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48947b = edVar.z();
                            bwVar.b(true);
                            break;
                        }
                    case 3:
                        if (b3 != 11) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48948c = edVar.z();
                            bwVar.c(true);
                            break;
                        }
                    case 4:
                        if (b3 != 8) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48949d = edVar.w();
                            bwVar.d(true);
                            break;
                        }
                    case 5:
                        if (b3 != 8) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48950e = edVar.w();
                            bwVar.e(true);
                            break;
                        }
                    case 6:
                        if (b3 != 8) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48951f = edVar.w();
                            bwVar.f(true);
                            break;
                        }
                    case 7:
                        if (b3 != 11) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48952g = edVar.A();
                            bwVar.g(true);
                            break;
                        }
                    case 8:
                        if (b3 != 11) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48953h = edVar.z();
                            bwVar.h(true);
                            break;
                        }
                    case 9:
                        if (b3 != 11) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48954i = edVar.z();
                            bwVar.i(true);
                            break;
                        }
                    case 10:
                        if (b3 != 8) {
                            eg.a(edVar, b3);
                            break;
                        } else {
                            bwVar.f48955j = edVar.w();
                            bwVar.j(true);
                            break;
                        }
                    default:
                        eg.a(edVar, b3);
                        break;
                }
                edVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.el
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ed edVar, bw bwVar) throws dk {
            bwVar.G();
            edVar.a(bw.f48930m);
            if (bwVar.f48946a != null) {
                edVar.a(bw.f48931n);
                edVar.a(bwVar.f48946a);
                edVar.c();
            }
            if (bwVar.f48947b != null) {
                edVar.a(bw.f48932o);
                edVar.a(bwVar.f48947b);
                edVar.c();
            }
            if (bwVar.f48948c != null) {
                edVar.a(bw.f48933p);
                edVar.a(bwVar.f48948c);
                edVar.c();
            }
            edVar.a(bw.f48934q);
            edVar.a(bwVar.f48949d);
            edVar.c();
            edVar.a(bw.f48935r);
            edVar.a(bwVar.f48950e);
            edVar.c();
            edVar.a(bw.f48936s);
            edVar.a(bwVar.f48951f);
            edVar.c();
            if (bwVar.f48952g != null) {
                edVar.a(bw.f48937t);
                edVar.a(bwVar.f48952g);
                edVar.c();
            }
            if (bwVar.f48953h != null) {
                edVar.a(bw.f48938u);
                edVar.a(bwVar.f48953h);
                edVar.c();
            }
            if (bwVar.f48954i != null) {
                edVar.a(bw.f48939v);
                edVar.a(bwVar.f48954i);
                edVar.c();
            }
            if (bwVar.F()) {
                edVar.a(bw.f48940w);
                edVar.a(bwVar.f48955j);
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

    public static class c extends eo<bw> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.el
        public void a(ed edVar, bw bwVar) throws dk {
            ej ejVar = (ej) edVar;
            ejVar.a(bwVar.f48946a);
            ejVar.a(bwVar.f48947b);
            ejVar.a(bwVar.f48948c);
            ejVar.a(bwVar.f48949d);
            ejVar.a(bwVar.f48950e);
            ejVar.a(bwVar.f48951f);
            ejVar.a(bwVar.f48952g);
            ejVar.a(bwVar.f48953h);
            ejVar.a(bwVar.f48954i);
            BitSet bitSet = new BitSet();
            if (bwVar.F()) {
                bitSet.set(0);
            }
            ejVar.a(bitSet, 1);
            if (bwVar.F()) {
                ejVar.a(bwVar.f48955j);
            }
        }

        @Override // com.umeng.analytics.pro.el
        public void b(ed edVar, bw bwVar) throws dk {
            ej ejVar = (ej) edVar;
            bwVar.f48946a = ejVar.z();
            bwVar.a(true);
            bwVar.f48947b = ejVar.z();
            bwVar.b(true);
            bwVar.f48948c = ejVar.z();
            bwVar.c(true);
            bwVar.f48949d = ejVar.w();
            bwVar.d(true);
            bwVar.f48950e = ejVar.w();
            bwVar.e(true);
            bwVar.f48951f = ejVar.w();
            bwVar.f(true);
            bwVar.f48952g = ejVar.A();
            bwVar.g(true);
            bwVar.f48953h = ejVar.z();
            bwVar.h(true);
            bwVar.f48954i = ejVar.z();
            bwVar.i(true);
            if (ejVar.b(1).get(0)) {
                bwVar.f48955j = ejVar.w();
                bwVar.j(true);
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
        f48941x = map;
        map.put(en.class, new b());
        map.put(eo.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VERSION, (e) new dq(cl.f49059n, (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.ADDRESS, (e) new dq("address", (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.SIGNATURE, (e) new dq(com.umeng.ccg.a.f49739A, (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.SERIAL_NUM, (e) new dq("serial_num", (byte) 1, new dr((byte) 8)));
        enumMap.put((EnumMap) e.TS_SECS, (e) new dq("ts_secs", (byte) 1, new dr((byte) 8)));
        enumMap.put((EnumMap) e.LENGTH, (e) new dq("length", (byte) 1, new dr((byte) 8)));
        enumMap.put((EnumMap) e.ENTITY, (e) new dq("entity", (byte) 1, new dr((byte) 11, true)));
        enumMap.put((EnumMap) e.GUID, (e) new dq("guid", (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new dq("checksum", (byte) 1, new dr((byte) 11)));
        enumMap.put((EnumMap) e.CODEX, (e) new dq("codex", (byte) 2, new dr((byte) 8)));
        Map<e, dq> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        f48928k = mapUnmodifiableMap;
        dq.a(bw.class, mapUnmodifiableMap);
    }

    public bw() {
        this.f48944C = (byte) 0;
        this.f48945D = new e[]{e.CODEX};
    }

    public String A() {
        return this.f48954i;
    }

    public void B() {
        this.f48954i = null;
    }

    public boolean C() {
        return this.f48954i != null;
    }

    public int D() {
        return this.f48955j;
    }

    public void E() {
        this.f48944C = db.b(this.f48944C, 3);
    }

    public boolean F() {
        return db.a(this.f48944C, 3);
    }

    public void G() throws dk {
        if (this.f48946a == null) {
            throw new ee("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f48947b == null) {
            throw new ee("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.f48948c == null) {
            throw new ee("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.f48952g == null) {
            throw new ee("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.f48953h == null) {
            throw new ee("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.f48954i != null) {
            return;
        }
        throw new ee("Required field 'checksum' was not present! Struct: " + toString());
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public bw deepCopy() {
        return new bw(this);
    }

    public String b() {
        return this.f48946a;
    }

    public void c() {
        this.f48946a = null;
    }

    @Override // com.umeng.analytics.pro.de
    public void clear() {
        this.f48946a = null;
        this.f48947b = null;
        this.f48948c = null;
        d(false);
        this.f48949d = 0;
        e(false);
        this.f48950e = 0;
        f(false);
        this.f48951f = 0;
        this.f48952g = null;
        this.f48953h = null;
        this.f48954i = null;
        j(false);
        this.f48955j = 0;
    }

    public boolean d() {
        return this.f48946a != null;
    }

    public String e() {
        return this.f48947b;
    }

    public void f() {
        this.f48947b = null;
    }

    public boolean g() {
        return this.f48947b != null;
    }

    public String h() {
        return this.f48948c;
    }

    public void i() {
        this.f48948c = null;
    }

    public boolean j() {
        return this.f48948c != null;
    }

    public int k() {
        return this.f48949d;
    }

    public void l() {
        this.f48944C = db.b(this.f48944C, 0);
    }

    public boolean m() {
        return db.a(this.f48944C, 0);
    }

    public int n() {
        return this.f48950e;
    }

    public void o() {
        this.f48944C = db.b(this.f48944C, 1);
    }

    public boolean p() {
        return db.a(this.f48944C, 1);
    }

    public int q() {
        return this.f48951f;
    }

    public void r() {
        this.f48944C = db.b(this.f48944C, 2);
    }

    @Override // com.umeng.analytics.pro.de
    public void read(ed edVar) throws dk {
        f48941x.get(edVar.D()).b().b(edVar, this);
    }

    public boolean s() {
        return db.a(this.f48944C, 2);
    }

    public byte[] t() {
        a(df.c(this.f48952g));
        ByteBuffer byteBuffer = this.f48952g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMEnvelope(");
        sb.append("version:");
        String str = this.f48946a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("address:");
        String str2 = this.f48947b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("signature:");
        String str3 = this.f48948c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f48949d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f48950e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f48951f);
        sb.append(", ");
        sb.append("entity:");
        ByteBuffer byteBuffer = this.f48952g;
        if (byteBuffer == null) {
            sb.append("null");
        } else {
            df.a(byteBuffer, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        String str4 = this.f48953h;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        sb.append(", ");
        sb.append("checksum:");
        String str5 = this.f48954i;
        if (str5 == null) {
            sb.append("null");
        } else {
            sb.append(str5);
        }
        if (F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.f48955j);
        }
        sb.append(")");
        return sb.toString();
    }

    public ByteBuffer u() {
        return this.f48952g;
    }

    public void v() {
        this.f48952g = null;
    }

    public boolean w() {
        return this.f48952g != null;
    }

    @Override // com.umeng.analytics.pro.de
    public void write(ed edVar) throws dk {
        f48941x.get(edVar.D()).b().a(edVar, this);
    }

    public String x() {
        return this.f48953h;
    }

    public void y() {
        this.f48953h = null;
    }

    public boolean z() {
        return this.f48953h != null;
    }

    public enum e implements dl {
        VERSION(1, cl.f49059n),
        ADDRESS(2, "address"),
        SIGNATURE(3, com.umeng.ccg.a.f49739A),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");


        /* renamed from: k, reason: collision with root package name */
        private static final Map<String, e> f48966k = new HashMap();

        /* renamed from: l, reason: collision with root package name */
        private final short f48968l;

        /* renamed from: m, reason: collision with root package name */
        private final String f48969m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f48966k.put(eVar.b(), eVar);
            }
        }

        e(short s2, String str) {
            this.f48968l = s2;
            this.f48969m = str;
        }

        public static e a(int i2) {
            switch (i2) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
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
            return this.f48969m;
        }

        public static e a(String str) {
            return f48966k.get(str);
        }

        @Override // com.umeng.analytics.pro.dl
        public short a() {
            return this.f48968l;
        }
    }

    public bw a(String str) {
        this.f48946a = str;
        return this;
    }

    public bw b(String str) {
        this.f48947b = str;
        return this;
    }

    public bw c(String str) {
        this.f48948c = str;
        return this;
    }

    public void d(boolean z2) {
        this.f48944C = db.a(this.f48944C, 0, z2);
    }

    public void e(boolean z2) {
        this.f48944C = db.a(this.f48944C, 1, z2);
    }

    public void f(boolean z2) {
        this.f48944C = db.a(this.f48944C, 2, z2);
    }

    public void g(boolean z2) {
        if (z2) {
            return;
        }
        this.f48952g = null;
    }

    public void h(boolean z2) {
        if (z2) {
            return;
        }
        this.f48953h = null;
    }

    public void i(boolean z2) {
        if (z2) {
            return;
        }
        this.f48954i = null;
    }

    public void j(boolean z2) {
        this.f48944C = db.a(this.f48944C, 3, z2);
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.f48946a = null;
    }

    public void b(boolean z2) {
        if (z2) {
            return;
        }
        this.f48947b = null;
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.f48948c = null;
    }

    public bw d(String str) {
        this.f48953h = str;
        return this;
    }

    public bw e(String str) {
        this.f48954i = str;
        return this;
    }

    public bw(String str, String str2, String str3, int i2, int i3, int i4, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f48946a = str;
        this.f48947b = str2;
        this.f48948c = str3;
        this.f48949d = i2;
        d(true);
        this.f48950e = i3;
        e(true);
        this.f48951f = i4;
        f(true);
        this.f48952g = byteBuffer;
        this.f48953h = str4;
        this.f48954i = str5;
    }

    public bw a(int i2) {
        this.f48949d = i2;
        d(true);
        return this;
    }

    public bw b(int i2) {
        this.f48950e = i2;
        e(true);
        return this;
    }

    public bw c(int i2) {
        this.f48951f = i2;
        f(true);
        return this;
    }

    public bw d(int i2) {
        this.f48955j = i2;
        j(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.de
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public bw a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public bw a(ByteBuffer byteBuffer) {
        this.f48952g = byteBuffer;
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
            this.f48944C = (byte) 0;
            read(new dx(new ep(objectInputStream)));
        } catch (dk e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public bw(bw bwVar) {
        this.f48944C = (byte) 0;
        this.f48945D = new e[]{e.CODEX};
        this.f48944C = bwVar.f48944C;
        if (bwVar.d()) {
            this.f48946a = bwVar.f48946a;
        }
        if (bwVar.g()) {
            this.f48947b = bwVar.f48947b;
        }
        if (bwVar.j()) {
            this.f48948c = bwVar.f48948c;
        }
        this.f48949d = bwVar.f48949d;
        this.f48950e = bwVar.f48950e;
        this.f48951f = bwVar.f48951f;
        if (bwVar.w()) {
            this.f48952g = df.d(bwVar.f48952g);
        }
        if (bwVar.z()) {
            this.f48953h = bwVar.f48953h;
        }
        if (bwVar.C()) {
            this.f48954i = bwVar.f48954i;
        }
        this.f48955j = bwVar.f48955j;
    }
}
