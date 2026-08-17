package androidx.window.java.core;

import androidx.core.util.Consumer;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.window.java.core.CallbackToFlowAdapter$connect$1$1", f = "CallbackToFlowAdapter.kt", i = {}, l = {46}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class CallbackToFlowAdapter$connect$1$1 extends SuspendLambda implements Function2<M, e, Object> {
    final /* synthetic */ Consumer<T> $consumer;
    final /* synthetic */ InterfaceC1639c $flow;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallbackToFlowAdapter$connect$1$1(InterfaceC1639c interfaceC1639c, Consumer<T> consumer, e eVar) {
        super(2, eVar);
        this.$flow = interfaceC1639c;
        this.$consumer = consumer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final e create(@Nullable Object obj, @NotNull e eVar) {
        return new CallbackToFlowAdapter$connect$1$1(this.$flow, this.$consumer, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        Object objE = a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            InterfaceC1639c interfaceC1639c = this.$flow;
            final Consumer<T> consumer = this.$consumer;
            InterfaceC1640d interfaceC1640d = new InterfaceC1640d() { // from class: androidx.window.java.core.CallbackToFlowAdapter$connect$1$1.1
                @Override // kotlinx.coroutines.flow.InterfaceC1640d
                @Nullable
                public final Object emit(@NotNull T t2, @NotNull e eVar) {
                    consumer.accept(t2);
                    return j.f51397a;
                }
            };
            this.label = 1;
            if (interfaceC1639c.collect(interfaceC1640d, this) == objE) {
                return objE;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
        }
        return j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull M m2, @Nullable e eVar) {
        return ((CallbackToFlowAdapter$connect$1$1) create(m2, eVar)).invokeSuspend(j.f51397a);
    }
}
