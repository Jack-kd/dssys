package com.byazt.uq;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

@com.byazt.kj.hp(hp = {0, 1, 85, 28})
/* loaded from: classes3.dex */
public class hp extends l {
    public final Bitmap jx;

    /* renamed from: l, reason: collision with root package name */
    public final Rect f26348l = new Rect();

    /* renamed from: j, reason: collision with root package name */
    public final Paint f26347j = new Paint(1);

    public hp(Bitmap bitmap, l lVar) {
        this.jx = bitmap;
        if (lVar != null) {
            this.hp = lVar.hp;
        }
    }

    @Override // com.byazt.uq.l
    public void hp(Canvas canvas) {
        canvas.drawBitmap(this.jx, this.f26348l, getBounds(), this.f26347j);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int iHeight = rect.height();
        int iWidth = rect.width();
        int width = this.jx.getWidth();
        int height = this.jx.getHeight();
        this.f26348l.set(0, 0, width, height);
        if (height >= iHeight && width >= iWidth) {
            if (width > iWidth) {
                Rect rect2 = this.f26348l;
                int i2 = (width - iWidth) / 2;
                rect2.left = i2;
                rect2.right = i2 + iWidth;
            }
            if (height > iHeight) {
                Rect rect3 = this.f26348l;
                int i3 = (height - iHeight) / 2;
                rect3.top = i3;
                rect3.bottom = i3 + iHeight;
                return;
            }
            return;
        }
        float f2 = iHeight;
        float f3 = f2 * 1.0f;
        float f4 = height;
        float f5 = f3 / f4;
        float f6 = iWidth;
        float f7 = 1.0f * f6;
        float f8 = width;
        if (Math.max(f5, f7 / f8) > f5) {
            int i4 = (int) ((f3 / f6) * f8);
            Rect rect4 = this.f26348l;
            int i5 = (height - i4) / 2;
            rect4.top = i5;
            rect4.bottom = i5 + i4;
            return;
        }
        int i6 = (int) ((f7 / f2) * f4);
        Rect rect5 = this.f26348l;
        int i7 = (width - i6) / 2;
        rect5.left = i7;
        rect5.right = i7 + i6;
    }
}
