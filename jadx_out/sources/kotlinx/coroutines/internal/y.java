package kotlinx.coroutines.internal;

import androidx.core.internal.view.SupportMenu;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.E0;

/* loaded from: classes5.dex */
public abstract class y extends AbstractC1669b implements E0 {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51812e = AtomicIntegerFieldUpdater.newUpdater(y.class, "cleanedAndPointers$volatile");
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    /* renamed from: d, reason: collision with root package name */
    public final long f51813d;

    public y(long j2, y yVar, int i2) {
        super(yVar);
        this.f51813d = j2;
        this.cleanedAndPointers$volatile = i2 << 16;
    }

    @Override // kotlinx.coroutines.internal.AbstractC1669b
    public boolean k() {
        return f51812e.get(this) == r() && !l();
    }

    public final boolean p() {
        return f51812e.addAndGet(this, SupportMenu.CATEGORY_MASK) == r() && !l();
    }

    public abstract int r();

    public abstract void s(int i2, Throwable th, kotlin.coroutines.i iVar);

    public final void t() {
        if (f51812e.incrementAndGet(this) == r()) {
            n();
        }
    }

    public final boolean u() {
        int i2;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51812e;
        do {
            i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 == r() && !l()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 65536 + i2));
        return true;
    }
}
