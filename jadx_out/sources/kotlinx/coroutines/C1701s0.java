package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function1;

/* renamed from: kotlinx.coroutines.s0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1701s0 extends x0 {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51830g = AtomicIntegerFieldUpdater.newUpdater(C1701s0.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile = 0;

    /* renamed from: f, reason: collision with root package name */
    public final Function1 f51831f;

    public C1701s0(Function1 function1) {
        this.f51831f = function1;
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return true;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        if (f51830g.compareAndSet(this, 0, 1)) {
            this.f51831f.invoke(th);
        }
    }
}
