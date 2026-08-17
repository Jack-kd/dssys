package com.byazt.p;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

@com.byazt.kj.hp(hp = {0, 1, 1571, 28})
/* loaded from: classes3.dex */
public class hp extends Drawable {
    public final Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public final Path f24301j;
    public final Path jx;

    /* renamed from: l, reason: collision with root package name */
    public final Path f24302l;

    /* renamed from: w, reason: collision with root package name */
    public float f24303w = 1.0f;

    /* renamed from: a, reason: collision with root package name */
    public float f24300a = 1.0f;

    public hp() {
        Paint paint = new Paint(1);
        this.hp = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(-1);
        Path path = new Path();
        this.f24302l = path;
        Path path2 = new Path();
        this.jx = path2;
        Path path3 = new Path();
        this.f24301j = path3;
        RectF rectF = new RectF(3.334f, 12.0f, 12.6673f, 13.3333f);
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(rectF, 0.6667f, 0.6667f, direction);
        path2.setFillType(Path.FillType.EVEN_ODD);
        path2.moveTo(3.534f, 6.1994f);
        path2.cubicTo(3.2673f, 6.4652f, 3.2673f, 6.8962f, 3.534f, 7.1621f);
        path2.lineTo(7.4893f, 11.1046f);
        path2.cubicTo(7.4982f, 11.1147f, 7.5075f, 11.1245f, 7.5171f, 11.1341f);
        path2.cubicTo(7.7838f, 11.3999f, 8.2162f, 11.3999f, 8.4829f, 11.1341f);
        path2.lineTo(12.4676f, 7.1622f);
        path2.cubicTo(12.7343f, 6.8964f, 12.7343f, 6.4654f, 12.4676f, 6.1995f);
        path2.cubicTo(12.2009f, 5.9337f, 11.7685f, 5.9337f, 11.5018f, 6.1995f);
        path2.lineTo(8.0009f, 9.6892f);
        path2.lineTo(4.4998f, 6.1994f);
        path2.cubicTo(4.2331f, 5.9335f, 3.8007f, 5.9335f, 3.534f, 6.1994f);
        path2.close();
        path3.addRoundRect(new RectF(7.334f, 2.0f, 8.6673f, 10.6667f), 0.6667f, 0.6667f, direction);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iSave = canvas.save();
        canvas.scale(this.f24303w, this.f24300a);
        canvas.drawPath(this.f24302l, this.hp);
        canvas.drawPath(this.jx, this.hp);
        canvas.drawPath(this.f24301j, this.hp);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (rect != null) {
            this.f24303w = rect.width() / 16.0f;
            this.f24300a = rect.height() / 16.0f;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.hp.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.hp.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
