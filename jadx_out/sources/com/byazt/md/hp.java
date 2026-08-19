package com.byazt.md;

import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CODEC_ID, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final String hp;

    static {
        StringBuilder sb = new StringBuilder();
        String str = Build.VERSION.RELEASE;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        String str2 = Build.ID;
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        boolean z2 = "REL".equals(Build.VERSION.CODENAME) && !TextUtils.isEmpty(Build.MODEL);
        sb.append("AppDownloader");
        if (!zIsEmpty) {
            sb.append(ServiceReference.DELIMITER);
            sb.append(str);
        }
        sb.append(" (Linux; U; Android");
        if (!zIsEmpty) {
            sb.append(" ");
            sb.append(str);
        }
        if (z2 || !zIsEmpty2) {
            sb.append(";");
            if (z2) {
                sb.append(" ");
                sb.append(Build.MODEL);
            }
            if (!zIsEmpty2) {
                sb.append(" Build/");
                sb.append(str2);
            }
        }
        sb.append(")");
        hp = sb.toString();
    }
}
