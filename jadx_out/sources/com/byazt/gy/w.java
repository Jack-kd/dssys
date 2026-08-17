package com.byazt.gy;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 776, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static final Map<Integer, j<?, ?>> hp = new ConcurrentHashMap();

    public static j<?, ?> hp(int i2) {
        Map<Integer, j<?, ?>> map = hp;
        j<?, ?> lVar = map.get(Integer.valueOf(i2));
        if (lVar != null) {
            return lVar;
        }
        switch (i2) {
            case 0:
                lVar = new com.byazt.kt.l();
                break;
            case 1:
                lVar = new com.byazt.kt.jx();
                break;
            case 2:
                lVar = new com.byazt.kt.j();
                break;
            case 3:
                lVar = new com.byazt.kt.hp();
                break;
            case 4:
                lVar = new com.byazt.kt.a();
                break;
            case 5:
                lVar = new com.byazt.kt.w();
                break;
            case 6:
                lVar = new com.byazt.kt.eb();
                break;
        }
        if (lVar != null) {
            map.put(Integer.valueOf(i2), lVar);
        }
        return lVar;
    }
}
