package kotlinx.coroutines;

/* renamed from: kotlinx.coroutines.w, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1708w extends y0 implements InterfaceC1706v {
    public C1708w(InterfaceC1705u0 interfaceC1705u0) {
        super(true);
        m0(interfaceC1705u0);
    }

    @Override // kotlinx.coroutines.S
    public Object b(kotlin.coroutines.e eVar) throws Throwable {
        Object objN = N(eVar);
        kotlin.coroutines.intrinsics.a.e();
        return objN;
    }

    @Override // kotlinx.coroutines.y0
    public boolean d0() {
        return true;
    }

    @Override // kotlinx.coroutines.InterfaceC1706v
    public boolean h(Throwable th) {
        return s0(new A(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.InterfaceC1706v
    public boolean i(Object obj) {
        return s0(obj);
    }
}
