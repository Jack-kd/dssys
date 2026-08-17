package com.byazt.uq;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.component.sdk.annotation.ColorInt;

@com.byazt.kj.hp(hp = {0, 1, 85, 34})
/* loaded from: classes3.dex */
public class l extends GradientDrawable {
    public Path hp;

    /* renamed from: l, reason: collision with root package name */
    public final Paint f26351l;

    public l() {
        this.hp = new Path();
        Paint paint = new Paint(1);
        this.f26351l = paint;
        paint.setColor(-1);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Path path = this.hp;
        if (path == null || path.isEmpty()) {
            hp(canvas);
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.f26351l, 31);
        hp(canvas);
        this.f26351l.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(this.hp, this.f26351l);
        this.f26351l.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }

    public void hp(Canvas canvas) {
        super.draw(canvas);
    }

    public void update(int i2, int i3, int i4, int i5) {
        this.hp.addRect(i2, i3, i4, i5, Path.Direction.CW);
        invalidateSelf();
    }

    public l(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        super(orientation, iArr);
        this.hp = new Path();
        Paint paint = new Paint(1);
        this.f26351l = paint;
        paint.setColor(-1);
    }
}
