package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.hihonor.ads.identifier.AdvertisingIdClient;
import com.ubix.ssp.ad.e.a0.c0.h.r.a.a.a;
import com.ubix.ssp.ad.e.a0.u;
import java.util.concurrent.Executors;

/* loaded from: classes5.dex */
class f implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46160a;

    /* renamed from: b, reason: collision with root package name */
    private final Handler f46161b = new Handler(Looper.getMainLooper());

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.c0.c f46162a;

        public a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
            this.f46162a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.b(this.f46162a);
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.c0.c f46164a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f46165b;

        public b(com.ubix.ssp.ad.e.a0.c0.c cVar, String str) {
            this.f46164a = cVar;
            this.f46165b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f46164a.a(this.f46165b);
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.c0.c f46167a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.c0.e f46168b;

        public c(com.ubix.ssp.ad.e.a0.c0.c cVar, com.ubix.ssp.ad.e.a0.c0.e eVar) {
            this.f46167a = cVar;
            this.f46168b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f46167a.a(this.f46168b);
        }
    }

    public f(Context context) {
        this.f46160a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        com.ubix.ssp.ad.e.a0.c0.e eVar;
        a.C0791a c0791aA;
        com.ubix.ssp.ad.e.a0.c0.e eVar2;
        com.ubix.ssp.ad.e.a0.c0.e eVar3;
        try {
            Class.forName("com.hihonor.ads.identifier.AdvertisingIdClient");
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f46160a);
                if (advertisingIdInfo == null) {
                    eVar3 = new com.ubix.ssp.ad.e.a0.c0.e("Advertising identifier info is null");
                } else {
                    if (!advertisingIdInfo.isLimit) {
                        a(cVar, advertisingIdInfo.id);
                        return;
                    }
                    eVar3 = new com.ubix.ssp.ad.e.a0.c0.e("User has disabled advertising identifier");
                }
                a(cVar, eVar3);
            } catch (Throwable th) {
                com.ubix.ssp.ad.e.a0.c0.f.a(th);
                try {
                    c0791aA = com.ubix.ssp.ad.e.a0.c0.h.r.a.a.a.a(this.f46160a);
                } catch (Throwable th2) {
                    com.ubix.ssp.ad.e.a0.c0.f.a(th2);
                    eVar = new com.ubix.ssp.ad.e.a0.c0.e(th2);
                }
                if (c0791aA == null) {
                    eVar2 = new com.ubix.ssp.ad.e.a0.c0.e("Advertising identifier info is null");
                } else {
                    if (!c0791aA.f46193b) {
                        a(cVar, c0791aA.f46192a);
                        eVar = new com.ubix.ssp.ad.e.a0.c0.e(th);
                        a(cVar, eVar);
                        return;
                    }
                    eVar2 = new com.ubix.ssp.ad.e.a0.c0.e("User has disabled advertising identifier");
                }
                a(cVar, eVar2);
            }
        } catch (Throwable th3) {
            com.ubix.ssp.ad.e.a0.c0.f.a(th3);
            try {
                a.C0791a c0791aA2 = com.ubix.ssp.ad.e.a0.c0.h.r.a.a.a.a(this.f46160a);
                if (c0791aA2 == null) {
                    a(cVar, new com.ubix.ssp.ad.e.a0.c0.e("Advertising identifier info is null"));
                } else if (c0791aA2.f46193b) {
                    a(cVar, new com.ubix.ssp.ad.e.a0.c0.e("User has disabled advertising identifier"));
                } else {
                    a(cVar, c0791aA2.f46192a);
                }
            } catch (Throwable th4) {
                com.ubix.ssp.ad.e.a0.c0.f.a(th4);
                a(cVar, new com.ubix.ssp.ad.e.a0.c0.e(th4));
            }
        }
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46160a == null || cVar == null) {
            return;
        }
        Executors.newSingleThreadExecutor().execute(new a(cVar));
    }

    private void a(com.ubix.ssp.ad.e.a0.c0.c cVar, com.ubix.ssp.ad.e.a0.c0.e eVar) {
        this.f46161b.post(new c(cVar, eVar));
    }

    private void a(com.ubix.ssp.ad.e.a0.c0.c cVar, String str) {
        this.f46161b.post(new b(cVar, str));
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        if (this.f46160a == null) {
            return false;
        }
        try {
            u.e("AdvertisingIdPlatform", "supported in");
            Class.forName("com.hihonor.ads.identifier.AdvertisingIdClient");
            u.e("AdvertisingIdPlatform", "supported in system");
            return AdvertisingIdClient.isAdvertisingIdAvailable(this.f46160a);
        } catch (Throwable th) {
            try {
                u.e("AdvertisingIdPlatform", "supported in custom");
                return com.ubix.ssp.ad.e.a0.c0.h.r.a.a.a.b(this.f46160a);
            } catch (Throwable th2) {
                u.e("AdvertisingIdPlatform", "supported " + th2.getMessage());
                th.printStackTrace();
                return false;
            }
        }
    }
}
