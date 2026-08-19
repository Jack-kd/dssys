package G1;

import kotlin.Result;
import kotlin.coroutines.e;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.A;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.I;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.z0;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class b {
    public static final void a(Function2 function2, Object obj, e eVar) {
        e eVarA = AbstractC1795e.a(eVar);
        try {
            i context = eVarA.getContext();
            Object objI = I.i(context, null);
            try {
                AbstractC1795e.b(eVarA);
                Object objD = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(function2, obj, eVarA) : ((Function2) p.c(function2, 2)).invoke(obj, eVarA);
                I.f(context, objI);
                if (objD != kotlin.coroutines.intrinsics.a.e()) {
                    eVarA.resumeWith(Result.m66constructorimpl(objD));
                }
            } catch (Throwable th) {
                I.f(context, objI);
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion = Result.INSTANCE;
            eVarA.resumeWith(Result.m66constructorimpl(kotlin.e.a(th2)));
        }
    }

    public static final Object b(x xVar, Object obj, Function2 function2) {
        Object a3;
        try {
            a3 = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(function2, obj, xVar) : ((Function2) p.c(function2, 2)).invoke(obj, xVar);
        } catch (Throwable th) {
            a3 = new A(th, false, 2, null);
        }
        if (a3 == kotlin.coroutines.intrinsics.a.e()) {
            return kotlin.coroutines.intrinsics.a.e();
        }
        Object objT0 = xVar.t0(a3);
        if (objT0 == z0.f51945b) {
            return kotlin.coroutines.intrinsics.a.e();
        }
        if (objT0 instanceof A) {
            throw ((A) objT0).f51510a;
        }
        return z0.h(objT0);
    }

    public static final Object c(x xVar, Object obj, Function2 function2) throws Throwable {
        Object a3;
        try {
            a3 = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(function2, obj, xVar) : ((Function2) p.c(function2, 2)).invoke(obj, xVar);
        } catch (Throwable th) {
            a3 = new A(th, false, 2, null);
        }
        if (a3 == kotlin.coroutines.intrinsics.a.e()) {
            return kotlin.coroutines.intrinsics.a.e();
        }
        Object objT0 = xVar.t0(a3);
        if (objT0 == z0.f51945b) {
            return kotlin.coroutines.intrinsics.a.e();
        }
        if (objT0 instanceof A) {
            Throwable th2 = ((A) objT0).f51510a;
            if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).coroutine != xVar) {
                throw th2;
            }
            if (a3 instanceof A) {
                throw ((A) a3).f51510a;
            }
        } else {
            a3 = z0.h(objT0);
        }
        return a3;
    }
}
