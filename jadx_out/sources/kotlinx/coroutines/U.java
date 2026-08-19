package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.internal.AbstractC1675h;

/* loaded from: classes5.dex */
public final class U extends kotlinx.coroutines.internal.x {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51536f = AtomicIntegerFieldUpdater.newUpdater(U.class, "_decision$volatile");
    private volatile /* synthetic */ int _decision$volatile;

    public U(kotlin.coroutines.i iVar, kotlin.coroutines.e eVar) {
        super(iVar, eVar);
    }

    private final boolean Y0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51536f;
        do {
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f51536f.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean Z0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51536f;
        do {
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f51536f.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // kotlinx.coroutines.internal.x, kotlinx.coroutines.y0
    public void M(Object obj) {
        S0(obj);
    }

    @Override // kotlinx.coroutines.internal.x, kotlinx.coroutines.AbstractC1625a
    public void S0(Object obj) {
        if (Y0()) {
            return;
        }
        AbstractC1675h.b(IntrinsicsKt__IntrinsicsJvmKt.c(this.f51811e), B.a(obj, this.f51811e));
    }

    public final Object W0() {
        if (Z0()) {
            return kotlin.coroutines.intrinsics.a.e();
        }
        Object objH = z0.h(h0());
        if (objH instanceof A) {
            throw ((A) objH).f51510a;
        }
        return objH;
    }
}
