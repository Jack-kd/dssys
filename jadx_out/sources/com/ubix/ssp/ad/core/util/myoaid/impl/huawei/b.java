package com.ubix.ssp.ad.core.util.myoaid.impl.huawei;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class b implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadPoolExecutor f45732a = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());

    /* renamed from: b, reason: collision with root package name */
    boolean f45733b = false;

    /* renamed from: c, reason: collision with root package name */
    private final LinkedBlockingQueue<IBinder> f45734c = new LinkedBlockingQueue<>(1);

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ IBinder f45735a;

        public a(IBinder iBinder) {
            this.f45735a = iBinder;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                System.currentTimeMillis();
                b.this.f45734c.offer(this.f45735a);
            } catch (Throwable unused) {
            }
        }
    }

    public IBinder a() {
        if (this.f45733b) {
            throw new IllegalStateException();
        }
        this.f45733b = true;
        return this.f45734c.take();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        f45732a.execute(new a(iBinder));
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        System.currentTimeMillis();
    }
}
