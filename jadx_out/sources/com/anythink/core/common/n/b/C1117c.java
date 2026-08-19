package com.anythink.core.common.n.b;

import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.n.b.a.a.d;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.u;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* renamed from: com.anythink.core.common.n.b.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1117c implements Closeable, Flushable {

    /* renamed from: e, reason: collision with root package name */
    private static final int f6741e = 201105;

    /* renamed from: f, reason: collision with root package name */
    private static final int f6742f = 0;

    /* renamed from: g, reason: collision with root package name */
    private static final int f6743g = 1;

    /* renamed from: h, reason: collision with root package name */
    private static final int f6744h = 2;

    /* renamed from: a, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.a.f f6745a;

    /* renamed from: b, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.a.d f6746b;

    /* renamed from: c, reason: collision with root package name */
    int f6747c;

    /* renamed from: d, reason: collision with root package name */
    int f6748d;

    /* renamed from: i, reason: collision with root package name */
    private int f6749i;

    /* renamed from: j, reason: collision with root package name */
    private int f6750j;

    /* renamed from: k, reason: collision with root package name */
    private int f6751k;

    /* renamed from: com.anythink.core.common.n.b.c$a */
    public final class a implements com.anythink.core.common.n.b.a.a.b {

        /* renamed from: a, reason: collision with root package name */
        boolean f6757a;

        /* renamed from: c, reason: collision with root package name */
        private final d.a f6759c;

        /* renamed from: d, reason: collision with root package name */
        private com.anythink.core.common.n.c.v f6760d;

        /* renamed from: e, reason: collision with root package name */
        private com.anythink.core.common.n.c.v f6761e;

        public a(final d.a aVar) {
            this.f6759c = aVar;
            com.anythink.core.common.n.c.v vVarA = aVar.a(1);
            this.f6760d = vVarA;
            this.f6761e = new com.anythink.core.common.n.c.h(vVarA) { // from class: com.anythink.core.common.n.b.c.a.1
                @Override // com.anythink.core.common.n.c.h, com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    synchronized (C1117c.this) {
                        try {
                            a aVar2 = a.this;
                            if (aVar2.f6757a) {
                                return;
                            }
                            aVar2.f6757a = true;
                            C1117c.this.f6747c++;
                            super.close();
                            aVar.b();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            };
        }

        @Override // com.anythink.core.common.n.b.a.a.b
        public final void a() throws IOException {
            synchronized (C1117c.this) {
                try {
                    if (this.f6757a) {
                        return;
                    }
                    this.f6757a = true;
                    C1117c.this.f6748d++;
                    com.anythink.core.common.n.b.a.c.a(this.f6760d);
                    try {
                        this.f6759c.c();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.anythink.core.common.n.b.a.a.b
        public final com.anythink.core.common.n.c.v b() {
            return this.f6761e;
        }
    }

    /* renamed from: com.anythink.core.common.n.b.c$b */
    public static class b extends ag {

        /* renamed from: a, reason: collision with root package name */
        final d.c f6765a;

        /* renamed from: b, reason: collision with root package name */
        private final com.anythink.core.common.n.c.e f6766b;

        /* renamed from: c, reason: collision with root package name */
        private final String f6767c;

        /* renamed from: d, reason: collision with root package name */
        private final String f6768d;

        public b(final d.c cVar, String str, String str2) {
            this.f6765a = cVar;
            this.f6767c = str;
            this.f6768d = str2;
            this.f6766b = com.anythink.core.common.n.c.n.a(new com.anythink.core.common.n.c.i(cVar.a(1)) { // from class: com.anythink.core.common.n.b.c.b.1
                @Override // com.anythink.core.common.n.c.i, com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    cVar.close();
                    super.close();
                }
            });
        }

        @Override // com.anythink.core.common.n.b.ag
        public final x a() {
            String str = this.f6767c;
            if (str != null) {
                return x.b(str);
            }
            return null;
        }

        @Override // com.anythink.core.common.n.b.ag
        public final long b() {
            try {
                String str = this.f6768d;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // com.anythink.core.common.n.b.ag
        public final com.anythink.core.common.n.c.e c() {
            return this.f6766b;
        }
    }

    private C1117c(File file, long j2) {
        this(file, j2, com.anythink.core.common.n.b.a.f.a.f6526a);
    }

    private static String a(v vVar) {
        return com.anythink.core.common.n.c.f.a(vVar.toString()).c().g();
    }

    private void c() {
        this.f6746b.i();
    }

    private void d() {
        this.f6746b.j();
    }

    private Iterator<String> e() {
        return new Iterator<String>() { // from class: com.anythink.core.common.n.b.c.2

            /* renamed from: a, reason: collision with root package name */
            final Iterator<d.c> f6753a;

            /* renamed from: b, reason: collision with root package name */
            String f6754b;

            /* renamed from: c, reason: collision with root package name */
            boolean f6755c;

            {
                this.f6753a = C1117c.this.f6746b.k();
            }

            private String a() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                String str = this.f6754b;
                this.f6754b = null;
                this.f6755c = true;
                return str;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f6754b != null) {
                    return true;
                }
                this.f6755c = false;
                while (this.f6753a.hasNext()) {
                    try {
                        d.c next = this.f6753a.next();
                        try {
                            continue;
                            this.f6754b = com.anythink.core.common.n.c.n.a(next.a(0)).w();
                            next.close();
                            return true;
                        } finally {
                        }
                    } catch (IOException unused) {
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public final /* synthetic */ String next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                String str = this.f6754b;
                this.f6754b = null;
                this.f6755c = true;
                return str;
            }

            @Override // java.util.Iterator
            public final void remove() {
                if (!this.f6755c) {
                    throw new IllegalStateException("remove() before next()");
                }
                this.f6753a.remove();
            }
        };
    }

    private synchronized int f() {
        return this.f6748d;
    }

    private synchronized int g() {
        return this.f6747c;
    }

    private long h() {
        return this.f6746b.e();
    }

    private long i() {
        return this.f6746b.d();
    }

    private File j() {
        return this.f6746b.c();
    }

    private boolean k() {
        return this.f6746b.g();
    }

    private synchronized int l() {
        return this.f6749i;
    }

    private synchronized int m() {
        return this.f6750j;
    }

    private synchronized int n() {
        return this.f6751k;
    }

    public final void b(ad adVar) {
        this.f6746b.c(a(adVar.f6676a));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6746b.close();
    }

    @Override // java.io.Flushable
    public final void flush() {
        this.f6746b.flush();
    }

    private C1117c(File file, long j2, com.anythink.core.common.n.b.a.f.a aVar) {
        this.f6745a = new com.anythink.core.common.n.b.a.a.f() { // from class: com.anythink.core.common.n.b.c.1
            @Override // com.anythink.core.common.n.b.a.a.f
            public final af a(ad adVar) {
                return C1117c.this.a(adVar);
            }

            @Override // com.anythink.core.common.n.b.a.a.f
            public final void b(ad adVar) {
                C1117c.this.b(adVar);
            }

            @Override // com.anythink.core.common.n.b.a.a.f
            public final com.anythink.core.common.n.b.a.a.b a(af afVar) {
                return C1117c.this.a(afVar);
            }

            @Override // com.anythink.core.common.n.b.a.a.f
            public final void a(af afVar, af afVar2) {
                C1117c.a(afVar, afVar2);
            }

            @Override // com.anythink.core.common.n.b.a.a.f
            public final void a() {
                C1117c.this.a();
            }

            @Override // com.anythink.core.common.n.b.a.a.f
            public final void a(com.anythink.core.common.n.b.a.a.c cVar) {
                C1117c.this.a(cVar);
            }
        };
        this.f6746b = com.anythink.core.common.n.b.a.a.d.a(aVar, file, j2);
    }

    public static void a(af afVar, af afVar2) {
        d.a aVarA;
        C0070c c0070c = new C0070c(afVar2);
        try {
            aVarA = ((b) afVar.f6701g).f6765a.a();
            if (aVarA != null) {
                try {
                    c0070c.a(aVarA);
                    aVarA.b();
                } catch (IOException unused) {
                    a(aVarA);
                }
            }
        } catch (IOException unused2) {
            aVarA = null;
        }
    }

    private void b() {
        this.f6746b.a();
    }

    private static void a(d.a aVar) {
        if (aVar != null) {
            try {
                aVar.c();
            } catch (IOException unused) {
            }
        }
    }

    public final synchronized void a(com.anythink.core.common.n.b.a.a.c cVar) {
        this.f6751k++;
        if (cVar.f6049a != null) {
            this.f6749i++;
        } else {
            if (cVar.f6050b != null) {
                this.f6750j++;
            }
        }
    }

    public final synchronized void a() {
        this.f6750j++;
    }

    public static int a(com.anythink.core.common.n.c.e eVar) throws IOException {
        try {
            long jR = eVar.r();
            String strW = eVar.w();
            if (jR >= 0 && jR <= 2147483647L && strW.isEmpty()) {
                return (int) jR;
            }
            throw new IOException("expected an int but was \"" + jR + strW + "\"");
        } catch (NumberFormatException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public final af a(ad adVar) throws IOException {
        try {
            d.c cVarA = this.f6746b.a(a(adVar.f6676a));
            if (cVarA == null) {
                return null;
            }
            try {
                C0070c c0070c = new C0070c(cVarA.a(0));
                af afVarA = c0070c.a(cVarA);
                if (c0070c.a(adVar, afVarA)) {
                    return afVarA;
                }
                com.anythink.core.common.n.b.a.c.a(afVarA.f6701g);
                return null;
            } catch (IOException unused) {
                com.anythink.core.common.n.b.a.c.a(cVarA);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public final com.anythink.core.common.n.b.a.a.b a(af afVar) {
        d.a aVarB;
        String str = afVar.f6695a.f6677b;
        if (com.anythink.core.common.n.b.a.c.f.a(str)) {
            try {
                b(afVar.f6695a);
            } catch (IOException unused) {
            }
            return null;
        }
        if (!str.equals("GET") || com.anythink.core.common.n.b.a.c.e.b(afVar)) {
            return null;
        }
        C0070c c0070c = new C0070c(afVar);
        try {
            aVarB = this.f6746b.b(a(afVar.f6695a.f6676a));
            if (aVarB == null) {
                return null;
            }
            try {
                c0070c.a(aVarB);
                return new a(aVarB);
            } catch (IOException unused2) {
                a(aVarB);
                return null;
            }
        } catch (IOException unused3) {
            aVarB = null;
        }
    }

    /* renamed from: com.anythink.core.common.n.b.c$c, reason: collision with other inner class name */
    public static final class C0070c {

        /* renamed from: a, reason: collision with root package name */
        private static final String f6771a;

        /* renamed from: b, reason: collision with root package name */
        private static final String f6772b;

        /* renamed from: c, reason: collision with root package name */
        private final String f6773c;

        /* renamed from: d, reason: collision with root package name */
        private final u f6774d;

        /* renamed from: e, reason: collision with root package name */
        private final String f6775e;

        /* renamed from: f, reason: collision with root package name */
        private final ab f6776f;

        /* renamed from: g, reason: collision with root package name */
        private final int f6777g;

        /* renamed from: h, reason: collision with root package name */
        private final String f6778h;

        /* renamed from: i, reason: collision with root package name */
        private final u f6779i;

        /* renamed from: j, reason: collision with root package name */
        private final t f6780j;

        /* renamed from: k, reason: collision with root package name */
        private final long f6781k;

        /* renamed from: l, reason: collision with root package name */
        private final long f6782l;

        static {
            StringBuilder sb = new StringBuilder();
            com.anythink.core.common.n.b.a.g.c.e();
            sb.append(com.anythink.core.common.n.b.a.g.c.f());
            sb.append("-Sent-Millis");
            f6771a = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            com.anythink.core.common.n.b.a.g.c.e();
            sb2.append(com.anythink.core.common.n.b.a.g.c.f());
            sb2.append("-Received-Millis");
            f6772b = sb2.toString();
        }

        public C0070c(com.anythink.core.common.n.c.w wVar) {
            try {
                com.anythink.core.common.n.c.e eVarA = com.anythink.core.common.n.c.n.a(wVar);
                this.f6773c = eVarA.w();
                this.f6775e = eVarA.w();
                u.a aVar = new u.a();
                int iA = C1117c.a(eVarA);
                for (int i2 = 0; i2 < iA; i2++) {
                    aVar.a(eVarA.w());
                }
                this.f6774d = aVar.a();
                com.anythink.core.common.n.b.a.c.k kVarA = com.anythink.core.common.n.b.a.c.k.a(eVarA.w());
                this.f6776f = kVarA.f6256d;
                this.f6777g = kVarA.f6257e;
                this.f6778h = kVarA.f6258f;
                u.a aVar2 = new u.a();
                int iA2 = C1117c.a(eVarA);
                for (int i3 = 0; i3 < iA2; i3++) {
                    aVar2.a(eVarA.w());
                }
                String str = f6771a;
                String strC = aVar2.c(str);
                String str2 = f6772b;
                String strC2 = aVar2.c(str2);
                aVar2.b(str);
                aVar2.b(str2);
                this.f6781k = strC != null ? Long.parseLong(strC) : 0L;
                this.f6782l = strC2 != null ? Long.parseLong(strC2) : 0L;
                this.f6779i = aVar2.a();
                if (a()) {
                    String strW = eVarA.w();
                    if (strW.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + strW + "\"");
                    }
                    this.f6780j = t.a(!eVarA.g() ? ai.a(eVarA.w()) : ai.SSL_3_0, i.a(eVarA.w()), a(eVarA), a(eVarA));
                } else {
                    this.f6780j = null;
                }
                wVar.close();
            } catch (Throwable th) {
                wVar.close();
                throw th;
            }
        }

        public final void a(d.a aVar) throws IOException {
            com.anythink.core.common.n.c.d dVarA = com.anythink.core.common.n.c.n.a(aVar.a(0));
            dVarA.b(this.f6773c).l(10);
            dVarA.b(this.f6775e).l(10);
            dVarA.o(this.f6774d.a()).l(10);
            int iA = this.f6774d.a();
            for (int i2 = 0; i2 < iA; i2++) {
                dVarA.b(this.f6774d.a(i2)).b(": ").b(this.f6774d.b(i2)).l(10);
            }
            dVarA.b(new com.anythink.core.common.n.b.a.c.k(this.f6776f, this.f6777g, this.f6778h).toString()).l(10);
            dVarA.o(this.f6779i.a() + 2).l(10);
            int iA2 = this.f6779i.a();
            for (int i3 = 0; i3 < iA2; i3++) {
                dVarA.b(this.f6779i.a(i3)).b(": ").b(this.f6779i.b(i3)).l(10);
            }
            dVarA.b(f6771a).b(": ").o(this.f6781k).l(10);
            dVarA.b(f6772b).b(": ").o(this.f6782l).l(10);
            if (a()) {
                dVarA.l(10);
                dVarA.b(this.f6780j.b().bq).l(10);
                a(dVarA, this.f6780j.c());
                a(dVarA, this.f6780j.d());
                dVarA.b(this.f6780j.a().f6739f).l(10);
            }
            dVarA.close();
        }

        public C0070c(af afVar) {
            this.f6773c = afVar.f6695a.f6676a.toString();
            this.f6774d = com.anythink.core.common.n.b.a.c.e.c(afVar);
            this.f6775e = afVar.f6695a.f6677b;
            this.f6776f = afVar.f6696b;
            this.f6777g = afVar.f6697c;
            this.f6778h = afVar.f6698d;
            this.f6779i = afVar.f6700f;
            this.f6780j = afVar.f6699e;
            this.f6781k = afVar.f6705k;
            this.f6782l = afVar.f6706l;
        }

        private boolean a() {
            return this.f6773c.startsWith("https://");
        }

        private static List<Certificate> a(com.anythink.core.common.n.c.e eVar) throws IOException, CertificateException {
            int iA = C1117c.a(eVar);
            if (iA == -1) {
                return Collections.EMPTY_LIST;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(iA);
                for (int i2 = 0; i2 < iA; i2++) {
                    String strW = eVar.w();
                    com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
                    cVar.d(com.anythink.core.common.n.c.f.b(strW));
                    arrayList.add(certificateFactory.generateCertificate(cVar.i()));
                }
                return arrayList;
            } catch (CertificateException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        private static void a(com.anythink.core.common.n.c.d dVar, List<Certificate> list) throws IOException {
            try {
                dVar.o(list.size()).l(10);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    dVar.b(com.anythink.core.common.n.c.f.a(list.get(i2).getEncoded()).b()).l(10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public final boolean a(ad adVar, af afVar) {
            return this.f6773c.equals(adVar.f6676a.toString()) && this.f6775e.equals(adVar.f6677b) && com.anythink.core.common.n.b.a.c.e.a(afVar, this.f6774d, adVar);
        }

        public final af a(d.c cVar) {
            String strA = this.f6779i.a(AbstractC1114b.f5589g);
            String strA2 = this.f6779i.a(com.sigmob.sdk.downloader.core.c.f37366e);
            ad adVarB = new ad.a().a(this.f6773c).a(this.f6775e, (ae) null).a(this.f6774d).b();
            af.a aVar = new af.a();
            aVar.f6709a = adVarB;
            aVar.f6710b = this.f6776f;
            aVar.f6711c = this.f6777g;
            aVar.f6712d = this.f6778h;
            af.a aVarA = aVar.a(this.f6779i);
            aVarA.f6715g = new b(cVar, strA, strA2);
            aVarA.f6713e = this.f6780j;
            aVarA.f6719k = this.f6781k;
            aVarA.f6720l = this.f6782l;
            return aVarA.a();
        }
    }
}
