package com.byazt.tz;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.byazt.zs.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.Keep;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 2103})
/* loaded from: classes3.dex */
public class BrokenImage extends View {

    /* renamed from: a, reason: collision with root package name */
    public Bitmap f26093a;

    /* renamed from: e, reason: collision with root package name */
    public Rect f26094e;
    public Point[][] eb;
    public Rect gu;
    public j hp;

    /* renamed from: j, reason: collision with root package name */
    public int f26095j;
    public Rect jl;
    public final Path jx;

    /* renamed from: k, reason: collision with root package name */
    public final Random f26096k;

    /* renamed from: l, reason: collision with root package name */
    public final Paint f26097l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f26098q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f26099s;

    /* renamed from: u, reason: collision with root package name */
    public float f26100u;

    /* renamed from: v, reason: collision with root package name */
    public float f26101v;

    /* renamed from: w, reason: collision with root package name */
    public int f26102w;
    public int zy;

    public BrokenImage(Context context) {
        super(context);
        this.f26097l = new Paint();
        this.jx = new Path();
        this.f26099s = false;
        this.f26098q = true;
        this.zy = 0;
        this.f26096k = new SecureRandom();
    }

    private void l(int i2, int i3) {
        this.jx.reset();
        Path path = this.jx;
        Point point = this.eb[i2][i3];
        path.moveTo(point.x, point.y);
        Path path2 = this.jx;
        int i4 = i3 + 1;
        Point point2 = this.eb[i2][i4];
        path2.lineTo(point2.x, point2.y);
        Path path3 = this.jx;
        int i5 = i2 + 1;
        Point point3 = this.eb[i5][i4];
        path3.lineTo(point3.x, point3.y);
        Path path4 = this.jx;
        Point point4 = this.eb[i5][i3];
        path4.lineTo(point4.x, point4.y);
        this.jx.close();
    }

    public void hp(int i2, int i3) {
        this.f26095j = i2;
        this.f26102w = i3;
        this.jl = new Rect(0, 0, getWidth(), getHeight());
        int width = getWidth() / i2;
        int height = getHeight() / i3;
        this.eb = (Point[][]) Array.newInstance((Class<?>) Point.class, i3 + 1, i2 + 1);
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                int i6 = i5 * width;
                int i7 = i4 * height;
                Rect rect = new Rect(i6, i7, i6 + width, i7 + height);
                if (i4 == 0 || i5 == 0) {
                    this.eb[i4][i5] = new Point(rect.left, rect.top);
                }
                if (i4 == 0 || i5 == i2 - 1) {
                    this.eb[i4][i5 + 1] = new Point(rect.right, rect.top);
                }
                int i8 = i3 - 1;
                if (i4 == i8 || i5 == 0) {
                    this.eb[i4 + 1][i5] = new Point(rect.left, rect.bottom);
                }
                if (i4 == i8 || i5 == i2 - 1) {
                    this.eb[i4 + 1][i5 + 1] = new Point(rect.right, rect.bottom);
                } else {
                    this.eb[i4 + 1][i5 + 1] = new Point((int) (rect.right + ((this.f26096k.nextFloat() - 0.5f) * width)), (int) (rect.bottom + ((this.f26096k.nextFloat() - 0.5f) * height)));
                }
            }
        }
        this.f26099s = true;
        invalidate();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect rect;
        try {
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
        Bitmap bitmap = this.f26093a;
        if (bitmap == null || this.jl == null || bitmap.isRecycled()) {
            return;
        }
        if (this.f26099s) {
            for (int i2 = 0; i2 < this.f26102w; i2++) {
                int i3 = 0;
                while (i3 < this.f26095j) {
                    canvas.save();
                    int i4 = this.zy;
                    int i5 = i4 < 5 ? -i4 : i4 - 5;
                    Point[][] pointArr = this.eb;
                    int i6 = i3 + 1;
                    int iMax = Math.max(pointArr[i2][i6].x, pointArr[i2 + 1][i6].x);
                    Point[][] pointArr2 = this.eb;
                    canvas.translate((((iMax + Math.min(pointArr2[i2][i3].x, pointArr2[r7][i3].x)) / 2) - this.f26101v) * 0.01f * this.zy * 0.05f, r7 * i5);
                    canvas.save();
                    l(i2, i3);
                    canvas.clipPath(this.jx);
                    canvas.drawBitmap(this.f26093a, this.gu, this.jl, this.f26097l);
                    canvas.restore();
                    canvas.restore();
                    i3 = i6;
                }
            }
        }
        if (!this.f26098q || this.f26094e == null || (rect = this.gu) == null) {
            return;
        }
        canvas.drawBitmap(this.f26093a, rect, this.jl, this.f26097l);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.jl = new Rect(0, 0, i2, i3);
        this.f26101v = i2 / 2.0f;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f26101v = motionEvent.getX();
            this.f26100u = motionEvent.getY();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f26093a = bitmap;
        this.f26094e = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.gu = new Rect(0, 0, this.f26093a.getWidth(), this.f26093a.getHeight());
        invalidate();
    }

    @Keep
    public void setBrokenProgress(int i2) {
        this.zy = i2;
        try {
            invalidate();
        } catch (Exception unused) {
        }
    }

    public void hp(int i2) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "brokenProgress", 0, getHeight());
        objectAnimatorOfInt.setInterpolator(new AccelerateInterpolator());
        objectAnimatorOfInt.setDuration(i2 <= 0 ? 600L : i2);
        objectAnimatorOfInt.start();
        this.f26098q = false;
    }

    public void hp(j jVar) {
        this.hp = jVar;
    }
}
