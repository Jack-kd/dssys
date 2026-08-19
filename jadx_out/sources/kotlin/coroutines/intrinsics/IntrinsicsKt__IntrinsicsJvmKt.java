package kotlin.coroutines.intrinsics;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.e;
import kotlin.coroutines.i;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.p;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class IntrinsicsKt__IntrinsicsJvmKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static e a(final Function2 function2, final Object obj, e completion) {
        j.e(function2, "<this>");
        j.e(completion, "completion");
        final e eVarA = AbstractC1795e.a(completion);
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(obj, eVarA);
        }
        final i context = eVarA.getContext();
        return context == EmptyCoroutineContext.INSTANCE ? new RestrictedContinuationImpl(eVarA, function2, obj) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
            final /* synthetic */ Object $receiver$inlined;
            final /* synthetic */ Function2 $this_createCoroutineUnintercepted$inlined;
            private int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(eVarA);
                this.$this_createCoroutineUnintercepted$inlined = function2;
                this.$receiver$inlined = obj;
                j.c(eVarA, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object result) throws Throwable {
                int i2 = this.label;
                if (i2 == 0) {
                    this.label = 1;
                    kotlin.e.b(result);
                    j.c(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                    return ((Function2) p.c(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
                }
                if (i2 != 1) {
                    throw new IllegalStateException("This coroutine had already completed");
                }
                this.label = 2;
                kotlin.e.b(result);
                return result;
            }
        } : new ContinuationImpl(eVarA, context, function2, obj) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            final /* synthetic */ Object $receiver$inlined;
            final /* synthetic */ Function2 $this_createCoroutineUnintercepted$inlined;
            private int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(eVarA, context);
                this.$this_createCoroutineUnintercepted$inlined = function2;
                this.$receiver$inlined = obj;
                j.c(eVarA, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object result) throws Throwable {
                int i2 = this.label;
                if (i2 == 0) {
                    this.label = 1;
                    kotlin.e.b(result);
                    j.c(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                    return ((Function2) p.c(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
                }
                if (i2 != 1) {
                    throw new IllegalStateException("This coroutine had already completed");
                }
                this.label = 2;
                kotlin.e.b(result);
                return result;
            }
        };
    }

    public static final e b(final e eVar) {
        final i context = eVar.getContext();
        return context == EmptyCoroutineContext.INSTANCE ? new RestrictedContinuationImpl(eVar) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(eVar);
                j.c(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object result) throws Throwable {
                kotlin.e.b(result);
                return result;
            }
        } : new ContinuationImpl(eVar, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(eVar, context);
                j.c(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object result) throws Throwable {
                kotlin.e.b(result);
                return result;
            }
        };
    }

    public static e c(e eVar) {
        e eVarIntercepted;
        j.e(eVar, "<this>");
        ContinuationImpl continuationImpl = eVar instanceof ContinuationImpl ? (ContinuationImpl) eVar : null;
        return (continuationImpl == null || (eVarIntercepted = continuationImpl.intercepted()) == null) ? eVar : eVarIntercepted;
    }

    public static Object d(Function2 function2, Object obj, e completion) {
        j.e(function2, "<this>");
        j.e(completion, "completion");
        return ((Function2) p.c(function2, 2)).invoke(obj, b(AbstractC1795e.a(completion)));
    }
}
