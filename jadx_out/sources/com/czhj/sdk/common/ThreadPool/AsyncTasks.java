package com.czhj.sdk.common.ThreadPool;

import android.os.AsyncTask;
import com.czhj.sdk.common.utils.Preconditions;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class AsyncTasks {

    /* renamed from: a, reason: collision with root package name */
    private static Executor f29302a;

    static {
        a();
    }

    private static void a() {
        f29302a = AsyncTask.THREAD_POOL_EXECUTOR;
    }

    @SafeVarargs
    public static <P> void safeExecuteOnExecutor(AsyncTask<P, ?, ?> asyncTask, P... pArr) {
        Preconditions.NoThrow.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        Preconditions.NoThrow.checkUiThread("AsyncTask must be executed on the main thread");
        asyncTask.executeOnExecutor(f29302a, pArr);
    }
}
