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
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.fl.saas.R;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class NativeSlidingView extends FrameLayout {
    private static final int AUTO_SLIDE_CONFIG = 1;
    private static final int AUTO_SLIDE_VALUE = -1;
    private static final int INTERCEPT_SLIDE_VALUE = 10;
    private float downX;
    private float downY;
    private boolean isCallback;
    private boolean isVisibility;
    private Animator mAnimator;
    private GestureDetector mGestureDetector;
    private ImageView mImageView;
    private SlidingListener mSlidingListener;
    private int slidingThreshold;

    public interface SlidingListener {
        void onDown(int i2, int i3);

        void onSliding();

        void onUp(int i2, int i3);
    }

    public NativeSlidingView(@NonNull Context context) {
        super(context);
        this.isCallback = false;
        this.slidingThreshold = 20;
        this.isVisibility = false;
    }

    private void cancelAnimator() {
        Animator animator = this.mAnimator;
        if (animator != null) {
            animator.cancel();
        }
    }

    private void checkSlideDistance(MotionEvent motionEvent) {
        if (this.isCallback || this.mSlidingListener == null) {
            return;
        }
        float fAbs = Math.abs(motionEvent.getX() - this.downX);
        float fAbs2 = Math.abs(motionEvent.getY() - this.downY);
        int i2 = this.slidingThreshold;
        if (i2 != -1) {
            float f2 = i2;
            if (fAbs <= f2 && fAbs2 <= f2) {
                return;
            }
        }
        this.isCallback = true;
        this.mSlidingListener.onUp((int) motionEvent.getX(), (int) motionEvent.getY());
        this.mSlidingListener.onSliding();
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
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.fl.saas.adx.base.widget.NativeSlidingView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (NativeSlidingView.this.mImageView != null) {
                    NativeSlidingView.this.mImageView.setRotation(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (NativeSlidingView.this.isVisibility) {
                    animator.start();
                }
            }
        });
        return animatorSet;
    }

    private void disallowParentIntercept(boolean z2) {
        if (this.slidingThreshold < 10) {
            for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
                parent.requestDisallowInterceptTouchEvent(z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playAnimator() {
        if (this.mAnimator == null) {
            this.mAnimator = createAnimatorSet(this.mImageView, 400L, DeviceUtil.dip2px(10.0f));
        }
        if (this.mAnimator.isRunning()) {
            return;
        }
        this.mAnimator.start();
    }

    public void createView(boolean z2) {
        View viewInflate = ViewHelper.inflate(getContext(), R.layout.fl_adx_view_video_sliding_spread);
        this.mImageView = (ImageView) viewInflate.findViewById(R.id.iv_finger);
        FLImageLoader.getInstance(getContext()).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(this.mImageView, CommConstant.ImageUrl.FINGER_GUIDE);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_tips);
        if (!z2) {
            linearLayout.setVisibility(8);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        addView(viewInflate, layoutParams);
        this.mGestureDetector = new GestureDetector(getContext(), new GestureDetector.OnGestureListener() { // from class: com.fl.saas.adx.base.widget.NativeSlidingView.1
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(@NonNull MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(@NonNull MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f2, float f3) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(@NonNull MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(@NonNull MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f2, float f3) {
                try {
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
                if (NativeSlidingView.this.isCallback) {
                    return true;
                }
                float fAbs = Math.abs(motionEvent2.getX() - motionEvent.getX());
                float fAbs2 = Math.abs(motionEvent2.getY() - motionEvent.getY());
                if (fAbs > NativeSlidingView.this.slidingThreshold || fAbs2 > NativeSlidingView.this.slidingThreshold) {
                    if (NativeSlidingView.this.mSlidingListener != null) {
                        NativeSlidingView.this.isCallback = true;
                        NativeSlidingView.this.mSlidingListener.onUp((int) motionEvent2.getX(), (int) motionEvent2.getY());
                        NativeSlidingView.this.mSlidingListener.onSliding();
                    }
                }
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(@NonNull MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(@NonNull MotionEvent motionEvent) {
                try {
                    if (NativeSlidingView.this.mSlidingListener != null && !NativeSlidingView.this.isCallback) {
                        NativeSlidingView.this.isCallback = true;
                        NativeSlidingView.this.mSlidingListener.onUp((int) motionEvent.getX(), (int) motionEvent.getY());
                        NativeSlidingView.this.mSlidingListener.onSliding();
                    }
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
                return true;
            }
        });
        setFocusable(true);
        setClickable(true);
        setLongClickable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        if (this.mGestureDetector == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            disallowParentIntercept(true);
            this.isCallback = false;
            this.downX = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.downY = y2;
            SlidingListener slidingListener = this.mSlidingListener;
            if (slidingListener != null) {
                slidingListener.onDown((int) this.downX, (int) y2);
            }
            if (this.slidingThreshold == -1) {
                checkSlideDistance(motionEvent);
            }
            this.mGestureDetector.onTouchEvent(motionEvent);
        } else {
            if (actionMasked == 2) {
                if (this.slidingThreshold != -1) {
                    checkSlideDistance(motionEvent);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                disallowParentIntercept(false);
                SlidingListener slidingListener2 = this.mSlidingListener;
                if (slidingListener2 != null && !this.isCallback) {
                    slidingListener2.onUp((int) motionEvent.getX(), (int) motionEvent.getY());
                }
            }
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimator();
        this.mAnimator = null;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.isVisibility = i2 == 0;
        if (i2 == 0) {
            this.mImageView.post(new Runnable() { // from class: com.fl.saas.adx.base.widget.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30291b.playAnimator();
                }
            });
        } else {
            cancelAnimator();
        }
    }

    public void setSlidingListener(int i2, SlidingListener slidingListener) {
        this.mSlidingListener = slidingListener;
        if (i2 == 1) {
            this.slidingThreshold = -1;
        } else {
            this.slidingThreshold = i2;
        }
    }

    public NativeSlidingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeSlidingView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.isCallback = false;
        this.slidingThreshold = 20;
        this.isVisibility = false;
    }
}
