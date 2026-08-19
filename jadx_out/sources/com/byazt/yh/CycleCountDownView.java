package com.byazt.yh;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.byazt.vi.w;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, 867})
/* loaded from: classes3.dex */
public class CycleCountDownView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f27930a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f27931b;
    public Bitmap cx;

    /* renamed from: d, reason: collision with root package name */
    public boolean f27932d;
    public Bitmap di;
    public final Rect dy;

    /* renamed from: e, reason: collision with root package name */
    public int f27933e;
    public boolean eb;
    public ValueAnimator ec;
    public boolean gu;
    public int hp;
    public final Rect hq;

    /* renamed from: j, reason: collision with root package name */
    public float f27934j;
    public Paint jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public Paint f27935k;
    public String ky;

    /* renamed from: l, reason: collision with root package name */
    public int f27936l;
    public final Rect lv;

    /* renamed from: ms, reason: collision with root package name */
    public String f27937ms;

    /* renamed from: n, reason: collision with root package name */
    public boolean f27938n;
    public boolean ns;
    public final Rect nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f27939o;
    public String pu;

    /* renamed from: q, reason: collision with root package name */
    public float f27940q;

    /* renamed from: r, reason: collision with root package name */
    public float f27941r;

    /* renamed from: s, reason: collision with root package name */
    public float f27942s;
    public ValueAnimator sz;

    /* renamed from: u, reason: collision with root package name */
    public float f27943u;
    public final Rect ud;

    /* renamed from: v, reason: collision with root package name */
    public Paint f27944v;
    public ValueAnimator vv;

    /* renamed from: w, reason: collision with root package name */
    public float f27945w;
    public final RectF wv;
    public String xh;
    public AnimatorSet xs;
    public Paint zy;

    public CycleCountDownView(Context context) {
        super(context);
        this.hp = Color.parseColor("#FFDA7B");
        this.f27936l = Color.parseColor("#4D000000");
        this.jx = Color.parseColor("#ffffff");
        this.f27930a = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME;
        this.eb = false;
        this.f27942s = 5.0f;
        this.f27940q = 0.0f;
        this.f27933e = 0;
        this.gu = false;
        this.f27943u = 0.0f;
        this.f27938n = false;
        this.ns = false;
        this.f27939o = false;
        this.f27932d = false;
        this.wv = new RectF();
        this.hq = new Rect();
        this.ud = new Rect();
        this.nu = new Rect();
        this.dy = new Rect();
        this.lv = new Rect();
        this.f27941r = 1.0f;
        this.f27934j = hp(4.0f);
        this.f27945w = hp(34.0f);
        this.f27930a %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        l();
        jx();
        setBackgroundColor(-16711681);
    }

    private int a() {
        return (int) ((((this.f27934j / 2.0f) + this.f27945w) * 2.0f) + hp(4.0f));
    }

    private Bitmap eb() {
        LayerDrawable layerDrawableHp = w.hp(getContext());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(layerDrawableHp.getIntrinsicWidth(), layerDrawableHp.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        layerDrawableHp.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        layerDrawableHp.draw(canvas);
        return bitmapCreateBitmap;
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.ec;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.ec = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f27943u, this.f27941r);
        this.ec = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.ec.setDuration(1000L);
        this.ec.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.yh.CycleCountDownView.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                CycleCountDownView.this.f27943u = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                CycleCountDownView.this.postInvalidate();
            }
        });
        return this.ec;
    }

    private int getMinLine() {
        return Math.min(getMeasuredHeight(), getMeasuredWidth());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f27931b == null || this.cx == null) {
            return;
        }
        w();
        post(new Runnable() { // from class: com.byazt.yh.CycleCountDownView.3
            @Override // java.lang.Runnable
            public void run() {
                CycleCountDownView.this.invalidate();
            }
        });
    }

    private void jx() {
        this.di = eb();
        v.hp(getContext(), "tt_reward_chest_gift2", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.yh.CycleCountDownView.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                CycleCountDownView.this.cx = bitmap;
                CycleCountDownView.this.j();
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        v.hp(getContext(), "tt_reward_chest_gift_open2", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.yh.CycleCountDownView.2
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                CycleCountDownView.this.f27931b = bitmap;
                CycleCountDownView.this.j();
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }

    private void w() {
        RectF rectF = this.wv;
        float f2 = this.f27945w;
        rectF.left = -f2;
        rectF.right = f2;
        rectF.top = -f2;
        rectF.bottom = f2;
        Rect rect = this.hq;
        rect.left = 0;
        rect.top = 0;
        Bitmap bitmap = this.cx;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.hq;
        Bitmap bitmap2 = this.cx;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
        Rect rect3 = this.ud;
        rect3.left = 0;
        rect3.top = 0;
        Bitmap bitmap3 = this.f27931b;
        rect3.right = bitmap3 != null ? bitmap3.getWidth() : 0;
        Rect rect4 = this.ud;
        Bitmap bitmap4 = this.f27931b;
        rect4.bottom = bitmap4 != null ? bitmap4.getHeight() : 0;
        int minLine = getMinLine();
        Rect rect5 = this.nu;
        int i2 = -minLine;
        int i3 = i2 / 2;
        rect5.left = i3;
        rect5.top = i3;
        int i4 = minLine / 2;
        rect5.right = i4;
        rect5.bottom = i4;
        Rect rect6 = this.dy;
        rect6.left = 0;
        rect6.top = 0;
        rect6.right = this.di.getWidth();
        this.dy.bottom = this.di.getHeight();
        Rect rect7 = this.lv;
        rect7.left = i2 / 3;
        rect7.top = minLine / 8;
        int i5 = minLine / 3;
        rect7.right = i5;
        rect7.bottom = i5;
        this.f27935k.setTextSize(((i5 - r2) / 2) - l(2.0f));
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            AnimatorSet animatorSet = this.xs;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.xs = null;
            }
            ValueAnimator valueAnimator = this.sz;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.sz = null;
            }
            ValueAnimator valueAnimator2 = this.vv;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.vv = null;
            }
            ValueAnimator valueAnimator3 = this.ec;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.ec = null;
            }
            this.f27943u = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        hp(canvas);
        jx(canvas);
        l(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (mode != 1073741824) {
            size = a();
        }
        if (mode2 != 1073741824) {
            size2 = a();
        }
        hp(size, size2);
        setMeasuredDimension(size, size2);
        w();
    }

    public void setBoxFinish(Bitmap bitmap) {
        this.f27931b = bitmap;
        this.f27932d = true;
        Rect rect = this.ud;
        rect.left = 0;
        rect.top = 0;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.ud;
        Bitmap bitmap2 = this.f27931b;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
    }

    public void setBoxImage(Bitmap bitmap) {
        this.cx = bitmap;
        this.f27939o = true;
        Rect rect = this.hq;
        rect.left = 0;
        rect.top = 0;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.hq;
        Bitmap bitmap2 = this.cx;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
    }

    public void setCanSkip(boolean z2) {
        this.gu = z2;
    }

    private void jx(Canvas canvas) {
        float f2;
        canvas.save();
        float f3 = this.f27943u * 360.0f;
        if (this.eb) {
            f2 = this.f27930a - f3;
        } else {
            f2 = this.f27930a;
        }
        float f4 = f2;
        canvas.drawCircle(0.0f, 0.0f, this.f27945w, this.zy);
        canvas.drawArc(this.wv, f4, f3, false, this.jl);
        canvas.restore();
    }

    private void l() {
        Paint paint = new Paint(1);
        this.jl = paint;
        paint.setColor(this.hp);
        this.jl.setStrokeWidth(this.f27934j);
        this.jl.setAntiAlias(true);
        this.jl.setStrokeCap(Paint.Cap.ROUND);
        this.jl.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.zy = paint2;
        paint2.setColor(this.f27936l);
        this.zy.setAntiAlias(true);
        this.zy.setStrokeWidth(this.f27934j);
        this.zy.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.f27935k = paint3;
        paint3.setColor(this.jx);
        this.f27935k.setTextAlign(Paint.Align.CENTER);
        Paint paint4 = new Paint(1);
        this.f27944v = paint4;
        paint4.setFilterBitmap(true);
        this.f27944v.setDither(true);
    }

    private void hp(int i2, int i3) {
        this.f27945w = (Math.min(i2, i3) / 2.0f) - this.f27934j;
    }

    private void hp(Canvas canvas) {
        Bitmap bitmap;
        canvas.save();
        boolean z2 = false;
        if (this.f27933e <= 0 && (bitmap = this.f27931b) != null) {
            boolean z3 = this.f27939o;
            if (!(z3 && this.f27932d) && (z3 || this.f27932d)) {
                bitmap = this.cx;
            } else {
                z2 = true;
            }
        } else {
            bitmap = this.cx;
        }
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, z2 ? this.ud : this.hq, this.nu, this.f27944v);
        }
        canvas.restore();
    }

    private float hp(float f2) {
        return TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    public void hp() {
        AnimatorSet animatorSet = this.xs;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.xs.cancel();
            this.xs = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.xs = animatorSet2;
        animatorSet2.playTogether(getArcAnim());
        this.xs.setInterpolator(new LinearInterpolator());
        this.xs.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.yh.CycleCountDownView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                CycleCountDownView.this.f27938n = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CycleCountDownView.this.f27938n) {
                    CycleCountDownView.this.f27938n = false;
                } else {
                    CycleCountDownView.this.ns = true;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.xs.start();
    }

    private void l(Canvas canvas) {
        String str;
        canvas.save();
        canvas.drawBitmap(this.di, this.dy, this.lv, this.f27944v);
        Paint.FontMetrics fontMetrics = this.f27935k.getFontMetrics();
        float f2 = (fontMetrics.bottom - fontMetrics.top) / 2.0f;
        if (TextUtils.isEmpty(this.f27937ms)) {
            str = this.pu + this.f27933e + this.ky;
        } else if (this.f27933e <= 0) {
            str = this.f27937ms;
        } else {
            str = this.pu + this.f27933e + this.ky;
        }
        if (this.gu) {
            str = str + "｜" + this.xh;
        }
        canvas.drawText(str, 0.0f, ((getMinLine() / 3.0f) - (getMinLine() / 9.0f)) + (f2 / 2.0f), this.f27935k);
        canvas.restore();
    }

    public void hp(int i2, int i3, int i4) {
        float f2 = i2;
        this.f27942s = f2;
        float f3 = i3;
        this.f27940q = f3;
        this.f27933e = i4;
        this.f27941r = f3 / f2;
        hp();
    }

    public void hp(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.pu = str;
        this.ky = TextUtils.isEmpty(str2) ? "" : str2;
        if (TextUtils.isEmpty(str3)) {
            str3 = "跳过";
        }
        this.xh = str3;
        if (TextUtils.isEmpty(str2)) {
            str4 = "";
        }
        this.f27937ms = str4;
    }

    private float l(float f2) {
        return TypedValue.applyDimension(2, f2, getResources().getDisplayMetrics());
    }
}
