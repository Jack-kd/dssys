package com.anythink.core.common.ui.component;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.anythink.core.common.res.image.RecycleImageView;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class RoundImageView extends RecycleImageView {

    /* renamed from: a, reason: collision with root package name */
    int f7919a;

    /* renamed from: b, reason: collision with root package name */
    boolean f7920b;

    public RoundImageView(Context context) {
        super(context);
        this.f7919a = p.a(getContext(), 5.0f);
    }

    @Override // com.anythink.core.common.res.image.RecycleImageView, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        if (this.f7920b) {
            canvas2 = canvas;
            try {
                int iSaveLayer = canvas2.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
                super.dispatchDraw(canvas2);
                canvas2.translate(getPaddingLeft(), getPaddingTop());
                ak.a(canvas2, getWidth() - (getPaddingLeft() * 2), getHeight() - (getPaddingTop() * 2), this.f7919a);
                canvas2.restoreToCount(iSaveLayer);
                return;
            } catch (Exception unused) {
            }
        } else {
            canvas2 = canvas;
        }
        super.dispatchDraw(canvas2);
    }

    @Override // com.anythink.core.common.res.image.RecycleImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        if (this.f7920b) {
            canvas2 = canvas;
            try {
                int iSaveLayer = canvas2.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
                super.onDraw(canvas2);
                canvas2.translate(getPaddingLeft(), getPaddingTop());
                ak.a(canvas2, getWidth() - (getPaddingLeft() * 2), getHeight() - (getPaddingTop() * 2), this.f7919a);
                canvas2.restoreToCount(iSaveLayer);
                return;
            } catch (Exception unused) {
            }
        } else {
            canvas2 = canvas;
        }
        super.onDraw(canvas2);
    }

    public void setNeedRadiu(boolean z2) {
        this.f7920b = z2;
    }

    public void setRadiusInDip(int i2) {
        this.f7919a = p.a(getContext(), i2);
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7919a = p.a(getContext(), 5.0f);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f7919a = p.a(getContext(), 5.0f);
    }
}
