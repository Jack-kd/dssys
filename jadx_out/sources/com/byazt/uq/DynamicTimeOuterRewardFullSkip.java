package com.byazt.uq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.byazt.nw.s;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 85, MediaPlayer.MEDIA_PLAYER_OPTION_SET_CHECK_SILENCE_INTERVAL})
/* loaded from: classes3.dex */
public class DynamicTimeOuterRewardFullSkip extends DynamicBaseWidgetImp implements com.byazt.wsc.jx {
    public boolean hp;

    public DynamicTimeOuterRewardFullSkip(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        if (dynamicRootView.getRenderRequest() != null) {
            this.hp = dynamicRootView.getRenderRequest().v();
        }
        this.eb = this.f26307s;
        ImageView imageView = new ImageView(context);
        this.f26309v = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        addView(this.f26309v, getWidgetLayoutParams());
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().d()) {
            return;
        }
        this.f26309v.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.byazt.wsc.jx
    public void hp(CharSequence charSequence, boolean z2, int i2, boolean z3) {
        int i3 = 0;
        if (!z2 && !z3) {
            i3 = 8;
        }
        setVisibility(i3);
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.CENTER_CROP);
        Drawable drawableHp = com.byazt.sq.j.hp(getContext(), this.jl);
        if (drawableHp != null) {
            ((ImageView) this.f26309v).setBackground(drawableHp);
        }
        if (this.hp) {
            v.hp(getContext(), "tt_close_btn", (ImageView) this.f26309v, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        } else {
            v.hp(getContext(), "tt_skip_btn", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.uq.DynamicTimeOuterRewardFullSkip.1
                @Override // com.byazt.oxb.hp
                public void hp(Bitmap bitmap) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(DynamicTimeOuterRewardFullSkip.this.getContext().getResources(), bitmap);
                    bitmapDrawable.setAutoMirrored(true);
                    ((ImageView) DynamicTimeOuterRewardFullSkip.this.f26309v).setImageDrawable(bitmapDrawable);
                }
            }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
        setVisibility(8);
        return true;
    }
}
