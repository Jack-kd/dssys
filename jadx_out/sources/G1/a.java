package G1;

import kotlin.Result;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.AbstractC1675h;

/* loaded from: classes5.dex */
public abstract class a {
    public static final void a(e eVar, Throwable th) throws Throwable {
        Result.Companion companion = Result.INSTANCE;
        eVar.resumeWith(Result.m66constructorimpl(kotlin.e.a(th)));
        throw th;
    }

    public static final void b(e eVar, e eVar2) throws Throwable {
        try {
            e eVarC = IntrinsicsKt__IntrinsicsJvmKt.c(eVar);
            Result.Companion companion = Result.INSTANCE;
            AbstractC1675h.b(eVarC, Result.m66constructorimpl(j.f51397a));
        } catch (Throwable th) {
            a(eVar2, th);
        }
    }

    public static final void c(Function2 function2, Object obj, e eVar) {
        try {
            e eVarC = IntrinsicsKt__IntrinsicsJvmKt.c(IntrinsicsKt__IntrinsicsJvmKt.a(function2, obj, eVar));
            Result.Companion companion = Result.INSTANCE;
            AbstractC1675h.b(eVarC, Result.m66constructorimpl(j.f51397a));
        } catch (Throwable th) {
            a(eVar, th);
        }
    }
}
