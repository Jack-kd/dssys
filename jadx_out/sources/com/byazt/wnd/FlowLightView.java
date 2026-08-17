package com.byazt.wnd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.view.View;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1785})
/* loaded from: classes3.dex */
public class FlowLightView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f26987a;

    /* renamed from: e, reason: collision with root package name */
    public Paint f26988e;
    public int eb;
    public Xfermode gu;
    public Rect hp;

    /* renamed from: j, reason: collision with root package name */
    public int f26989j;
    public PorterDuff.Mode jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public final List<hp> f26990k;

    /* renamed from: l, reason: collision with root package name */
    public Rect f26991l;

    /* renamed from: q, reason: collision with root package name */
    public Bitmap f26992q;

    /* renamed from: s, reason: collision with root package name */
    public int[] f26993s;

    /* renamed from: w, reason: collision with root package name */
    public int f26994w;
    public LinearGradient zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_REF_LEVEL})
    public static class hp {
        public final int hp;

        /* renamed from: l, reason: collision with root package name */
        public int f26995l = 0;

        public hp(int i2) {
            this.hp = i2;
        }

        public void hp() {
            this.f26995l += this.hp;
        }
    }

    public FlowLightView(Context context) {
        super(context);
        this.jl = PorterDuff.Mode.DST_IN;
        this.f26990k = new ArrayList();
        hp();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.f26992q;
        if (bitmap == null) {
            return;
        }
        canvas.drawBitmap(bitmap, this.hp, this.f26991l, this.f26988e);
        canvas.save();
        Iterator<hp> it = this.f26990k.iterator();
        while (it.hasNext()) {
            hp next = it.next();
            this.zy = new LinearGradient(next.f26995l, 0.0f, next.f26995l + this.eb, this.f26987a, this.f26993s, (float[]) null, Shader.TileMode.CLAMP);
            this.f26988e.setColor(-1);
            this.f26988e.setShader(this.zy);
            Canvas canvas2 = canvas;
            canvas2.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.f26988e);
            this.f26988e.setShader(null);
            next.hp();
            if (next.f26995l > getWidth()) {
                it.remove();
            }
            canvas = canvas2;
        }
        Canvas canvas3 = canvas;
        this.f26988e.setXfermode(this.gu);
        canvas3.drawBitmap(this.f26992q, this.hp, this.f26991l, this.f26988e);
        this.f26988e.setXfermode(null);
        canvas3.restore();
        invalidate();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.f26992q == null) {
            return;
        }
        this.hp = new Rect(0, 0, this.f26992q.getWidth(), this.f26992q.getHeight());
        this.f26991l = new Rect(0, 0, getWidth(), getHeight());
    }

    private void hp() {
        this.jx = Color.parseColor("#00ffffff");
        this.f26989j = Color.parseColor("#ffffffff");
        int color = Color.parseColor("#00ffffff");
        this.f26994w = color;
        this.f26987a = 10;
        this.eb = 40;
        this.f26993s = new int[]{this.jx, this.f26989j, color};
        setLayerType(1, null);
        this.f26988e = new Paint(1);
        v.hp(getContext(), "tt_splash_unlock_image_arrow", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.wnd.FlowLightView.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                FlowLightView.this.f26992q = bitmap;
                FlowLightView.this.post(new Runnable() { // from class: com.byazt.wnd.FlowLightView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FlowLightView.this.invalidate();
                    }
                });
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.gu = new PorterDuffXfermode(this.jl);
    }

    public void hp(int i2) {
        this.f26990k.add(new hp(i2));
        postInvalidate();
    }
}
