package com.anythink.core.common.m.a.a;

import com.anythink.core.common.n.b.k;
import com.anythink.core.common.n.b.p;
import com.anythink.core.common.n.b.q;
import com.anythink.core.common.n.b.z;
import java.net.InetAddress;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5528a = "d";

    /* renamed from: b, reason: collision with root package name */
    private static volatile d f5529b;

    /* renamed from: c, reason: collision with root package name */
    private volatile z f5530c;

    /* renamed from: d, reason: collision with root package name */
    private volatile z f5531d;

    /* renamed from: f, reason: collision with root package name */
    private final ExecutorService f5533f = new b(0);

    /* renamed from: e, reason: collision with root package name */
    private final k f5532e = new k(10, TimeUnit.MINUTES);

    public static class a implements q {

        /* renamed from: b, reason: collision with root package name */
        private final com.anythink.core.common.m.a.d f5535b;

        public a(com.anythink.core.common.m.a.d dVar) {
            this.f5535b = dVar;
        }

        @Override // com.anythink.core.common.n.b.q
        public final List<InetAddress> a(String str) {
            com.anythink.core.common.m.a.d dVar = this.f5535b;
            return dVar != null ? dVar.a(str) : q.f6915a.a(str);
        }
    }

    public static class b extends AbstractExecutorService implements AutoCloseable {
        private b() {
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j2, TimeUnit timeUnit) {
            return false;
        }

        @Override // java.lang.AutoCloseable
        public /* synthetic */ void close() throws InterruptedException {
            androidx.core.content.res.b.a(this);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            com.anythink.core.common.v.b.c.a().b().execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return false;
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return false;
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return Collections.EMPTY_LIST;
        }

        public /* synthetic */ b(byte b3) {
            this();
        }
    }

    private d() {
    }

    private int b() {
        try {
            k kVar = this.f5532e;
            if (kVar == null) {
                return 0;
            }
            int iA = kVar.a();
            if (iA > 0) {
                com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bV, new Runnable() { // from class: com.anythink.core.common.m.a.a.d.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            d.this.f5532e.c();
                        } catch (Throwable unused) {
                        }
                    }
                }));
            }
            return iA;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private int c() {
        k kVar = this.f5532e;
        if (kVar != null) {
            return kVar.b();
        }
        return 0;
    }

    private int d() {
        k kVar = this.f5532e;
        if (kVar != null) {
            return kVar.a();
        }
        return 0;
    }

    public static d a() {
        if (f5529b == null) {
            synchronized (d.class) {
                try {
                    if (f5529b == null) {
                        f5529b = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5529b;
    }

    public final synchronized z a(com.anythink.core.common.m.a.f fVar) {
        z zVar;
        try {
            com.anythink.core.common.m.a.d dVar = fVar.f5552h;
            if (dVar != null) {
                if (this.f5531d == null) {
                    this.f5531d = new z.a().c(fVar.f5547c, fVar.f5548d).b(fVar.f5545a, fVar.f5546b).a(fVar.f5549e, fVar.f5550f).a(this.f5532e).a(new p(this.f5533f)).a(new a(dVar)).a();
                } else {
                    this.f5531d = this.f5531d.t().a(new a(dVar)).a();
                }
                zVar = this.f5531d;
            } else {
                zVar = null;
            }
            if (zVar == null) {
                if (this.f5530c == null) {
                    this.f5530c = new z.a().c(fVar.f5547c, fVar.f5548d).b(fVar.f5545a, fVar.f5546b).a(fVar.f5549e, fVar.f5550f).a(this.f5532e).a(new p(this.f5533f)).a();
                }
                zVar = this.f5530c;
            }
        } catch (Throwable th) {
            throw th;
        }
        return zVar;
    }
}
