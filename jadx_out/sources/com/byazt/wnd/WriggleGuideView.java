package com.byazt.wnd;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2159})
/* loaded from: classes3.dex */
public class WriggleGuideView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f27081a;

    /* renamed from: e, reason: collision with root package name */
    public hp f27082e;
    public boolean eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public Bitmap f27083j;
    public Bitmap jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27084l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f27085q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f27086s;

    /* renamed from: w, reason: collision with root package name */
    public Paint f27087w;

    public interface hp {
    }

    private Bitmap jx(int i2, int i3) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawCircle(i2 / 2, 10.0f, this.f27081a, paint);
        return bitmapCreateBitmap;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f27082e != null) {
            this.f27082e = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.eb) {
            this.hp = getWidth();
            int height = getHeight();
            this.f27084l = height;
            hp(this.hp, height);
            l(this.hp, this.f27084l);
            this.eb = false;
        }
        Bitmap bitmap = this.jx;
        if (bitmap == null || this.f27083j == null) {
            return;
        }
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f27087w);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        canvas.drawBitmap(this.f27083j, 0.0f, 0.0f, this.f27087w);
        this.f27087w.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(jx(this.hp, this.f27084l), 0.0f, 0.0f, this.f27087w);
        this.f27087w.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
        if (this.f27086s) {
            this.f27081a += 5;
            invalidate();
            if (this.f27081a >= this.hp) {
                this.f27086s = false;
            }
        }
    }

    private void hp(final int i2, final int i3) {
        v.hp(getContext(), "tt_wriggle_union", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.wnd.WriggleGuideView.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                if (bitmap != null) {
                    canvas.drawBitmap(bitmap, (Rect) null, new RectF(0.0f, 0.0f, i2, i3), WriggleGuideView.this.f27087w);
                }
                WriggleGuideView.this.jx = bitmapCreateBitmap;
                WriggleGuideView.this.hp();
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }

    private void l(final int i2, final int i3) {
        v.hp(getContext(), "tt_wriggle_union_white", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.wnd.WriggleGuideView.2
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint(1);
                if (bitmap != null) {
                    canvas.drawBitmap(bitmap, (Rect) null, new RectF(0.0f, 0.0f, i2, i3), paint);
                }
                WriggleGuideView.this.f27083j = bitmapCreateBitmap;
                WriggleGuideView.this.hp();
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        if (this.jx == null || this.f27083j == null || this.f27085q) {
            return;
        }
        this.f27085q = true;
        post(new Runnable() { // from class: com.byazt.wnd.WriggleGuideView.3
            @Override // java.lang.Runnable
            public void run() {
                WriggleGuideView.this.invalidate();
            }
        });
    }
}
