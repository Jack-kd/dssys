package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.j;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
final /* synthetic */ class MutexImpl$onLock$1 extends FunctionReferenceImpl implements Function3<f, kotlinx.coroutines.selects.i, Object, j> {
    public static final MutexImpl$onLock$1 INSTANCE = new MutexImpl$onLock$1();

    public MutexImpl$onLock$1() {
        super(3, f.class, "onLockRegFunction", "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ j invoke(f fVar, kotlinx.coroutines.selects.i iVar, Object obj) {
        invoke2(fVar, iVar, obj);
        return j.f51397a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(f fVar, kotlinx.coroutines.selects.i iVar, Object obj) {
        fVar.E(iVar, obj);
    }
}
