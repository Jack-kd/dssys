package kotlinx.coroutines;

/* renamed from: kotlinx.coroutines.v0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1707v0 extends y0 implements InterfaceC1711y {

    /* renamed from: d, reason: collision with root package name */
    public final boolean f51922d;

    public C1707v0(InterfaceC1705u0 interfaceC1705u0) {
        super(true);
        m0(interfaceC1705u0);
        this.f51922d = S0();
    }

    public final boolean S0() {
        y0 y0VarT;
        InterfaceC1700s interfaceC1700sG0 = g0();
        C1702t c1702t = interfaceC1700sG0 instanceof C1702t ? (C1702t) interfaceC1700sG0 : null;
        if (c1702t != null && (y0VarT = c1702t.t()) != null) {
            while (!y0VarT.c0()) {
                InterfaceC1700s interfaceC1700sG02 = y0VarT.g0();
                C1702t c1702t2 = interfaceC1700sG02 instanceof C1702t ? (C1702t) interfaceC1700sG02 : null;
                if (c1702t2 == null || (y0VarT = c1702t2.t()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.y0
    public boolean c0() {
        return this.f51922d;
    }

    @Override // kotlinx.coroutines.y0
    public boolean d0() {
        return true;
    }
}
