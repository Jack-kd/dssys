package com.byazt.wnd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1281})
/* loaded from: classes3.dex */
public class TTRoundRectImageView extends ImageView {
    public Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public Matrix f27073j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27074l;

    public TTRoundRectImageView(Context context) {
        this(context, null);
    }

    private Bitmap hp(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth() <= 0 ? getWidth() : drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight() <= 0 ? getHeight() : drawable.getIntrinsicHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onDraw(canvas);
            return;
        }
        Bitmap bitmapHp = hp(drawable);
        if (bitmapHp == null) {
            super.onDraw(canvas);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(bitmapHp, tileMode, tileMode);
        float fMax = (bitmapHp.getWidth() == getWidth() && bitmapHp.getHeight() == getHeight()) ? 1.0f : Math.max((getWidth() * 1.0f) / bitmapHp.getWidth(), (getHeight() * 1.0f) / bitmapHp.getHeight());
        this.f27073j.setScale(fMax, fMax);
        bitmapShader.setLocalMatrix(this.f27073j);
        this.hp.setShader(bitmapShader);
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.f27074l, this.jx, this.hp);
    }

    public void setXRound(int i2) {
        this.f27074l = i2;
        postInvalidate();
    }

    public void setYRound(int i2) {
        this.jx = i2;
        postInvalidate();
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f27074l = 25;
        this.jx = 25;
        Paint paint = new Paint();
        this.hp = paint;
        paint.setAntiAlias(true);
        this.hp.setFilterBitmap(true);
        this.f27073j = new Matrix();
    }
}
