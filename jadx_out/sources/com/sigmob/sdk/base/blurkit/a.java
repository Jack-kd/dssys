package com.sigmob.sdk.base.blurkit;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final float f35529a = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    private static a f35530b;

    /* renamed from: c, reason: collision with root package name */
    private static RenderScript f35531c;

    private Bitmap a(Bitmap bitmap, float f2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (bitmap.getWidth() * f2), (int) (bitmap.getHeight() * f2), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.preScale(f2, f2);
        canvas.setMatrix(matrix);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return bitmapCreateBitmap;
    }

    public Bitmap a(Bitmap bitmap, int i2) {
        try {
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(f35531c, bitmap);
            Allocation allocationCreateTyped = Allocation.createTyped(f35531c, allocationCreateFromBitmap.getType());
            RenderScript renderScript = f35531c;
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            scriptIntrinsicBlurCreate.setRadius(i2);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmap);
        } catch (Throwable unused) {
        }
        return bitmap;
    }

    public Bitmap a(Bitmap bitmap, int i2, float f2) {
        return a(a(bitmap, f2), i2);
    }

    private Bitmap a(View view) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private Bitmap a(View view, float f2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (view.getWidth() * f2), (int) (view.getHeight() * f2), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.preScale(f2, f2);
        canvas.setMatrix(matrix);
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    public Bitmap a(View view, int i2) {
        return a(a(view), i2);
    }

    public Bitmap a(View view, int i2, float f2) {
        return a(a(view, f2), i2);
    }

    public static a a() {
        a aVar = f35530b;
        if (aVar != null) {
            return aVar;
        }
        throw new RuntimeException("BlurKit not initialized!");
    }

    public static void a(Context context) {
        if (f35530b != null) {
            return;
        }
        f35530b = new a();
        f35531c = RenderScript.create(context.getApplicationContext());
    }
}
