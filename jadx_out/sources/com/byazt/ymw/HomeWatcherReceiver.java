package com.byazt.ymw;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

@com.byazt.kj.hp(hp = {0, 1, 68, 2173})
/* loaded from: classes3.dex */
public class HomeWatcherReceiver extends BroadcastReceiver {
    public hp hp;

    public interface hp {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra(MediationConstant.KEY_REASON);
                if ("homekey".equals(stringExtra) || "recentapps".equals(stringExtra)) {
                    return;
                }
                "assist".equals(stringExtra);
            }
        } catch (Throwable unused) {
            u.l("HomeReceiver", "ACTION_CLOSE_SYSTEM_DIALOGS throw");
        }
    }
}
