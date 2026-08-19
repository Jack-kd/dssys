package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$initSelectResult$1", f = "SelectOld.kt", i = {}, l = {67}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class UnbiasedSelectBuilderImpl$initSelectResult$1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    int label;
    final /* synthetic */ m this$0;

    public UnbiasedSelectBuilderImpl$initSelectResult$1(m mVar, kotlin.coroutines.e eVar) {
        super(2, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        return new UnbiasedSelectBuilderImpl$initSelectResult$1(null, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        try {
            if (i2 == 0) {
                kotlin.e.b(obj);
                this.label = 1;
                throw null;
            }
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
            l.c(m.C(null), obj);
            return kotlin.j.f51397a;
        } catch (Throwable th) {
            l.d(m.C(null), th);
            return kotlin.j.f51397a;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((UnbiasedSelectBuilderImpl$initSelectResult$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
