package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class JobKt__JobKt {
    public static final InterfaceC1711y a(InterfaceC1705u0 interfaceC1705u0) {
        return new C1707v0(interfaceC1705u0);
    }

    public static /* synthetic */ InterfaceC1711y b(InterfaceC1705u0 interfaceC1705u0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            interfaceC1705u0 = null;
        }
        return AbstractC1709w0.a(interfaceC1705u0);
    }

    public static final void c(kotlin.coroutines.i iVar, CancellationException cancellationException) {
        InterfaceC1705u0 interfaceC1705u0 = (InterfaceC1705u0) iVar.get(InterfaceC1705u0.T2);
        if (interfaceC1705u0 != null) {
            interfaceC1705u0.a(cancellationException);
        }
    }

    public static /* synthetic */ void d(kotlin.coroutines.i iVar, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        AbstractC1709w0.c(iVar, cancellationException);
    }

    public static final Z e(InterfaceC1705u0 interfaceC1705u0, Z z2) {
        return j(interfaceC1705u0, false, new C1628b0(z2), 1, null);
    }

    public static final void f(kotlin.coroutines.i iVar) {
        InterfaceC1705u0 interfaceC1705u0 = (InterfaceC1705u0) iVar.get(InterfaceC1705u0.T2);
        if (interfaceC1705u0 != null) {
            AbstractC1709w0.g(interfaceC1705u0);
        }
    }

    public static final void g(InterfaceC1705u0 interfaceC1705u0) {
        if (!interfaceC1705u0.isActive()) {
            throw interfaceC1705u0.z();
        }
    }

    public static final InterfaceC1705u0 h(kotlin.coroutines.i iVar) {
        InterfaceC1705u0 interfaceC1705u0 = (InterfaceC1705u0) iVar.get(InterfaceC1705u0.T2);
        if (interfaceC1705u0 != null) {
            return interfaceC1705u0;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + iVar).toString());
    }

    public static final Z i(InterfaceC1705u0 interfaceC1705u0, boolean z2, x0 x0Var) {
        return interfaceC1705u0 instanceof y0 ? ((y0) interfaceC1705u0).n0(z2, x0Var) : interfaceC1705u0.u(x0Var.u(), z2, new JobKt__JobKt$invokeOnCompletion$1(x0Var));
    }

    public static /* synthetic */ Z j(InterfaceC1705u0 interfaceC1705u0, boolean z2, x0 x0Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z2 = true;
        }
        return AbstractC1709w0.i(interfaceC1705u0, z2, x0Var);
    }
}
