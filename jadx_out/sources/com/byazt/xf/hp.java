package com.byazt.xf;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 781, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.ph.hp {
    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.ph.hp
    public void gu(String str) {
        v.hp(this.f27777l, str, new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.xf.hp.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                hp.this.l(new BitmapDrawable(hp.this.f27777l.getResources(), bitmap));
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }
}
