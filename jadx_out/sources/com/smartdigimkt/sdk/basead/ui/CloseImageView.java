package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.smartdigimkt.v1.b3;
import com.smartdigimkt.v1.h2;
import com.smartdigimkt.z3.c;

/* loaded from: classes5.dex */
public class CloseImageView extends ImageView implements b3 {

    /* renamed from: a, reason: collision with root package name */
    public float f43364a;

    /* renamed from: b, reason: collision with root package name */
    public Rect f43365b;

    /* renamed from: c, reason: collision with root package name */
    public float f43366c;

    public CloseImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43364a = 1.0f;
    }

    @Override // android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        View view;
        super.onLayout(z2, i2, i3, i4, i5);
        float f2 = this.f43364a;
        if (f2 <= 1.0f || (view = (View) getParent()) == null) {
            return;
        }
        view.post(new c(this, f2, view));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action;
        Rect rect;
        if (this.f43364a >= 1.0f || (!((action = motionEvent.getAction()) == 0 || action == 5) || (rect = this.f43365b) == null || rect.contains(getLeft() + ((int) motionEvent.getX()), getTop() + ((int) motionEvent.getY())))) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.smartdigimkt.v1.b3
    public void setClickAreaScaleFactor(float f2) {
        View view;
        this.f43364a = f2;
        if (f2 <= 0.0f) {
            this.f43364a = 1.0f;
        }
        float f3 = this.f43364a;
        if (f3 < 1.0f) {
            post(new h2(this));
        } else {
            if (f3 <= 1.0f || (view = (View) getParent()) == null) {
                return;
            }
            view.post(new c(this, f3, view));
        }
    }

    @Override // com.smartdigimkt.v1.b3
    public void setClickViewAlpha(double d2) {
        if (this.f43366c < 1.0f && d2 >= 0.0d && d2 <= 1.0d) {
            float f2 = (float) d2;
            try {
                this.f43366c = f2;
                setAlpha(f2);
            } catch (Throwable unused) {
            }
        }
    }
}
