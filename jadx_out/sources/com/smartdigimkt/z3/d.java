package com.smartdigimkt.z3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f45447a = false;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f45448b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static TypedValue f45449c;

    public static void a(Canvas canvas, int i2, int i3, int i4) {
        try {
            Paint paint = new Paint(1);
            paint.setColor(-1);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            Path path = new Path();
            float f2 = i4;
            path.moveTo(f2, 0.0f);
            float f3 = i2 - i4;
            path.lineTo(f3, 0.0f);
            float f4 = i2;
            path.quadTo(f4, 0.0f, f4, f2);
            float f5 = i3 - i4;
            path.lineTo(f4, f5);
            float f6 = i3;
            path.quadTo(f4, f6, f3, f6);
            path.lineTo(f2, f6);
            path.quadTo(0.0f, f6, 0.0f, f5);
            path.lineTo(0.0f, f2);
            path.quadTo(0.0f, 0.0f, f2, 0.0f);
            path.close();
            canvas2.drawPath(path, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Canvas canvas, int i2, int i3, RectF rectF) {
        try {
            Paint paint = new Paint(1);
            paint.setColor(-1);
            paint.setStyle(Paint.Style.FILL);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawArc(rectF, 0.0f, 180.0f, true, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static int[] a(int i2, int i3, float f2) {
        if (f2 > i2 / i3) {
            i3 = (int) Math.ceil(r0 / f2);
        } else {
            i2 = (int) Math.ceil(r1 * f2);
        }
        return new int[]{i2, i3};
    }

    public static void a(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static Drawable a(Context context, int i2) {
        if (context == null) {
            return null;
        }
        return context.getDrawable(i2);
    }

    public static void a(int i2, int i3, View view) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = i2;
            layoutParams.height = i3;
            view.setLayoutParams(layoutParams);
        }
    }
}
