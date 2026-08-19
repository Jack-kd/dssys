package kotlinx.coroutines.flow;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AbstractC1709w0;
import kotlinx.coroutines.InterfaceC1706v;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowKt__ShareKt$launchSharingDeferred$1 extends SuspendLambda implements Function2<kotlinx.coroutines.M, kotlin.coroutines.e, Object> {
    final /* synthetic */ InterfaceC1706v $result;
    final /* synthetic */ InterfaceC1639c $upstream;
    private /* synthetic */ Object L$0;
    int label;

    public static final class a implements InterfaceC1640d {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f51668b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ kotlinx.coroutines.M f51669c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1706v f51670d;

        public a(Ref$ObjectRef ref$ObjectRef, kotlinx.coroutines.M m2, InterfaceC1706v interfaceC1706v) {
            this.f51668b = ref$ObjectRef;
            this.f51669c = m2;
            this.f51670d = interfaceC1706v;
        }

        /* JADX WARN: Type inference failed for: r4v1, types: [T, kotlinx.coroutines.flow.j0, kotlinx.coroutines.flow.s0] */
        @Override // kotlinx.coroutines.flow.InterfaceC1640d
        public final Object emit(Object obj, kotlin.coroutines.e eVar) {
            Ref$ObjectRef ref$ObjectRef = this.f51668b;
            j0 j0Var = (j0) ref$ObjectRef.element;
            if (j0Var != null) {
                j0Var.setValue(obj);
            } else {
                kotlinx.coroutines.M m2 = this.f51669c;
                InterfaceC1706v interfaceC1706v = this.f51670d;
                ?? A2 = t0.a(obj);
                interfaceC1706v.i(new k0(A2, AbstractC1709w0.h(m2.getCoroutineContext())));
                ref$ObjectRef.element = A2;
            }
            return kotlin.j.f51397a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharingDeferred$1(InterfaceC1639c interfaceC1639c, InterfaceC1706v interfaceC1706v, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$upstream = interfaceC1639c;
        this.$result = interfaceC1706v;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1 = new FlowKt__ShareKt$launchSharingDeferred$1(this.$upstream, this.$result, eVar);
        flowKt__ShareKt$launchSharingDeferred$1.L$0 = obj;
        return flowKt__ShareKt$launchSharingDeferred$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        try {
            if (i2 == 0) {
                kotlin.e.b(obj);
                kotlinx.coroutines.M m2 = (kotlinx.coroutines.M) this.L$0;
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                InterfaceC1639c interfaceC1639c = this.$upstream;
                a aVar = new a(ref$ObjectRef, m2, this.$result);
                this.label = 1;
                if (interfaceC1639c.collect(aVar, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        } catch (Throwable th) {
            this.$result.h(th);
            throw th;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.M m2, kotlin.coroutines.e eVar) {
        return ((FlowKt__ShareKt$launchSharingDeferred$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
