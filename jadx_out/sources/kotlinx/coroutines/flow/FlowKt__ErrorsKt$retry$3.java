package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import w1.AbstractC1791a;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\t\u001a\u00020\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0015\u0010\u0005\u001a\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u00052\u0015\u0010\u0007\u001a\u00110\u0006¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0007H\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "", "Lkotlin/ParameterName;", "name", "cause", "", "attempt", "", "<anonymous>", "(Lkotlinx/coroutines/flow/d;Ljava/lang/Throwable;J)Z"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3", f = "Errors.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowKt__ErrorsKt$retry$3 extends SuspendLambda implements Function4<InterfaceC1640d, Throwable, Long, kotlin.coroutines.e, Object> {
    final /* synthetic */ Function2<Throwable, kotlin.coroutines.e, Object> $predicate;
    final /* synthetic */ long $retries;
    /* synthetic */ long J$0;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ErrorsKt$retry$3(long j2, Function2<? super Throwable, ? super kotlin.coroutines.e, ? extends Object> function2, kotlin.coroutines.e eVar) {
        super(4, eVar);
        this.$retries = j2;
        this.$predicate = function2;
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(InterfaceC1640d interfaceC1640d, Throwable th, Long l2, kotlin.coroutines.e eVar) {
        return invoke(interfaceC1640d, th, l2.longValue(), eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            Throwable th = (Throwable) this.L$0;
            if (this.J$0 < this.$retries) {
                Function2<Throwable, kotlin.coroutines.e, Object> function2 = this.$predicate;
                this.label = 1;
                obj = function2.invoke(th, this);
                if (obj == objE) {
                    return objE;
                }
            }
            return AbstractC1791a.a(z);
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.e.b(obj);
        boolean z2 = ((Boolean) obj).booleanValue();
        return AbstractC1791a.a(z2);
    }

    public final Object invoke(InterfaceC1640d interfaceC1640d, Throwable th, long j2, kotlin.coroutines.e eVar) {
        FlowKt__ErrorsKt$retry$3 flowKt__ErrorsKt$retry$3 = new FlowKt__ErrorsKt$retry$3(this.$retries, this.$predicate, eVar);
        flowKt__ErrorsKt$retry$3.L$0 = th;
        flowKt__ErrorsKt$retry$3.J$0 = j2;
        return flowKt__ErrorsKt$retry$3.invokeSuspend(kotlin.j.f51397a);
    }
}
