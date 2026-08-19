package com.kwad.components.ad.interstitial.aggregate;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.kwad.sdk.R;

/* loaded from: classes4.dex */
public class ViewPagerIndicator extends View {
    private int lU;
    private final Context mContext;
    private int ma;
    private int mb;
    private int mc;
    private float md;
    private float me;
    private Paint mf;
    private float mg;
    private float mh;
    private float mi;
    private int mj;
    private Paint mk;
    private float ml;
    private a mm;
    private ValueAnimator mn;

    public interface a {
        void T(int i2);
    }

    public ViewPagerIndicator(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(final int i2) {
        if (this.mj <= 0) {
            setVisibility(8);
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mi, this.mh);
        this.mn = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.mj * 1000);
        this.mn.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.ad.interstitial.aggregate.ViewPagerIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewPagerIndicator.this.ml = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewPagerIndicator.this.invalidate();
            }
        });
        this.mn.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.ad.interstitial.aggregate.ViewPagerIndicator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (ViewPagerIndicator.this.mm != null) {
                    ViewPagerIndicator.this.mm.T(i2);
                }
            }
        });
        this.mn.start();
    }

    private void dL() {
        Paint paint = new Paint(1);
        this.mf = paint;
        Paint.Style style = Paint.Style.FILL_AND_STROKE;
        paint.setStyle(style);
        this.mf.setStrokeWidth(1.0f);
        this.mf.setColor(this.mb);
        Paint paint2 = new Paint(1);
        this.mk = paint2;
        paint2.setStyle(style);
        this.mk.setStrokeWidth(1.0f);
        this.mk.setColor(this.ma);
    }

    @RequiresApi(api = 19)
    public final void dM() {
        ValueAnimator valueAnimator = this.mn;
        if (valueAnimator != null) {
            valueAnimator.pause();
        }
    }

    @RequiresApi(api = 19)
    public final void dN() {
        ValueAnimator valueAnimator = this.mn;
        if (valueAnimator != null) {
            valueAnimator.resume();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
        b(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? (int) this.mg : 0;
        }
        if (mode != 1073741824) {
            if (mode == Integer.MIN_VALUE) {
                size = this.mc > 1 ? (int) (this.mh + ((r6 - 1) * (this.me + this.mi))) : (int) this.mh;
            } else {
                size = 0;
            }
        }
        setMeasuredDimension(size, size2);
    }

    public void setAdShowTime(int i2) {
        this.mj = i2;
    }

    public void setPlayProgressListener(a aVar) {
        this.mm = aVar;
    }

    public void setViewPager(ViewPager viewPager) {
        PagerAdapter adapter = viewPager.getAdapter();
        if (adapter == null) {
            return;
        }
        int count = adapter.getCount();
        this.mc = count;
        if (count <= 1) {
            return;
        }
        viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.kwad.components.ad.interstitial.aggregate.ViewPagerIndicator.3
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrolled(int i2, float f2, int i3) {
                ViewPagerIndicator.this.ml = 0.0f;
                ViewPagerIndicator.this.lU = i2;
                ViewPagerIndicator.this.md = f2;
                ViewPagerIndicator.this.invalidate();
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i2) {
                ViewPagerIndicator.this.lU = i2;
                ViewPagerIndicator.this.md = 1.0f;
                ViewPagerIndicator.this.invalidate();
                if (i2 < ViewPagerIndicator.this.mc - 1) {
                    ViewPagerIndicator.this.V(i2);
                }
            }
        });
        V(this.lU);
    }

    public ViewPagerIndicator(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewPagerIndicator(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mContext = context;
        setWillNotDraw(false);
        a(context, attributeSet, i2);
        dL();
    }

    @SuppressLint({"CustomViewStyleable"})
    private void a(Context context, AttributeSet attributeSet, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_ViewPagerIndicator, i2, 0);
        this.me = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_distance, com.kwad.sdk.c.a.a.a(this.mContext, 5.0f));
        this.mg = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_height, com.kwad.sdk.c.a.a.a(this.mContext, 6.0f));
        this.mh = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_selected_width, com.kwad.sdk.c.a.a.a(this.mContext, 50.0f));
        this.mi = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_unselected_width, com.kwad.sdk.c.a.a.a(this.mContext, 6.0f));
        this.mb = typedArrayObtainStyledAttributes.getColor(R.styleable.ksad_ViewPagerIndicator_ksad_default_color, getResources().getColor(R.color.ksad_88_white));
        this.ma = typedArrayObtainStyledAttributes.getColor(R.styleable.ksad_ViewPagerIndicator_ksad_height_color, getResources().getColor(R.color.ksad_white));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void b(Canvas canvas) {
        if (this.ml > 0.0f) {
            int i2 = this.lU;
            float f2 = this.me;
            float f3 = this.mi;
            RectF rectF = new RectF(i2 * (f2 + f3), 0.0f, (i2 * (f2 + f3)) + this.ml, this.mg);
            float f4 = this.mg;
            canvas.drawRoundRect(rectF, f4 / 2.0f, f4 / 2.0f, this.mk);
        }
    }

    private void a(Canvas canvas) {
        RectF rectF = new RectF();
        for (int i2 = 0; i2 < this.mc; i2++) {
            int i3 = this.lU;
            if (i2 < i3 && i2 != i3 - 1) {
                float f2 = this.me;
                float f3 = this.mi;
                float f4 = i2 * (f2 + f3);
                rectF.left = f4;
                rectF.right = f4 + f3;
                this.mf.setColor(this.mb);
            } else if (i2 == i3 - 1) {
                float f5 = this.me;
                float f6 = this.mi;
                float f7 = i2 * (f5 + f6);
                rectF.left = f7;
                rectF.right = f7 + f6 + ((this.mh - f6) * (1.0f - this.md));
                this.mf.setColor(this.mb);
            } else if (i2 == i3) {
                float f8 = i3 != 0 ? this.md : 1.0f;
                float f9 = this.me;
                float f10 = this.mi;
                float f11 = this.mh;
                float f12 = ((i2 - 1) * (f9 + f10)) + f10 + ((f11 - f10) * (1.0f - f8)) + f9;
                rectF.left = f12;
                rectF.right = f12 + (f8 * (f11 - f10)) + f10;
                this.mf.setColor(this.mb);
            } else {
                float f13 = this.me;
                float f14 = this.mi;
                float f15 = ((i2 - 1) * (f13 + f14)) + f13 + this.mh;
                rectF.left = f15;
                rectF.right = f15 + f14;
                this.mf.setColor(this.mb);
            }
            rectF.top = 0.0f;
            float f16 = this.mg;
            rectF.bottom = 0.0f + f16;
            canvas.drawRoundRect(rectF, f16 / 2.0f, f16 / 2.0f, this.mf);
        }
    }
}
