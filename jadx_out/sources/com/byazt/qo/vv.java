package com.byazt.qo;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.DynamicUnlockView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 65})
/* loaded from: classes3.dex */
public class vv implements eb<DynamicUnlockView> {
    public final DynamicUnlockView hp;

    public vv(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        DynamicUnlockView dynamicUnlockView = new DynamicUnlockView(context);
        this.hp = dynamicUnlockView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.byazt.sq.s.hp(context, ebVar.yr() > 0 ? ebVar.yr() : com.byazt.wkx.j.hp() ? 0 : 120);
        dynamicUnlockView.setLayoutParams(layoutParams);
        dynamicUnlockView.setClipChildren(false);
        dynamicUnlockView.setText(ebVar.zx());
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        DynamicUnlockView dynamicUnlockView = this.hp;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.hp();
        }
    }

    @Override // com.byazt.qo.eb
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public DynamicUnlockView jx() {
        return this.hp;
    }

    @Override // com.byazt.qo.eb
    public void l() {
        DynamicUnlockView dynamicUnlockView = this.hp;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.l();
        }
    }
}
