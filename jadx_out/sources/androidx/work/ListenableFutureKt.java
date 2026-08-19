package androidx.work;

import androidx.annotation.RestrictTo;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.j;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.i;
import kotlinx.coroutines.C1691n;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w1.AbstractC1795e;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0004"}, d2 = {"R", "LM0/a;", "await", "(LM0/a;Lkotlin/coroutines/e;)Ljava/lang/Object;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nListenableFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenableFuture.kt\nandroidx/work/ListenableFutureKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,91:1\n314#2,11:92\n*S KotlinDebug\n*F\n+ 1 ListenableFuture.kt\nandroidx/work/ListenableFutureKt\n*L\n47#1:92,11\n*E\n"})
/* loaded from: classes.dex */
public final class ListenableFutureKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public static final <R> Object await(@NotNull M0.a aVar, @NotNull e eVar) throws Throwable {
        if (aVar.isDone()) {
            try {
                return aVar.get();
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (cause == null) {
                    throw e2;
                }
                throw cause;
            }
        }
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        aVar.addListener(new ListenableFutureKt$await$2$1(c1691n, aVar), DirectExecutor.INSTANCE);
        c1691n.v(new ListenableFutureKt$await$2$2(aVar));
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    private static final <R> Object await$$forInline(M0.a aVar, e eVar) throws Throwable {
        if (aVar.isDone()) {
            try {
                return aVar.get();
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw e2;
            }
        }
        i.c(0);
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        aVar.addListener(new ListenableFutureKt$await$2$1(c1691n, aVar), DirectExecutor.INSTANCE);
        c1691n.v(new ListenableFutureKt$await$2$2(aVar));
        j jVar = j.f51397a;
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        i.c(1);
        return objY;
    }
}
