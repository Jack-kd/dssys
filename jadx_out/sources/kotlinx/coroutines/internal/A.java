package kotlinx.coroutines.internal;

import a.C0893a;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* loaded from: classes5.dex */
public abstract class A {

    /* renamed from: a, reason: collision with root package name */
    public static final StackTraceElement f51751a = new C0893a().a();

    /* renamed from: b, reason: collision with root package name */
    public static final String f51752b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f51753c;

    static {
        Object objM66constructorimpl;
        Object objM66constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM66constructorimpl = Result.m66constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM66constructorimpl = Result.m66constructorimpl(kotlin.e.a(th));
        }
        if (Result.m69exceptionOrNullimpl(objM66constructorimpl) != null) {
            objM66constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f51752b = (String) objM66constructorimpl;
        try {
            objM66constructorimpl2 = Result.m66constructorimpl(A.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM66constructorimpl2 = Result.m66constructorimpl(kotlin.e.a(th2));
        }
        if (Result.m69exceptionOrNullimpl(objM66constructorimpl2) != null) {
            objM66constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f51753c = (String) objM66constructorimpl2;
    }

    public static final Throwable a(Throwable th) {
        return th;
    }
}
