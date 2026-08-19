package kotlinx.coroutines;

import java.util.concurrent.Future;

/* loaded from: classes5.dex */
public final class Y implements Z {

    /* renamed from: b, reason: collision with root package name */
    public final Future f51543b;

    public Y(Future future) {
        this.f51543b = future;
    }

    @Override // kotlinx.coroutines.Z
    public void dispose() {
        this.f51543b.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.f51543b + ']';
    }
}
