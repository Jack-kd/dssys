package com.byazt.ymw;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec {
    public static void hp(Object obj, String str) {
        if (obj == null) {
            l(str);
        }
    }

    private static void l(String str) {
        throw new IllegalArgumentException(str);
    }

    public static void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            l(str2);
        }
    }

    public static void hp(boolean z2, String str) {
        if (z2) {
            return;
        }
        l(str);
    }

    public static void hp(String str) {
        l(str);
    }
}
