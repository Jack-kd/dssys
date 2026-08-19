package com.byazt.qca;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FEED_PACKET_UNTIL_EMPTY, 34})
/* loaded from: classes3.dex */
public class l {
    public static void hp(List<Integer> list) {
        if (list == null) {
            return;
        }
        while (list.contains(null)) {
            list.remove((Object) null);
        }
        if (list.size() <= 1) {
            return;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = list.get(i2).intValue();
        }
        for (int i3 = 1; i3 < size; i3++) {
            int i4 = iArr[i3];
            int i5 = i3;
            while (i5 > 0) {
                int i6 = iArr[i5 - 1];
                if (i6 > i4) {
                    iArr[i5] = i6;
                    i5--;
                }
            }
            iArr[i5] = i4;
        }
        list.clear();
        for (int i7 = 0; i7 < size; i7++) {
            try {
                list.add(Integer.valueOf(iArr[i7]));
            } catch (RuntimeException unused) {
                return;
            }
        }
    }
}
