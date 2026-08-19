package kotlin;

import kotlin.Result;

/* loaded from: classes5.dex */
public abstract class e {
    public static final Object a(Throwable exception) {
        kotlin.jvm.internal.j.e(exception, "exception");
        return new Result.Failure(exception);
    }

    public static final void b(Object obj) throws Throwable {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }
}
