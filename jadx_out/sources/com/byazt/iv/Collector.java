package com.byazt.iv;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.byazt.gt.e;
import com.byazt.lxu.j;

@com.byazt.kj.hp(hp = {0, 1, 1177, 1623})
/* loaded from: classes.dex */
public class Collector extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String[] stringArrayExtra = intent.getStringArrayExtra("EMBED_K_DATA");
        if (stringArrayExtra == null || stringArrayExtra.length <= 0) {
            e.l((Throwable) null);
        } else {
            j.hp(stringArrayExtra);
        }
    }
}
