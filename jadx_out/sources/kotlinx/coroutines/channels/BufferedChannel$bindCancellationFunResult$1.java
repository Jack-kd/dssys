package kotlinx.coroutines.channels;

import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public /* synthetic */ class BufferedChannel$bindCancellationFunResult$1 extends FunctionReferenceImpl implements Function3<Throwable, j, kotlin.coroutines.i, kotlin.j> {
    public BufferedChannel$bindCancellationFunResult$1(Object obj) {
        super(3, obj, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ kotlin.j invoke(Throwable th, j jVar, kotlin.coroutines.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m83invoke5_sEAP8(th, jVar.k(), iVar);
        return kotlin.j.f51397a;
    }

    /* renamed from: invoke-5_sEAP8, reason: not valid java name */
    public final void m83invoke5_sEAP8(Throwable th, Object obj, kotlin.coroutines.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        ((BufferedChannel) this.receiver).L0(th, obj, iVar);
    }
}
