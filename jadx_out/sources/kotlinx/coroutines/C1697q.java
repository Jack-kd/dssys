package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: kotlinx.coroutines.q, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1697q extends A {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51827c = AtomicIntegerFieldUpdater.newUpdater(C1697q.class, "_resumed$volatile");
    private volatile /* synthetic */ int _resumed$volatile;

    public C1697q(kotlin.coroutines.e eVar, Throwable th, boolean z2) {
        if (th == null) {
            th = new CancellationException("Continuation " + eVar + " was cancelled normally");
        }
        super(th, z2);
        this._resumed$volatile = 0;
    }

    public final boolean e() {
        return f51827c.compareAndSet(this, 0, 1);
    }
}
