package com.byazt.kr;

import android.os.Handler;
import android.text.TextUtils;
import com.byazt.aj.s;
import com.byazt.kw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH, 34})
/* loaded from: classes.dex */
public class l extends hp {
    public l(Handler handler, long j2, long j3) {
        super(handler, j2, j3);
    }

    @Override // java.lang.Runnable
    public void run() {
        String strW = s.hp().w();
        if (TextUtils.isEmpty(strW) || "0".equals(strW)) {
            hp(jx());
            e.hp("[DeviceIdTask] did is null, continue check.");
        } else {
            s.jx().hp(strW);
            e.hp("[DeviceIdTask] did is ".concat(String.valueOf(strW)));
        }
    }
}
