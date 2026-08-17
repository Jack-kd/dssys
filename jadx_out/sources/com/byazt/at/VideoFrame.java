package com.byazt.at;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.SystemClock;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.TextureView;
import android.view.View;
import com.byazt.na.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 2027})
/* loaded from: classes2.dex */
public class VideoFrame extends View {

    /* renamed from: a, reason: collision with root package name */
    public long f18173a;
    public Bitmap eb;
    public final TextureView hp;

    /* renamed from: j, reason: collision with root package name */
    public RenderScript f18174j;
    public final q.hp.C0316hp jx;

    /* renamed from: l, reason: collision with root package name */
    public final Matrix f18175l;

    /* renamed from: s, reason: collision with root package name */
    public int f18176s;

    /* renamed from: w, reason: collision with root package name */
    public ScriptIntrinsicBlur f18177w;

    public VideoFrame(Context context, TextureView textureView, q.hp.C0316hp c0316hp) {
        super(context);
        this.f18173a = -1L;
        this.eb = null;
        this.f18176s = 0;
        this.hp = textureView;
        this.f18175l = new Matrix();
        this.jx = c0316hp;
    }

    public Bitmap hp(Bitmap bitmap, float f2) {
        Bitmap bitmapCreateBitmap;
        try {
            RenderScript renderScript = this.f18174j;
            if (renderScript != null && this.f18177w != null) {
                Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScript, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
                Allocation allocationCreateTyped = Allocation.createTyped(this.f18174j, allocationCreateFromBitmap.getType());
                this.f18177w.setRadius(f2);
                this.f18177w.setInput(allocationCreateFromBitmap);
                this.f18177w.forEach(allocationCreateTyped);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmap);
                try {
                    allocationCreateTyped.copyTo(bitmapCreateBitmap);
                    allocationCreateTyped.destroy();
                    allocationCreateFromBitmap.destroy();
                    return bitmapCreateBitmap;
                } catch (Throwable unused) {
                    if (bitmapCreateBitmap != null) {
                        bitmapCreateBitmap.recycle();
                    }
                    return null;
                }
            }
            return null;
        } catch (Throwable unused2) {
            bitmapCreateBitmap = null;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        RenderScript renderScript = this.f18174j;
        if (renderScript != null) {
            renderScript.destroy();
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f18177w;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
        }
        RenderScript renderScriptCreate = RenderScript.create(getContext());
        this.f18174j = renderScriptCreate;
        this.f18177w = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.eb;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.eb.recycle();
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f18177w;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f18177w = null;
        }
        RenderScript renderScript = this.f18174j;
        if (renderScript != null) {
            renderScript.destroy();
            this.f18174j = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap;
        Bitmap bitmap2;
        super.onDraw(canvas);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.f18173a >= 40) {
            this.f18173a = jElapsedRealtime;
            TextureView textureView = this.hp;
            if (textureView != null && textureView.isAvailable()) {
                float width = this.hp.getWidth() / 160.0f;
                if (width > 0.0f) {
                    this.f18176s = (int) (this.hp.getHeight() / width);
                }
                int i2 = this.f18176s;
                if (i2 > 0 && (bitmap2 = this.hp.getBitmap(160, i2)) != null) {
                    Bitmap bitmap3 = this.eb;
                    if (bitmap3 != null && !bitmap3.isRecycled()) {
                        this.eb.recycle();
                    }
                    this.eb = hp(bitmap2, this.jx.hp);
                    bitmap2.recycle();
                }
            }
        }
        if (this.f18176s <= 0 || (bitmap = this.eb) == null || bitmap.isRecycled()) {
            return;
        }
        canvas.save();
        this.f18175l.reset();
        this.f18175l.setScale(getWidth() / 160.0f, getHeight() / this.f18176s);
        canvas.concat(this.f18175l);
        canvas.drawBitmap(this.eb, 0.0f, 0.0f, (Paint) null);
        canvas.restore();
    }
}
