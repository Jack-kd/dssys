package com.meishu.sdk.meishu_ad.view.player;

import android.media.MediaPlayer;
import com.meishu.sdk.core.utils.LogUtil;
import java.io.File;

/* loaded from: classes4.dex */
public class c {

    public interface a {
    }

    public static boolean a(boolean z2, MediaPlayer mediaPlayer, int i2, int i3) {
        if (!z2) {
            return false;
        }
        if (i3 <= 0) {
            return true;
        }
        int duration = mediaPlayer.getDuration();
        int i4 = (duration * i2) / 100;
        LogUtil.d("CacheMediaPlayerHelper", "videoPrepareProgress:" + duration + " percent:" + i2 + " curCacheDur:" + i4 + " minCacheDuration:" + i3);
        return i4 >= i3 || i2 == 100;
    }

    public static long a(File file) {
        if (file == null) {
            return 0L;
        }
        try {
            if (file.exists()) {
                return file.length();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }
}
