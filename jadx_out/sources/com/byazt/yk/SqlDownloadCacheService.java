package com.byazt.yk;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;

@com.byazt.kj.hp(hp = {0, 1, 90, 1819})
/* loaded from: classes3.dex */
public class SqlDownloadCacheService extends Service {
    public static final String hp = "SqlDownloadCacheService";

    public static void hp(Context context, ServiceConnection serviceConnection) {
        if (context != null) {
            try {
                Intent intent = new Intent(context, (Class<?>) SqlDownloadCacheService.class);
                if (serviceConnection != null) {
                    context.bindService(intent, serviceConnection, 1);
                }
                context.startService(intent);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        e eVarDi = jx.di();
        sz szVarA = eVarDi instanceof com.byazt.au.j ? ((com.byazt.au.j) eVarDi).a() : eVarDi instanceof sz ? (sz) eVarDi : null;
        return szVarA instanceof IBinder ? (IBinder) szVarA : new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        jx.hp(getApplicationContext());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        int iOnStartCommand = super.onStartCommand(intent, i2, i3);
        if (jx.e()) {
            return 2;
        }
        return iOnStartCommand;
    }
}
