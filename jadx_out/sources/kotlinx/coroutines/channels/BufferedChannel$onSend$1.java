package kotlinx.coroutines.channels;

import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
final /* synthetic */ class BufferedChannel$onSend$1 extends FunctionReferenceImpl implements Function3<BufferedChannel, kotlinx.coroutines.selects.i, Object, kotlin.j> {
    public static final BufferedChannel$onSend$1 INSTANCE = new BufferedChannel$onSend$1();

    public BufferedChannel$onSend$1() {
        super(3, BufferedChannel.class, "registerSelectForSend", "registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ kotlin.j invoke(BufferedChannel bufferedChannel, kotlinx.coroutines.selects.i iVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        invoke2(bufferedChannel, iVar, obj);
        return kotlin.j.f51397a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(BufferedChannel bufferedChannel, kotlinx.coroutines.selects.i iVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        bufferedChannel.j1(iVar, obj);
    }
}
