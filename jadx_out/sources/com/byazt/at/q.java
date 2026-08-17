package com.byazt.at;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 150})
/* loaded from: classes2.dex */
public class q extends jx {
    public q(com.byazt.na.s sVar, s sVar2) {
        super(sVar, sVar2);
    }

    @Override // com.byazt.at.jx, com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        super.hp(rectF, matrix, z2);
        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        super.l(canvas, matrix, i2);
    }
}
