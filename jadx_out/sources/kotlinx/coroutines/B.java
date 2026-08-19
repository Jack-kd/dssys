package kotlinx.coroutines;

import kotlin.Result;

/* loaded from: classes5.dex */
public abstract class B {
    public static final Object a(Object obj, kotlin.coroutines.e eVar) {
        if (!(obj instanceof A)) {
            return Result.m66constructorimpl(obj);
        }
        Result.Companion companion = Result.INSTANCE;
        return Result.m66constructorimpl(kotlin.e.a(((A) obj).f51510a));
    }

    public static final Object b(Object obj) {
        Throwable thM69exceptionOrNullimpl = Result.m69exceptionOrNullimpl(obj);
        return thM69exceptionOrNullimpl == null ? obj : new A(thM69exceptionOrNullimpl, false, 2, null);
    }

    public static final Object c(Object obj, InterfaceC1687l interfaceC1687l) {
        Throwable thM69exceptionOrNullimpl = Result.m69exceptionOrNullimpl(obj);
        return thM69exceptionOrNullimpl == null ? obj : new A(thM69exceptionOrNullimpl, false, 2, null);
    }
}
