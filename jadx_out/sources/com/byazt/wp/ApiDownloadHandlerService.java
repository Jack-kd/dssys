package com.byazt.wp;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 207, 2476})
/* loaded from: classes3.dex */
public class ApiDownloadHandlerService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        jx jxVar = jx.getInstance();
        if (jxVar != null) {
            HashMap map = new HashMap();
            map.put("s", this);
            jxVar.hp(map, 157);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        super.onStartCommand(intent, i2, i3);
        jx jxVar = jx.getInstance();
        if (jxVar != null) {
            HashMap map = new HashMap();
            map.put("i", intent);
            map.put("c", this);
            jxVar.hp(map, 158);
        }
        stopSelf();
        return 2;
    }
}
