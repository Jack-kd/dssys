package com.byazt.gt;

import android.telephony.TelephonyManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, 54})
/* loaded from: classes2.dex */
public class a {
    public static String hp(TelephonyManager telephonyManager) throws SecurityException {
        if (e.f20599l) {
            e.hp("SensitiveUtils gDI c", null);
        }
        return telephonyManager.getDeviceId();
    }
}
