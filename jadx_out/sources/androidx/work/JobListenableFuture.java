package androidx.work;

import androidx.work.impl.utils.futures.SettableFuture;
import com.kuaishou.weapon.p0.bo;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.InterfaceC1705u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ0\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\t0\t2\u000e\u0010\r\u001a\n \n*\u0004\u0018\u00010\f0\fH\u0096\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0011H\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0014\u001a\n \n*\u0004\u0018\u00018\u00008\u0000H\u0096\u0001¢\u0006\u0004\b\u0014\u0010\u0015J0\u0010\u0014\u001a\n \n*\u0004\u0018\u00018\u00008\u00002\u0006\u0010\u000b\u001a\u00020\u00162\u000e\u0010\r\u001a\n \n*\u0004\u0018\u00010\u00170\u0017H\u0096\u0003¢\u0006\u0004\b\u0014\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0011H\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0011H\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001fR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010 ¨\u0006!"}, d2 = {"Landroidx/work/JobListenableFuture;", "R", "LM0/a;", "Lkotlinx/coroutines/u0;", "job", "Landroidx/work/impl/utils/futures/SettableFuture;", "underlying", "<init>", "(Lkotlinx/coroutines/u0;Landroidx/work/impl/utils/futures/SettableFuture;)V", "Ljava/lang/Runnable;", "kotlin.jvm.PlatformType", bo.f30893g, "Ljava/util/concurrent/Executor;", "p1", "Lkotlin/j;", "addListener", "(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V", "", "cancel", "(Z)Z", "get", "()Ljava/lang/Object;", "", "Ljava/util/concurrent/TimeUnit;", "(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;", "isCancelled", "()Z", "isDone", "result", "complete", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/u0;", "Landroidx/work/impl/utils/futures/SettableFuture;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class JobListenableFuture<R> implements M0.a {

    @NotNull
    private final InterfaceC1705u0 job;

    @NotNull
    private final SettableFuture<R> underlying;

    public JobListenableFuture(@NotNull InterfaceC1705u0 job, @NotNull SettableFuture<R> underlying) {
        j.e(job, "job");
        j.e(underlying, "underlying");
        this.job = job;
        this.underlying = underlying;
        job.e(new Function1<Throwable, kotlin.j>(this) { // from class: androidx.work.JobListenableFuture.1
            final /* synthetic */ JobListenableFuture<R> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.j invoke(Throwable th) {
                invoke2(th);
                return kotlin.j.f51397a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                if (th == null) {
                    if (!((JobListenableFuture) this.this$0).underlying.isDone()) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                } else {
                    if (th instanceof CancellationException) {
                        ((JobListenableFuture) this.this$0).underlying.cancel(true);
                        return;
                    }
                    SettableFuture settableFuture = ((JobListenableFuture) this.this$0).underlying;
                    Throwable cause = th.getCause();
                    if (cause != null) {
                        th = cause;
                    }
                    settableFuture.setException(th);
                }
            }
        });
    }

    @Override // M0.a
    public void addListener(Runnable p02, Executor p12) {
        this.underlying.addListener(p02, p12);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean p02) {
        return this.underlying.cancel(p02);
    }

    public final void complete(R result) {
        this.underlying.set(result);
    }

    @Override // java.util.concurrent.Future
    public R get() {
        return this.underlying.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.underlying.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.underlying.isDone();
    }

    @Override // java.util.concurrent.Future
    public R get(long p02, TimeUnit p12) {
        return this.underlying.get(p02, p12);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ JobListenableFuture(InterfaceC1705u0 interfaceC1705u0, SettableFuture settableFuture, int i2, f fVar) {
        if ((i2 & 2) != 0) {
            settableFuture = SettableFuture.create();
            j.d(settableFuture, "create()");
        }
        this(interfaceC1705u0, settableFuture);
    }
}
