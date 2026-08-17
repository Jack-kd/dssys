package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;

/* loaded from: classes5.dex */
public final class P0 extends x0 {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51527h = AtomicIntegerFieldUpdater.newUpdater(P0.class, "_state$volatile");
    private volatile /* synthetic */ int _state$volatile;

    /* renamed from: f, reason: collision with root package name */
    public final Thread f51528f = Thread.currentThread();

    /* renamed from: g, reason: collision with root package name */
    public Z f51529g;

    public final void A(InterfaceC1705u0 interfaceC1705u0) {
        int i2;
        this.f51529g = JobKt__JobKt.j(interfaceC1705u0, false, this, 1, null);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51527h;
        do {
            i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 == 2 || i2 == 3) {
                    return;
                }
                z(i2);
                throw new KotlinNothingValueException();
            }
        } while (!f51527h.compareAndSet(this, i2, 0));
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return true;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        int i2;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51527h;
        do {
            i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    return;
                }
                z(i2);
                throw new KotlinNothingValueException();
            }
        } while (!f51527h.compareAndSet(this, i2, 2));
        this.f51528f.interrupt();
        f51527h.set(this, 3);
    }

    public final void x() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51527h;
        while (true) {
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        z(i2);
                        throw new KotlinNothingValueException();
                    }
                }
            } else if (f51527h.compareAndSet(this, i2, 1)) {
                Z z2 = this.f51529g;
                if (z2 != null) {
                    z2.dispose();
                    return;
                }
                return;
            }
        }
    }

    public final Void z(int i2) {
        throw new IllegalStateException(("Illegal state " + i2).toString());
    }
}
