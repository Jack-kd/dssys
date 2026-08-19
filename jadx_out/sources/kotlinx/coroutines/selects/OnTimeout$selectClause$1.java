package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public /* synthetic */ class OnTimeout$selectClause$1 extends FunctionReferenceImpl implements Function3<OnTimeout, i, Object, kotlin.j> {
    public static final OnTimeout$selectClause$1 INSTANCE = new OnTimeout$selectClause$1();

    public OnTimeout$selectClause$1() {
        super(3, OnTimeout.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ kotlin.j invoke(OnTimeout onTimeout, i iVar, Object obj) {
        invoke2(onTimeout, iVar, obj);
        return kotlin.j.f51397a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(OnTimeout onTimeout, i iVar, Object obj) {
        onTimeout.c(iVar, obj);
    }
}
