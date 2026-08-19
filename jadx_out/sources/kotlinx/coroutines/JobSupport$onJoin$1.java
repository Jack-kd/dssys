package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
final /* synthetic */ class JobSupport$onJoin$1 extends FunctionReferenceImpl implements Function3<y0, kotlinx.coroutines.selects.i, Object, kotlin.j> {
    public static final JobSupport$onJoin$1 INSTANCE = new JobSupport$onJoin$1();

    public JobSupport$onJoin$1() {
        super(3, y0.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ kotlin.j invoke(y0 y0Var, kotlinx.coroutines.selects.i iVar, Object obj) {
        invoke2(y0Var, iVar, obj);
        return kotlin.j.f51397a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(y0 y0Var, kotlinx.coroutines.selects.i iVar, Object obj) {
        y0Var.F0(iVar, obj);
    }
}
