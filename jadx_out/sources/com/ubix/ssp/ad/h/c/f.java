package com.ubix.ssp.ad.h.c;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.ubix.ssp.ad.e.a0.j;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class f extends b {

    /* renamed from: v, reason: collision with root package name */
    private int f48069v;

    /* renamed from: w, reason: collision with root package name */
    private int f48070w;

    /* renamed from: x, reason: collision with root package name */
    private Bitmap f48071x;

    /* renamed from: y, reason: collision with root package name */
    private Rect f48072y;

    /* renamed from: z, reason: collision with root package name */
    WindowManager f48073z;

    public f(Context context, Bundle bundle) {
        super(context, bundle);
        this.f48071x = null;
        this.f48072y = new Rect();
        this.f48073z = null;
        this.f48069v = r.a().h(getContext());
        this.f48070w = r.a().c(getContext()) - com.ubix.ssp.ad.e.a0.c.e(getContext());
        setWillNotDraw(false);
        d();
    }

    private boolean b(Bitmap bitmap) {
        if (bitmap == null || bitmap.getWidth() * bitmap.getHeight() <= 0) {
            return true;
        }
        try {
            int width = bitmap.getWidth() - 1;
            int width2 = bitmap.getWidth() - 1;
            if (bitmap.getPixel(0, 0) == 0 && bitmap.getPixel(width, 0) == 0 && bitmap.getPixel(0, width2) == 0 && bitmap.getPixel(width, width2) == 0) {
                if (bitmap.getPixel(width / 2, width2 / 2) == 0) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return true;
        }
    }

    private void d() {
        Bitmap bitmapCreateBitmap;
        try {
            ((Activity) findViewById(400004).getContext()).getWindow().getDecorView().setDrawingCacheEnabled(true);
            bitmapCreateBitmap = ((Activity) findViewById(400004).getContext()).getWindow().getDecorView().getDrawingCache();
        } catch (Throwable th) {
            th.printStackTrace();
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null || b(bitmapCreateBitmap)) {
            bitmapCreateBitmap = Bitmap.createBitmap(this.f48033c, this.f48034d, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(-12303292);
        }
        a(bitmapCreateBitmap);
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public void a() {
        super.a();
        try {
            Bitmap bitmap = this.f48071x;
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            this.f48071x.recycle();
        } catch (Throwable unused) {
        }
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public int getRealTemplateId() {
        return 6013;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            Bitmap bitmap = this.f48071x;
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            canvas.drawBitmap(this.f48071x, (Rect) null, this.f48072y, (Paint) null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x01eb A[PHI: r8 r9 r10
      0x01eb: PHI (r8v40 int) = (r8v39 int), (r8v42 int) binds: [B:47:0x01e4, B:40:0x01c0] A[DONT_GENERATE, DONT_INLINE]
      0x01eb: PHI (r9v39 int) = (r9v38 int), (r9v41 int) binds: [B:47:0x01e4, B:40:0x01c0] A[DONT_GENERATE, DONT_INLINE]
      0x01eb: PHI (r10v32 int) = (r10v31 int), (r10v37 int) binds: [B:47:0x01e4, B:40:0x01c0] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 900
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.h.c.f.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        int iG;
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.f48073z == null) {
            this.f48073z = (WindowManager) getContext().getSystemService("window");
        }
        int orientation = this.f48073z.getDefaultDisplay().getOrientation();
        a(this.f48039i);
        if (orientation == 1 || orientation == 3) {
            this.f48069v = r.a().f(getContext());
            iG = r.a().g(getContext());
        } else {
            this.f48069v = r.a().h(getContext());
            iG = r.a().c(getContext());
        }
        this.f48070w = iG - com.ubix.ssp.ad.e.a0.c.e(getContext());
        int i6 = this.f48069v;
        int i7 = this.f48033c;
        int i8 = this.f48070w;
        int i9 = this.f48034d;
        this.f48072y = new Rect((i6 - i7) / 2, (i8 - i9) / 2, (i6 + i7) / 2, (i8 + i9) / 2);
    }

    private void a(Bitmap bitmap) {
        if (bitmap != null && bitmap.getWidth() - this.f48033c >= 0 && bitmap.getHeight() - this.f48034d >= 0) {
            int width = (bitmap.getWidth() - this.f48033c) / 2;
            int height = bitmap.getHeight();
            int i2 = this.f48034d;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, width, (height - i2) / 2, this.f48033c, i2);
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.f48033c, this.f48034d, Bitmap.Config.ARGB_4444);
            Canvas canvas = new Canvas(bitmapCreateBitmap2);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            Rect rect = new Rect(0, 0, this.f48033c, this.f48034d);
            canvas.drawRoundRect(new RectF(rect), 12.0f, 12.0f, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmapCreateBitmap, rect, rect, paint);
            this.f48071x = j.a(bitmapCreateBitmap2, 50, true);
            Drawable drawableA = com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#A6020202"), 12);
            drawableA.setBounds(0, 0, this.f48033c, this.f48034d);
            drawableA.draw(canvas);
            GradientDrawable gradientDrawableA = com.ubix.ssp.ad.e.a0.c.a(Color.parseColor("#CCC9C9C9"), Color.parseColor("#6BEDEDED"), 12, GradientDrawable.Orientation.LEFT_RIGHT);
            gradientDrawableA.setBounds(0, 0, this.f48033c, this.f48034d);
            gradientDrawableA.draw(canvas);
            GradientDrawable gradientDrawableA2 = com.ubix.ssp.ad.e.a0.c.a(Color.parseColor("#00000000"), Color.parseColor("#40000000"), 12);
            int i3 = this.f48034d;
            gradientDrawableA2.setBounds(0, i3 - 100, this.f48033c, i3);
            gradientDrawableA2.draw(canvas);
            try {
                ((Activity) findViewById(400004).getContext()).getWindow().getDecorView().setDrawingCacheEnabled(false);
                ((Activity) findViewById(400004).getContext()).getWindow().getDecorView().destroyDrawingCache();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            int i4 = this.f48069v;
            int i5 = this.f48033c;
            int i6 = this.f48070w;
            int i7 = this.f48034d;
            this.f48072y = new Rect((i4 - i5) / 2, (i6 - i7) / 2, (i4 + i5) / 2, (i6 + i7) / 2);
            setLayoutParams(new RelativeLayout.LayoutParams(this.f48069v, this.f48070w));
            bitmap.recycle();
            invalidate();
        }
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public boolean a(int i2) {
        return true;
    }
}
