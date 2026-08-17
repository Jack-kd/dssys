package com.byazt.gsd;

import com.byazt.ymw.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, 38})
/* loaded from: classes2.dex */
public class j extends com.byazt.lj.l {
    public j(int i2, int i3) {
        super(i2, i3);
    }

    @Override // com.byazt.lj.l, com.byazt.lj.hp
    public void hp(List<File> list) {
        int size = list.size();
        if (hp(0L, size)) {
            return;
        }
        for (File file : list) {
            s.jx(file);
            size--;
            if (hp(file, 0L, size)) {
                return;
            }
        }
    }
}
