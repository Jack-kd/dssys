package kotlinx.coroutines.flow;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* loaded from: classes5.dex */
public final class CallbackFlowBuilder extends C1638b {

    /* renamed from: f, reason: collision with root package name */
    public final Function2 f51619f;

    public /* synthetic */ CallbackFlowBuilder(Function2 function2, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow, int i3, kotlin.jvm.internal.f fVar) {
        this(function2, (i3 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : iVar, (i3 & 4) != 0 ? -2 : i2, (i3 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.C1638b, kotlinx.coroutines.flow.internal.ChannelFlow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object h(kotlinx.coroutines.channels.q r5, kotlin.coroutines.e r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = (kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = new kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            kotlin.e.b(r6)
            goto L43
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.e.b(r6)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = super.h(r5, r0)
            if (r6 != r1) goto L43
            return r1
        L43:
            boolean r5 = r5.r()
            if (r5 == 0) goto L4c
            kotlin.j r5 = kotlin.j.f51397a
            return r5
        L4c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.CallbackFlowBuilder.h(kotlinx.coroutines.channels.q, kotlin.coroutines.e):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.C1638b, kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow i(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return new CallbackFlowBuilder(this.f51619f, iVar, i2, bufferOverflow);
    }

    public CallbackFlowBuilder(Function2 function2, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        super(function2, iVar, i2, bufferOverflow);
        this.f51619f = function2;
    }
}
