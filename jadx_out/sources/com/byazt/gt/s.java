package com.byazt.gt;

import android.os.SystemProperties;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public static volatile Object hp;

    private Object hp() {
        if (hp == null) {
            synchronized (s.class) {
                if (hp == null) {
                    try {
                        hp = Class.forName("android.os.SystemProperties").newInstance();
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return hp;
    }

    public String hp(String str) throws IllegalArgumentException {
        try {
            return SystemProperties.get(str);
        } catch (Throwable th) {
            e.hp(th);
            try {
                Object objHp = hp();
                return (String) objHp.getClass().getMethod("get", String.class).invoke(objHp, str);
            } catch (Throwable th2) {
                e.hp(th2);
                return "";
            }
        }
    }
}
