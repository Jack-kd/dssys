package com.byazt.ymw;

import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs {
    public static long hp(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return 0L;
            }
            StatFs statFs = new StatFs(str);
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long hp() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable unused) {
            return 0L;
        }
    }
}
