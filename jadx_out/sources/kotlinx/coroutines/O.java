package kotlinx.coroutines;

import kotlin.Result;
import kotlinx.coroutines.internal.C1674g;

/* loaded from: classes5.dex */
public abstract class O {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(kotlin.coroutines.e eVar) {
        Object objM66constructorimpl;
        if (eVar instanceof C1674g) {
            return ((C1674g) eVar).toString();
        }
        try {
            Result.Companion aVar = Result.INSTANCE;
            objM66constructorimpl = Result.m66constructorimpl(eVar + '@' + b(eVar));
        } catch (Throwable th) {
            Result.Companion aVar2 = Result.INSTANCE;
            objM66constructorimpl = Result.m66constructorimpl(kotlin.e.a(th));
        }
        if (Result.m69exceptionOrNullimpl(objM66constructorimpl) != null) {
            objM66constructorimpl = eVar.getClass().getName() + '@' + b(eVar);
        }
        return (String) objM66constructorimpl;
    }
}
