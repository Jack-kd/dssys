package com.smartdigimkt.china.formatbusiness.ui;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e.b;
import com.smartdigimkt.e.c;
import com.smartdigimkt.e.d;
import com.smartdigimkt.e.e;
import com.smartdigimkt.e.f;
import com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropChildView;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public class BubbleVibrationFallLayer extends FrameLayout implements Handler.Callback {

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f39840m = {"myoffer_splash_skip_area", "myoffer_feedback_ll_id", "myoffer_btn_mute_id", "myoffer_splash_ad_cta_layout", "myoffer_panel_cta_layout", "myoffer_splash_enter_immediately_area"};

    /* renamed from: a, reason: collision with root package name */
    public BubbleDropChildView f39841a;

    /* renamed from: b, reason: collision with root package name */
    public ObjectAnimator f39842b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f39843c;

    /* renamed from: d, reason: collision with root package name */
    public int f39844d;

    /* renamed from: e, reason: collision with root package name */
    public Bitmap f39845e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f39846f;

    /* renamed from: g, reason: collision with root package name */
    public Runnable f39847g;

    /* renamed from: h, reason: collision with root package name */
    public Runnable f39848h;

    /* renamed from: i, reason: collision with root package name */
    public WeakReference f39849i;

    /* renamed from: j, reason: collision with root package name */
    public int f39850j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f39851k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f39852l;

    public BubbleVibrationFallLayer(Context context) {
        super(context);
        this.f39843c = new Handler(Looper.getMainLooper(), this);
        a();
    }

    public final void a() {
        setClipChildren(false);
        BubbleDropChildView bubbleDropChildView = new BubbleDropChildView(getContext());
        this.f39841a = bubbleDropChildView;
        bubbleDropChildView.initSetting(new b(this));
        addView(this.f39841a, new FrameLayout.LayoutParams(-1, -1));
        this.f39841a.setVisibility(4);
    }

    public final void b() {
        Bitmap bitmap;
        if (this.f39846f || this.f39841a == null || (bitmap = this.f39845e) == null || bitmap.isRecycled()) {
            this.f39851k = false;
            return;
        }
        if (this.f39841a.getMeasuredWidth() <= 0 || this.f39841a.getMeasuredHeight() <= 0) {
            int i2 = this.f39850j;
            if (i2 >= 48) {
                this.f39851k = false;
                return;
            } else {
                this.f39850j = i2 + 1;
                post(new e(this));
                return;
            }
        }
        this.f39850j = 0;
        int height = this.f39844d;
        if (height <= 0) {
            height = getMeasuredHeight();
        }
        if (height <= 0 && (getParent() instanceof View)) {
            height = ((View) getParent()).getHeight();
        }
        if (height <= 0) {
            height = getResources().getDisplayMetrics().heightPixels;
        }
        if (height <= 0) {
            this.f39851k = false;
            return;
        }
        float f2 = -height;
        this.f39841a.setTranslationY(f2);
        this.f39841a.setVisibility(0);
        this.f39841a.initRedPacketList(this.f39845e);
        this.f39851k = false;
        ObjectAnimator objectAnimator = this.f39842b;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f39841a, "translationY", f2, height);
            this.f39842b = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setRepeatCount(0);
            this.f39842b.setDuration(4000L);
            this.f39842b.setInterpolator(new LinearInterpolator());
            this.f39842b.addListener(new f(this));
        } else {
            objectAnimator.setFloatValues(f2, height);
        }
        ObjectAnimator objectAnimator2 = this.f39842b;
        if (objectAnimator2 == null || objectAnimator2.isStarted()) {
            return;
        }
        this.f39842b.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        WeakReference weakReference;
        View view;
        View viewFindViewById;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            BubbleDropChildView bubbleDropChildView = this.f39841a;
            this.f39852l = (bubbleDropChildView == null || bubbleDropChildView.getVisibility() != 0) ? false : this.f39841a.isTouchOnAnyBubble((motionEvent.getX() - this.f39841a.getLeft()) - this.f39841a.getTranslationX(), (motionEvent.getY() - this.f39841a.getTop()) - this.f39841a.getTranslationY());
        }
        if (!this.f39852l && (weakReference = this.f39849i) != null && (view = (View) weakReference.get()) != null) {
            Context context = view.getContext();
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            String[] strArr = f39840m;
            for (int i2 = 0; i2 < 6; i2++) {
                int iA = k.a(context, strArr[i2], "id");
                if (iA != 0 && (viewFindViewById = view.findViewById(iA)) != null && viewFindViewById.getVisibility() == 0) {
                    int[] iArr = new int[2];
                    viewFindViewById.getLocationOnScreen(iArr);
                    int i3 = iArr[0];
                    int i4 = iArr[1];
                    int width = viewFindViewById.getWidth() + i3;
                    int height = viewFindViewById.getHeight() + i4;
                    if (rawX >= i3 && rawX < width && rawY >= i4 && rawY < height) {
                        return false;
                    }
                }
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f39852l = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 101 || this.f39846f) {
            return false;
        }
        b();
        return false;
    }

    public boolean hasEffectiveBubbleDisplay() {
        BubbleDropChildView bubbleDropChildView;
        return (this.f39846f || (bubbleDropChildView = this.f39841a) == null || bubbleDropChildView.getVisibility() != 0) ? false : true;
    }

    public boolean isBubbleStartStillPending() {
        return !this.f39846f && this.f39851k;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f39844d = getMeasuredHeight();
    }

    public void release() {
        if (this.f39846f) {
            return;
        }
        this.f39846f = true;
        this.f39851k = false;
        this.f39849i = null;
        Handler handler = this.f39843c;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        ObjectAnimator objectAnimator = this.f39842b;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f39842b = null;
        }
        BubbleDropChildView bubbleDropChildView = this.f39841a;
        if (bubbleDropChildView != null) {
            bubbleDropChildView.release();
        }
    }

    public void setClickActions(Runnable runnable, Runnable runnable2) {
        this.f39847g = runnable;
        this.f39848h = runnable2;
        setOnClickListener(runnable != null ? new c(this) : null);
        setClickable(runnable != null);
    }

    public void setSplashChromePassthroughHost(View view) {
        this.f39849i = view != null ? new WeakReference(view) : null;
    }

    public void startWithBitmap(@NonNull Bitmap bitmap) {
        if (this.f39846f || bitmap.isRecycled()) {
            return;
        }
        this.f39845e = bitmap;
        this.f39851k = true;
        post(new d(this));
    }

    public BubbleVibrationFallLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39843c = new Handler(Looper.getMainLooper(), this);
        a();
    }

    public BubbleVibrationFallLayer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f39843c = new Handler(Looper.getMainLooper(), this);
        a();
    }
}
