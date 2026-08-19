package kotlinx.coroutines.flow;

import com.anythink.core.common.f.f;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.j;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/channels/j;", "", f.a.f3244d, "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/j;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", i = {0}, l = {236}, m = "invokeSuspend", n = {"$this$onFailure_u2dWpGqRn0$iv"}, s = {"L$0"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,407:1\n529#2,2:408\n544#2:410\n545#2:413\n1#3:411\n14#4:412\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n*L\n232#1:408,2\n233#1:410\n233#1:413\n236#1:412\n*E\n"})
/* loaded from: classes5.dex */
public final class FlowKt__DelayKt$debounceInternal$1$3$2 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.j, kotlin.coroutines.e, Object> {
    final /* synthetic */ InterfaceC1640d $downstream;
    final /* synthetic */ Ref$ObjectRef<Object> $lastValue;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$debounceInternal$1$3$2(Ref$ObjectRef<Object> ref$ObjectRef, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$lastValue = ref$ObjectRef;
        this.$downstream = interfaceC1640d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        FlowKt__DelayKt$debounceInternal$1$3$2 flowKt__DelayKt$debounceInternal$1$3$2 = new FlowKt__DelayKt$debounceInternal$1$3$2(this.$lastValue, this.$downstream, eVar);
        flowKt__DelayKt$debounceInternal$1$3$2.L$0 = obj;
        return flowKt__DelayKt$debounceInternal$1$3$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.j jVar, kotlin.coroutines.e eVar) {
        return m84invokeWpGqRn0(jVar.k(), eVar);
    }

    /* renamed from: invoke-WpGqRn0, reason: not valid java name */
    public final Object m84invokeWpGqRn0(Object obj, kotlin.coroutines.e eVar) {
        return ((FlowKt__DelayKt$debounceInternal$1$3$2) create(kotlinx.coroutines.channels.j.b(obj), eVar)).invokeSuspend(kotlin.j.f51397a);
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6, types: [T, kotlinx.coroutines.internal.B] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef<Object> ref$ObjectRef;
        Ref$ObjectRef<Object> ref$ObjectRef2;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            ?? K2 = ((kotlinx.coroutines.channels.j) this.L$0).k();
            ref$ObjectRef = this.$lastValue;
            boolean z2 = K2 instanceof j.c;
            if (!z2) {
                ref$ObjectRef.element = K2;
            }
            InterfaceC1640d interfaceC1640d = this.$downstream;
            if (z2) {
                Throwable thE = kotlinx.coroutines.channels.j.e(K2);
                if (thE != null) {
                    throw thE;
                }
                Object obj2 = ref$ObjectRef.element;
                if (obj2 != null) {
                    if (obj2 == kotlinx.coroutines.flow.internal.n.f51725a) {
                        obj2 = null;
                    }
                    this.L$0 = K2;
                    this.L$1 = ref$ObjectRef;
                    this.label = 1;
                    if (interfaceC1640d.emit(obj2, this) == objE) {
                        return objE;
                    }
                    ref$ObjectRef2 = ref$ObjectRef;
                }
                ref$ObjectRef.element = kotlinx.coroutines.flow.internal.n.f51727c;
            }
            return kotlin.j.f51397a;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ref$ObjectRef2 = (Ref$ObjectRef) this.L$1;
        kotlin.e.b(obj);
        ref$ObjectRef = ref$ObjectRef2;
        ref$ObjectRef.element = kotlinx.coroutines.flow.internal.n.f51727c;
        return kotlin.j.f51397a;
    }
}
