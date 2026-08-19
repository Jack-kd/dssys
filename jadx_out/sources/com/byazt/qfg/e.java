package com.byazt.qfg;

import android.animation.TypeEvaluator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 45})
/* loaded from: classes3.dex */
public class e implements TypeEvaluator {
    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f2, Object obj, Object obj2) {
        int iIntValue = ((Integer) obj).intValue();
        int i2 = (iIntValue >> 24) & 255;
        int i3 = (iIntValue >> 16) & 255;
        int i4 = (iIntValue >> 8) & 255;
        int i5 = iIntValue & 255;
        int iIntValue2 = ((Integer) obj2).intValue();
        return Integer.valueOf(((i2 + ((int) ((((iIntValue2 >> 24) & 255) - i2) * f2))) << 24) | ((i3 + ((int) ((((iIntValue2 >> 16) & 255) - i3) * f2))) << 16) | ((i4 + ((int) ((((iIntValue2 >> 8) & 255) - i4) * f2))) << 8) | (i5 + ((int) (f2 * ((iIntValue2 & 255) - i5)))));
    }
}
