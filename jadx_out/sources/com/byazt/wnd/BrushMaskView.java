package com.byazt.wnd;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.RequiresApi;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, AVMDLDataLoader.KeyIsIsGetChecksumInfo})
/* loaded from: classes3.dex */
public class BrushMaskView extends View {
    public static final String hp = "BrushMaskView";

    /* renamed from: a, reason: collision with root package name */
    public BitmapDrawable f26948a;
    public Paint eb;

    /* renamed from: j, reason: collision with root package name */
    public Canvas f26949j;
    public Bitmap jx;

    /* renamed from: l, reason: collision with root package name */
    public Paint f26950l;

    /* renamed from: s, reason: collision with root package name */
    public Paint f26951s;

    /* renamed from: w, reason: collision with root package name */
    public Paint f26952w;

    private void hp(int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            this.jx = bitmapCreateBitmap;
            Canvas canvas = this.f26949j;
            if (canvas == null) {
                this.f26949j = new Canvas(this.jx);
            } else {
                canvas.setBitmap(bitmapCreateBitmap);
            }
            this.f26949j.drawRoundRect(new RectF(0.0f, 0.0f, i2, i3), 120.0f, 120.0f, this.f26950l);
            if (this.f26948a != null) {
                this.f26948a.setBounds(new Rect(0, 0, i2, i3));
                this.f26948a.draw(this.f26949j);
            }
        } catch (Exception e2) {
            u.l(hp, e2.getMessage());
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.jx;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f26952w);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(hp(i2), hp(i3));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        hp(i2, i3);
    }

    public void setEraserSize(float f2) {
        this.eb.setStrokeWidth(f2);
        this.f26951s.setStrokeWidth(f2);
    }

    public void setMaskColor(int i2) {
        this.f26950l.setColor(i2);
    }

    @RequiresApi(api = 21)
    public void setWatermark(int i2) {
        if (i2 == -1) {
            this.f26948a = null;
        } else {
            this.f26948a = new BitmapDrawable(BitmapFactory.decodeResource(getResources(), i2));
        }
    }

    private int hp(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(0, size);
        }
        return 0;
    }
}
