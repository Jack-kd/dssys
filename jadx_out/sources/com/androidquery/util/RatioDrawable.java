package com.androidquery.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class RatioDrawable extends BitmapDrawable {
    private boolean adjusted;
    private float anchor;

    /* renamed from: m, reason: collision with root package name */
    private Matrix f1327m;
    private float ratio;
    private WeakReference<ImageView> ref;

    /* renamed from: w, reason: collision with root package name */
    private int f1328w;

    public RatioDrawable(Resources resources, Bitmap bitmap, ImageView imageView, float f2, float f3) {
        super(resources, bitmap);
        this.ref = new WeakReference<>(imageView);
        this.ratio = f2;
        this.anchor = f3;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageMatrix(new Matrix());
        adjust(imageView, bitmap, false);
    }

    private void adjust(ImageView imageView, Bitmap bitmap, boolean z2) {
        int width = getWidth(imageView);
        if (width <= 0) {
            return;
        }
        int iTargetHeight = targetHeight(bitmap.getWidth(), bitmap.getHeight(), width) + imageView.getPaddingTop() + imageView.getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (iTargetHeight != layoutParams.height) {
            layoutParams.height = iTargetHeight;
            imageView.setLayoutParams(layoutParams);
        }
        if (z2) {
            this.adjusted = true;
        }
    }

    private Matrix getMatrix(ImageView imageView, Bitmap bitmap) {
        float yOffset;
        float f2;
        int width = bitmap.getWidth();
        Matrix matrix = this.f1327m;
        if (matrix != null && width == this.f1328w) {
            return matrix;
        }
        int height = bitmap.getHeight();
        int width2 = getWidth(imageView);
        int iTargetHeight = targetHeight(width, height, width2);
        if (width <= 0 || height <= 0 || width2 <= 0 || iTargetHeight <= 0) {
            return null;
        }
        if (this.f1327m == null || width != this.f1328w) {
            this.f1327m = new Matrix();
            float f3 = 0.0f;
            if (width * iTargetHeight >= width2 * height) {
                f2 = iTargetHeight / height;
                yOffset = 0.0f;
                f3 = (width2 - (width * f2)) * 0.5f;
            } else {
                float f4 = width2 / width;
                yOffset = (iTargetHeight - (height * f4)) * getYOffset(width, height);
                f2 = f4;
            }
            float f5 = yOffset;
            this.f1327m.setScale(f2, f2);
            this.f1327m.postTranslate(f3, f5);
            this.f1328w = width;
        }
        return this.f1327m;
    }

    private int getWidth(ImageView imageView) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int width = layoutParams != null ? layoutParams.width : 0;
        if (width <= 0) {
            width = imageView.getWidth();
        }
        return width > 0 ? (width - imageView.getPaddingLeft()) - imageView.getPaddingRight() : width;
    }

    private float getYOffset(int i2, int i3) {
        float f2 = this.anchor;
        return f2 != Float.MAX_VALUE ? (1.0f - f2) / 2.0f : ((1.5f - Math.max(1.0f, Math.min(1.5f, i3 / i2))) / 2.0f) + 0.25f;
    }

    private int targetHeight(int i2, int i3, int i4) {
        float f2 = this.ratio;
        if (f2 == Float.MAX_VALUE) {
            f2 = i3 / i2;
        }
        return (int) (i4 * f2);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        WeakReference<ImageView> weakReference = this.ref;
        ImageView imageView = weakReference != null ? weakReference.get() : null;
        if (this.ratio == 0.0f || imageView == null) {
            super.draw(canvas);
        } else {
            draw(canvas, imageView, getBitmap());
        }
    }

    private void draw(Canvas canvas, ImageView imageView, Bitmap bitmap) {
        Matrix matrix = getMatrix(imageView, bitmap);
        if (matrix != null) {
            int paddingTop = imageView.getPaddingTop() + imageView.getPaddingBottom();
            int paddingLeft = imageView.getPaddingLeft() + imageView.getPaddingRight();
            if (paddingTop > 0 || paddingLeft > 0) {
                canvas.clipRect(0, 0, imageView.getWidth() - paddingLeft, imageView.getHeight() - paddingTop);
            }
            canvas.drawBitmap(bitmap, matrix, getPaint());
        }
        if (this.adjusted) {
            return;
        }
        adjust(imageView, bitmap, true);
    }
}
