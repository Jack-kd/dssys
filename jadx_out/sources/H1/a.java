package H1;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.AbstractC1686k0;
import kotlinx.coroutines.H;
import kotlinx.coroutines.internal.C;
import kotlinx.coroutines.internal.E;

/* loaded from: classes5.dex */
public final class a extends AbstractC1686k0 implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final a f124c = new a();

    /* renamed from: d, reason: collision with root package name */
    public static final H f125d = H.limitedParallelism$default(j.f142b, E.e("kotlinx.coroutines.io.parallelism", E1.f.b(64, C.a()), 0, 0, 12, null), null, 2, null);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // kotlinx.coroutines.H
    public void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        f125d.dispatch(iVar, runnable);
    }

    @Override // kotlinx.coroutines.H
    public void dispatchYield(kotlin.coroutines.i iVar, Runnable runnable) {
        f125d.dispatchYield(iVar, runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override // kotlinx.coroutines.H
    public H limitedParallelism(int i2, String str) {
        return j.f142b.limitedParallelism(i2, str);
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        return "Dispatchers.IO";
    }
}
