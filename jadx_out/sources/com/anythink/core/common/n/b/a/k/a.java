package com.anythink.core.common.n.b.a.k;

import com.anythink.core.common.n.b.a.k.c;
import com.anythink.core.common.n.b.a.k.d;
import com.anythink.core.common.n.b.aa;
import com.anythink.core.common.n.b.ab;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.aj;
import com.anythink.core.common.n.b.ak;
import com.anythink.core.common.n.b.r;
import com.anythink.core.common.n.b.z;
import com.anythink.core.common.n.c.f;
import com.anythink.core.common.n.c.n;
import com.sigmob.sdk.base.mta.PointType;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
public final class a implements c.a, aj {

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f6569b = true;

    /* renamed from: c, reason: collision with root package name */
    private static final List<ab> f6570c = Collections.singletonList(ab.HTTP_1_1);

    /* renamed from: d, reason: collision with root package name */
    private static final long f6571d = 16777216;

    /* renamed from: e, reason: collision with root package name */
    private static final long f6572e = 60000;

    /* renamed from: A, reason: collision with root package name */
    private boolean f6573A;

    /* renamed from: a, reason: collision with root package name */
    final ak f6574a;

    /* renamed from: f, reason: collision with root package name */
    private final ad f6575f;

    /* renamed from: g, reason: collision with root package name */
    private final Random f6576g;

    /* renamed from: h, reason: collision with root package name */
    private final long f6577h;

    /* renamed from: i, reason: collision with root package name */
    private final String f6578i;

    /* renamed from: j, reason: collision with root package name */
    private com.anythink.core.common.n.b.e f6579j;

    /* renamed from: k, reason: collision with root package name */
    private final Runnable f6580k;

    /* renamed from: l, reason: collision with root package name */
    private com.anythink.core.common.n.b.a.k.c f6581l;

    /* renamed from: m, reason: collision with root package name */
    private com.anythink.core.common.n.b.a.k.d f6582m;

    /* renamed from: n, reason: collision with root package name */
    private ScheduledExecutorService f6583n;

    /* renamed from: o, reason: collision with root package name */
    private e f6584o;

    /* renamed from: r, reason: collision with root package name */
    private long f6587r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f6588s;

    /* renamed from: t, reason: collision with root package name */
    private ScheduledFuture<?> f6589t;

    /* renamed from: v, reason: collision with root package name */
    private String f6591v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f6592w;

    /* renamed from: x, reason: collision with root package name */
    private int f6593x;

    /* renamed from: y, reason: collision with root package name */
    private int f6594y;

    /* renamed from: z, reason: collision with root package name */
    private int f6595z;

    /* renamed from: p, reason: collision with root package name */
    private final ArrayDeque<f> f6585p = new ArrayDeque<>();

    /* renamed from: q, reason: collision with root package name */
    private final ArrayDeque<Object> f6586q = new ArrayDeque<>();

    /* renamed from: u, reason: collision with root package name */
    private int f6590u = -1;

    /* renamed from: com.anythink.core.common.n.b.a.k.a$a, reason: collision with other inner class name */
    public final class RunnableC0069a implements Runnable {
        public RunnableC0069a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            a.this.c();
        }
    }

    public static final class b {

        /* renamed from: b, reason: collision with root package name */
        final f f6601b;

        /* renamed from: a, reason: collision with root package name */
        final int f6600a = 1001;

        /* renamed from: c, reason: collision with root package name */
        final long f6602c = 60000;

        public b(f fVar) {
            this.f6601b = fVar;
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        final int f6603a;

        /* renamed from: b, reason: collision with root package name */
        final f f6604b;

        public c(int i2, f fVar) {
            this.f6603a = i2;
            this.f6604b = fVar;
        }
    }

    public final class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() throws IOException {
            a.this.i();
        }
    }

    public static abstract class e implements Closeable {

        /* renamed from: c, reason: collision with root package name */
        public final boolean f6606c = true;

        /* renamed from: d, reason: collision with root package name */
        public final com.anythink.core.common.n.c.e f6607d;

        /* renamed from: e, reason: collision with root package name */
        public final com.anythink.core.common.n.c.d f6608e;

        public e(com.anythink.core.common.n.c.e eVar, com.anythink.core.common.n.c.d dVar) {
            this.f6607d = eVar;
            this.f6608e = dVar;
        }
    }

    public a(ad adVar, ak akVar, Random random, long j2) {
        if (!"GET".equals(adVar.b())) {
            throw new IllegalArgumentException("Request must be GET: " + adVar.b());
        }
        this.f6575f = adVar;
        this.f6574a = akVar;
        this.f6576g = random;
        this.f6577h = j2;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.f6578i = f.a(bArr).b();
        this.f6580k = new Runnable() { // from class: com.anythink.core.common.n.b.a.k.a.1
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                do {
                    try {
                    } catch (IOException unused) {
                        a.this.j();
                        return;
                    }
                } while (a.this.h());
            }
        };
    }

    private boolean k() throws IOException {
        try {
            this.f6581l.a();
            return this.f6590u == -1;
        } catch (Exception unused) {
            j();
            return false;
        }
    }

    private void l() throws InterruptedException {
        ScheduledFuture<?> scheduledFuture = this.f6589t;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f6583n.shutdown();
        this.f6583n.awaitTermination(10L, TimeUnit.SECONDS);
    }

    private synchronized int m() {
        return this.f6593x;
    }

    private synchronized int n() {
        return this.f6594y;
    }

    private synchronized int o() {
        return this.f6595z;
    }

    private void p() {
        if (!f6569b && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        ScheduledExecutorService scheduledExecutorService = this.f6583n;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.execute(this.f6580k);
        }
    }

    @Override // com.anythink.core.common.n.b.aj
    public final ad a() {
        return this.f6575f;
    }

    @Override // com.anythink.core.common.n.b.aj
    public final synchronized long b() {
        return this.f6587r;
    }

    @Override // com.anythink.core.common.n.b.aj
    public final void c() {
        this.f6579j.c();
    }

    public final void d() throws IOException {
        while (this.f6590u == -1) {
            this.f6581l.a();
        }
    }

    @Override // com.anythink.core.common.n.b.a.k.c.a
    public final void e() {
    }

    @Override // com.anythink.core.common.n.b.a.k.c.a
    public final void f() {
    }

    @Override // com.anythink.core.common.n.b.a.k.c.a
    public final synchronized void g() {
        this.f6595z++;
        this.f6573A = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v5 */
    public final boolean h() throws IOException {
        e eVar;
        synchronized (this) {
            try {
                if (this.f6592w) {
                    return false;
                }
                com.anythink.core.common.n.b.a.k.d dVar = this.f6582m;
                f fVarPoll = this.f6585p.poll();
                c cVar = 0;
                if (fVarPoll == null) {
                    Object objPoll = this.f6586q.poll();
                    if (objPoll instanceof b) {
                        if (this.f6590u != -1) {
                            eVar = this.f6584o;
                            this.f6584o = null;
                            this.f6583n.shutdown();
                            cVar = objPoll;
                        } else {
                            this.f6589t = this.f6583n.schedule(new RunnableC0069a(), ((b) objPoll).f6602c, TimeUnit.MILLISECONDS);
                        }
                    } else if (objPoll == null) {
                        return false;
                    }
                    eVar = null;
                    cVar = objPoll;
                } else {
                    eVar = null;
                }
                try {
                    if (fVarPoll != null) {
                        dVar.b(fVarPoll);
                    } else if (cVar instanceof c) {
                        f fVar = cVar.f6604b;
                        int i2 = cVar.f6603a;
                        long j2 = fVar.j();
                        if (dVar.f6650h) {
                            throw new IllegalStateException("Another message writer is active. Did you call close()?");
                        }
                        dVar.f6650h = true;
                        d.a aVar = dVar.f6649g;
                        aVar.f6653a = i2;
                        aVar.f6654b = j2;
                        aVar.f6655c = true;
                        aVar.f6656d = false;
                        com.anythink.core.common.n.c.d dVarA = n.a(aVar);
                        dVarA.d(fVar);
                        dVarA.close();
                        synchronized (this) {
                            this.f6587r -= fVar.j();
                        }
                    } else {
                        if (!(cVar instanceof b)) {
                            throw new AssertionError();
                        }
                        b bVar = (b) cVar;
                        dVar.a(bVar.f6600a, bVar.f6601b);
                    }
                    com.anythink.core.common.n.b.a.c.a(eVar);
                    return true;
                } catch (Throwable th) {
                    com.anythink.core.common.n.b.a.c.a(eVar);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i() throws IOException {
        synchronized (this) {
            try {
                if (this.f6592w) {
                    return;
                }
                com.anythink.core.common.n.b.a.k.d dVar = this.f6582m;
                int i2 = this.f6573A ? this.f6593x : -1;
                this.f6593x++;
                this.f6573A = true;
                if (i2 == -1) {
                    try {
                        dVar.a(f.f7071b);
                        return;
                    } catch (IOException unused) {
                        j();
                        return;
                    }
                }
                new SocketTimeoutException("sent ping but didn't receive pong within " + this.f6577h + "ms (after " + (i2 - 1) + " successful ping/pongs)");
                j();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j() throws IOException {
        synchronized (this) {
            try {
                if (this.f6592w) {
                    return;
                }
                this.f6592w = true;
                e eVar = this.f6584o;
                this.f6584o = null;
                ScheduledFuture<?> scheduledFuture = this.f6589t;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                ScheduledExecutorService scheduledExecutorService = this.f6583n;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdown();
                }
                com.anythink.core.common.n.b.a.c.a(eVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private synchronized boolean c(f fVar) {
        try {
            if (!this.f6592w && (!this.f6588s || !this.f6586q.isEmpty())) {
                this.f6585p.add(fVar);
                p();
                return true;
            }
            return false;
        } finally {
        }
    }

    public final void a(z zVar) {
        z zVarA = zVar.t().a(r.f6916a).a(f6570c).a();
        final ad adVarB = this.f6575f.e().a("Upgrade", "websocket").a("Connection", "Upgrade").a("Sec-WebSocket-Key", this.f6578i).a("Sec-WebSocket-Version", PointType.SIGMOB_REPORT_TRACKING).b();
        com.anythink.core.common.n.b.e eVarA = com.anythink.core.common.n.b.a.a.f6042a.a(zVarA, adVarB);
        this.f6579j = eVarA;
        eVarA.a(new com.anythink.core.common.n.b.f() { // from class: com.anythink.core.common.n.b.a.k.a.2
            @Override // com.anythink.core.common.n.b.f
            public final void a(af afVar) throws IOException {
                com.anythink.core.common.n.b.a.b.c cVarA = com.anythink.core.common.n.b.a.a.f6042a.a(afVar);
                try {
                    a.this.a(afVar, cVarA);
                    try {
                        a.this.a(aa.f6658a + " webSocket " + adVarB.a().l(), cVarA.f());
                        a.this.d();
                    } catch (Exception unused) {
                        a.this.j();
                    }
                } catch (IOException unused2) {
                    if (cVarA != null) {
                        cVarA.g();
                    }
                    a.this.j();
                    com.anythink.core.common.n.b.a.c.a(afVar);
                }
            }

            @Override // com.anythink.core.common.n.b.f
            public final void a(IOException iOException) throws IOException {
                a.this.j();
            }
        });
    }

    @Override // com.anythink.core.common.n.b.a.k.c.a
    public final synchronized void b(f fVar) {
        try {
            if (!this.f6592w && (!this.f6588s || !this.f6586q.isEmpty())) {
                this.f6585p.add(fVar);
                p();
                this.f6594y++;
            }
        } finally {
        }
    }

    private synchronized boolean c(String str) {
        f fVarA;
        try {
            com.anythink.core.common.n.b.a.k.b.b(1001);
            if (str != null) {
                fVarA = f.a(str);
                if (fVarA.j() > 123) {
                    throw new IllegalArgumentException("reason.size() > 123: ".concat(str));
                }
            } else {
                fVarA = null;
            }
            if (!this.f6592w && !this.f6588s) {
                this.f6588s = true;
                this.f6586q.add(new b(fVarA));
                p();
                return true;
            }
            return false;
        } finally {
        }
    }

    @Override // com.anythink.core.common.n.b.aj
    public final boolean b(String str) {
        return c(str);
    }

    public final void a(af afVar, com.anythink.core.common.n.b.a.b.c cVar) throws ProtocolException {
        if (afVar.c() == 101) {
            String strA = afVar.a("Connection");
            if ("Upgrade".equalsIgnoreCase(strA)) {
                String strA2 = afVar.a("Upgrade");
                if ("websocket".equalsIgnoreCase(strA2)) {
                    String strA3 = afVar.a("Sec-WebSocket-Accept");
                    String strB = f.a(this.f6578i + WebSocketProtocol.ACCEPT_MAGIC).d().b();
                    if (strB.equals(strA3)) {
                        if (cVar == null) {
                            throw new ProtocolException("Web Socket exchange missing: bad interceptor?");
                        }
                        return;
                    }
                    throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + strB + "' but was '" + strA3 + "'");
                }
                throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + strA2 + "'");
            }
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + strA + "'");
        }
        throw new ProtocolException("Expected HTTP 101 response but was '" + afVar.c() + " " + afVar.d() + "'");
    }

    public final void a(String str, e eVar) {
        synchronized (this) {
            try {
                this.f6584o = eVar;
                this.f6582m = new com.anythink.core.common.n.b.a.k.d(eVar.f6606c, eVar.f6608e, this.f6576g);
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, com.anythink.core.common.n.b.a.c.a(str, false));
                this.f6583n = scheduledThreadPoolExecutor;
                if (this.f6577h != 0) {
                    d dVar = new d();
                    long j2 = this.f6577h;
                    scheduledThreadPoolExecutor.scheduleAtFixedRate(dVar, j2, j2, TimeUnit.MILLISECONDS);
                }
                if (!this.f6586q.isEmpty()) {
                    p();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f6581l = new com.anythink.core.common.n.b.a.k.c(eVar.f6606c, eVar.f6607d, this);
    }

    private void a(int i2, TimeUnit timeUnit) throws InterruptedException {
        this.f6583n.awaitTermination(i2, timeUnit);
    }

    @Override // com.anythink.core.common.n.b.a.k.c.a
    public final void a(int i2, String str) throws IOException {
        e eVar;
        if (i2 != -1) {
            synchronized (this) {
                try {
                    if (this.f6590u == -1) {
                        this.f6590u = i2;
                        this.f6591v = str;
                        eVar = null;
                        if (this.f6588s && this.f6586q.isEmpty()) {
                            e eVar2 = this.f6584o;
                            this.f6584o = null;
                            ScheduledFuture<?> scheduledFuture = this.f6589t;
                            if (scheduledFuture != null) {
                                scheduledFuture.cancel(false);
                            }
                            this.f6583n.shutdown();
                            eVar = eVar2;
                        }
                    } else {
                        throw new IllegalStateException("already closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            com.anythink.core.common.n.b.a.c.a(eVar);
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.anythink.core.common.n.b.aj
    public final boolean a(String str) {
        if (str != null) {
            return a(f.a(str), 1);
        }
        throw new NullPointerException("text == null");
    }

    @Override // com.anythink.core.common.n.b.aj
    public final boolean a(f fVar) {
        if (fVar != null) {
            return a(fVar, 2);
        }
        throw new NullPointerException("bytes == null");
    }

    private synchronized boolean a(f fVar, int i2) {
        if (!this.f6592w && !this.f6588s) {
            if (this.f6587r + fVar.j() > 16777216) {
                c((String) null);
                return false;
            }
            this.f6587r += fVar.j();
            this.f6586q.add(new c(i2, fVar));
            p();
            return true;
        }
        return false;
    }
}
