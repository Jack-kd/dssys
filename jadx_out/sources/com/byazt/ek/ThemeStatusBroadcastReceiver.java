package com.byazt.ek;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 2494, 2495})
/* loaded from: classes2.dex */
public class ThemeStatusBroadcastReceiver extends BroadcastReceiver {
    public WeakReference<hp> hp;

    public void hp(hp hpVar) {
        this.hp = new WeakReference<>(hpVar);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("theme_status_change", 0);
        WeakReference<hp> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().b_(intExtra);
    }
}
