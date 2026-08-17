package com.byazt.gt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, 150})
/* loaded from: classes2.dex */
public class q {
    public static final s hp = new s();

    /* renamed from: l, reason: collision with root package name */
    public static final Map<String, String> f20611l = new ConcurrentHashMap();

    public static String hp(String str) throws IllegalArgumentException {
        Map<String, String> map = f20611l;
        String str2 = map.get(str);
        if (str2 != null) {
            return str2;
        }
        String strHp = hp.hp(str);
        if (strHp != null) {
            map.put(str, strHp);
        }
        return strHp;
    }
}
