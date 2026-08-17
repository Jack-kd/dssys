package com.byazt.qo;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.ClickSlideUpShakeView;
import com.byazt.wnd.ShakeAnimationView;
import com.byazt.wnd.ShakeClickView;
import com.byazt.wnd.SlideUpView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 54})
/* loaded from: classes3.dex */
public class a extends xs<ClickSlideUpShakeView> implements v {
    public a(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar, com.byazt.nw.e eVar, boolean z2, int i2) {
        super(context, dynamicBaseWidget, ebVar);
        this.f25009l = context;
        this.f25008j = ebVar;
        this.jx = dynamicBaseWidget;
        hp(eVar, ebVar, z2, i2);
    }

    private void hp(com.byazt.nw.e eVar, com.byazt.nw.eb ebVar, boolean z2, int i2) {
        this.hp = new ClickSlideUpShakeView(this.f25009l, eVar, z2, i2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.byazt.sq.s.hp(this.f25009l, 300.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.byazt.sq.s.hp(this.f25009l, ebVar.yr() > 0 ? ebVar.yr() : com.byazt.wkx.j.hp() ? 0 : 120);
        this.hp.setLayoutParams(layoutParams);
        this.hp.setClipChildren(false);
        this.hp.setSlideText(this.f25008j.zx());
        SlideUpView slideUpView = this.hp;
        if (slideUpView instanceof ClickSlideUpShakeView) {
            ((ClickSlideUpShakeView) slideUpView).setShakeText(this.f25008j.vq());
            final ShakeClickView shakeView = ((ClickSlideUpShakeView) this.hp).getShakeView();
            if (shakeView != null) {
                shakeView.setOnShakeViewListener(new ShakeAnimationView.hp() { // from class: com.byazt.qo.a.1
                    @Override // com.byazt.wnd.ShakeAnimationView.hp
                    public void hp(boolean z3) {
                        if (a.this.jx.getDynamicClickListener() != null) {
                            a.this.jx.getDynamicClickListener().hp(z3, a.this);
                        }
                        shakeView.performClick();
                    }
                });
                shakeView.setOnClickListener((View.OnClickListener) this.jx.getDynamicClickListener());
            }
        }
    }

    @Override // com.byazt.qo.xs
    public void j() {
    }

    @Override // com.byazt.qo.v
    public void w() {
        if (this.hp.getParent() != null) {
            ((ViewGroup) this.hp.getParent()).setVisibility(8);
        }
    }
}
