package kotlinx.coroutines;

import java.util.concurrent.Future;

/* renamed from: kotlinx.coroutines.j, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1683j implements InterfaceC1685k {

    /* renamed from: b, reason: collision with root package name */
    public final Future f51814b;

    public C1683j(Future future) {
        this.f51814b = future;
    }

    @Override // kotlinx.coroutines.InterfaceC1685k
    public void c(Throwable th) {
        this.f51814b.cancel(false);
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.f51814b + ']';
    }
}
