package com.ubix.ssp.ad.e.a0;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes5.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private int f46221b;

    /* renamed from: d, reason: collision with root package name */
    private f f46223d;

    /* renamed from: e, reason: collision with root package name */
    private e f46224e;

    /* renamed from: f, reason: collision with root package name */
    private InterfaceC0810d f46225f;

    /* renamed from: g, reason: collision with root package name */
    private c f46226g;

    /* renamed from: h, reason: collision with root package name */
    private Application f46227h;

    /* renamed from: i, reason: collision with root package name */
    private Application.ActivityLifecycleCallbacks f46228i;

    /* renamed from: a, reason: collision with root package name */
    private int f46220a = 0;

    /* renamed from: c, reason: collision with root package name */
    private boolean f46222c = true;

    /* renamed from: j, reason: collision with root package name */
    private ArrayList<b> f46229j = new ArrayList<>();

    public class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: com.ubix.ssp.ad.e.a0.d$a$a, reason: collision with other inner class name */
        public class C0809a extends TimerTask {
            public C0809a() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (d.this.f46229j.size() == 1 && ((b) d.this.f46229j.get(d.this.f46229j.size() - 1)).a().equals("onPaused") && d.this.f46224e != null) {
                    d.this.f46224e.b(1000L, false);
                }
            }
        }

        public a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            u.e("onActivityPaused " + activity + ";" + d.this.f46220a + ";" + activity.hashCode() + ":" + d.this.f46221b);
            if (d.this.f46221b == activity.hashCode() || d.this.f46221b == -1) {
                d.this.f46229j.add(new b("onPaused", SystemClock.elapsedRealtime(), activity.hashCode()));
                if (d.this.f46224e != null) {
                    new Timer().schedule(new C0809a(), 1000L);
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            b bVar;
            u.e("onActivityResumed " + activity + ";" + d.this.f46220a + ";" + activity.hashCode() + ":" + d.this.f46221b);
            if ((d.this.f46221b != activity.hashCode() && d.this.f46221b != -1) || d.this.f46229j.isEmpty() || (bVar = (b) d.this.f46229j.get(d.this.f46229j.size() - 1)) == null) {
                return;
            }
            if (bVar.a().equals("onPaused")) {
                if (d.this.f46224e != null) {
                    d.this.f46224e.b(SystemClock.elapsedRealtime() - bVar.b(), true);
                }
                if (d.this.f46225f != null) {
                    d.this.f46225f.a(100);
                    return;
                }
                return;
            }
            d.this.f46229j.add(new b("onResumed", SystemClock.elapsedRealtime(), activity.hashCode()));
            if (d.this.f46226g != null) {
                d.this.f46226g.b(SystemClock.elapsedRealtime() - d.this.a());
            }
            if (d.this.f46225f != null) {
                int iB = d.this.b();
                if (iB == -1) {
                    d.this.f46225f.a(98);
                } else if (iB == 0) {
                    d.this.f46225f.b(99);
                } else {
                    d.this.f46225f.b(99 - (iB * 10));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            d.b(d.this);
            u.e("onActivityStarted " + activity + ";" + d.this.f46220a + ";" + activity.hashCode() + ":" + d.this.f46221b + ";" + activity.getWindow().isActive());
            if (d.this.f46221b == activity.hashCode() || d.this.f46221b == -1) {
                if (d.this.f46220a != 1 || d.this.f46223d == null) {
                    d.this.f46229j.add(new b("onStarted", SystemClock.elapsedRealtime(), activity.hashCode()));
                } else {
                    d.this.f46223d.b();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x0102  */
        @Override // android.app.Application.ActivityLifecycleCallbacks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onActivityStopped(android.app.Activity r8) {
            /*
                Method dump skipped, instructions count: 296
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a0.d.a.onActivityStopped(android.app.Activity):void");
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private String f46232a;

        /* renamed from: b, reason: collision with root package name */
        private long f46233b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f46234c;

        /* renamed from: d, reason: collision with root package name */
        private int f46235d;

        public b(String str, long j2, int i2) {
            this.f46234c = true;
            this.f46235d = -1;
            this.f46232a = str;
            this.f46233b = j2;
        }

        public String a() {
            return this.f46232a;
        }

        public long b() {
            return this.f46233b;
        }

        public b(String str, long j2, boolean z2, int i2) {
            this.f46235d = -1;
            this.f46232a = str;
            this.f46233b = j2;
            this.f46234c = z2;
        }
    }

    public interface c {
        void a(long j2);

        void b(long j2);
    }

    /* renamed from: com.ubix.ssp.ad.e.a0.d$d, reason: collision with other inner class name */
    public interface InterfaceC0810d {
        void a(int i2);

        void b(int i2);
    }

    public interface e {
        void a(long j2, boolean z2);

        void b(long j2, boolean z2);
    }

    public interface f {
        void a();

        void b();
    }

    public d(Context context) {
        Activity activityA = com.ubix.ssp.ad.e.a0.c.a();
        if (activityA != null) {
            this.f46221b = activityA.hashCode();
            if (com.ubix.ssp.ad.e.a0.c.a(activityA)) {
                this.f46220a++;
            }
        } else {
            this.f46221b = -1;
        }
        a((Application) context.getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b() {
        if (this.f46229j.size() < 4) {
            return -1;
        }
        ArrayList<b> arrayList = this.f46229j;
        int size = arrayList.size();
        String str = "";
        int i2 = 0;
        boolean z2 = true;
        while (i2 < size) {
            b bVar = arrayList.get(i2);
            i2++;
            b bVar2 = bVar;
            str = str + bVar2.a();
            if (!bVar2.f46234c) {
                z2 = false;
            }
        }
        u.e("blockPredict-" + str);
        if (str.equals("onPausedonStoppedonStartedonResumed")) {
            return z2 ? 0 : -1;
        }
        String[] strArrSplit = str.split("onStoppedonStarted");
        if (strArrSplit.length <= 0) {
            return -1;
        }
        return strArrSplit.length - 1;
    }

    public static /* synthetic */ int c(d dVar) {
        int i2 = dVar.f46220a;
        dVar.f46220a = i2 - 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a() {
        if (!this.f46229j.isEmpty()) {
            for (int size = this.f46229j.size() - 1; size >= 0; size--) {
                b bVar = this.f46229j.get(size);
                if (bVar != null && bVar.a().equals("onStopped")) {
                    return bVar.b();
                }
            }
        }
        return SystemClock.elapsedRealtime();
    }

    public static /* synthetic */ int b(d dVar) {
        int i2 = dVar.f46220a;
        dVar.f46220a = i2 + 1;
        return i2;
    }

    public void c() {
        this.f46227h.unregisterActivityLifecycleCallbacks(this.f46228i);
    }

    private void a(Application application) {
        this.f46227h = application;
        a aVar = new a();
        this.f46228i = aVar;
        application.registerActivityLifecycleCallbacks(aVar);
    }

    public void a(c cVar) {
        this.f46226g = cVar;
    }

    public void a(InterfaceC0810d interfaceC0810d) {
        this.f46225f = interfaceC0810d;
    }

    public void a(e eVar) {
        this.f46224e = eVar;
    }

    public void a(f fVar) {
        this.f46223d = fVar;
    }
}
