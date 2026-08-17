package kotlin.coroutines;

import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class g {
    public static final void a(Function2 function2, Object obj, e completion) {
        j.e(function2, "<this>");
        j.e(completion, "completion");
        IntrinsicsKt__IntrinsicsJvmKt.c(IntrinsicsKt__IntrinsicsJvmKt.a(function2, obj, completion)).resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
    }
}
