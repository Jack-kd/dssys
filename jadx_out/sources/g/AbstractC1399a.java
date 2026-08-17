package g;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: g.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1399a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f50705a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f50706b;

    /* renamed from: c, reason: collision with root package name */
    public static ThreadPoolExecutor f50707c;

    /* renamed from: d, reason: collision with root package name */
    public static Handler f50708d;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f50705a = iAvailableProcessors;
        int iMax = Math.max(iAvailableProcessors, 5);
        f50706b = iMax;
        f50707c = new ThreadPoolExecutor(iMax, iMax, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128));
        f50708d = new Handler(Looper.getMainLooper());
    }

    public static void a(Runnable runnable) {
        f50707c.execute(runnable);
    }

    public static void b(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            f50708d.post(runnable);
        }
    }
}
