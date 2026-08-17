package androidx.work;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.e;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InterfaceC1687l;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"R", "Lkotlin/j;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nListenableFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenableFuture.kt\nandroidx/work/ListenableFutureKt$await$2$1\n*L\n1#1,91:1\n*E\n"})
/* loaded from: classes.dex */
public final class ListenableFutureKt$await$2$1 implements Runnable {
    final /* synthetic */ InterfaceC1687l $cancellableContinuation;
    final /* synthetic */ M0.a $this_await;

    public ListenableFutureKt$await$2$1(InterfaceC1687l interfaceC1687l, M0.a aVar) {
        this.$cancellableContinuation = interfaceC1687l;
        this.$this_await = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            InterfaceC1687l interfaceC1687l = this.$cancellableContinuation;
            Result.Companion companion = Result.INSTANCE;
            interfaceC1687l.resumeWith(Result.m66constructorimpl(this.$this_await.get()));
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                cause = th;
            }
            if (th instanceof CancellationException) {
                this.$cancellableContinuation.j(cause);
                return;
            }
            InterfaceC1687l interfaceC1687l2 = this.$cancellableContinuation;
            Result.Companion companion2 = Result.INSTANCE;
            interfaceC1687l2.resumeWith(Result.m66constructorimpl(e.a(cause)));
        }
    }
}
