package com.byazt.zw;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.byazt.hu.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 1631})
/* loaded from: classes3.dex */
public class BroadcastReceiverProxy extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, final Intent intent) {
        if (l.hp().hp(hashCode())) {
            l.hp().hp(context, intent);
        } else {
            w.jx(new Runnable() { // from class: com.byazt.zw.BroadcastReceiverProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    l.hp().hp(context, intent);
                }
            });
        }
    }
}
