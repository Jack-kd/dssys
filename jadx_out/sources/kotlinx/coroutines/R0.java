package kotlinx.coroutines;

/* loaded from: classes5.dex */
public final class R0 extends H {

    /* renamed from: b, reason: collision with root package name */
    public static final R0 f51533b = new R0();

    @Override // kotlinx.coroutines.H
    public void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        V0 v02 = (V0) iVar.get(V0.f51538c);
        if (v02 == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        v02.f51539b = true;
    }

    @Override // kotlinx.coroutines.H
    public boolean isDispatchNeeded(kotlin.coroutines.i iVar) {
        return false;
    }

    @Override // kotlinx.coroutines.H
    public H limitedParallelism(int i2, String str) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
