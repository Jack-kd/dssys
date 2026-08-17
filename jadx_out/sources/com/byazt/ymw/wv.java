package com.byazt.ymw;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes3.dex */
public final class wv {
    public static Method hp(String str, String str2, Class<?>... clsArr) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                Class<?> clsHp = hp(str);
                if (clsHp != null) {
                    return clsHp.getMethod(str2, clsArr);
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Class<?> hp(String str) {
        try {
            try {
                try {
                    return Class.forName(str, true, hp());
                } catch (ClassNotFoundException unused) {
                    return Class.forName(str);
                }
            } catch (ClassNotFoundException unused2) {
                return null;
            }
        } catch (ClassNotFoundException unused3) {
            return Class.forName(str, true, wv.class.getClassLoader());
        }
    }

    private static ClassLoader hp() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        return contextClassLoader == null ? wv.class.getClassLoader() : contextClassLoader;
    }
}
