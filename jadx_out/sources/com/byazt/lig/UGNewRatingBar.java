package com.byazt.lig;

import android.content.Context;
import android.widget.ImageView;
import com.byazt.je.UGRatingBar;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 2131, 2165})
/* loaded from: classes3.dex */
public class UGNewRatingBar extends UGRatingBar {
    public UGNewRatingBar(Context context) {
        super(context);
    }

    @Override // com.byazt.je.UGRatingBar
    public void hp(ImageView imageView, String str) {
        v.hp(getContext(), str, imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }
}
