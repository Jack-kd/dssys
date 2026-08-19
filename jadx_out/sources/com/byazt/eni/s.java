package com.byazt.eni;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.ek;

@com.byazt.kj.hp(hp = {0, 1, 1905, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String hp(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = hp;
            cArr[i2] = cArr2[(b3 >>> 4) & 15];
            i2 += 2;
            cArr[i3] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }
}
