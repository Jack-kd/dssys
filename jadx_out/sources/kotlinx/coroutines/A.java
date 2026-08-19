package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes5.dex */
public class A {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51509b = AtomicIntegerFieldUpdater.newUpdater(A.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f51510a;

    public A(Throwable th, boolean z2) {
        this.f51510a = th;
        this._handled$volatile = z2 ? 1 : 0;
    }

    public final boolean a() {
        return f51509b.get(this) != 0;
    }

    public final boolean c() {
        return f51509b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return O.a(this) + '[' + this.f51510a + ']';
    }

    public /* synthetic */ A(Throwable th, boolean z2, int i2, kotlin.jvm.internal.f fVar) {
        this(th, (i2 & 2) != 0 ? false : z2);
    }
}
