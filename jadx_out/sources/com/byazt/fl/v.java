package com.byazt.fl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v {
    public static Function<SparseArray<Object>, Object> hp(Object obj) {
        return obj instanceof Function ? (Function) obj : com.byazt.xi.jx.jx;
    }

    public static Integer[] hp(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return null;
        }
        Integer[] numArr = new Integer[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i2] = Integer.valueOf(iArr[i2]);
        }
        return numArr;
    }
}
