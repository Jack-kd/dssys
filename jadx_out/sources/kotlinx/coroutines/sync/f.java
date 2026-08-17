package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.j;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.AbstractC1695p;
import kotlinx.coroutines.C1691n;
import kotlinx.coroutines.H;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.O;
import kotlinx.coroutines.U0;
import kotlinx.coroutines.Z;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.sync.f;
import org.jetbrains.annotations.NotNull;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public class f extends SemaphoreAndMutexImpl implements kotlinx.coroutines.sync.a {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51909i = AtomicReferenceFieldUpdater.newUpdater(f.class, Object.class, "owner$volatile");

    /* renamed from: h, reason: collision with root package name */
    public final Function3 f51910h;
    private volatile /* synthetic */ Object owner$volatile;

    public final class a implements InterfaceC1687l, U0 {

        /* renamed from: b, reason: collision with root package name */
        public final C1691n f51911b;

        /* renamed from: c, reason: collision with root package name */
        public final Object f51912c;

        public a(C1691n c1691n, Object obj) {
            this.f51911b = c1691n;
            this.f51912c = obj;
        }

        public static final j f(f fVar, a aVar, Throwable th) {
            fVar.c(aVar.f51912c);
            return j.f51397a;
        }

        public static final j i(f fVar, a aVar, Throwable th, j jVar, kotlin.coroutines.i iVar) {
            f.x().set(fVar, aVar.f51912c);
            fVar.c(aVar.f51912c);
            return j.f51397a;
        }

        @Override // kotlinx.coroutines.U0
        public void b(y yVar, int i2) {
            this.f51911b.b(yVar, i2);
        }

        @Override // kotlinx.coroutines.InterfaceC1687l
        public void d(H h2, Throwable th) {
            this.f51911b.d(h2, th);
        }

        @Override // kotlinx.coroutines.InterfaceC1687l
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public void q(j jVar, Function3 function3) {
            f.x().set(f.this, this.f51912c);
            C1691n c1691n = this.f51911b;
            final f fVar = f.this;
            c1691n.Q(jVar, new Function1() { // from class: kotlinx.coroutines.sync.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return f.a.f(fVar, this, (Throwable) obj);
                }
            });
        }

        @Override // kotlinx.coroutines.InterfaceC1687l
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public void x(H h2, j jVar) {
            this.f51911b.x(h2, jVar);
        }

        @Override // kotlinx.coroutines.InterfaceC1687l, kotlin.coroutines.e
        @NotNull
        public kotlin.coroutines.i getContext() {
            return this.f51911b.getContext();
        }

        @Override // kotlinx.coroutines.InterfaceC1687l
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public Object D(j jVar, Object obj, Function3 function3) {
            final f fVar = f.this;
            Object objD = this.f51911b.D(jVar, obj, new Function3() { // from class: kotlinx.coroutines.sync.d
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return f.a.i(fVar, this, (Throwable) obj2, (j) obj3, (kotlin.coroutines.i) obj4);
                }
            });
            if (objD != null) {
                f.x().set(f.this, this.f51912c);
            }
            return objD;
        }

        @Override // kotlinx.coroutines.InterfaceC1687l
        public boolean j(Throwable th) {
            return this.f51911b.j(th);
        }

        @Override // kotlin.coroutines.e
        public void resumeWith(Object obj) {
            this.f51911b.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.InterfaceC1687l
        public void t(Object obj) {
            this.f51911b.t(obj);
        }

        @Override // kotlinx.coroutines.InterfaceC1687l
        public void v(Function1 function1) {
            this.f51911b.v(function1);
        }
    }

    public final class b implements kotlinx.coroutines.selects.j {

        /* renamed from: b, reason: collision with root package name */
        public final kotlinx.coroutines.selects.j f51914b;

        /* renamed from: c, reason: collision with root package name */
        public final Object f51915c;

        public b(kotlinx.coroutines.selects.j jVar, Object obj) {
            this.f51914b = jVar;
            this.f51915c = obj;
        }

        @Override // kotlinx.coroutines.U0
        public void b(y yVar, int i2) {
            this.f51914b.b(yVar, i2);
        }

        @Override // kotlinx.coroutines.selects.i
        public void d(Object obj) {
            f.x().set(f.this, this.f51915c);
            this.f51914b.d(obj);
        }

        @Override // kotlinx.coroutines.selects.i
        public void e(Z z2) {
            this.f51914b.e(z2);
        }

        @Override // kotlinx.coroutines.selects.i
        public boolean f(Object obj, Object obj2) {
            boolean zF = this.f51914b.f(obj, obj2);
            f fVar = f.this;
            if (zF) {
                f.x().set(fVar, this.f51915c);
            }
            return zF;
        }

        @Override // kotlinx.coroutines.selects.j, kotlinx.coroutines.selects.i
        @NotNull
        public kotlin.coroutines.i getContext() {
            return this.f51914b.getContext();
        }
    }

    public f(boolean z2) {
        super(1, z2 ? 1 : 0);
        this.owner$volatile = z2 ? null : MutexKt.f51887a;
        this.f51910h = new Function3() { // from class: kotlinx.coroutines.sync.b
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return f.F(this.f51902b, (kotlinx.coroutines.selects.i) obj, obj2, obj3);
            }
        };
    }

    public static /* synthetic */ Object B(f fVar, Object obj, kotlin.coroutines.e eVar) {
        if (fVar.a(obj)) {
            return j.f51397a;
        }
        Object objC = fVar.C(obj, eVar);
        return objC == kotlin.coroutines.intrinsics.a.e() ? objC : j.f51397a;
    }

    public static final Function3 F(final f fVar, kotlinx.coroutines.selects.i iVar, final Object obj, Object obj2) {
        return new Function3() { // from class: kotlinx.coroutines.sync.c
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return f.G(this.f51903b, obj, (Throwable) obj3, obj4, (kotlin.coroutines.i) obj5);
            }
        };
    }

    public static final j G(f fVar, Object obj, Throwable th, Object obj2, kotlin.coroutines.i iVar) {
        fVar.c(obj);
        return j.f51397a;
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater x() {
        return f51909i;
    }

    public boolean A() {
        return i() == 0;
    }

    public final Object C(Object obj, kotlin.coroutines.e eVar) {
        C1691n c1691nB = AbstractC1695p.b(IntrinsicsKt__IntrinsicsJvmKt.c(eVar));
        try {
            e(new a(c1691nB, obj));
            Object objY = c1691nB.y();
            if (objY == kotlin.coroutines.intrinsics.a.e()) {
                AbstractC1795e.c(eVar);
            }
            return objY == kotlin.coroutines.intrinsics.a.e() ? objY : j.f51397a;
        } catch (Throwable th) {
            c1691nB.O();
            throw th;
        }
    }

    public Object D(Object obj, Object obj2) {
        if (!kotlin.jvm.internal.j.a(obj2, MutexKt.f51888b)) {
            return this;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    public void E(kotlinx.coroutines.selects.i iVar, Object obj) {
        if (obj != null && y(obj)) {
            iVar.d(MutexKt.f51888b);
        } else {
            kotlin.jvm.internal.j.c(iVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
            o(new b((kotlinx.coroutines.selects.j) iVar, obj), obj);
        }
    }

    public final int H(Object obj) {
        while (!r()) {
            if (obj == null) {
                return 1;
            }
            int iZ = z(obj);
            if (iZ == 1) {
                return 2;
            }
            if (iZ == 2) {
                return 1;
            }
        }
        f51909i.set(this, obj);
        return 0;
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean a(Object obj) {
        int iH = H(obj);
        if (iH == 0) {
            return true;
        }
        if (iH == 1) {
            return false;
        }
        if (iH != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    @Override // kotlinx.coroutines.sync.a
    public Object b(Object obj, kotlin.coroutines.e eVar) {
        return B(this, obj, eVar);
    }

    @Override // kotlinx.coroutines.sync.a
    public void c(Object obj) {
        while (A()) {
            Object obj2 = f51909i.get(this);
            if (obj2 != MutexKt.f51887a) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                if (androidx.concurrent.futures.a.a(f51909i, this, obj2, MutexKt.f51887a)) {
                    q();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    public String toString() {
        return "Mutex@" + O.b(this) + "[isLocked=" + A() + ",owner=" + f51909i.get(this) + ']';
    }

    public boolean y(Object obj) {
        return z(obj) == 1;
    }

    public final int z(Object obj) {
        while (A()) {
            Object obj2 = f51909i.get(this);
            if (obj2 != MutexKt.f51887a) {
                return obj2 == obj ? 1 : 2;
            }
        }
        return 0;
    }
}
