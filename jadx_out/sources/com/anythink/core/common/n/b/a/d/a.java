package com.anythink.core.common.n.b.a.d;

import com.anythink.core.common.n.b.a.c.i;
import com.anythink.core.common.n.b.a.c.k;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.u;
import com.anythink.core.common.n.b.z;
import com.anythink.core.common.n.c.j;
import com.anythink.core.common.n.c.v;
import com.anythink.core.common.n.c.w;
import com.anythink.core.common.n.c.x;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class a implements com.anythink.core.common.n.b.a.c.c {

    /* renamed from: b, reason: collision with root package name */
    private static final int f6259b = 0;

    /* renamed from: c, reason: collision with root package name */
    private static final int f6260c = 1;

    /* renamed from: d, reason: collision with root package name */
    private static final int f6261d = 2;

    /* renamed from: e, reason: collision with root package name */
    private static final int f6262e = 3;

    /* renamed from: f, reason: collision with root package name */
    private static final int f6263f = 4;

    /* renamed from: g, reason: collision with root package name */
    private static final int f6264g = 5;

    /* renamed from: h, reason: collision with root package name */
    private static final int f6265h = 6;

    /* renamed from: i, reason: collision with root package name */
    private static final int f6266i = 262144;

    /* renamed from: j, reason: collision with root package name */
    private final z f6267j;

    /* renamed from: k, reason: collision with root package name */
    private final com.anythink.core.common.n.b.a.b.e f6268k;

    /* renamed from: l, reason: collision with root package name */
    private final com.anythink.core.common.n.c.e f6269l;

    /* renamed from: m, reason: collision with root package name */
    private final com.anythink.core.common.n.c.d f6270m;

    /* renamed from: n, reason: collision with root package name */
    private int f6271n = 0;

    /* renamed from: o, reason: collision with root package name */
    private long f6272o = 262144;

    /* renamed from: p, reason: collision with root package name */
    private u f6273p;

    public final class b implements v {

        /* renamed from: b, reason: collision with root package name */
        private final j f6278b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f6279c;

        public b() {
            this.f6278b = new j(a.this.f6270m.a());
        }

        @Override // com.anythink.core.common.n.c.v
        public final x a() {
            return this.f6278b;
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.f6279c) {
                return;
            }
            this.f6279c = true;
            a.this.f6270m.b("0\r\n\r\n");
            a.a(this.f6278b);
            a.this.f6271n = 3;
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Flushable
        public final synchronized void flush() {
            if (this.f6279c) {
                return;
            }
            a.this.f6270m.flush();
        }

        @Override // com.anythink.core.common.n.c.v
        public final void a(com.anythink.core.common.n.c.c cVar, long j2) {
            if (this.f6279c) {
                throw new IllegalStateException("closed");
            }
            if (j2 == 0) {
                return;
            }
            a.this.f6270m.n(j2);
            a.this.f6270m.b("\r\n");
            a.this.f6270m.a(cVar, j2);
            a.this.f6270m.b("\r\n");
        }
    }

    public class c extends AbstractC0067a {

        /* renamed from: e, reason: collision with root package name */
        private static final long f6280e = -1;

        /* renamed from: f, reason: collision with root package name */
        private final com.anythink.core.common.n.b.v f6282f;

        /* renamed from: g, reason: collision with root package name */
        private long f6283g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f6284h;

        public c(com.anythink.core.common.n.b.v vVar) {
            super(a.this, (byte) 0);
            this.f6283g = -1L;
            this.f6284h = true;
            this.f6282f = vVar;
        }

        private void c() throws ProtocolException {
            if (this.f6283g != -1) {
                a.this.f6269l.w();
            }
            try {
                this.f6283g = a.this.f6269l.s();
                String strTrim = a.this.f6269l.w().trim();
                if (this.f6283g < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f6283g + strTrim + "\"");
                }
                if (this.f6283g == 0) {
                    this.f6284h = false;
                    a aVar = a.this;
                    aVar.f6273p = aVar.h();
                    com.anythink.core.common.n.b.a.c.e.a(a.this.f6267j.e(), this.f6282f, a.this.f6273p);
                    b();
                }
            } catch (NumberFormatException e2) {
                throw new ProtocolException(e2.getMessage());
            }
        }

        @Override // com.anythink.core.common.n.b.a.d.a.AbstractC0067a, com.anythink.core.common.n.c.w
        public final long a_(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
            }
            if (this.f6275b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f6284h) {
                return -1L;
            }
            long j3 = this.f6283g;
            if (j3 == 0 || j3 == -1) {
                if (j3 != -1) {
                    a.this.f6269l.w();
                }
                try {
                    this.f6283g = a.this.f6269l.s();
                    String strTrim = a.this.f6269l.w().trim();
                    if (this.f6283g < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                        throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f6283g + strTrim + "\"");
                    }
                    if (this.f6283g == 0) {
                        this.f6284h = false;
                        a aVar = a.this;
                        aVar.f6273p = aVar.h();
                        com.anythink.core.common.n.b.a.c.e.a(a.this.f6267j.e(), this.f6282f, a.this.f6273p);
                        b();
                    }
                    if (!this.f6284h) {
                        return -1L;
                    }
                } catch (NumberFormatException e2) {
                    throw new ProtocolException(e2.getMessage());
                }
            }
            long jA_ = super.a_(cVar, Math.min(j2, this.f6283g));
            if (jA_ != -1) {
                this.f6283g -= jA_;
                return jA_;
            }
            a.this.f6268k.e();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            b();
            throw protocolException;
        }

        @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f6275b) {
                return;
            }
            if (this.f6284h && !com.anythink.core.common.n.b.a.c.a(this, TimeUnit.MILLISECONDS)) {
                a.this.f6268k.e();
                b();
            }
            this.f6275b = true;
        }
    }

    public class d extends AbstractC0067a {

        /* renamed from: e, reason: collision with root package name */
        private long f6286e;

        public d(long j2) {
            super(a.this, (byte) 0);
            this.f6286e = j2;
            if (j2 == 0) {
                b();
            }
        }

        @Override // com.anythink.core.common.n.b.a.d.a.AbstractC0067a, com.anythink.core.common.n.c.w
        public final long a_(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
            }
            if (this.f6275b) {
                throw new IllegalStateException("closed");
            }
            long j3 = this.f6286e;
            if (j3 == 0) {
                return -1L;
            }
            long jA_ = super.a_(cVar, Math.min(j3, j2));
            if (jA_ == -1) {
                a.this.f6268k.e();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                b();
                throw protocolException;
            }
            long j4 = this.f6286e - jA_;
            this.f6286e = j4;
            if (j4 == 0) {
                b();
            }
            return jA_;
        }

        @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f6275b) {
                return;
            }
            if (this.f6286e != 0 && !com.anythink.core.common.n.b.a.c.a(this, TimeUnit.MILLISECONDS)) {
                a.this.f6268k.e();
                b();
            }
            this.f6275b = true;
        }
    }

    public final class e implements v {

        /* renamed from: b, reason: collision with root package name */
        private final j f6288b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f6289c;

        private e() {
            this.f6288b = new j(a.this.f6270m.a());
        }

        @Override // com.anythink.core.common.n.c.v
        public final x a() {
            return this.f6288b;
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f6289c) {
                return;
            }
            this.f6289c = true;
            a.a(this.f6288b);
            a.this.f6271n = 3;
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Flushable
        public final void flush() {
            if (this.f6289c) {
                return;
            }
            a.this.f6270m.flush();
        }

        @Override // com.anythink.core.common.n.c.v
        public final void a(com.anythink.core.common.n.c.c cVar, long j2) {
            if (this.f6289c) {
                throw new IllegalStateException("closed");
            }
            com.anythink.core.common.n.b.a.c.a(cVar.b(), j2);
            a.this.f6270m.a(cVar, j2);
        }

        public /* synthetic */ e(a aVar, byte b3) {
            this();
        }
    }

    public class f extends AbstractC0067a {

        /* renamed from: e, reason: collision with root package name */
        private boolean f6291e;

        private f() {
            super(a.this, (byte) 0);
        }

        @Override // com.anythink.core.common.n.b.a.d.a.AbstractC0067a, com.anythink.core.common.n.c.w
        public final long a_(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
            }
            if (this.f6275b) {
                throw new IllegalStateException("closed");
            }
            if (this.f6291e) {
                return -1L;
            }
            long jA_ = super.a_(cVar, j2);
            if (jA_ != -1) {
                return jA_;
            }
            this.f6291e = true;
            b();
            return -1L;
        }

        @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f6275b) {
                return;
            }
            if (!this.f6291e) {
                b();
            }
            this.f6275b = true;
        }

        public /* synthetic */ f(a aVar, byte b3) {
            this();
        }
    }

    public a(z zVar, com.anythink.core.common.n.b.a.b.e eVar, com.anythink.core.common.n.c.e eVar2, com.anythink.core.common.n.c.d dVar) {
        this.f6267j = zVar;
        this.f6268k = eVar;
        this.f6269l = eVar2;
        this.f6270m = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u h() {
        u.a aVar = new u.a();
        while (true) {
            String strG = g();
            if (strG.length() == 0) {
                return aVar.a();
            }
            com.anythink.core.common.n.b.a.a.f6042a.a(aVar, strG);
        }
    }

    private v i() {
        if (this.f6271n == 1) {
            this.f6271n = 2;
            return new b();
        }
        throw new IllegalStateException("state: " + this.f6271n);
    }

    private v j() {
        if (this.f6271n == 1) {
            this.f6271n = 2;
            return new e(this, (byte) 0);
        }
        throw new IllegalStateException("state: " + this.f6271n);
    }

    private w k() {
        if (this.f6271n == 4) {
            this.f6271n = 5;
            this.f6268k.e();
            return new f(this, (byte) 0);
        }
        throw new IllegalStateException("state: " + this.f6271n);
    }

    /* renamed from: com.anythink.core.common.n.b.a.d.a$a, reason: collision with other inner class name */
    public abstract class AbstractC0067a implements w {

        /* renamed from: a, reason: collision with root package name */
        protected final j f6274a;

        /* renamed from: b, reason: collision with root package name */
        protected boolean f6275b;

        private AbstractC0067a() {
            this.f6274a = new j(a.this.f6269l.a());
        }

        @Override // com.anythink.core.common.n.c.w
        public final x a() {
            return this.f6274a;
        }

        @Override // com.anythink.core.common.n.c.w
        public long a_(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            try {
                return a.this.f6269l.a_(cVar, j2);
            } catch (IOException e2) {
                a.this.f6268k.e();
                b();
                throw e2;
            }
        }

        public final void b() {
            if (a.this.f6271n == 6) {
                return;
            }
            if (a.this.f6271n == 5) {
                a.a(this.f6274a);
                a.this.f6271n = 6;
            } else {
                throw new IllegalStateException("state: " + a.this.f6271n);
            }
        }

        public /* synthetic */ AbstractC0067a(a aVar, byte b3) {
            this();
        }
    }

    private boolean f() {
        return this.f6271n == 6;
    }

    private String g() {
        String strF = this.f6269l.f(this.f6272o);
        this.f6272o -= strF.length();
        return strF;
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final w b(af afVar) {
        if (!com.anythink.core.common.n.b.a.c.e.d(afVar)) {
            return a(0L);
        }
        if ("chunked".equalsIgnoreCase(afVar.a(com.sigmob.sdk.downloader.core.c.f37369h))) {
            com.anythink.core.common.n.b.v vVarA = afVar.a().a();
            if (this.f6271n == 4) {
                this.f6271n = 5;
                return new c(vVarA);
            }
            throw new IllegalStateException("state: " + this.f6271n);
        }
        long jA = com.anythink.core.common.n.b.a.c.e.a(afVar);
        if (jA != -1) {
            return a(jA);
        }
        if (this.f6271n == 4) {
            this.f6271n = 5;
            this.f6268k.e();
            return new f(this, (byte) 0);
        }
        throw new IllegalStateException("state: " + this.f6271n);
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void c() {
        this.f6270m.flush();
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final u d() {
        if (this.f6271n != 6) {
            throw new IllegalStateException("too early; can't read the trailers yet");
        }
        u uVar = this.f6273p;
        return uVar != null ? uVar : com.anythink.core.common.n.b.a.c.f6217c;
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void e() throws IOException {
        com.anythink.core.common.n.b.a.b.e eVar = this.f6268k;
        if (eVar != null) {
            eVar.f();
        }
    }

    public final void c(af afVar) {
        long jA = com.anythink.core.common.n.b.a.c.e.a(afVar);
        if (jA == -1) {
            return;
        }
        w wVarA = a(jA);
        com.anythink.core.common.n.b.a.c.a(wVarA, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        wVarA.close();
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final com.anythink.core.common.n.b.a.b.e a() {
        return this.f6268k;
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final v a(ad adVar, long j2) {
        if (adVar.d() != null) {
            adVar.d();
        }
        if ("chunked".equalsIgnoreCase(adVar.a(com.sigmob.sdk.downloader.core.c.f37369h))) {
            if (this.f6271n == 1) {
                this.f6271n = 2;
                return new b();
            }
            throw new IllegalStateException("state: " + this.f6271n);
        }
        if (j2 != -1) {
            if (this.f6271n == 1) {
                this.f6271n = 2;
                return new e(this, (byte) 0);
            }
            throw new IllegalStateException("state: " + this.f6271n);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void a(ad adVar) {
        Proxy.Type type = this.f6268k.a().b().type();
        StringBuilder sb = new StringBuilder();
        sb.append(adVar.b());
        sb.append(' ');
        if (!adVar.g() && type == Proxy.Type.HTTP) {
            sb.append(adVar.a());
        } else {
            sb.append(i.a(adVar.a()));
        }
        sb.append(" HTTP/1.1");
        a(adVar.c(), sb.toString());
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final void b() {
        this.f6270m.flush();
    }

    private static void b(j jVar) {
        x xVarA = jVar.a();
        jVar.a(x.f7140c);
        xVarA.f();
        xVarA.d_();
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final long a(af afVar) {
        if (!com.anythink.core.common.n.b.a.c.e.d(afVar)) {
            return 0L;
        }
        if ("chunked".equalsIgnoreCase(afVar.a(com.sigmob.sdk.downloader.core.c.f37369h))) {
            return -1L;
        }
        return com.anythink.core.common.n.b.a.c.e.a(afVar);
    }

    public final void a(u uVar, String str) {
        if (this.f6271n == 0) {
            this.f6270m.b(str).b("\r\n");
            int iA = uVar.a();
            for (int i2 = 0; i2 < iA; i2++) {
                this.f6270m.b(uVar.a(i2)).b(": ").b(uVar.b(i2)).b("\r\n");
            }
            this.f6270m.b("\r\n");
            this.f6271n = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f6271n);
    }

    @Override // com.anythink.core.common.n.b.a.c.c
    public final af.a a(boolean z2) throws NumberFormatException, IOException {
        String strL;
        int i2 = this.f6271n;
        if (i2 != 1 && i2 != 3) {
            throw new IllegalStateException("state: " + this.f6271n);
        }
        try {
            k kVarA = k.a(g());
            af.a aVarA = new af.a().a(kVarA.f6256d).a(kVarA.f6257e).a(kVarA.f6258f).a(h());
            if (z2 && kVarA.f6257e == 100) {
                return null;
            }
            if (kVarA.f6257e == 100) {
                this.f6271n = 3;
                return aVarA;
            }
            this.f6271n = 4;
            return aVarA;
        } catch (EOFException e2) {
            com.anythink.core.common.n.b.a.b.e eVar = this.f6268k;
            if (eVar != null) {
                strL = eVar.a().a().a().l();
            } else {
                strL = "unknown";
            }
            throw new IOException("unexpected end of stream on ".concat(String.valueOf(strL)), e2);
        }
    }

    private w a(long j2) {
        if (this.f6271n == 4) {
            this.f6271n = 5;
            return new d(j2);
        }
        throw new IllegalStateException("state: " + this.f6271n);
    }

    private w a(com.anythink.core.common.n.b.v vVar) {
        if (this.f6271n == 4) {
            this.f6271n = 5;
            return new c(vVar);
        }
        throw new IllegalStateException("state: " + this.f6271n);
    }

    public static /* synthetic */ void a(j jVar) {
        x xVarA = jVar.a();
        jVar.a(x.f7140c);
        xVarA.f();
        xVarA.d_();
    }
}
