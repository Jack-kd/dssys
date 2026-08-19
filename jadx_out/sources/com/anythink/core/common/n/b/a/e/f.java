package com.anythink.core.common.n.b.a.e;

import com.anythink.core.common.n.b.a.e.h;
import com.anythink.core.common.n.b.aa;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class f implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    static final int f6368a = 16777216;

    /* renamed from: b, reason: collision with root package name */
    static final int f6369b = 1;

    /* renamed from: c, reason: collision with root package name */
    static final int f6370c = 2;

    /* renamed from: d, reason: collision with root package name */
    static final int f6371d = 3;

    /* renamed from: e, reason: collision with root package name */
    static final long f6372e = 1000000000;

    /* renamed from: u, reason: collision with root package name */
    static final /* synthetic */ boolean f6373u = true;

    /* renamed from: v, reason: collision with root package name */
    private static final ExecutorService f6374v = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.anythink.core.common.n.b.a.c.a(aa.f6658a + " Http2Connection", true));

    /* renamed from: f, reason: collision with root package name */
    final boolean f6381f;

    /* renamed from: g, reason: collision with root package name */
    final c f6382g;

    /* renamed from: i, reason: collision with root package name */
    final String f6384i;

    /* renamed from: j, reason: collision with root package name */
    int f6385j;

    /* renamed from: k, reason: collision with root package name */
    int f6386k;

    /* renamed from: l, reason: collision with root package name */
    final l f6387l;

    /* renamed from: n, reason: collision with root package name */
    long f6389n;

    /* renamed from: p, reason: collision with root package name */
    final m f6391p;

    /* renamed from: q, reason: collision with root package name */
    final Socket f6392q;

    /* renamed from: r, reason: collision with root package name */
    final j f6393r;

    /* renamed from: s, reason: collision with root package name */
    final e f6394s;

    /* renamed from: t, reason: collision with root package name */
    final Set<Integer> f6395t;

    /* renamed from: w, reason: collision with root package name */
    private boolean f6396w;

    /* renamed from: x, reason: collision with root package name */
    private final ScheduledExecutorService f6397x;

    /* renamed from: y, reason: collision with root package name */
    private final ExecutorService f6398y;

    /* renamed from: h, reason: collision with root package name */
    final Map<Integer, i> f6383h = new LinkedHashMap();

    /* renamed from: z, reason: collision with root package name */
    private long f6399z = 0;

    /* renamed from: A, reason: collision with root package name */
    private long f6375A = 0;

    /* renamed from: B, reason: collision with root package name */
    private long f6376B = 0;

    /* renamed from: C, reason: collision with root package name */
    private long f6377C = 0;

    /* renamed from: D, reason: collision with root package name */
    private long f6378D = 0;

    /* renamed from: E, reason: collision with root package name */
    private long f6379E = 0;

    /* renamed from: F, reason: collision with root package name */
    private long f6380F = 0;

    /* renamed from: m, reason: collision with root package name */
    long f6388m = 0;

    /* renamed from: o, reason: collision with root package name */
    m f6390o = new m();

    public final class b extends com.anythink.core.common.n.b.a.b {
        public b() {
            super(aa.f6658a + " %s ping", f.this.f6384i);
        }

        @Override // com.anythink.core.common.n.b.a.b
        public final void c() throws IOException {
            boolean z2;
            synchronized (f.this) {
                if (f.this.f6375A < f.this.f6399z) {
                    z2 = true;
                } else {
                    f.c(f.this);
                    z2 = false;
                }
            }
            if (z2) {
                f.this.a((IOException) null);
            } else {
                f.this.a(false, 1, 0);
            }
        }
    }

    public static abstract class c {

        /* renamed from: h, reason: collision with root package name */
        public static final c f6431h = new c() { // from class: com.anythink.core.common.n.b.a.e.f.c.1
            @Override // com.anythink.core.common.n.b.a.e.f.c
            public final void a(i iVar) {
                iVar.a(com.anythink.core.common.n.b.a.e.b.REFUSED_STREAM, (IOException) null);
            }
        };

        public void a(f fVar) {
        }

        public abstract void a(i iVar);
    }

    public final class d extends com.anythink.core.common.n.b.a.b {

        /* renamed from: a, reason: collision with root package name */
        final boolean f6432a;

        /* renamed from: b, reason: collision with root package name */
        final int f6433b;

        /* renamed from: d, reason: collision with root package name */
        final int f6434d;

        public d(int i2, int i3) {
            super(aa.f6658a + " %s ping %08x%08x", f.this.f6384i, Integer.valueOf(i2), Integer.valueOf(i3));
            this.f6432a = true;
            this.f6433b = i2;
            this.f6434d = i3;
        }

        @Override // com.anythink.core.common.n.b.a.b
        public final void c() throws IOException {
            f.this.a(this.f6432a, this.f6433b, this.f6434d);
        }
    }

    public class e extends com.anythink.core.common.n.b.a.b implements h.b {

        /* renamed from: a, reason: collision with root package name */
        final h f6436a;

        /* renamed from: com.anythink.core.common.n.b.a.e.f$e$3, reason: invalid class name */
        public class AnonymousClass3 extends com.anythink.core.common.n.b.a.b {
            public AnonymousClass3(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // com.anythink.core.common.n.b.a.b
            public final void c() {
                f fVar = f.this;
                fVar.f6382g.a(fVar);
            }
        }

        public e(h hVar) {
            super(aa.f6658a + " %s", f.this.f6384i);
            this.f6436a = hVar;
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a() {
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.anythink.core.common.n.b.a.e.b] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5, types: [com.anythink.core.common.n.b.a.e.h, java.io.Closeable] */
        @Override // com.anythink.core.common.n.b.a.b
        public final void c() throws Throwable {
            com.anythink.core.common.n.b.a.e.b bVar;
            com.anythink.core.common.n.b.a.e.b bVar2 = com.anythink.core.common.n.b.a.e.b.INTERNAL_ERROR;
            IOException e2 = null;
            try {
                try {
                    this.f6436a.a(this);
                    while (this.f6436a.a(false, (h.b) this)) {
                    }
                    com.anythink.core.common.n.b.a.e.b bVar3 = com.anythink.core.common.n.b.a.e.b.NO_ERROR;
                    try {
                        f.this.a(bVar3, com.anythink.core.common.n.b.a.e.b.CANCEL, (IOException) null);
                        bVar = bVar3;
                    } catch (IOException e3) {
                        e2 = e3;
                        com.anythink.core.common.n.b.a.e.b bVar4 = com.anythink.core.common.n.b.a.e.b.PROTOCOL_ERROR;
                        f fVar = f.this;
                        fVar.a(bVar4, bVar4, e2);
                        bVar = fVar;
                        bVar2 = this.f6436a;
                        com.anythink.core.common.n.b.a.c.a((Closeable) bVar2);
                    }
                } catch (Throwable th) {
                    th = th;
                    f.this.a(bVar, bVar2, e2);
                    com.anythink.core.common.n.b.a.c.a(this.f6436a);
                    throw th;
                }
            } catch (IOException e4) {
                e2 = e4;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                f.this.a(bVar, bVar2, e2);
                com.anythink.core.common.n.b.a.c.a(this.f6436a);
                throw th;
            }
            bVar2 = this.f6436a;
            com.anythink.core.common.n.b.a.c.a((Closeable) bVar2);
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void d() {
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(boolean z2, int i2, com.anythink.core.common.n.c.e eVar, int i3) throws IOException {
            if (f.c(i2)) {
                f.this.a(i2, eVar, i3, z2);
                return;
            }
            i iVarA = f.this.a(i2);
            if (iVarA == null) {
                f.this.a(i2, com.anythink.core.common.n.b.a.e.b.PROTOCOL_ERROR);
                long j2 = i3;
                f.this.a(j2);
                eVar.i(j2);
                return;
            }
            iVarA.a(eVar, i3);
            if (z2) {
                iVarA.a(com.anythink.core.common.n.b.a.c.f6217c, true);
            }
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(boolean z2, int i2, List<com.anythink.core.common.n.b.a.e.c> list) {
            if (f.c(i2)) {
                f.this.a(i2, list, z2);
                return;
            }
            synchronized (f.this) {
                try {
                    i iVarA = f.this.a(i2);
                    if (iVarA == null) {
                        if (f.this.f6396w) {
                            return;
                        }
                        f fVar = f.this;
                        if (i2 <= fVar.f6385j) {
                            return;
                        }
                        if (i2 % 2 == fVar.f6386k % 2) {
                            return;
                        }
                        final i iVar = new i(i2, f.this, false, z2, com.anythink.core.common.n.b.a.c.b(list));
                        f fVar2 = f.this;
                        fVar2.f6385j = i2;
                        fVar2.f6383h.put(Integer.valueOf(i2), iVar);
                        f.f6374v.execute(new com.anythink.core.common.n.b.a.b(aa.f6658a + " %s stream %d", new Object[]{f.this.f6384i, Integer.valueOf(i2)}) { // from class: com.anythink.core.common.n.b.a.e.f.e.1
                            @Override // com.anythink.core.common.n.b.a.b
                            public final void c() {
                                try {
                                    f.this.f6382g.a(iVar);
                                } catch (IOException e2) {
                                    com.anythink.core.common.n.b.a.g.c.e().a(4, "Http2Connection.Listener failure for " + f.this.f6384i, e2);
                                    try {
                                        iVar.a(com.anythink.core.common.n.b.a.e.b.PROTOCOL_ERROR, e2);
                                    } catch (IOException unused) {
                                    }
                                }
                            }
                        });
                        return;
                    }
                    iVarA.a(com.anythink.core.common.n.b.a.c.b(list), z2);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(int i2, com.anythink.core.common.n.b.a.e.b bVar) {
            if (f.c(i2)) {
                f.this.c(i2, bVar);
                return;
            }
            i iVarB = f.this.b(i2);
            if (iVarB != null) {
                iVarB.b(bVar);
            }
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(final m mVar) {
            try {
                f.this.f6397x.execute(new com.anythink.core.common.n.b.a.b(aa.f6658a + " %s ACK Settings", new Object[]{f.this.f6384i}) { // from class: com.anythink.core.common.n.b.a.e.f.e.2

                    /* renamed from: a, reason: collision with root package name */
                    final /* synthetic */ boolean f6440a = false;

                    @Override // com.anythink.core.common.n.b.a.b
                    public final void c() {
                        i[] iVarArr;
                        long j2;
                        e eVar = e.this;
                        boolean z2 = this.f6440a;
                        m mVar2 = mVar;
                        synchronized (f.this.f6393r) {
                            synchronized (f.this) {
                                try {
                                    int iE = f.this.f6391p.e();
                                    if (z2) {
                                        f.this.f6391p.a();
                                    }
                                    f.this.f6391p.a(mVar2);
                                    int iE2 = f.this.f6391p.e();
                                    iVarArr = null;
                                    if (iE2 == -1 || iE2 == iE) {
                                        j2 = 0;
                                    } else {
                                        j2 = iE2 - iE;
                                        if (!f.this.f6383h.isEmpty()) {
                                            iVarArr = (i[]) f.this.f6383h.values().toArray(new i[f.this.f6383h.size()]);
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            try {
                                f fVar = f.this;
                                fVar.f6393r.a(fVar.f6391p);
                            } catch (IOException e2) {
                                f.this.a(e2);
                            }
                        }
                        if (iVarArr != null) {
                            for (i iVar : iVarArr) {
                                synchronized (iVar) {
                                    iVar.a(j2);
                                }
                            }
                        }
                        f.f6374v.execute(eVar.new AnonymousClass3(aa.f6658a + " %s settings", f.this.f6384i));
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
        }

        private void a(boolean z2, m mVar) {
            i[] iVarArr;
            long j2;
            synchronized (f.this.f6393r) {
                synchronized (f.this) {
                    try {
                        int iE = f.this.f6391p.e();
                        if (z2) {
                            f.this.f6391p.a();
                        }
                        f.this.f6391p.a(mVar);
                        int iE2 = f.this.f6391p.e();
                        iVarArr = null;
                        if (iE2 == -1 || iE2 == iE) {
                            j2 = 0;
                        } else {
                            j2 = iE2 - iE;
                            if (!f.this.f6383h.isEmpty()) {
                                iVarArr = (i[]) f.this.f6383h.values().toArray(new i[f.this.f6383h.size()]);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                try {
                    f fVar = f.this;
                    fVar.f6393r.a(fVar.f6391p);
                } catch (IOException e2) {
                    f.this.a(e2);
                }
            }
            if (iVarArr != null) {
                for (i iVar : iVarArr) {
                    synchronized (iVar) {
                        iVar.a(j2);
                    }
                }
            }
            f.f6374v.execute(new AnonymousClass3(aa.f6658a + " %s settings", f.this.f6384i));
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(boolean z2, int i2, int i3) {
            if (!z2) {
                try {
                    f.this.f6397x.execute(f.this.new d(i2, i3));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (f.this) {
                try {
                    if (i2 == 1) {
                        f.f(f.this);
                    } else if (i2 == 2) {
                        f.g(f.this);
                    } else if (i2 == 3) {
                        f.h(f.this);
                        f.this.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(int i2, com.anythink.core.common.n.c.f fVar) {
            i[] iVarArr;
            fVar.j();
            synchronized (f.this) {
                iVarArr = (i[]) f.this.f6383h.values().toArray(new i[f.this.f6383h.size()]);
                f.i(f.this);
            }
            for (i iVar : iVarArr) {
                if (iVar.f6474c > i2 && iVar.b()) {
                    iVar.b(com.anythink.core.common.n.b.a.e.b.REFUSED_STREAM);
                    f.this.b(iVar.f6474c);
                }
            }
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(int i2, long j2) {
            if (i2 == 0) {
                synchronized (f.this) {
                    f fVar = f.this;
                    fVar.f6389n += j2;
                    fVar.notifyAll();
                }
                return;
            }
            i iVarA = f.this.a(i2);
            if (iVarA != null) {
                synchronized (iVarA) {
                    iVarA.a(j2);
                }
            }
        }

        @Override // com.anythink.core.common.n.b.a.e.h.b
        public final void a(int i2, List<com.anythink.core.common.n.b.a.e.c> list) throws Throwable {
            f.this.a(i2, list);
        }
    }

    public f(a aVar) {
        m mVar = new m();
        this.f6391p = mVar;
        this.f6395t = new LinkedHashSet();
        this.f6387l = aVar.f6427f;
        boolean z2 = aVar.f6428g;
        this.f6381f = z2;
        this.f6382g = aVar.f6426e;
        int i2 = z2 ? 1 : 2;
        this.f6386k = i2;
        if (z2) {
            this.f6386k = i2 + 2;
        }
        if (z2) {
            this.f6390o.a(7, 16777216);
        }
        String str = aVar.f6423b;
        this.f6384i = str;
        String str2 = aa.f6658a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, com.anythink.core.common.n.b.a.c.a(com.anythink.core.common.n.b.a.c.a("%s %s Writer", str2, str), false));
        this.f6397x = scheduledThreadPoolExecutor;
        if (aVar.f6429h != 0) {
            b bVar = new b();
            int i3 = aVar.f6429h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(bVar, i3, i3, TimeUnit.MILLISECONDS);
        }
        this.f6398y = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.anythink.core.common.n.b.a.c.a(com.anythink.core.common.n.b.a.c.a("%s %s Push Observer", str2, str), true));
        mVar.a(7, 65535);
        mVar.a(5, 16384);
        this.f6389n = mVar.e();
        this.f6392q = aVar.f6422a;
        this.f6393r = new j(aVar.f6425d, z2);
        this.f6394s = new e(new h(aVar.f6424c, z2));
    }

    public static boolean c(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    public static /* synthetic */ long f(f fVar) {
        long j2 = fVar.f6375A;
        fVar.f6375A = 1 + j2;
        return j2;
    }

    public static /* synthetic */ long g(f fVar) {
        long j2 = fVar.f6377C;
        fVar.f6377C = 1 + j2;
        return j2;
    }

    public static /* synthetic */ long h(f fVar) {
        long j2 = fVar.f6379E;
        fVar.f6379E = 1 + j2;
        return j2;
    }

    public static /* synthetic */ boolean i(f fVar) {
        fVar.f6396w = true;
        return true;
    }

    private void j() {
        this.f6393r.a();
        this.f6393r.b(this.f6390o);
        if (this.f6390o.e() != 65535) {
            this.f6393r.a(0, r0 - 65535);
        }
        new Thread(this.f6394s).start();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        a(com.anythink.core.common.n.b.a.e.b.NO_ERROR, com.anythink.core.common.n.b.a.e.b.CANCEL, (IOException) null);
    }

    public static /* synthetic */ long c(f fVar) {
        long j2 = fVar.f6399z;
        fVar.f6399z = 1 + j2;
        return j2;
    }

    private synchronized int e() {
        return this.f6383h.size();
    }

    private void f() throws IOException {
        synchronized (this) {
            this.f6378D++;
        }
        a(false, 3, 1330343787);
        h();
    }

    private void g() throws IOException {
        synchronized (this) {
            this.f6378D++;
        }
        a(false, 3, 1330343787);
    }

    private synchronized void h() {
        while (this.f6379E < this.f6378D) {
            wait();
        }
    }

    private void i() {
        this.f6393r.b();
    }

    public final synchronized i b(int i2) {
        i iVarRemove;
        iVarRemove = this.f6383h.remove(Integer.valueOf(i2));
        notifyAll();
        return iVarRemove;
    }

    private i c(int i2, List<com.anythink.core.common.n.b.a.e.c> list, boolean z2) throws Throwable {
        Throwable th;
        boolean z3 = !z2;
        synchronized (this.f6393r) {
            try {
                try {
                    synchronized (this) {
                        try {
                            if (this.f6386k > 1073741823) {
                                try {
                                    a(com.anythink.core.common.n.b.a.e.b.REFUSED_STREAM);
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        try {
                            if (!this.f6396w) {
                                int i3 = this.f6386k;
                                this.f6386k = i3 + 2;
                                i iVar = new i(i3, this, z3, false, null);
                                boolean z4 = !z2 || this.f6389n == 0 || iVar.f6473b == 0;
                                if (iVar.a()) {
                                    this.f6383h.put(Integer.valueOf(i3), iVar);
                                }
                                if (i2 == 0) {
                                    this.f6393r.a(z3, i3, list);
                                } else if (!this.f6381f) {
                                    this.f6393r.a(i2, i3, list);
                                } else {
                                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                                }
                                if (z4) {
                                    this.f6393r.b();
                                }
                                return iVar;
                            }
                            throw new com.anythink.core.common.n.b.a.e.a();
                        } catch (Throwable th4) {
                            th = th4;
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                throw th;
            }
        }
    }

    public final synchronized i a(int i2) {
        return this.f6383h.get(Integer.valueOf(i2));
    }

    public final synchronized int a() {
        return this.f6391p.d();
    }

    private i b(int i2, List<com.anythink.core.common.n.b.a.e.c> list, boolean z2) {
        if (!this.f6381f) {
            return c(i2, list, z2);
        }
        throw new IllegalStateException("Client cannot push requests.");
    }

    public final synchronized void a(long j2) {
        long j3 = this.f6388m + j2;
        this.f6388m = j3;
        if (j3 >= this.f6390o.e() / 2) {
            a(0, this.f6388m);
            this.f6388m = 0L;
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        Socket f6422a;

        /* renamed from: b, reason: collision with root package name */
        String f6423b;

        /* renamed from: c, reason: collision with root package name */
        com.anythink.core.common.n.c.e f6424c;

        /* renamed from: d, reason: collision with root package name */
        com.anythink.core.common.n.c.d f6425d;

        /* renamed from: e, reason: collision with root package name */
        c f6426e = c.f6431h;

        /* renamed from: f, reason: collision with root package name */
        l f6427f = l.f6514a;

        /* renamed from: g, reason: collision with root package name */
        boolean f6428g = true;

        /* renamed from: h, reason: collision with root package name */
        int f6429h;

        private a a(Socket socket) {
            SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
            return a(socket, remoteSocketAddress instanceof InetSocketAddress ? ((InetSocketAddress) remoteSocketAddress).getHostName() : remoteSocketAddress.toString(), com.anythink.core.common.n.c.n.a(com.anythink.core.common.n.c.n.b(socket)), com.anythink.core.common.n.c.n.a(com.anythink.core.common.n.c.n.a(socket)));
        }

        public final a a(Socket socket, String str, com.anythink.core.common.n.c.e eVar, com.anythink.core.common.n.c.d dVar) {
            this.f6422a = socket;
            this.f6423b = str;
            this.f6424c = eVar;
            this.f6425d = dVar;
            return this;
        }

        public final a a(c cVar) {
            this.f6426e = cVar;
            return this;
        }

        private a a(l lVar) {
            this.f6427f = lVar;
            return this;
        }

        public final a a(int i2) {
            this.f6429h = i2;
            return this;
        }

        public final f a() {
            return new f(this);
        }
    }

    public final void b(int i2, com.anythink.core.common.n.b.a.e.b bVar) {
        this.f6393r.a(i2, bVar);
    }

    public final synchronized boolean b(long j2) {
        if (this.f6396w) {
            return false;
        }
        if (this.f6377C < this.f6376B) {
            if (j2 >= this.f6380F) {
                return false;
            }
        }
        return true;
    }

    public final i a(List<com.anythink.core.common.n.b.a.e.c> list, boolean z2) {
        return c(0, list, z2);
    }

    public final void a(int i2, boolean z2, List<com.anythink.core.common.n.b.a.e.c> list) {
        this.f6393r.a(z2, i2, list);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r4), r8.f6393r.c());
        r6 = r2;
        r8.f6389n -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r9, boolean r10, com.anythink.core.common.n.c.c r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            com.anythink.core.common.n.b.a.e.j r12 = r8.f6393r
            r12.a(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L67
            monitor-enter(r8)
        L12:
            long r4 = r8.f6389n     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 > 0) goto L32
            java.util.Map<java.lang.Integer, com.anythink.core.common.n.b.a.e.i> r2 = r8.f6383h     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            if (r2 == 0) goto L2a
            r8.wait()     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            goto L12
        L28:
            r9 = move-exception
            goto L65
        L2a:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            throw r9     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
        L32:
            long r4 = java.lang.Math.min(r12, r4)     // Catch: java.lang.Throwable -> L28
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L28
            com.anythink.core.common.n.b.a.e.j r4 = r8.f6393r     // Catch: java.lang.Throwable -> L28
            int r4 = r4.c()     // Catch: java.lang.Throwable -> L28
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L28
            long r4 = r8.f6389n     // Catch: java.lang.Throwable -> L28
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L28
            long r4 = r4 - r6
            r8.f6389n = r4     // Catch: java.lang.Throwable -> L28
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            long r12 = r12 - r6
            com.anythink.core.common.n.b.a.e.j r4 = r8.f6393r
            if (r10 == 0) goto L53
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L53
            r5 = 1
            goto L54
        L53:
            r5 = r3
        L54:
            r4.a(r5, r9, r11, r2)
            goto Ld
        L58:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L28
            r9.interrupt()     // Catch: java.lang.Throwable -> L28
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L28
            r9.<init>()     // Catch: java.lang.Throwable -> L28
            throw r9     // Catch: java.lang.Throwable -> L28
        L65:
            monitor-exit(r8)
            throw r9
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.e.f.a(int, boolean, com.anythink.core.common.n.c.c, long):void");
    }

    public final void b() {
        this.f6393r.a();
        this.f6393r.b(this.f6390o);
        if (this.f6390o.e() != 65535) {
            this.f6393r.a(0, r0 - 65535);
        }
        new Thread(this.f6394s).start();
    }

    public final void c() {
        synchronized (this) {
            try {
                long j2 = this.f6377C;
                long j3 = this.f6376B;
                if (j2 < j3) {
                    return;
                }
                this.f6376B = j3 + 1;
                this.f6380F = System.nanoTime() + 1000000000;
                try {
                    this.f6397x.execute(new com.anythink.core.common.n.b.a.b(aa.f6658a + " %s ping", this.f6384i) { // from class: com.anythink.core.common.n.b.a.e.f.3
                        @Override // com.anythink.core.common.n.b.a.b
                        public final void c() throws IOException {
                            f.this.a(false, 2, 0);
                        }
                    });
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(final int i2, final com.anythink.core.common.n.b.a.e.b bVar) {
        try {
            this.f6397x.execute(new com.anythink.core.common.n.b.a.b("%s %s stream %d", new Object[]{aa.f6658a, this.f6384i, Integer.valueOf(i2)}) { // from class: com.anythink.core.common.n.b.a.e.f.1
                @Override // com.anythink.core.common.n.b.a.b
                public final void c() throws IOException {
                    try {
                        f.this.b(i2, bVar);
                    } catch (IOException e2) {
                        f.this.a(e2);
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    public final void a(final int i2, final long j2) {
        try {
            this.f6397x.execute(new com.anythink.core.common.n.b.a.b("%s Window Update %s stream %d", new Object[]{aa.f6658a, this.f6384i, Integer.valueOf(i2)}) { // from class: com.anythink.core.common.n.b.a.e.f.2
                @Override // com.anythink.core.common.n.b.a.b
                public final void c() throws IOException {
                    try {
                        f.this.f6393r.a(i2, j2);
                    } catch (IOException e2) {
                        f.this.a(e2);
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    public final void a(boolean z2, int i2, int i3) throws IOException {
        try {
            this.f6393r.a(z2, i2, i3);
        } catch (IOException e2) {
            a(e2);
        }
    }

    public final void c(final int i2, final com.anythink.core.common.n.b.a.e.b bVar) {
        a(new com.anythink.core.common.n.b.a.b(aa.f6658a + " %s Push Reset[%s]", new Object[]{this.f6384i, Integer.valueOf(i2)}) { // from class: com.anythink.core.common.n.b.a.e.f.7
            @Override // com.anythink.core.common.n.b.a.b
            public final void c() {
                synchronized (f.this) {
                    f.this.f6395t.remove(Integer.valueOf(i2));
                }
            }
        });
    }

    private void a(com.anythink.core.common.n.b.a.e.b bVar) {
        synchronized (this.f6393r) {
            synchronized (this) {
                if (this.f6396w) {
                    return;
                }
                this.f6396w = true;
                this.f6393r.a(this.f6385j, bVar, com.anythink.core.common.n.b.a.c.f6215a);
            }
        }
    }

    public final void a(com.anythink.core.common.n.b.a.e.b bVar, com.anythink.core.common.n.b.a.e.b bVar2, IOException iOException) throws IOException {
        i[] iVarArr;
        if (!f6373u && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        try {
            a(bVar);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (this.f6383h.isEmpty()) {
                    iVarArr = null;
                } else {
                    iVarArr = (i[]) this.f6383h.values().toArray(new i[this.f6383h.size()]);
                    this.f6383h.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                try {
                    iVar.a(bVar2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.f6393r.close();
        } catch (IOException unused3) {
        }
        try {
            this.f6392q.close();
        } catch (IOException unused4) {
        }
        this.f6397x.shutdown();
        this.f6398y.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IOException iOException) throws IOException {
        com.anythink.core.common.n.b.a.e.b bVar = com.anythink.core.common.n.b.a.e.b.PROTOCOL_ERROR;
        a(bVar, bVar, iOException);
    }

    private void a(m mVar) {
        synchronized (this.f6393r) {
            synchronized (this) {
                if (!this.f6396w) {
                    this.f6390o.a(mVar);
                } else {
                    throw new com.anythink.core.common.n.b.a.e.a();
                }
            }
            this.f6393r.b(mVar);
        }
    }

    public final void a(final int i2, final List<com.anythink.core.common.n.b.a.e.c> list) throws Throwable {
        Throwable th;
        synchronized (this) {
            try {
                if (this.f6395t.contains(Integer.valueOf(i2))) {
                    try {
                        a(i2, com.anythink.core.common.n.b.a.e.b.PROTOCOL_ERROR);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                this.f6395t.add(Integer.valueOf(i2));
                try {
                    try {
                        a(new com.anythink.core.common.n.b.a.b(aa.f6658a + " %s Push Request[%s]", new Object[]{this.f6384i, Integer.valueOf(i2)}) { // from class: com.anythink.core.common.n.b.a.e.f.4
                            @Override // com.anythink.core.common.n.b.a.b
                            public final void c() {
                                try {
                                    f.this.f6393r.a(i2, com.anythink.core.common.n.b.a.e.b.CANCEL);
                                    synchronized (f.this) {
                                        f.this.f6395t.remove(Integer.valueOf(i2));
                                    }
                                } catch (IOException unused) {
                                }
                            }
                        });
                    } catch (RejectedExecutionException unused) {
                    }
                } catch (RejectedExecutionException unused2) {
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public final void a(final int i2, final List<com.anythink.core.common.n.b.a.e.c> list, final boolean z2) {
        try {
            try {
                a(new com.anythink.core.common.n.b.a.b(aa.f6658a + " %s Push Headers[%s]", new Object[]{this.f6384i, Integer.valueOf(i2)}) { // from class: com.anythink.core.common.n.b.a.e.f.5
                    @Override // com.anythink.core.common.n.b.a.b
                    public final void c() {
                        try {
                            f.this.f6393r.a(i2, com.anythink.core.common.n.b.a.e.b.CANCEL);
                            synchronized (f.this) {
                                f.this.f6395t.remove(Integer.valueOf(i2));
                            }
                        } catch (IOException unused) {
                        }
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
        } catch (RejectedExecutionException unused2) {
        }
    }

    public final void a(final int i2, com.anythink.core.common.n.c.e eVar, final int i3, final boolean z2) throws IOException {
        final com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
        long j2 = i3;
        eVar.a(j2);
        eVar.a_(cVar, j2);
        if (cVar.b() == j2) {
            a(new com.anythink.core.common.n.b.a.b(aa.f6658a + " %s Push Data[%s]", new Object[]{this.f6384i, Integer.valueOf(i2)}) { // from class: com.anythink.core.common.n.b.a.e.f.6
                @Override // com.anythink.core.common.n.b.a.b
                public final void c() {
                    try {
                        f.this.f6387l.a(cVar, i3);
                        f.this.f6393r.a(i2, com.anythink.core.common.n.b.a.e.b.CANCEL);
                        synchronized (f.this) {
                            f.this.f6395t.remove(Integer.valueOf(i2));
                        }
                    } catch (IOException unused) {
                    }
                }
            });
            return;
        }
        throw new IOException(cVar.b() + " != " + i3);
    }

    private synchronized void a(com.anythink.core.common.n.b.a.b bVar) {
        if (!this.f6396w) {
            this.f6398y.execute(bVar);
        }
    }
}
