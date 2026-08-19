package kotlinx.coroutines.flow;

import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {50, ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT}, m = "emit", n = {f.a.f3244d, "$this$onEach_u24lambda_u248"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Z this$0;

    public FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1(Z z2, kotlin.coroutines.e eVar) {
        super(eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
