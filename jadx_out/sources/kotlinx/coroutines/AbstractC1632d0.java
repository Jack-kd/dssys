package kotlinx.coroutines;

import androidx.core.location.LocationRequestCompat;
import kotlin.collections.C1604i;
import kotlinx.coroutines.internal.AbstractC1678k;

/* renamed from: kotlinx.coroutines.d0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1632d0 extends H {

    /* renamed from: b, reason: collision with root package name */
    public long f51604b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f51605c;

    /* renamed from: d, reason: collision with root package name */
    public C1604i f51606d;

    public static /* synthetic */ void E(AbstractC1632d0 abstractC1632d0, boolean z2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i2 & 1) != 0) {
            z2 = false;
        }
        abstractC1632d0.D(z2);
    }

    public static /* synthetic */ void k(AbstractC1632d0 abstractC1632d0, boolean z2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i2 & 1) != 0) {
            z2 = false;
        }
        abstractC1632d0.j(z2);
    }

    public long C() {
        C1604i c1604i = this.f51606d;
        if (c1604i == null || c1604i.isEmpty()) {
            return LocationRequestCompat.PASSIVE_INTERVAL;
        }
        return 0L;
    }

    public final void D(boolean z2) {
        this.f51604b += l(z2);
        if (z2) {
            return;
        }
        this.f51605c = true;
    }

    public final boolean G() {
        return this.f51604b >= l(true);
    }

    public final boolean H() {
        C1604i c1604i = this.f51606d;
        if (c1604i != null) {
            return c1604i.isEmpty();
        }
        return true;
    }

    public abstract long I();

    public final boolean J() {
        V v2;
        C1604i c1604i = this.f51606d;
        if (c1604i == null || (v2 = (V) c1604i.j()) == null) {
            return false;
        }
        v2.run();
        return true;
    }

    public boolean K() {
        return false;
    }

    public final void j(boolean z2) {
        long jL = this.f51604b - l(z2);
        this.f51604b = jL;
        if (jL <= 0 && this.f51605c) {
            shutdown();
        }
    }

    public final long l(boolean z2) {
        return z2 ? 4294967296L : 1L;
    }

    @Override // kotlinx.coroutines.H
    public final H limitedParallelism(int i2, String str) {
        AbstractC1678k.a(i2);
        return AbstractC1678k.b(this, str);
    }

    public final void n(V v2) {
        C1604i c1604i = this.f51606d;
        if (c1604i == null) {
            c1604i = new C1604i();
            this.f51606d = c1604i;
        }
        c1604i.addLast(v2);
    }

    public abstract void shutdown();
}
