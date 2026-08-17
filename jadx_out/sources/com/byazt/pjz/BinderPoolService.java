package com.byazt.pjz;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.byazt.pjz.hp;

@com.byazt.kj.hp(hp = {0, 1, 1800, 2205})
/* loaded from: classes3.dex */
public class BinderPoolService extends Service {
    public Binder hp = new hp.BinderC0342hp();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.hp;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
