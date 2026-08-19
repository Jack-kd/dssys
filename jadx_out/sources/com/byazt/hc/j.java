package com.byazt.hc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1439, 38})
/* loaded from: classes2.dex */
public class j {
    public int hp;

    @com.byazt.kj.hp(hp = {0, 1, 1439, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public class hp extends BroadcastReceiver {
        private hp() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    j.this.hp = (int) ((intent.getIntExtra("level", 0) * 100.0f) / intent.getIntExtra("scale", 100));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public j(Context context) {
        try {
            hp(context);
        } catch (Throwable unused) {
        }
    }

    private void hp(Context context) {
        context.registerReceiver(new hp(), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    public int hp() {
        return this.hp;
    }
}
