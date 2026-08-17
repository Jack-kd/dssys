package kotlinx.coroutines;

/* loaded from: classes5.dex */
public final class Q0 extends kotlinx.coroutines.internal.x implements Runnable {

    /* renamed from: f, reason: collision with root package name */
    public final long f51532f;

    public Q0(long j2, kotlin.coroutines.e eVar) {
        super(eVar.getContext(), eVar);
        this.f51532f = j2;
    }

    @Override // java.lang.Runnable
    public void run() {
        P(TimeoutKt.a(this.f51532f, DelayKt.c(getContext()), this));
    }

    @Override // kotlinx.coroutines.AbstractC1625a, kotlinx.coroutines.y0
    public String u0() {
        return super.u0() + "(timeMillis=" + this.f51532f + ')';
    }
}
