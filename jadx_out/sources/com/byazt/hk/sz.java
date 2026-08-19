package com.byazt.hk;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes2.dex */
public final class sz {
    public final SharedPreferences hp;

    @WorkerThread
    public sz(Context context) {
        this.hp = com.byazt.rz.l.l(context, "device_register_oaid_refine", 0);
    }

    @WorkerThread
    public void hp(@Nullable ec ecVar) {
        if (ecVar == null) {
            return;
        }
        this.hp.edit().putString("oaid", ecVar.l().toString()).apply();
    }

    @Nullable
    @WorkerThread
    public ec hp() {
        return ec.hp(this.hp.getString("oaid", ""));
    }
}
