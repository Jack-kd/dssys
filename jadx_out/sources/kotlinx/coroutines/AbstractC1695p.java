package kotlinx.coroutines;

import kotlinx.coroutines.internal.C1674g;

/* renamed from: kotlinx.coroutines.p, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1695p {
    public static final void a(InterfaceC1687l interfaceC1687l, Z z2) {
        c(interfaceC1687l, new C1626a0(z2));
    }

    public static final C1691n b(kotlin.coroutines.e eVar) {
        if (!(eVar instanceof C1674g)) {
            return new C1691n(eVar, 1);
        }
        C1691n c1691nK = ((C1674g) eVar).k();
        if (c1691nK != null) {
            if (!c1691nK.P()) {
                c1691nK = null;
            }
            if (c1691nK != null) {
                return c1691nK;
            }
        }
        return new C1691n(eVar, 2);
    }

    public static final void c(InterfaceC1687l interfaceC1687l, InterfaceC1685k interfaceC1685k) {
        if (!(interfaceC1687l instanceof C1691n)) {
            throw new UnsupportedOperationException("third-party implementation of CancellableContinuation is not supported");
        }
        ((C1691n) interfaceC1687l).I(interfaceC1685k);
    }
}
