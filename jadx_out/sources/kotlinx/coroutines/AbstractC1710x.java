package kotlinx.coroutines;

import kotlin.Result;

/* renamed from: kotlinx.coroutines.x, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1710x {
    public static final InterfaceC1706v a(InterfaceC1705u0 interfaceC1705u0) {
        return new C1708w(interfaceC1705u0);
    }

    public static /* synthetic */ InterfaceC1706v b(InterfaceC1705u0 interfaceC1705u0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            interfaceC1705u0 = null;
        }
        return a(interfaceC1705u0);
    }

    public static final boolean c(InterfaceC1706v interfaceC1706v, Object obj) {
        Throwable thM69exceptionOrNullimpl = Result.m69exceptionOrNullimpl(obj);
        return thM69exceptionOrNullimpl == null ? interfaceC1706v.i(obj) : interfaceC1706v.h(thM69exceptionOrNullimpl);
    }
}
