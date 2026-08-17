package com.byazt.au;

import android.text.TextUtils;
import com.byazt.yk.ec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 273, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes2.dex */
public class xs implements ec {
    public final long[] hp;

    public xs(String str) {
        this.hp = hp(str);
    }

    @Override // com.byazt.yk.ec
    public long hp(int i2, int i3) {
        long[] jArr = this.hp;
        if (jArr == null || jArr.length <= 0) {
            return 0L;
        }
        int length = i2 - 1;
        if (length < 0) {
            length = 0;
        }
        if (length > jArr.length - 1) {
            length = jArr.length - 1;
        }
        return jArr[length];
    }

    private long[] hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length == 0) {
                return null;
            }
            long[] jArr = new long[strArrSplit.length];
            for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                jArr[i2] = Long.parseLong(strArrSplit[i2]);
            }
            return jArr;
        } catch (Throwable unused) {
            return null;
        }
    }
}
