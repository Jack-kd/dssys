package com.byazt.ou;

import android.content.Intent;
import android.os.IBinder;
import com.bytedance.pangle.plugin.Plugin;

/* loaded from: classes3.dex */
public interface hp {
    void attach(Plugin plugin);

    IBinder onBind(Intent intent);

    void onCreate();

    void onDestroy();

    int onStartCommand(Intent intent, int i2, int i3);

    boolean onUnbind(Intent intent);
}
