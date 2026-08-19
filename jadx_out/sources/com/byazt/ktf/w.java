package com.byazt.ktf;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, 959, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {
    public static Boolean hp;

    private static boolean hp() {
        if (hp == null) {
            try {
                TTAdConstant.RitScenes ritScenes = TTAdConstant.RitScenes.CUSTOMIZE_SCENES;
                hp = Boolean.TRUE;
            } catch (Throwable unused) {
                hp = Boolean.FALSE;
            }
        }
        return hp.booleanValue();
    }

    public static String hp(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            return "game_more_kllkrtunities".equalsIgnoreCase(str) ? hp(str) : str;
        }
        if (hp()) {
            try {
                if (obj instanceof TTAdConstant.RitScenes) {
                    return ((TTAdConstant.RitScenes) obj).getScenesName();
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("KLLK")) {
            return str.replace("KLLK", "OPPO");
        }
        return str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }
}
