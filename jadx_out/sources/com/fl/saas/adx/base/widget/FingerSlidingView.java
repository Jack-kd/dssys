package com.fl.saas.adx.base.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.fl.saas.adx.util.DeviceUtil;

/* loaded from: classes3.dex */
public class FingerSlidingView extends FrameLayout implements View.OnTouchListener {
    private int bgHeight;
    private View bgView;
    private boolean isCallback;
    private boolean isVisibility;
    private Animator mAnimator;
    private GestureDetector mGestureDetector;
    private ImageView mImageView;
    private SlidingListener mSlidingListener;
    private int scale_type;
    private int slidingThreshold;

    public interface SlidingListener {
        void onDown(int i2, int i3, View view);

        void onSliding();

        void onUp(int i2, int i3, View view);
    }

    public FingerSlidingView(@NonNull Context context) {
        super(context);
        this.slidingThreshold = 100;
        this.isCallback = false;
        this.isVisibility = false;
    }

    private void cancelAnimator() {
        Animator animator = this.mAnimator;
        if (animator != null) {
            animator.cancel();
        }
        View view = this.bgView;
        if (view != null) {
            view.clearAnimation();
        }
    }

    private Animator createAnimatorSet(View view, long j2, float f2) {
        if (view == null) {
            return null;
        }
        view.setPivotX(view.getMeasuredHeight() / 2.0f);
        view.setPivotY(view.getMeasuredWidth() / 2.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, f2);
        objectAnimatorOfFloat.setDuration(j2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationX", f2, 0.0f);
        objectAnimatorOfFloat2.setDuration(j2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "translationY", 0.0f, f2);
        objectAnimatorOfFloat3.setDuration(j2);
        objectAnimatorOfFloat3.setStartDelay(200L);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view, "translationY", f2, 0.0f);
        objectAnimatorOfFloat4.setDuration(j2);
        float f3 = -f2;
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view, "translationX", 0.0f, f3);
        objectAnimatorOfFloat5.setDuration(j2);
        objectAnimatorOfFloat5.setStartDelay(200L);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(view, "translationX", f3, 0.0f);
        objectAnimatorOfFloat6.setDuration(j2);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(view, "translationY", 0.0f, f3);
        objectAnimatorOfFloat7.setDuration(j2);
        objectAnimatorOfFloat7.setStartDelay(200L);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(view, "translationY", f3, 0.0f);
        objectAnimatorOfFloat8.setDuration(j2);
        animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat5, objectAnimatorOfFloat6, objectAnimatorOfFloat7, objectAnimatorOfFloat8);
        animatorSet.setStartDelay(400L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.fl.saas.adx.base.widget.FingerSlidingView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (FingerSlidingView.this.mImageView != null) {
                    FingerSlidingView.this.mImageView.setRotation(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (FingerSlidingView.this.isVisibility) {
                    animator.start();
                }
            }
        });
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playAnimator() {
        if (this.mAnimator == null) {
            this.mAnimator = createAnimatorSet(this.mImageView, 400L, DeviceUtil.dip2px(20.0f));
        }
        if (!this.mAnimator.isRunning()) {
            this.mAnimator.start();
        }
        if (this.bgView != null) {
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.0f, 1.0f, 1.1f, 1, 0.5f, 1, 1.0f);
            scaleAnimation.setDuration(700L);
            scaleAnimation.setRepeatCount(-1);
            scaleAnimation.setRepeatMode(2);
            this.bgView.startAnimation(scaleAnimation);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void createView() {
        /*
            r7 = this;
            android.content.Context r0 = r7.getContext()
            int r1 = com.fl.saas.R.layout.fl_adx_view_sliding_spread
            android.view.View r0 = com.fl.saas.adx.util.ViewHelper.inflate(r0, r1)
            int r1 = com.fl.saas.R.id.iv_finger
            android.view.View r1 = r0.findViewById(r1)
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            r7.mImageView = r1
            int r1 = com.fl.saas.R.id.iv_all_arrow
            android.view.View r1 = r0.findViewById(r1)
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            android.content.Context r2 = r7.getContext()
            com.fl.saas.adx.util.FLImageLoader r2 = com.fl.saas.adx.util.FLImageLoader.getInstance(r2)
            r3 = 1
            com.fl.saas.adx.util.FLImageLoader r2 = r2.setEnableDiskCache(r3)
            com.fl.saas.adx.util.FLImageLoader r2 = r2.setEnableMemoryCache(r3)
            java.lang.String r4 = "https://creative.medproad.com/medpro/imgs/yd_saas_icon_all_arrow.webp"
            r2.loadImage(r1, r4)
            android.content.Context r1 = r7.getContext()
            com.fl.saas.adx.util.FLImageLoader r1 = com.fl.saas.adx.util.FLImageLoader.getInstance(r1)
            com.fl.saas.adx.util.FLImageLoader r1 = r1.setEnableDiskCache(r3)
            com.fl.saas.adx.util.FLImageLoader r1 = r1.setEnableMemoryCache(r3)
            android.widget.ImageView r2 = r7.mImageView
            java.lang.String r4 = "https://creative.medproad.com/medpro/imgs/yd_saas_spread_guide.webp"
            r1.loadImage(r2, r4)
            int r1 = com.fl.saas.adx.util.DeviceUtil.getMobileHeight()
            if (r1 > 0) goto L56
            r1 = 1147207680(0x44610000, float:900.0)
        L51:
            int r1 = com.fl.saas.adx.util.DeviceUtil.dip2px(r1)
            goto L61
        L56:
            r2 = 1140457472(0x43fa0000, float:500.0)
            int r2 = com.fl.saas.adx.util.DeviceUtil.px2dip(r2)
            if (r1 >= r2) goto L61
            r1 = 1145569280(0x44480000, float:800.0)
            goto L51
        L61:
            double r1 = (double) r1
            r4 = 4596373779694328218(0x3fc999999999999a, double:0.2)
            double r4 = r4 * r1
            int r4 = (int) r4
            int r5 = r7.scale_type
            if (r5 != r3) goto L75
            r4 = 4599075939470750515(0x3fd3333333333333, double:0.3)
        L72:
            double r1 = r1 * r4
            int r4 = (int) r1
            goto L7e
        L75:
            r6 = 2
            if (r5 != r6) goto L7e
            r4 = 4600877379321698714(0x3fd999999999999a, double:0.4)
            goto L72
        L7e:
            r7.bgHeight = r4
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams
            r2 = -1
            r1.<init>(r2, r4)
            r5 = 80
            r1.gravity = r5
            android.view.View r5 = new android.view.View
            android.content.Context r6 = r7.getContext()
            r5.<init>(r6)
            r7.bgView = r5
            int r6 = com.fl.saas.R.drawable.fl_adx_slide_bg
            r5.setBackgroundResource(r6)
            android.view.View r5 = r7.bgView
            r7.addView(r5, r1)
            r1 = 1124859904(0x430c0000, float:140.0)
            int r1 = com.fl.saas.adx.util.DeviceUtil.dip2px(r1)
            int r4 = r4 + r1
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams
            r1.<init>(r2, r4)
            r2 = 81
            r1.gravity = r2
            r7.addView(r0, r1)
            android.view.GestureDetector r0 = new android.view.GestureDetector
            android.content.Context r1 = r7.getContext()
            com.fl.saas.adx.base.widget.FingerSlidingView$1 r2 = new com.fl.saas.adx.base.widget.FingerSlidingView$1
            r2.<init>()
            r0.<init>(r1, r2)
            r7.mGestureDetector = r0
            r7.setOnTouchListener(r7)
            r7.setFocusable(r3)
            r7.setClickable(r3)
            r7.setLongClickable(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.base.widget.FingerSlidingView.createView():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimator();
        this.mAnimator = null;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            SlidingListener slidingListener = this.mSlidingListener;
            if (slidingListener != null) {
                slidingListener.onDown(x2, y2, this);
            }
        }
        if (motionEvent.getAction() == 1) {
            int x3 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            SlidingListener slidingListener2 = this.mSlidingListener;
            if (slidingListener2 != null) {
                slidingListener2.onUp(x3, y3, this);
            }
        }
        return this.mGestureDetector.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.isVisibility = i2 == 0;
        if (i2 == 0) {
            this.mImageView.post(new Runnable() { // from class: com.fl.saas.adx.base.widget.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30289b.playAnimator();
                }
            });
        } else {
            cancelAnimator();
        }
    }

    public void setScale_type(int i2) {
        this.scale_type = i2;
    }

    public void setSlidingListener(int i2, SlidingListener slidingListener) {
        this.mSlidingListener = slidingListener;
        this.slidingThreshold = i2 * 4;
    }

    public FingerSlidingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FingerSlidingView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.slidingThreshold = 100;
        this.isCallback = false;
        this.isVisibility = false;
        createView();
    }
}
