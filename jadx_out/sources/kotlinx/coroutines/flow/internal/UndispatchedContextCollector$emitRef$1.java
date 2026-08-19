package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.InterfaceC1640d;

@Metadata(d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "it", "Lkotlin/j;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", i = {}, l = {208}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class UndispatchedContextCollector$emitRef$1 extends SuspendLambda implements Function2<Object, kotlin.coroutines.e, Object> {
    final /* synthetic */ InterfaceC1640d $downstream;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UndispatchedContextCollector$emitRef$1(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$downstream = interfaceC1640d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        UndispatchedContextCollector$emitRef$1 undispatchedContextCollector$emitRef$1 = new UndispatchedContextCollector$emitRef$1(this.$downstream, eVar);
        undispatchedContextCollector$emitRef$1.L$0 = obj;
        return undispatchedContextCollector$emitRef$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            Object obj2 = this.L$0;
            InterfaceC1640d interfaceC1640d = this.$downstream;
            this.label = 1;
            if (interfaceC1640d.emit(obj2, this) == objE) {
                return objE;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, kotlin.coroutines.e eVar) {
        return ((UndispatchedContextCollector$emitRef$1) create(obj, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
