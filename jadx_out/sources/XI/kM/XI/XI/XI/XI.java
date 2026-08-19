package XI.kM.XI.XI.XI;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class XI implements ServiceConnection {
    public static final ThreadPoolExecutor kM = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());

    /* renamed from: XI, reason: collision with root package name */
    public boolean f710XI = false;

    /* renamed from: K0, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f709K0 = new LinkedBlockingQueue<>(1);

    /* renamed from: XI.kM.XI.XI.XI.XI$XI, reason: collision with other inner class name */
    public class RunnableC0019XI implements Runnable {

        /* renamed from: XI, reason: collision with root package name */
        public final /* synthetic */ IBinder f712XI;

        public RunnableC0019XI(IBinder iBinder) {
            this.f712XI = iBinder;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                System.currentTimeMillis();
                XI.this.f709K0.offer(this.f712XI);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        kM.execute(new RunnableC0019XI(iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        System.currentTimeMillis();
    }
}
