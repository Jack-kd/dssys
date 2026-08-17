package com.byazt.wnd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.view.View;
import com.byazt.nke.b;
import com.byazt.nke.e;
import com.byazt.nke.k;
import com.byazt.nke.u;
import com.byazt.sq.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1327})
/* loaded from: classes3.dex */
public class ImageFlipSlide extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f27010a;
    public final Rect eb;
    public Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public List<String> f27011j;
    public Bitmap jx;

    /* renamed from: l, reason: collision with root package name */
    public float f27012l;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f27013s;

    /* renamed from: w, reason: collision with root package name */
    public Path f27014w;

    public ImageFlipSlide(Context context, boolean z2) {
        super(context);
        this.f27012l = 0.1f;
        this.f27010a = new Rect();
        this.eb = new Rect();
        this.f27013s = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBlurPx() {
        if (this.f27011j == null) {
            return 0;
        }
        for (int i2 = 0; i2 < this.f27011j.size(); i2++) {
            if (this.f27011j.get(i2).contains("blur")) {
                return Integer.parseInt(this.f27011j.get(i2).split("\\(")[1].split("px")[0]);
            }
        }
        return 0;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.jx == null) {
            return;
        }
        if (!this.f27013s) {
            canvas.clipPath(this.f27014w);
            canvas.drawBitmap(this.jx, 0.0f, 0.0f, this.hp);
            return;
        }
        this.f27010a.left = (int) (r0.getWidth() * (1.0f - this.f27012l));
        this.f27010a.right = this.jx.getWidth();
        Rect rect = this.f27010a;
        rect.top = 0;
        rect.bottom = this.jx.getHeight();
        this.eb.left = (int) (getWidth() * (1.0f - this.f27012l));
        this.eb.right = getWidth();
        Rect rect2 = this.eb;
        rect2.top = 0;
        rect2.bottom = getHeight();
        canvas.drawBitmap(this.jx, this.f27010a, this.eb, this.hp);
    }

    public void hp(String str, String str2, List<String> list) {
        final k kVarKey = com.byazt.ui.hp.hp().w().from(str).key(str2);
        this.f27011j = list;
        kVarKey.config(Bitmap.Config.ARGB_4444).type(2);
        if (getBlurPx() != 0) {
            kVarKey.converter(new e() { // from class: com.byazt.wnd.ImageFlipSlide.1
                @Override // com.byazt.nke.e
                public Bitmap coverterTo(Bitmap bitmap) {
                    try {
                        return l.hp(ImageFlipSlide.this.getContext(), bitmap, ImageFlipSlide.this.getBlurPx());
                    } catch (Exception unused) {
                        return bitmap;
                    }
                }
            });
        }
        post(new Runnable() { // from class: com.byazt.wnd.ImageFlipSlide.2
            @Override // java.lang.Runnable
            public void run() {
                kVarKey.to(new b<Bitmap>() { // from class: com.byazt.wnd.ImageFlipSlide.2.1
                    @Override // com.byazt.nke.b
                    public void onFailed(int i2, String str3, Throwable th) {
                    }

                    @Override // com.byazt.nke.b
                    public void onSuccess(u<Bitmap> uVar) {
                        try {
                            ImageFlipSlide imageFlipSlide = ImageFlipSlide.this;
                            imageFlipSlide.jx = imageFlipSlide.hp(uVar.getResult(), ImageFlipSlide.this.getWidth(), ImageFlipSlide.this.getHeight());
                        } catch (Exception unused) {
                        }
                        ImageFlipSlide.this.invalidate();
                    }
                });
            }
        });
        Paint paint = new Paint();
        this.hp = paint;
        paint.setAntiAlias(true);
        this.hp.setDither(true);
        if (this.f27013s) {
            this.hp.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        List<String> list2 = this.f27011j;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        ColorMatrix colorMatrix = new ColorMatrix();
        for (int i2 = 0; i2 < this.f27011j.size(); i2++) {
            hp(colorMatrix, this.f27011j.get(i2));
        }
        this.hp.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
    }

    private void hp(ColorMatrix colorMatrix, String str) {
        try {
            ColorMatrix colorMatrix2 = new ColorMatrix();
            if (str.startsWith("hue-rotate")) {
                colorMatrix2.setRotate(0, Integer.parseInt(str.split("\\(")[1].split("deg")[0]));
            } else if (!str.startsWith("grayscale") && !str.startsWith("contrast")) {
                if (str.startsWith("invert")) {
                    float f2 = (Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f) * 255.0f;
                    colorMatrix2.set(new float[]{-1.0f, 0.0f, 0.0f, 0.0f, f2, 0.0f, -1.0f, 0.0f, 0.0f, f2, 0.0f, 0.0f, -1.0f, 0.0f, f2, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
                } else if (str.startsWith("sepia")) {
                    float f3 = Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f;
                    colorMatrix2.setScale(f3, f3, 1.0f, 1.0f);
                } else if (str.startsWith("brightness")) {
                    float f4 = Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f;
                    colorMatrix2.setScale(f4, f4, f4, 1.0f);
                }
            } else {
                colorMatrix2.setSaturation(Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f);
            }
            colorMatrix.postConcat(colorMatrix2);
        } catch (Exception unused) {
        }
    }

    public void hp(float f2) {
        this.f27012l = f2;
        invalidate();
    }

    public void hp(Path path) {
        this.f27014w = path;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap hp(Bitmap bitmap, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = i2;
        float f3 = (width * 1.0f) / f2;
        float f4 = i3;
        float f5 = (height * 1.0f) / f4;
        Matrix matrix = new Matrix();
        int i7 = 0;
        if (f5 > f3) {
            int i8 = (int) (f4 * f3);
            float f6 = 1.0f / f3;
            matrix.setScale(f6, f6);
            i5 = i8;
            i4 = width;
            i6 = (height / 2) - (i8 / 2);
        } else {
            int i9 = (int) (f2 * f5);
            float f7 = 1.0f / f5;
            matrix.setScale(f7, f7);
            i4 = i9;
            i5 = height;
            i6 = 0;
            i7 = (width / 2) - (i9 / 2);
        }
        return Bitmap.createBitmap(bitmap, i7, i6, i4, i5, matrix, false);
    }
}
