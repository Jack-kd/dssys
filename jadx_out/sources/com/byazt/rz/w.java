package com.byazt.rz;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static StringBuffer hp = new StringBuffer();

    public static void hp(String str, String str2) {
        StringBuffer stringBuffer = hp;
        if (stringBuffer == null || str2 == null) {
            return;
        }
        try {
            if (stringBuffer.length() > 204800) {
                return;
            }
            StringBuffer stringBuffer2 = hp;
            stringBuffer2.append(System.currentTimeMillis());
            stringBuffer2.append(';');
            stringBuffer2.append(str);
            stringBuffer2.append(';');
            stringBuffer2.append(str2);
            stringBuffer2.append('\n');
        } catch (Exception unused) {
        }
    }

    public static String l() {
        StringBuffer stringBuffer = hp;
        String string = stringBuffer != null ? stringBuffer.toString() : "";
        hp = null;
        return string;
    }

    public static void hp() {
        hp = null;
    }
}
