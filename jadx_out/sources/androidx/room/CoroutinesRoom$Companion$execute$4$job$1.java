package androidx.room;

import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion$execute$4$job$1", f = "CoroutinesRoom.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class CoroutinesRoom$Companion$execute$4$job$1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ Callable<R> $callable;
    final /* synthetic */ InterfaceC1687l $continuation;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$execute$4$job$1(Callable<R> callable, InterfaceC1687l interfaceC1687l, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$callable = callable;
        this.$continuation = interfaceC1687l;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
        return new CoroutinesRoom$Companion$execute$4$job$1(this.$callable, this.$continuation, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.a.e();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.e.b(obj);
        try {
            this.$continuation.resumeWith(Result.m66constructorimpl(this.$callable.call()));
        } catch (Throwable th) {
            InterfaceC1687l interfaceC1687l = this.$continuation;
            Result.Companion companion = Result.INSTANCE;
            interfaceC1687l.resumeWith(Result.m66constructorimpl(kotlin.e.a(th)));
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull M m2, @Nullable kotlin.coroutines.e eVar) {
        return ((CoroutinesRoom$Companion$execute$4$job$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
