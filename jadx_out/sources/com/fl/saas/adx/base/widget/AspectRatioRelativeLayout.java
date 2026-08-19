package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.fl.saas.R;

/* loaded from: classes3.dex */
public class AspectRatioRelativeLayout extends RelativeLayout {
    private float mAspectRatio;

    public AspectRatioRelativeLayout(Context context) {
        this(context, null, 0);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        float f2 = this.mAspectRatio;
        if (f2 == 0.0f) {
            super.onMeasure(i2, i3);
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec((int) (size / f2), C.ENCODING_PCM_32BIT));
        }
    }

    public AspectRatioRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioRelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mAspectRatio = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FLAspectRatioRelativeLayout, i2, 0);
        float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.FLAspectRatioRelativeLayout_fl_aspectRatio, 0.0f);
        this.mAspectRatio = f2;
        if (f2 == 0.0f) {
            throw new IllegalArgumentException("You must specify an aspect ratio when using the AspectRatioView.");
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
