package g;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: g.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1400b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f50709a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f50710b;

    /* renamed from: c, reason: collision with root package name */
    public static double f50711c;

    /* renamed from: d, reason: collision with root package name */
    public static ThreadPoolExecutor f50712d;

    /* renamed from: e, reason: collision with root package name */
    public static Handler f50713e;

    /* renamed from: g.b$a */
    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Runnable f50714b;

        public a(Runnable runnable) {
            this.f50714b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC1400b.f50713e.post(this.f50714b);
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f50709a = iAvailableProcessors;
        int iMax = Math.max(iAvailableProcessors, 5);
        f50710b = iMax;
        f50711c = 1.0d;
        f50712d = new ThreadPoolExecutor(iMax, iMax, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128));
        f50713e = new Handler(Looper.getMainLooper());
    }

    public static int a(Context context, float f2) {
        return Math.round(f2 / context.getResources().getDisplayMetrics().density);
    }

    public static void b(Runnable runnable) {
        f50712d.execute(new a(runnable));
    }
}
