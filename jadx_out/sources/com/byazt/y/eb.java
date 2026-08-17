package com.byazt.y;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 94})
/* loaded from: classes3.dex */
public class eb {
    public static long hp(File file) {
        if (file == null || !file.exists()) {
            return 0L;
        }
        return hp(file, file.lastModified(), 0);
    }

    private static long hp(File file, long j2, int i2) {
        File[] fileArrListFiles;
        if (file != null && file.exists()) {
            j2 = Math.max(j2, file.lastModified());
            int i3 = i2 + 1;
            if (i3 < 50 && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    j2 = Math.max(j2, hp(file2, j2, i3));
                }
            }
        }
        return j2;
    }
}
