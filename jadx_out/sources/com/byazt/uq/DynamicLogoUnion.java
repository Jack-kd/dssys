package com.byazt.uq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import com.byazt.nw.s;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 85, 2422})
/* loaded from: classes3.dex */
public class DynamicLogoUnion extends DynamicBaseWidgetImp {
    public DynamicLogoUnion(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        ImageView imageView = new ImageView(context);
        this.f26309v = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        if (com.byazt.wkx.j.hp()) {
            this.f26307s = Math.max(dynamicRootView.getLogoUnionHeight(), this.f26307s);
        }
        addView(this.f26309v, getWidgetLayoutParams());
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        if (com.byazt.wkx.j.hp()) {
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        v.hp(getContext(), "tt_ad_logo", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.uq.DynamicLogoUnion.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                ((ImageView) DynamicLogoUnion.this.f26309v).setImageDrawable(new BitmapDrawable(DynamicLogoUnion.this.getContext().getResources(), bitmap));
                DynamicLogoUnion dynamicLogoUnion = DynamicLogoUnion.this;
                ((ImageView) dynamicLogoUnion.f26309v).setColorFilter(dynamicLogoUnion.jl.eb(), PorterDuff.Mode.SRC_IN);
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        return true;
    }
}
