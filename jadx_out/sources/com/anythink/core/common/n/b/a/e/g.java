package com.anythink.core.common.n.b.a.e;

import com.anythink.core.common.n.b.a.e.i;
import com.anythink.core.common.n.b.ab;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.u;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.b.z;
import com.anythink.core.common.n.c.v;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class g implements com.anythink.core.common.n.b.a.c.c {

    /* renamed from: c, reason: collision with root package name */
    private static final String f6445c = "host";

    /* renamed from: l, reason: collision with root package name */
    private final w.a f6454l;

    /* renamed from: m, reason: collision with root package name */
    private final com.anythink.core.common.n.b.a.b.e f6455m;

    /* renamed from: n, reason: collision with root package name */
    private final f f6456n;

    /* renamed from: o, reason: collision with root package name */
    private volatile i f6457o;

    /* renamed from: p, reason: collision with root package name */
    private final ab f6458p;

    /* renamed from: q, reason: collision with root package name */
    private volatile boolean f6459q;

    /* renamed from: b, reason: collision with root package name */
    private static final String f6444b = "connection";

    /* renamed from: d, reason: collision with root package name */
    private static final String f6446d = "keep-alive";

    /* renamed from: e, reason: collision with root package name */
    private static final String f6447e = "proxy-connection";

    /* renamed from: g, reason: collision with root package name */
    private static final String f6449g = "te";

    /* renamed from: f, reason: collision with root package name */
    private static final String f6448f = "transfer-encoding";

    /* renamed from: h, reason: collision with root package name */
    private static final String f6450h = "encoding";

    /* renamed from: i, reason: collision with root package name */
    private static final String f6451i = "upgrade";

    /* renamed from: j, reason: collision with root package name */
    private static final List<String> f6452j = com.anythink.core.common.n.b.a.c.a(f6444b, "host", f6446d, f6447e, f6449g, f6448f, f6450h, f6451i, ":method", ":path", ":scheme", ":authority");

    /* renamed from: k, reason: collision with root package name */
    private static final List<String> f6453k = com.anythink.core.common.n.b.a.c.a(f6444b, "host", f6446d, f6447e, f6449g, f6448f, f6450h, f6451i);

    public g(z zVar, com.anythink.core.common.n.b.a.b.e eVar, w.a aVar, f fVar) {
        this.f6455m = eVar;
        this.f6454l = aVar;
        this.f6456n = fVar;
        List<ab> listQ = zVar.q();
        ab abVar = ab.H2_PRIOR_KNOWLEDGE;
        this.f6458p = listQ.contains(abVar) ? abVar : ab.HTTP_2;
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final com.anythink.core.common.n.b.a.b.e a() {
        return this.f6455m;
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void b() {
        this.f6456n.f6393r.b();
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void c() {
        this.f6457o.f().close();
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final u d() {
        return this.f6457o.d();
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void e() {
        this.f6459q = true;
        if (this.f6457o != null) {
            this.f6457o.a(b.CANCEL);
        }
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final v a(ad adVar, long j2) {
        return this.f6457o.f();
    }

    private static List<c> b(ad adVar) {
        u uVarC = adVar.c();
        ArrayList arrayList = new ArrayList(uVarC.a() + 4);
        arrayList.add(new c(c.f6312h, adVar.b()));
        arrayList.add(new c(c.f6313i, com.anythink.core.common.n.b.a.c.i.a(adVar.a())));
        String strA = adVar.a("Host");
        if (strA != null) {
            arrayList.add(new c(c.f6315k, strA));
        }
        arrayList.add(new c(c.f6314j, adVar.a().b()));
        int iA = uVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            String lowerCase = uVarC.a(i2).toLowerCase(Locale.US);
            if (!f6452j.contains(lowerCase) || (lowerCase.equals(f6449g) && uVarC.b(i2).equals("trailers"))) {
                arrayList.add(new c(lowerCase, uVarC.b(i2)));
            }
        }
        return arrayList;
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void a(ad adVar) throws IOException {
        if (this.f6457o != null) {
            return;
        }
        boolean z2 = adVar.d() != null;
        u uVarC = adVar.c();
        ArrayList arrayList = new ArrayList(uVarC.a() + 4);
        arrayList.add(new c(c.f6312h, adVar.b()));
        arrayList.add(new c(c.f6313i, com.anythink.core.common.n.b.a.c.i.a(adVar.a())));
        String strA = adVar.a("Host");
        if (strA != null) {
            arrayList.add(new c(c.f6315k, strA));
        }
        arrayList.add(new c(c.f6314j, adVar.a().b()));
        int iA = uVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            String lowerCase = uVarC.a(i2).toLowerCase(Locale.US);
            if (!f6452j.contains(lowerCase) || (lowerCase.equals(f6449g) && uVarC.b(i2).equals("trailers"))) {
                arrayList.add(new c(lowerCase, uVarC.b(i2)));
            }
        }
        this.f6457o = this.f6456n.a(arrayList, z2);
        if (!this.f6459q) {
            i.c cVar = this.f6457o.f6477f;
            long jE = this.f6454l.e();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            cVar.a(jE, timeUnit);
            this.f6457o.f6478g.a(this.f6454l.f(), timeUnit);
            return;
        }
        this.f6457o.a(b.CANCEL);
        throw new IOException("Canceled");
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final com.anythink.core.common.n.c.w b(af afVar) {
        return this.f6457o.e();
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final af.a a(boolean z2) throws ProtocolException, NumberFormatException {
        u uVarC = this.f6457o.c();
        ab abVar = this.f6458p;
        u.a aVar = new u.a();
        int iA = uVarC.a();
        com.anythink.core.common.n.b.a.c.k kVarA = null;
        for (int i2 = 0; i2 < iA; i2++) {
            String strA = uVarC.a(i2);
            String strB = uVarC.b(i2);
            if (strA.equals(":status")) {
                kVarA = com.anythink.core.common.n.b.a.c.k.a("HTTP/1.1 ".concat(String.valueOf(strB)));
            } else if (!f6453k.contains(strA)) {
                com.anythink.core.common.n.b.a.a.f6042a.a(aVar, strA, strB);
            }
        }
        if (kVarA != null) {
            af.a aVarA = new af.a().a(abVar).a(kVarA.f6257e).a(kVarA.f6258f).a(aVar.a());
            if (z2 && com.anythink.core.common.n.b.a.a.f6042a.a(aVarA) == 100) {
                return null;
            }
            return aVarA;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    private static af.a a(u uVar, ab abVar) throws ProtocolException, NumberFormatException {
        u.a aVar = new u.a();
        int iA = uVar.a();
        com.anythink.core.common.n.b.a.c.k kVarA = null;
        for (int i2 = 0; i2 < iA; i2++) {
            String strA = uVar.a(i2);
            String strB = uVar.b(i2);
            if (strA.equals(":status")) {
                kVarA = com.anythink.core.common.n.b.a.c.k.a("HTTP/1.1 ".concat(String.valueOf(strB)));
            } else if (!f6453k.contains(strA)) {
                com.anythink.core.common.n.b.a.a.f6042a.a(aVar, strA, strB);
            }
        }
        if (kVarA != null) {
            return new af.a().a(abVar).a(kVarA.f6257e).a(kVarA.f6258f).a(aVar.a());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final long a(af afVar) {
        return com.anythink.core.common.n.b.a.c.e.a(afVar);
    }
}
