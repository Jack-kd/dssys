package com.byazt.bb;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 93, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public final class s {
    public SharedPreferences hp;

    public s(Context context) {
        this.hp = com.byazt.rz.l.l(context, "npth", 0);
    }

    public void hp(String str) {
        this.hp.edit().putString("device_id", str).apply();
    }

    public String hp() {
        String strW = com.byazt.aj.s.hp().w();
        return (TextUtils.isEmpty(strW) || "0".equals(strW)) ? this.hp.getString("device_id", "0") : strW;
    }
}
