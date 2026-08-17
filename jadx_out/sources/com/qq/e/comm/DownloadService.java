package com.qq.e.comm;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.qq.e.comm.pi.SVSD;
import com.qq.e.comm.util.GDTLogger;
import java.util.LinkedList;

/* loaded from: classes4.dex */
public class DownloadService extends Service {

    /* renamed from: a, reason: collision with root package name */
    private SVSD f35288a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f35289b = false;

    /* renamed from: c, reason: collision with root package name */
    private LinkedList<b> f35290c = new LinkedList<>();

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.qq.e.comm.managers.a f35291a;

        /* renamed from: com.qq.e.comm.DownloadService$a$a, reason: collision with other inner class name */
        public class RunnableC0763a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ SVSD f35293a;

            public RunnableC0763a(SVSD svsd) {
                this.f35293a = svsd;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f35293a.onCreate();
                    while (true) {
                        b bVar = (b) DownloadService.this.f35290c.poll();
                        if (bVar == null) {
                            DownloadService.this.f35288a = this.f35293a;
                            return;
                        }
                        this.f35293a.onStartCommand(bVar.f35295a, bVar.f35296b, bVar.f35297c);
                    }
                } catch (Throwable th) {
                    GDTLogger.w("DownloadService初始化异常", th);
                }
            }
        }

        public a(com.qq.e.comm.managers.a aVar) {
            this.f35291a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SVSD aPKDownloadServiceDelegate = this.f35291a.c().getPOFactory().getAPKDownloadServiceDelegate(DownloadService.this);
                if (aPKDownloadServiceDelegate == null) {
                    GDTLogger.w("DownloadService初始化异常");
                } else {
                    new Handler(Looper.getMainLooper()).post(new RunnableC0763a(aPKDownloadServiceDelegate));
                }
            } catch (Throwable th) {
                GDTLogger.w("DownloadService初始化异常", th);
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Intent f35295a;

        /* renamed from: b, reason: collision with root package name */
        private final int f35296b;

        /* renamed from: c, reason: collision with root package name */
        private final int f35297c;

        private b(Intent intent, int i2, int i3) {
            this.f35295a = intent;
            this.f35296b = i2;
            this.f35297c = i3;
        }

        public /* synthetic */ b(Intent intent, int i2, int i3, a aVar) {
            this(intent, i2, i3);
        }
    }

    public static void enterAPPDownloadListPage(Context context) {
        if (context == null) {
            GDTLogger.e("enterAPPDownloadListPage 调用异常，context为空");
            return;
        }
        Intent intent = new Intent(context, (Class<?>) DownloadService.class);
        intent.putExtra("GDT_APPID", com.qq.e.comm.managers.a.b().a());
        intent.setAction("com.qq.e.comm.ACTION_DOWNLOAD_LIST");
        context.startService(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        SVSD svsd = this.f35288a;
        if (svsd != null) {
            return svsd.onBind(intent);
        }
        if (TextUtils.isEmpty(intent.getStringExtra("GDT_APPID")) || !a(true)) {
            return null;
        }
        return this.f35288a.onBind(intent);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        SVSD svsd = this.f35288a;
        if (svsd != null) {
            svsd.onConfigurationChanged(configuration);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        SVSD svsd = this.f35288a;
        if (svsd != null) {
            svsd.onDestroy();
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        SVSD svsd = this.f35288a;
        if (svsd != null) {
            svsd.onLowMemory();
        }
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        SVSD svsd = this.f35288a;
        if (svsd != null) {
            svsd.onRebind(intent);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (intent == null) {
            stopSelf(i3);
            return 2;
        }
        if (TextUtils.isEmpty(intent.getStringExtra("GDT_APPID"))) {
            GDTLogger.w("Service onStartCommand 出现异常");
            return 2;
        }
        if (a(false)) {
            return this.f35288a.onStartCommand(intent, i2, i3);
        }
        this.f35290c.add(new b(intent, i2, i3, null));
        return 2;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        SVSD svsd = this.f35288a;
        if (svsd != null) {
            svsd.onTaskRemoved(intent);
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        SVSD svsd = this.f35288a;
        if (svsd != null) {
            svsd.onTrimMemory(i2);
        }
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        SVSD svsd = this.f35288a;
        return svsd != null ? svsd.onUnbind(intent) : super.onUnbind(intent);
    }

    private boolean a(boolean z2) {
        if (this.f35288a != null) {
            return true;
        }
        com.qq.e.comm.managers.a aVarB = com.qq.e.comm.managers.a.b();
        if (!aVarB.d()) {
            return false;
        }
        if (!z2) {
            if (this.f35289b) {
                return false;
            }
            this.f35289b = true;
            com.qq.e.comm.managers.a.f35321g.submit(new a(aVarB));
            return false;
        }
        try {
            SVSD aPKDownloadServiceDelegate = aVarB.c().getPOFactory().getAPKDownloadServiceDelegate(this);
            this.f35288a = aPKDownloadServiceDelegate;
            aPKDownloadServiceDelegate.onCreate();
            return true;
        } catch (Throwable th) {
            GDTLogger.w("DownloadService初始化异常", th);
            return false;
        }
    }
}
