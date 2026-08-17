package com.byazt.au;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 273, 2093})
/* loaded from: classes2.dex */
public class DownloadHandleService extends Service {
    public static final String hp = "DownloadHandleService";

    private void hp(Intent intent) {
        final int intExtra;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action) || (intExtra = intent.getIntExtra("extra_download_id", 0)) == 0) {
            return;
        }
        if (action.equals("com.ss.android.downloader.action.DOWNLOAD_WAKEUP")) {
            com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.au.DownloadHandleService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.byazt.yk.j.hp().v(intExtra);
                    } catch (Exception unused) {
                    }
                }
            });
        } else if (action.equals("com.ss.android.downloader.action.PROCESS_NOTIFY")) {
            com.byazt.yk.j.hp().xs(intExtra);
        } else if (action.equals("com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY")) {
            com.byazt.yk.jx.l();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.byazt.yk.jx.hp(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        super.onStartCommand(intent, i2, i3);
        hp(intent);
        return 2;
    }
}
