package com.octopus.ad.internal.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.octopus.ad.internal.c.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static g f34476a;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<a> f34477b = new ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    private Timer f34478c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f34479d;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        String f34484a;

        /* renamed from: b, reason: collision with root package name */
        int f34485b = 0;

        public a(String str) {
            this.f34484a = str;
        }
    }

    private g(Context context) {
        if (context != null) {
            this.f34479d = context.getPackageManager().checkPermission(com.kuaishou.weapon.p0.g.f31160b, context.getPackageName()) == 0;
        }
    }

    private void c(Context context) {
        if (this.f34478c == null) {
            final WeakReference weakReference = new WeakReference(context);
            Timer timer = new Timer();
            this.f34478c = timer;
            timer.scheduleAtFixedRate(new TimerTask() { // from class: com.octopus.ad.internal.b.g.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Context context2 = (Context) weakReference.get();
                    if (context2 == null) {
                        g.this.a();
                        return;
                    }
                    while (!g.this.f34477b.isEmpty() && g.this.b(context2)) {
                        boolean z2 = false;
                        final a aVar = (a) g.this.f34477b.remove(0);
                        if (aVar.f34485b < 3) {
                            new com.octopus.ad.internal.c.d(z2) { // from class: com.octopus.ad.internal.b.g.1.1
                                @Override // com.octopus.ad.internal.c.d
                                public void a(com.octopus.ad.internal.c.e eVar) {
                                    if (eVar == null || (!eVar.a() && eVar.c() == i.CONNECTION_FAILURE)) {
                                        aVar.f34485b++;
                                        g.this.f34477b.add(aVar);
                                    }
                                }

                                @Override // com.octopus.ad.internal.c.d
                                public String a() {
                                    return aVar.f34484a;
                                }
                            }.b();
                        }
                    }
                    if (g.this.f34477b.isEmpty()) {
                        g.this.a();
                    }
                }
            }, 10000L, 10000L);
        }
    }

    public static g a(Context context) {
        if (f34476a == null) {
            f34476a = new g(context);
        }
        return f34476a;
    }

    public boolean b(Context context) {
        if (!this.f34479d) {
            return true;
        }
        if (context != null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
        }
        return false;
    }

    public synchronized void a(String str, Context context) {
        this.f34477b.add(new a(str));
        c(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Timer timer = this.f34478c;
        if (timer != null) {
            timer.cancel();
            this.f34478c = null;
        }
    }
}
