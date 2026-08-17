package kotlinx.coroutines;

/* loaded from: classes5.dex */
public final class r extends x0 {

    /* renamed from: f, reason: collision with root package name */
    public final C1691n f51829f;

    public r(C1691n c1691n) {
        this.f51829f = c1691n;
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return true;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        C1691n c1691n = this.f51829f;
        c1691n.N(c1691n.u(t()));
    }
}
