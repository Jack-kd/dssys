package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.anythink.core.common.v.ak;

/* loaded from: classes2.dex */
public class CloseFrameLayout extends FrameLayout implements a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f4941a = "CloseFrameLayout";

    /* renamed from: b, reason: collision with root package name */
    private float f4942b;

    /* renamed from: c, reason: collision with root package name */
    private Rect f4943c;

    /* renamed from: d, reason: collision with root package name */
    private float f4944d;

    public CloseFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4942b = 1.0f;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        float f2 = this.f4942b;
        if (f2 > 1.0f) {
            ak.a(this, f2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action;
        Rect rect;
        if (this.f4942b >= 1.0f || (!((action = motionEvent.getAction()) == 0 || action == 5) || (rect = this.f4943c) == null || rect.contains(getLeft() + ((int) motionEvent.getX()), getTop() + ((int) motionEvent.getY())))) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.anythink.core.common.inner.ui.a
    public void setClickAreaScaleFactor(float f2) {
        this.f4942b = f2;
        if (f2 <= 0.0f) {
            this.f4942b = 1.0f;
        }
        float f3 = this.f4942b;
        if (f3 < 1.0f) {
            post(new Runnable() { // from class: com.anythink.core.common.inner.ui.CloseFrameLayout.1
                @Override // java.lang.Runnable
                public final void run() {
                    CloseFrameLayout.this.f4943c = new Rect();
                    CloseFrameLayout closeFrameLayout = CloseFrameLayout.this;
                    closeFrameLayout.getHitRect(closeFrameLayout.f4943c);
                    int iWidth = ((int) (CloseFrameLayout.this.f4943c.width() * (CloseFrameLayout.this.f4942b - 1.0f))) / 2;
                    int iHeight = ((int) (CloseFrameLayout.this.f4943c.height() * (CloseFrameLayout.this.f4942b - 1.0f))) / 2;
                    CloseFrameLayout.this.f4943c.top -= iHeight;
                    CloseFrameLayout.this.f4943c.bottom += iHeight;
                    CloseFrameLayout.this.f4943c.left -= iWidth;
                    CloseFrameLayout.this.f4943c.right += iWidth;
                }
            });
        } else if (f3 > 1.0f) {
            ak.a(this, f3);
        }
    }

    @Override // com.anythink.core.common.inner.ui.a
    public void setClickViewAlpha(double d2) {
        if (this.f4944d < 1.0f && d2 >= 0.0d && d2 <= 1.0d) {
            float f2 = (float) d2;
            try {
                this.f4944d = f2;
                setAlpha(f2);
            } catch (Throwable unused) {
            }
        }
    }
}
