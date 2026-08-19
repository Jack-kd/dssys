package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.Q;
import kotlinx.coroutines.T;
import kotlinx.coroutines.Z;

/* renamed from: kotlinx.coroutines.internal.j, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1677j extends kotlinx.coroutines.H implements T {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51785h = AtomicIntegerFieldUpdater.newUpdater(C1677j.class, "runningWorkers$volatile");

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ T f51786b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.H f51787c;

    /* renamed from: d, reason: collision with root package name */
    public final int f51788d;

    /* renamed from: e, reason: collision with root package name */
    public final String f51789e;

    /* renamed from: f, reason: collision with root package name */
    public final C1681n f51790f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f51791g;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* renamed from: kotlinx.coroutines.internal.j$a */
    public final class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public Runnable f51792b;

        public a(Runnable runnable) {
            this.f51792b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                try {
                    this.f51792b.run();
                } catch (Throwable th) {
                    kotlinx.coroutines.J.a(EmptyCoroutineContext.INSTANCE, th);
                }
                Runnable runnableD = C1677j.this.D();
                if (runnableD == null) {
                    return;
                }
                this.f51792b = runnableD;
                i2++;
                if (i2 >= 16 && C1677j.this.f51787c.isDispatchNeeded(C1677j.this)) {
                    C1677j.this.f51787c.dispatch(C1677j.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1677j(kotlinx.coroutines.H h2, int i2, String str) {
        T t2 = h2 instanceof T ? (T) h2 : null;
        this.f51786b = t2 == null ? Q.a() : t2;
        this.f51787c = h2;
        this.f51788d = i2;
        this.f51789e = str;
        this.f51790f = new C1681n(false);
        this.f51791g = new Object();
    }

    public final Runnable D() {
        while (true) {
            Runnable runnable = (Runnable) this.f51790f.e();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f51791g) {
                f51785h.decrementAndGet(this);
                if (this.f51790f.c() == 0) {
                    return null;
                }
                f51785h.incrementAndGet(this);
            }
        }
    }

    public final boolean E() {
        synchronized (this.f51791g) {
            if (f51785h.get(this) >= this.f51788d) {
                return false;
            }
            f51785h.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.T
    public void d(long j2, InterfaceC1687l interfaceC1687l) {
        this.f51786b.d(j2, interfaceC1687l);
    }

    @Override // kotlinx.coroutines.H
    public void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        Runnable runnableD;
        this.f51790f.a(runnable);
        if (f51785h.get(this) >= this.f51788d || !E() || (runnableD = D()) == null) {
            return;
        }
        this.f51787c.dispatch(this, new a(runnableD));
    }

    @Override // kotlinx.coroutines.H
    public void dispatchYield(kotlin.coroutines.i iVar, Runnable runnable) {
        Runnable runnableD;
        this.f51790f.a(runnable);
        if (f51785h.get(this) >= this.f51788d || !E() || (runnableD = D()) == null) {
            return;
        }
        this.f51787c.dispatchYield(this, new a(runnableD));
    }

    @Override // kotlinx.coroutines.T
    public Z f(long j2, Runnable runnable, kotlin.coroutines.i iVar) {
        return this.f51786b.f(j2, runnable, iVar);
    }

    @Override // kotlinx.coroutines.H
    public kotlinx.coroutines.H limitedParallelism(int i2, String str) {
        AbstractC1678k.a(i2);
        return i2 >= this.f51788d ? AbstractC1678k.b(this, str) : super.limitedParallelism(i2, str);
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        String str = this.f51789e;
        if (str != null) {
            return str;
        }
        return this.f51787c + ".limitedParallelism(" + this.f51788d + ')';
    }
}
