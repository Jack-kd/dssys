package com.byazt.as;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 693, 2409})
/* loaded from: classes2.dex */
public class MiniAppBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("pma_data");
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            try {
                hp.hp().hp(stringExtra);
            } catch (Exception unused) {
            }
        }
    }
}
