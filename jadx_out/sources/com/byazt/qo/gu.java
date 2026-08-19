package com.byazt.qo;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.HandLongPressView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements eb {
    public HandLongPressView hp;

    public gu(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        this.hp = new HandLongPressView(context);
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
    public ViewGroup jx() {
        return this.hp;
    }

    @Override // com.byazt.qo.eb
    public void l() {
        this.hp.l();
    }
}
