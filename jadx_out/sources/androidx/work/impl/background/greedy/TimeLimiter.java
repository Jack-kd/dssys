package androidx.work.impl.background.greedy;

import androidx.work.RunnableScheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkLauncher;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Landroidx/work/impl/background/greedy/TimeLimiter;", "", "Landroidx/work/RunnableScheduler;", "runnableScheduler", "Landroidx/work/impl/WorkLauncher;", "launcher", "", "timeoutMs", "<init>", "(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;J)V", "Landroidx/work/impl/StartStopToken;", "token", "Lkotlin/j;", "track", "(Landroidx/work/impl/StartStopToken;)V", "cancel", "Landroidx/work/RunnableScheduler;", "Landroidx/work/impl/WorkLauncher;", "J", "lock", "Ljava/lang/Object;", "", "Ljava/lang/Runnable;", "tracked", "Ljava/util/Map;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTimeLimiter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeLimiter.kt\nandroidx/work/impl/background/greedy/TimeLimiter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"})
/* loaded from: classes.dex */
public final class TimeLimiter {

    @NotNull
    private final WorkLauncher launcher;

    @NotNull
    private final Object lock;

    @NotNull
    private final RunnableScheduler runnableScheduler;
    private final long timeoutMs;

    @NotNull
    private final Map<StartStopToken, Runnable> tracked;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TimeLimiter(@NotNull RunnableScheduler runnableScheduler, @NotNull WorkLauncher launcher) {
        this(runnableScheduler, launcher, 0L, 4, null);
        j.e(runnableScheduler, "runnableScheduler");
        j.e(launcher, "launcher");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void track$lambda$0(TimeLimiter this$0, StartStopToken token) {
        j.e(this$0, "this$0");
        j.e(token, "$token");
        this$0.launcher.stopWork(token, 3);
    }

    public final void cancel(@NotNull StartStopToken token) {
        Runnable runnableRemove;
        j.e(token, "token");
        synchronized (this.lock) {
            runnableRemove = this.tracked.remove(token);
        }
        if (runnableRemove != null) {
            this.runnableScheduler.cancel(runnableRemove);
        }
    }

    public final void track(@NotNull final StartStopToken token) {
        j.e(token, "token");
        Runnable runnable = new Runnable() { // from class: androidx.work.impl.background.greedy.a
            @Override // java.lang.Runnable
            public final void run() {
                TimeLimiter.track$lambda$0(this.f1126b, token);
            }
        };
        synchronized (this.lock) {
            this.tracked.put(token, runnable);
        }
        this.runnableScheduler.scheduleWithDelay(this.timeoutMs, runnable);
    }

    @JvmOverloads
    public TimeLimiter(@NotNull RunnableScheduler runnableScheduler, @NotNull WorkLauncher launcher, long j2) {
        j.e(runnableScheduler, "runnableScheduler");
        j.e(launcher, "launcher");
        this.runnableScheduler = runnableScheduler;
        this.launcher = launcher;
        this.timeoutMs = j2;
        this.lock = new Object();
        this.tracked = new LinkedHashMap();
    }

    public /* synthetic */ TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher, long j2, int i2, f fVar) {
        this(runnableScheduler, workLauncher, (i2 & 4) != 0 ? TimeUnit.MINUTES.toMillis(90L) : j2);
    }
}
