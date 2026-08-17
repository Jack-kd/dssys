package com.fl.saas.adx.base.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.fl.saas.C1227w;
import com.fl.saas.E;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class DownloadActionReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2;
        String str;
        if (intent == null || context == null) {
            return;
        }
        String action = intent.getAction();
        String stringExtra = intent.getStringExtra("downLoadUrl");
        LogcatUtil.d("DownloadActionReceiver", action);
        if (TextUtils.isEmpty(action)) {
            return;
        }
        if (C1227w.f30684g.equals(action)) {
            intent2 = new Intent();
            str = E.f29866s;
        } else if (C1227w.f30685h.equals(action)) {
            intent2 = new Intent();
            str = E.f29867t;
        } else {
            if (!C1227w.f30686i.equals(action)) {
                return;
            }
            intent2 = new Intent();
            str = E.f29868u;
        }
        intent2.setAction(str);
        intent2.putExtra("downLoadUrl", stringExtra);
        context.sendBroadcast(intent2);
    }
}
