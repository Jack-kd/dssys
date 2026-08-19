package com.byazt.qo;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.CircleLongPressView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 34})
/* loaded from: classes3.dex */
public class l implements eb {
    public CircleLongPressView hp;

    public l(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        this.hp = new CircleLongPressView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.byazt.sq.s.hp(context, 180.0f), (int) com.byazt.sq.s.hp(context, 180.0f));
        layoutParams.gravity = 17;
        this.hp.setLayoutParams(layoutParams);
        this.hp.setGuideText(ebVar.zx());
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        this.hp.hp();
    }

    @Override // com.byazt.qo.eb
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public CircleLongPressView jx() {
        return this.hp;
    }

    @Override // com.byazt.qo.eb
    public void l() {
        this.hp.l();
    }
}
