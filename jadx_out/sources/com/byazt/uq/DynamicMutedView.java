package com.byazt.uq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.byazt.nw.s;
import com.byazt.sq.q;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 85, 1254})
/* loaded from: classes3.dex */
public class DynamicMutedView extends DynamicBaseWidgetImp implements com.byazt.wsc.l {
    public DynamicMutedView(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        ImageView imageView = new ImageView(context);
        this.f26309v = imageView;
        imageView.setTag(5);
        addView(this.f26309v, getWidgetLayoutParams());
        dynamicRootView.setMuteListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().d()) {
            return;
        }
        this.f26309v.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public boolean j() {
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        if (com.byazt.wkx.j.hp()) {
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.CENTER);
        }
        setSoundMute(this.f26303k.f26330l);
        if (!com.byazt.wkx.j.hp()) {
            ((ImageView) this.f26309v).setBackgroundDrawable(q.hp(0, Integer.valueOf(this.jl.wv()), new int[]{this.f26307s / 2}, null, null, null));
            return true;
        }
        Drawable drawableHp = com.byazt.sq.j.hp(getContext(), this.jl);
        if (drawableHp == null) {
            return true;
        }
        ((ImageView) this.f26309v).setBackground(drawableHp);
        return true;
    }

    @Override // com.byazt.wsc.l
    public void setSoundMute(boolean z2) {
        v.hp(getContext(), z2 ? "tt_mute" : "tt_unmute", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.uq.DynamicMutedView.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                ((ImageView) DynamicMutedView.this.f26309v).setImageDrawable(new BitmapDrawable(DynamicMutedView.this.getContext().getResources(), bitmap));
                if (((ImageView) DynamicMutedView.this.f26309v).getDrawable() != null) {
                    ((ImageView) DynamicMutedView.this.f26309v).getDrawable().setAutoMirrored(true);
                }
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }
}
