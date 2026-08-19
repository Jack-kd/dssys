package com.fl.saas;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.widget.ImageView;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* renamed from: com.fl.saas.a0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1156a0 {
    public static Bitmap a(Context context, int i2) {
        try {
            return BitmapFactory.decodeResource(context.getResources(), i2);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    public static Drawable a(Context context, Bitmap bitmap) {
        if (context == null || bitmap == null) {
            return null;
        }
        try {
            return new BitmapDrawable(context.getResources(), bitmap);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Drawable drawable, final ImageView imageView) {
        final Bitmap bitmapA = a(imageView.getContext(), Boolean.TRUE, ((BitmapDrawable) drawable).getBitmap(), 200);
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.K1
            @Override // java.lang.Runnable
            public final void run() {
                imageView.setImageBitmap(bitmapA);
            }
        });
    }

    public static Bitmap a(Context context, Boolean bool, Bitmap bitmap, int i2) {
        try {
            int iMax = Math.max(1, i2);
            if (bool.booleanValue()) {
                bitmap = bitmap.copy(Bitmap.Config.ARGB_8888, true);
            }
            RenderScript renderScriptCreate = RenderScript.create(context);
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
            Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            int i3 = iMax / 25;
            int i4 = iMax % 25;
            for (int i5 = 0; i5 < i3; i5++) {
                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                scriptIntrinsicBlurCreate.setRadius(25.0f);
                scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
                allocationCreateFromBitmap.copyFrom(allocationCreateTyped);
            }
            if (i4 > 0) {
                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                scriptIntrinsicBlurCreate.setRadius(i4);
                scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            }
            allocationCreateTyped.copyTo(bitmap);
            renderScriptCreate.destroy();
            return bitmap;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    public static void a(final ImageView imageView, final Drawable drawable) {
        if (imageView == null) {
            return;
        }
        try {
            if (drawable instanceof BitmapDrawable) {
                C1172d1.a().b(new Runnable() { // from class: com.fl.saas.J1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1156a0.a(drawable, imageView);
                    }
                });
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static Bitmap a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Paint paint = new Paint(1);
            paint.setTextSize(DeviceUtil.dip2px(12.0f));
            paint.setColor(-1);
            float fMeasureText = paint.measureText(str);
            float fDescent = paint.descent() - paint.ascent();
            int iDip2px = DeviceUtil.dip2px(2.0f) * 3;
            int iRound = Math.round((r5 * 2) + fDescent);
            int iRound2 = Math.round(fMeasureText + (r5 * 6));
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound2, iRound, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint2 = new Paint();
            paint2.setColor(Color.parseColor("#70000000"));
            float f2 = iRound;
            canvas.drawRect(0.0f, 0.0f, iRound2, f2, paint2);
            canvas.drawText(str, iDip2px, ((f2 - fDescent) / 2.0f) - paint.ascent(), paint);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }
}
