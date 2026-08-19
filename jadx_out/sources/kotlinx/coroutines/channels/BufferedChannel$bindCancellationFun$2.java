package kotlinx.coroutines.channels;

import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public /* synthetic */ class BufferedChannel$bindCancellationFun$2 extends FunctionReferenceImpl implements Function3<Throwable, Object, kotlin.coroutines.i, kotlin.j> {
    public BufferedChannel$bindCancellationFun$2(Object obj) {
        super(3, obj, BufferedChannel.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ kotlin.j invoke(Throwable th, Object obj, kotlin.coroutines.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        invoke2(th, obj, iVar);
        return kotlin.j.f51397a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th, Object obj, kotlin.coroutines.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        ((BufferedChannel) this.receiver).M0(th, obj, iVar);
    }
}
