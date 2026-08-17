package com.beizi.fusion;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class ao {

    /* renamed from: d, reason: collision with root package name */
    private static ao f12661d;

    /* renamed from: a, reason: collision with root package name */
    private ArrayList f12662a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private Timer f12663b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f12664c;

    public class a extends TimerTask {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ WeakReference f12665a;

        /* renamed from: com.beizi.fusion.ao$a$a, reason: collision with other inner class name */
        public class AsyncTaskC0148a extends x8 {

            /* renamed from: d, reason: collision with root package name */
            final /* synthetic */ b f12667d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AsyncTaskC0148a(boolean z2, boolean z3, b bVar) {
                super(z2, z3);
                this.f12667d = bVar;
            }

            @Override // com.beizi.fusion.x8
            public String a() {
                return this.f12667d.f12669a;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(y8 y8Var) {
                if (y8Var == null || (!y8Var.d() && y8Var.b() == k9.CONNECTION_FAILURE)) {
                    this.f12667d.f12670b++;
                    ao.this.f12662a.add(this.f12667d);
                }
            }
        }

        public a(WeakReference weakReference) {
            this.f12665a = weakReference;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Context context = (Context) this.f12665a.get();
            if (context == null) {
                ao.this.a();
                return;
            }
            while (!ao.this.f12662a.isEmpty() && ao.this.b(context)) {
                b bVar = (b) ao.this.f12662a.remove(0);
                if (bVar.f12670b < 3) {
                    new AsyncTaskC0148a(false, true, bVar).execute(new Void[0]);
                }
            }
            if (ao.this.f12662a.isEmpty()) {
                ao.this.a();
            }
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        String f12669a;

        /* renamed from: b, reason: collision with root package name */
        int f12670b = 0;

        public b(String str) {
            this.f12669a = str;
        }
    }

    private ao(Context context) {
        if (context != null) {
            this.f12664c = context.getPackageManager().checkPermission(com.kuaishou.weapon.p0.g.f31160b, context.getPackageName()) == 0;
        }
    }

    private void c(Context context) {
        if (this.f12663b == null) {
            WeakReference weakReference = new WeakReference(context);
            Timer timer = new Timer();
            this.f12663b = timer;
            timer.scheduleAtFixedRate(new a(weakReference), 10000L, 10000L);
        }
    }

    public static ao a(Context context) {
        if (f12661d == null) {
            f12661d = new ao(context);
        }
        return f12661d;
    }

    public boolean b(Context context) {
        try {
            if (!this.f12664c) {
                return true;
            }
            if (context != null) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
                NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
                if (activeNetworkInfo != null) {
                    if (activeNetworkInfo.isConnected()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public synchronized void a(String str, Context context) {
        this.f12662a.add(new b(str));
        c(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Timer timer = this.f12663b;
        if (timer != null) {
            timer.cancel();
            this.f12663b = null;
        }
    }
}
