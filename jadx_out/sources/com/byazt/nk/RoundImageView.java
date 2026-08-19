package com.byazt.nk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.widget.ImageView;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 1849})
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class RoundImageView extends ImageView {
    public int hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23648l;

    public RoundImageView(Context context) {
        super(context);
        this.hp = 0;
        this.f23648l = 0;
        this.jx = 0;
    }

    private Bitmap hp(Bitmap bitmap, int i2) {
        int i3 = i2 * 2;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap bitmapCreateBitmap = height > width ? Bitmap.createBitmap(bitmap, 0, (height - width) / 2, width, width) : height < width ? Bitmap.createBitmap(bitmap, (width - height) / 2, 0, height, height) : null;
        if (bitmapCreateBitmap != null) {
            bitmap = bitmapCreateBitmap;
        }
        if (bitmap.getWidth() != i3 || bitmap.getHeight() != i3) {
            bitmap = Bitmap.createScaledBitmap(bitmap, i3, i3, true);
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap2;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap;
        Bitmap bitmapCopy;
        Bitmap bitmapHp;
        Drawable drawable = getDrawable();
        if (drawable == null || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        measure(0, 0);
        if (drawable.getClass() == NinePatchDrawable.class || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null) {
            return;
        }
        try {
            bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        } catch (Throwable unused) {
            bitmapCopy = null;
        }
        if (bitmapCopy == null) {
            super.onDraw(canvas);
            return;
        }
        if (this.hp == 0) {
            this.hp = getWidth();
        }
        if (this.f23648l == 0) {
            this.f23648l = getHeight();
        }
        int i2 = this.hp;
        int i3 = this.f23648l;
        if (i2 >= i3) {
            i2 = i3;
        }
        try {
            bitmapHp = hp(bitmapCopy, i2 / 2);
        } catch (Throwable unused2) {
            bitmapHp = null;
        }
        if (bitmapHp == null) {
            super.onDraw(canvas);
        } else {
            canvas.drawBitmap(bitmapHp, (this.hp / 2) - r2, (this.f23648l / 2) - r2, (Paint) null);
        }
    }
}
