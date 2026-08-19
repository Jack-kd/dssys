package H1;

import kotlinx.coroutines.H;
import kotlinx.coroutines.internal.AbstractC1678k;

/* loaded from: classes5.dex */
public final class j extends H {

    /* renamed from: b, reason: collision with root package name */
    public static final j f142b = new j();

    @Override // kotlinx.coroutines.H
    public void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        b.f126h.D(runnable, true, false);
    }

    @Override // kotlinx.coroutines.H
    public void dispatchYield(kotlin.coroutines.i iVar, Runnable runnable) {
        b.f126h.D(runnable, true, true);
    }

    @Override // kotlinx.coroutines.H
    public H limitedParallelism(int i2, String str) {
        AbstractC1678k.a(i2);
        return i2 >= i.f139d ? AbstractC1678k.b(this, str) : super.limitedParallelism(i2, str);
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        return "Dispatchers.IO";
    }
}
