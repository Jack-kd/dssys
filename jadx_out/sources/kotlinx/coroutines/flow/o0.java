package kotlinx.coroutines.flow;

/* loaded from: classes5.dex */
public final class o0 extends kotlinx.coroutines.flow.internal.c {

    /* renamed from: a, reason: collision with root package name */
    public long f51736a = -1;

    /* renamed from: b, reason: collision with root package name */
    public kotlin.coroutines.e f51737b;

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(SharedFlowImpl sharedFlowImpl) {
        if (this.f51736a >= 0) {
            return false;
        }
        this.f51736a = sharedFlowImpl.X();
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public kotlin.coroutines.e[] b(SharedFlowImpl sharedFlowImpl) {
        long j2 = this.f51736a;
        this.f51736a = -1L;
        this.f51737b = null;
        return sharedFlowImpl.W(j2);
    }
}
