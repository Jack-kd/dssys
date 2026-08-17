package kotlinx.coroutines;

/* renamed from: kotlinx.coroutines.t, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1702t extends x0 implements InterfaceC1700s {

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1704u f51919f;

    public C1702t(InterfaceC1704u interfaceC1704u) {
        this.f51919f = interfaceC1704u;
    }

    @Override // kotlinx.coroutines.InterfaceC1700s
    public boolean b(Throwable th) {
        return t().V(th);
    }

    @Override // kotlinx.coroutines.InterfaceC1700s
    public InterfaceC1705u0 getParent() {
        return t();
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return true;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        this.f51919f.c(t());
    }
}
