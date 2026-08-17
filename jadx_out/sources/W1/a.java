package W1;

import androidx.core.location.LocationRequestCompat;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.util.component.f;

/* loaded from: classes5.dex */
public abstract class a extends org.eclipse.jetty.util.component.a implements d, f {
    private static final R1.c LOG = R1.b.a(a.class);
    private final ExecutorService _executor;

    public a(ExecutorService executorService) {
        this._executor = executorService;
    }

    @Override // W1.d
    public boolean dispatch(Runnable runnable) {
        try {
            this._executor.execute(runnable);
            return true;
        } catch (RejectedExecutionException e2) {
            LOG.e(e2);
            return false;
        }
    }

    public int getIdleThreads() {
        ExecutorService executorService = this._executor;
        if (!(executorService instanceof ThreadPoolExecutor)) {
            return -1;
        }
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) executorService;
        return threadPoolExecutor.getPoolSize() - threadPoolExecutor.getActiveCount();
    }

    public int getThreads() {
        ExecutorService executorService = this._executor;
        if (executorService instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) executorService).getPoolSize();
        }
        return -1;
    }

    @Override // W1.d
    public boolean isLowOnThreads() {
        ExecutorService executorService = this._executor;
        if (executorService instanceof ThreadPoolExecutor) {
            ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) executorService;
            if (threadPoolExecutor.getPoolSize() == threadPoolExecutor.getMaximumPoolSize() && threadPoolExecutor.getQueue().size() >= threadPoolExecutor.getPoolSize() - threadPoolExecutor.getActiveCount()) {
                return true;
            }
        }
        return false;
    }

    public void join() throws InterruptedException {
        this._executor.awaitTermination(LocationRequestCompat.PASSIVE_INTERVAL, TimeUnit.MILLISECONDS);
    }
}
