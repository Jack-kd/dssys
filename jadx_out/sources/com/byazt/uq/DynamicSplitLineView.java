package com.byazt.uq;

import android.content.Context;
import android.view.View;
import com.byazt.nw.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 85, MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_OPTION})
/* loaded from: classes3.dex */
public class DynamicSplitLineView extends DynamicBaseWidgetImp {
    public DynamicSplitLineView(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        View view = new View(context);
        this.f26309v = view;
        addView(view, getWidgetLayoutParams());
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        this.f26309v.setBackgroundColor(this.jl.wv());
        return true;
    }
}
