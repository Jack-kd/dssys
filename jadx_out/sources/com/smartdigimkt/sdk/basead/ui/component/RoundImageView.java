package com.smartdigimkt.sdk.basead.ui.component;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.common.res.image.RecycleImageView;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public class RoundImageView extends RecycleImageView {

    /* renamed from: a, reason: collision with root package name */
    public int f43804a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f43805b;

    public RoundImageView(Context context) {
        super(context);
        this.f43804a = k.a(getContext(), 5.0f);
    }

    @Override // com.smartdigimkt.sdk.core.common.res.image.RecycleImageView, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        if (this.f43805b) {
            canvas2 = canvas;
            try {
                int iSaveLayer = canvas2.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
                super.dispatchDraw(canvas2);
                canvas2.translate(getPaddingLeft(), getPaddingTop());
                d.a(canvas2, getWidth() - (getPaddingLeft() * 2), getHeight() - (getPaddingTop() * 2), this.f43804a);
                canvas2.restoreToCount(iSaveLayer);
                return;
            } catch (Exception unused) {
            }
        } else {
            canvas2 = canvas;
        }
        super.dispatchDraw(canvas2);
    }

    @Override // com.smartdigimkt.sdk.core.common.res.image.RecycleImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        if (this.f43805b) {
            canvas2 = canvas;
            try {
                int iSaveLayer = canvas2.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
                super.onDraw(canvas2);
                canvas2.translate(getPaddingLeft(), getPaddingTop());
                d.a(canvas2, getWidth() - (getPaddingLeft() * 2), getHeight() - (getPaddingTop() * 2), this.f43804a);
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
        this.f43805b = z2;
    }

    public void setRadiusInDip(int i2) {
        this.f43804a = k.a(getContext(), i2);
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43804a = k.a(getContext(), 5.0f);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43804a = k.a(getContext(), 5.0f);
    }
}
