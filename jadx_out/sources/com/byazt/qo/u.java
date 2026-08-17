package com.byazt.qo;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.SlideRightView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u implements eb {
    public SlideRightView hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.nw.eb f25006j;
    public DynamicBaseWidget jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f25007l;

    public u(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar) {
        this.f25007l = context;
        this.jx = dynamicBaseWidget;
        this.f25006j = ebVar;
        j();
    }

    private void j() {
        this.hp = new SlideRightView(this.f25007l);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, (int) com.byazt.sq.s.hp(this.f25007l, 120.0f));
        layoutParams.gravity = 17;
        this.hp.setLayoutParams(layoutParams);
        this.hp.setClipChildren(false);
        this.hp.setGuideText(this.f25006j.zx());
        DynamicBaseWidget dynamicBaseWidget = this.jx;
        if (dynamicBaseWidget != null) {
            this.hp.setOnClickListener((View.OnClickListener) dynamicBaseWidget.getDynamicClickListener());
        }
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        SlideRightView slideRightView = this.hp;
        if (slideRightView != null) {
            slideRightView.hp();
        }
    }

    @Override // com.byazt.qo.eb
    public ViewGroup jx() {
        return this.hp;
    }

    @Override // com.byazt.qo.eb
    public void l() {
        SlideRightView slideRightView = this.hp;
        if (slideRightView != null) {
            slideRightView.l();
        }
    }
}
