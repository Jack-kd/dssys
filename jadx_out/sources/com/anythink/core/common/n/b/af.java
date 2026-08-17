package com.anythink.core.common.n.b;

import com.anythink.core.common.n.b.u;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class af implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    final ad f6695a;

    /* renamed from: b, reason: collision with root package name */
    final ab f6696b;

    /* renamed from: c, reason: collision with root package name */
    final int f6697c;

    /* renamed from: d, reason: collision with root package name */
    final String f6698d;

    /* renamed from: e, reason: collision with root package name */
    final t f6699e;

    /* renamed from: f, reason: collision with root package name */
    final u f6700f;

    /* renamed from: g, reason: collision with root package name */
    final ag f6701g;

    /* renamed from: h, reason: collision with root package name */
    final af f6702h;

    /* renamed from: i, reason: collision with root package name */
    final af f6703i;

    /* renamed from: j, reason: collision with root package name */
    final af f6704j;

    /* renamed from: k, reason: collision with root package name */
    final long f6705k;

    /* renamed from: l, reason: collision with root package name */
    final long f6706l;

    /* renamed from: m, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.b.c f6707m;

    /* renamed from: n, reason: collision with root package name */
    private volatile d f6708n;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        ad f6709a;

        /* renamed from: b, reason: collision with root package name */
        ab f6710b;

        /* renamed from: c, reason: collision with root package name */
        int f6711c;

        /* renamed from: d, reason: collision with root package name */
        String f6712d;

        /* renamed from: e, reason: collision with root package name */
        t f6713e;

        /* renamed from: f, reason: collision with root package name */
        u.a f6714f;

        /* renamed from: g, reason: collision with root package name */
        ag f6715g;

        /* renamed from: h, reason: collision with root package name */
        af f6716h;

        /* renamed from: i, reason: collision with root package name */
        af f6717i;

        /* renamed from: j, reason: collision with root package name */
        af f6718j;

        /* renamed from: k, reason: collision with root package name */
        long f6719k;

        /* renamed from: l, reason: collision with root package name */
        long f6720l;

        /* renamed from: m, reason: collision with root package name */
        com.anythink.core.common.n.b.a.b.c f6721m;

        public a() {
            this.f6711c = -1;
            this.f6714f = new u.a();
        }

        private static void d(af afVar) {
            if (afVar.f6701g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public final a a(ad adVar) {
            this.f6709a = adVar;
            return this;
        }

        public final a b(String str, String str2) {
            this.f6714f.a(str, str2);
            return this;
        }

        public final a c(af afVar) {
            if (afVar != null && afVar.f6701g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
            this.f6718j = afVar;
            return this;
        }

        private a b(String str) {
            this.f6714f.b(str);
            return this;
        }

        public final a a(ab abVar) {
            this.f6710b = abVar;
            return this;
        }

        public final a a(int i2) {
            this.f6711c = i2;
            return this;
        }

        public final a b(af afVar) {
            if (afVar != null) {
                a("cacheResponse", afVar);
            }
            this.f6717i = afVar;
            return this;
        }

        public a(af afVar) {
            this.f6711c = -1;
            this.f6709a = afVar.f6695a;
            this.f6710b = afVar.f6696b;
            this.f6711c = afVar.f6697c;
            this.f6712d = afVar.f6698d;
            this.f6713e = afVar.f6699e;
            this.f6714f = afVar.f6700f.b();
            this.f6715g = afVar.f6701g;
            this.f6716h = afVar.f6702h;
            this.f6717i = afVar.f6703i;
            this.f6718j = afVar.f6704j;
            this.f6719k = afVar.f6705k;
            this.f6720l = afVar.f6706l;
            this.f6721m = afVar.f6707m;
        }

        public final a a(String str) {
            this.f6712d = str;
            return this;
        }

        public final a a(t tVar) {
            this.f6713e = tVar;
            return this;
        }

        public final a b(long j2) {
            this.f6720l = j2;
            return this;
        }

        public final a a(String str, String str2) {
            this.f6714f.d(str, str2);
            return this;
        }

        public final a a(u uVar) {
            this.f6714f = uVar.b();
            return this;
        }

        public final a a(ag agVar) {
            this.f6715g = agVar;
            return this;
        }

        public final a a(af afVar) {
            if (afVar != null) {
                a("networkResponse", afVar);
            }
            this.f6716h = afVar;
            return this;
        }

        private static void a(String str, af afVar) {
            if (afVar.f6701g == null) {
                if (afVar.f6702h == null) {
                    if (afVar.f6703i == null) {
                        if (afVar.f6704j == null) {
                            return;
                        }
                        throw new IllegalArgumentException(str + ".priorResponse != null");
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public final a a(long j2) {
            this.f6719k = j2;
            return this;
        }

        private void a(com.anythink.core.common.n.b.a.b.c cVar) {
            this.f6721m = cVar;
        }

        public final af a() {
            if (this.f6709a != null) {
                if (this.f6710b != null) {
                    if (this.f6711c >= 0) {
                        if (this.f6712d != null) {
                            return new af(this);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("code < 0: " + this.f6711c);
                }
                throw new IllegalStateException("protocol == null");
            }
            throw new IllegalStateException("request == null");
        }
    }

    public af(a aVar) {
        this.f6695a = aVar.f6709a;
        this.f6696b = aVar.f6710b;
        this.f6697c = aVar.f6711c;
        this.f6698d = aVar.f6712d;
        this.f6699e = aVar.f6713e;
        this.f6700f = aVar.f6714f.a();
        this.f6701g = aVar.f6715g;
        this.f6702h = aVar.f6716h;
        this.f6703i = aVar.f6717i;
        this.f6704j = aVar.f6718j;
        this.f6705k = aVar.f6719k;
        this.f6706l = aVar.f6720l;
        this.f6707m = aVar.f6721m;
    }

    private boolean n() {
        int i2 = this.f6697c;
        return i2 >= 200 && i2 < 300;
    }

    private u o() {
        com.anythink.core.common.n.b.a.b.c cVar = this.f6707m;
        if (cVar != null) {
            return cVar.e();
        }
        throw new IllegalStateException("trailers not available");
    }

    private boolean p() {
        int i2 = this.f6697c;
        if (i2 == 307 || i2 == 308) {
            return true;
        }
        switch (i2) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    private af q() {
        return this.f6703i;
    }

    private List<h> r() {
        String str;
        int i2 = this.f6697c;
        if (i2 == 401) {
            str = "WWW-Authenticate";
        } else {
            if (i2 != 407) {
                return Collections.EMPTY_LIST;
            }
            str = "Proxy-Authenticate";
        }
        return com.anythink.core.common.n.b.a.c.e.a(this.f6700f, str);
    }

    public final ad a() {
        return this.f6695a;
    }

    public final ab b() {
        return this.f6696b;
    }

    public final int c() {
        return this.f6697c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ag agVar = this.f6701g;
        if (agVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        agVar.close();
    }

    public final String d() {
        return this.f6698d;
    }

    public final t e() {
        return this.f6699e;
    }

    public final u f() {
        return this.f6700f;
    }

    public final ag g() {
        return this.f6701g;
    }

    public final a h() {
        return new a(this);
    }

    public final af i() {
        return this.f6702h;
    }

    public final af j() {
        return this.f6704j;
    }

    public final d k() {
        d dVar = this.f6708n;
        if (dVar != null) {
            return dVar;
        }
        d dVarA = d.a(this.f6700f);
        this.f6708n = dVarA;
        return dVarA;
    }

    public final long l() {
        return this.f6705k;
    }

    public final long m() {
        return this.f6706l;
    }

    public final String toString() {
        return "Response{protocol=" + this.f6696b + ", code=" + this.f6697c + ", message=" + this.f6698d + ", url=" + this.f6695a.f6676a + '}';
    }

    private String a(String str, String str2) {
        String strA = this.f6700f.a(str);
        return strA != null ? strA : str2;
    }

    private List<String> b(String str) {
        return this.f6700f.b(str);
    }

    private ag a(long j2) throws EOFException {
        com.anythink.core.common.n.c.e eVarH = this.f6701g.c().h();
        com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
        eVarH.b(j2);
        cVar.a(eVarH, Math.min(j2, eVarH.d().b()));
        return ag.a(this.f6701g.a(), cVar.b(), cVar);
    }

    public final String a(String str) {
        String strA = this.f6700f.a(str);
        if (strA != null) {
            return strA;
        }
        return null;
    }
}
