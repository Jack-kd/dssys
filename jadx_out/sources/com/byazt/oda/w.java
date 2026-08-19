package com.byazt.oda;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w {
    public static Method hp;
    public static Method jx;

    /* renamed from: l, reason: collision with root package name */
    public static Method f24020l;

    static {
        try {
            hp = Class.class.getDeclaredMethod("forName", String.class);
            f24020l = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            jx = Class.class.getDeclaredMethod("getDeclaredField", String.class);
        } catch (NoSuchMethodException | NullPointerException unused) {
        }
    }

    public static Object hp(Object obj, String str, String str2, Object obj2) throws SecurityException {
        Field fieldHp;
        try {
            fieldHp = hp(str, str2);
        } catch (IllegalAccessException unused) {
        }
        if (fieldHp == null) {
            return obj2;
        }
        fieldHp.setAccessible(true);
        return fieldHp.get(obj);
    }

    public static Field hp(String str, String str2) {
        if (!hp()) {
            return null;
        }
        try {
            Field field = (Field) jx.invoke((Class) hp.invoke(null, str), str2);
            try {
                field.setAccessible(true);
                return field;
            } catch (Throwable unused) {
                return field;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static boolean hp() {
        return (hp == null || f24020l == null || jx == null) ? false : true;
    }
}
