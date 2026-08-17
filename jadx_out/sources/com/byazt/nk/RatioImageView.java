package com.byazt.nk;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 1700})
/* loaded from: classes3.dex */
public class RatioImageView extends ImageView {
    public float hp;

    public RatioImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int i4 = getLayoutParams().width;
        int i5 = getLayoutParams().height;
        float f2 = this.hp;
        if (f2 > 0.0f) {
            if (i4 == -2) {
                size = (int) (size2 * f2);
                mode = 1073741824;
            } else if (i5 == -2) {
                size2 = (int) (size / f2);
                mode2 = 1073741824;
            }
        }
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2));
    }

    public void setRatio(float f2) {
        this.hp = f2;
    }

    public RatioImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }
}
