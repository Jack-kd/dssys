package com.byazt.jz;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;

@com.byazt.kj.hp(hp = {0, 1, 40, 2447})
/* loaded from: classes.dex */
public class AQMService extends Service {
    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    @SuppressLint({"ForegroundServiceType"})
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        com.byazt.rk.w.l();
    }
}
