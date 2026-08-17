package com.byazt.yk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.byazt.li.DownloadNotificationService;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 90, 1170})
/* loaded from: classes3.dex */
public class DownloadReceiver extends BroadcastReceiver {
    public static final String hp = "DownloadReceiver";

    private void hp(final Context context, final String str) {
        if (jx.r()) {
            jx.hp(new Runnable() { // from class: com.byazt.yk.DownloadReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Intent intent = new Intent(context, (Class<?>) DownloadNotificationService.class);
                        intent.setAction(str);
                        if (com.byazt.jb.hp.jx().l("enable_target_34") > 0) {
                            com.byazt.nb.hp.hp().hp(intent);
                        } else {
                            context.startService(intent);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }, 2000L, TimeUnit.MILLISECONDS);
        }
    }

    private void l(final Context context, final String str) {
        jx.hp(new Runnable() { // from class: com.byazt.yk.DownloadReceiver.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Intent intent = new Intent(context, (Class<?>) DownloadNotificationService.class);
                    intent.setAction(str);
                    if (com.byazt.jb.hp.jx().l("enable_target_34") > 0) {
                        com.byazt.nb.hp.hp().hp(intent);
                    } else {
                        context.startService(intent);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return;
        }
        if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            if (com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.hp(hp, "Received broadcast intent for android.net.conn.CONNECTIVITY_CHANGE");
            }
            hp(context, action);
        } else if (action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_REMOVED") || action.equals("android.intent.action.MEDIA_BAD_REMOVAL") || action.equals("android.intent.action.MEDIA_EJECT")) {
            l(context, action);
        }
    }
}
