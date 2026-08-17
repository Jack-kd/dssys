package com.byazt.yk;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;

@com.byazt.kj.hp(hp = {0, 1, 90, 1034})
/* loaded from: classes3.dex */
public class CSJDownloadService extends Service {

    /* renamed from: l, reason: collision with root package name */
    public static final String f27971l = "CSJDownloadService";
    public v hp;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        String str = f27971l;
        StringBuilder sb = new StringBuilder("onBind downloadServiceHandler != null:");
        sb.append(this.hp != null);
        com.byazt.nu.hp.l(str, sb.toString());
        v vVar = this.hp;
        if (vVar != null) {
            return vVar.hp(intent);
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        jx.hp(this);
        v vVarO = jx.o();
        this.hp = vVarO;
        vVarO.hp(new WeakReference(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (com.byazt.nu.hp.hp()) {
            com.byazt.nu.hp.l(f27971l, "Service onDestroy");
        }
        v vVar = this.hp;
        if (vVar != null) {
            vVar.j();
            this.hp = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, final int i2, final int i3) {
        if (com.byazt.nu.hp.hp()) {
            com.byazt.nu.hp.l(f27971l, "DownloadService onStartCommand");
        }
        this.hp.jx();
        ExecutorService executorServiceJl = jx.jl();
        if (executorServiceJl != null) {
            executorServiceJl.execute(new Runnable() { // from class: com.byazt.yk.CSJDownloadService.1
                @Override // java.lang.Runnable
                public void run() {
                    v vVar = CSJDownloadService.this.hp;
                    if (vVar != null) {
                        vVar.hp(intent, i2, i3);
                    }
                }
            });
        }
        return jx.e() ? 2 : 3;
    }
}
