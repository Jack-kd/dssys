package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;

/* loaded from: classes5.dex */
public class q extends BitmapDrawable {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f46405a;

    /* renamed from: b, reason: collision with root package name */
    private final Path f46406b;

    /* renamed from: c, reason: collision with root package name */
    private final float f46407c;

    public q(Context context, Bitmap bitmap, float f2, float f3, float f4) {
        super(context.getResources(), bitmap);
        this.f46407c = f4;
        Paint paint = new Paint();
        this.f46405a = paint;
        paint.setAntiAlias(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setScale(f2 / bitmap.getWidth(), f3 / bitmap.getHeight());
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        Path path = new Path();
        this.f46406b = path;
        path.addRoundRect(new RectF(0.0f, 0.0f, f2, f3), f4, f4, Path.Direction.CW);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawPath(this.f46406b, this.f46405a);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return getBitmap().getHeight();
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return getBitmap().getWidth();
    }
}
