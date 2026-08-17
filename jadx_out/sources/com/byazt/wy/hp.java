package com.byazt.wy;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.byazt.qp.l;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1712, 28})
/* loaded from: classes3.dex */
public class hp extends l {
    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.qp.l
    public void hp(final ImageView imageView, String str) {
        v.hp(this.f27777l, str, new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.wy.hp.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                imageView.setImageDrawable(com.byazt.qp.hp.hp(bitmap));
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }
}
