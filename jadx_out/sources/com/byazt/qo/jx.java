package com.byazt.qo;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.ClickInteractView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 30})
/* loaded from: classes3.dex */
public class jx implements eb {
    public ClickInteractView hp;

    public jx(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        this.hp = new ClickInteractView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicBaseWidget.getDynamicHeight(), dynamicBaseWidget.getDynamicHeight());
        layoutParams.gravity = 17;
        this.hp.setLayoutParams(layoutParams);
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        this.hp.hp();
    }

    @Override // com.byazt.qo.eb
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public ClickInteractView jx() {
        return this.hp;
    }

    @Override // com.byazt.qo.eb
    public void l() {
        this.hp.l();
    }
}
