package com.ubix.ssp.ad.e.b0.k;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.b0.e;

/* loaded from: classes5.dex */
public class a extends TextureView {

    /* renamed from: a, reason: collision with root package name */
    public int f46767a;

    /* renamed from: b, reason: collision with root package name */
    public int f46768b;

    public a(Context context) {
        super(context);
        this.f46767a = 0;
        this.f46768b = 0;
        setOpaque(false);
        this.f46767a = 0;
        this.f46768b = 0;
    }

    public void a(int i2, int i3) {
        if (this.f46767a == i2 && this.f46768b == i3) {
            return;
        }
        this.f46767a = i2;
        this.f46768b = i3;
        requestLayout();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int i4 = this.f46767a;
        int i5 = this.f46768b;
        int measuredHeight = ((View) getParent().getParent()).getMeasuredHeight();
        u.e("parentWidth width=" + ((View) getParent().getParent()).getMeasuredWidth() + ";height=" + measuredHeight);
        int defaultSize = View.getDefaultSize(i4, i2);
        int defaultSize2 = View.getDefaultSize(i5, i3);
        u.e("width=" + defaultSize + ";height=" + defaultSize2);
        if (i4 * i5 == 0) {
            return;
        }
        int i6 = e.f46641b;
        if (i6 == 1) {
            setMeasuredDimension(View.MeasureSpec.getSize(i2), View.MeasureSpec.getSize(i3) - 3);
            return;
        }
        if (i6 == 4) {
            float f2 = defaultSize / defaultSize2;
            float f3 = i4 / i5;
            u.e("videoDelta =" + f3 + "；" + f2);
            if (f3 < f2) {
                defaultSize = ((i4 * defaultSize2) / i5) + 1;
            } else {
                defaultSize2 = (i5 * defaultSize) / i4;
            }
        }
        u.e("targetWidth=" + defaultSize + ";targetHeight=" + defaultSize2);
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // android.view.View
    public void setRotation(float f2) {
        if (f2 != getRotation()) {
            super.setRotation(f2);
            requestLayout();
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46767a = 0;
        this.f46768b = 0;
        setOpaque(false);
        this.f46767a = 0;
        this.f46768b = 0;
    }
}
