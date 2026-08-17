package com.smartdigimkt.sdk.basead.ui.animplayerview.scale;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.smartdigimkt.a2.c;
import com.smartdigimkt.a2.d;
import com.smartdigimkt.a2.e;
import com.smartdigimkt.d5.b;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.y1.l;
import java.util.List;

/* loaded from: classes5.dex */
public class AlbumScaleMainView extends FrameLayout implements l, Handler.Callback {
    public static final int MAIN_VIEW_INIT_HEIGHT = 42;
    public static final int MAIN_VIEW_INIT_WIDTH = 90;

    /* renamed from: a, reason: collision with root package name */
    public final RoundImageView f43776a;

    /* renamed from: b, reason: collision with root package name */
    public final WrapRoundImageView f43777b;

    /* renamed from: c, reason: collision with root package name */
    public AlbumScaleMainView f43778c;

    /* renamed from: d, reason: collision with root package name */
    public AnimatorSet f43779d;

    /* renamed from: e, reason: collision with root package name */
    public AnimatorSet f43780e;

    /* renamed from: f, reason: collision with root package name */
    public final Handler f43781f;

    /* renamed from: g, reason: collision with root package name */
    public long f43782g;

    public AlbumScaleMainView(Context context) {
        this(context, null);
    }

    public float getMainViewScale() {
        if (getLayoutParams() == null) {
            return 1.0f;
        }
        return Math.min(getContext().getResources().getDisplayMetrics().widthPixels, getContext().getResources().getDisplayMetrics().heightPixels) / Math.min(r0.width, r0.height);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        AlbumScaleMainView albumScaleMainView;
        if (message.what == 100 && (albumScaleMainView = this.f43778c) != null) {
            if (albumScaleMainView.getVisibility() != 0) {
                this.f43778c.setVisibility(0);
            }
            if (this.f43780e == null) {
                this.f43780e = new AnimatorSet();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f43778c, "scaleX", 1.0f, 1.3f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f43778c, "scaleY", 1.0f, 1.3f);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f43778c, "alpha", 0.4f, 0.0f);
                this.f43780e.setDuration(500L);
                this.f43780e.setInterpolator(new LinearInterpolator());
                this.f43780e.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
                this.f43780e.addListener(new e(this));
            }
            AnimatorSet animatorSet = this.f43780e;
            if (animatorSet != null && !animatorSet.isStarted()) {
                this.f43780e.start();
            }
        }
        return false;
    }

    public void initView(Bitmap bitmap, boolean z2) {
        com.smartdigimkt.b4.e.a().c(new b(getContext(), bitmap, new com.smartdigimkt.a2.b(this)));
        this.f43777b.post(new c(this, bitmap));
        if (z2) {
            AlbumScaleMainView albumScaleMainView = new AlbumScaleMainView(getContext());
            this.f43778c = albumScaleMainView;
            albumScaleMainView.initView(bitmap, false);
            this.f43778c.setVisibility(4);
            addView(this.f43778c, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    @Override // com.smartdigimkt.y1.l
    public void pause() {
        AnimatorSet animatorSet = this.f43779d;
        if (animatorSet != null) {
            animatorSet.pause();
        }
    }

    public void release() {
        stop();
        removeAllViews();
    }

    public void resume() {
        AnimatorSet animatorSet = this.f43779d;
        if (animatorSet != null) {
            animatorSet.resume();
        }
    }

    @Override // com.smartdigimkt.y1.l
    public void setBitmapResources(List<Bitmap> list) {
    }

    public void setStartDelay(long j2) {
        this.f43782g = j2;
    }

    @Override // com.smartdigimkt.y1.l
    public void start() {
        float mainViewScale = getMainViewScale();
        if (mainViewScale == 1.0f) {
            return;
        }
        if (this.f43779d == null) {
            this.f43779d = new AnimatorSet();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "scaleX", 1.0f, mainViewScale);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f, mainViewScale);
            long j2 = this.f43782g;
            if (j2 > 0) {
                this.f43779d.setStartDelay(j2);
            }
            this.f43779d.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.f43779d.setDuration(4000L);
            this.f43779d.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f43779d.addListener(new d(this));
        }
        this.f43779d.start();
    }

    @Override // com.smartdigimkt.y1.l
    public void stop() {
        AnimatorSet animatorSet = this.f43779d;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.f43779d.cancel();
            this.f43779d = null;
        }
        AnimatorSet animatorSet2 = this.f43780e;
        if (animatorSet2 != null) {
            animatorSet2.removeAllListeners();
            this.f43780e.cancel();
            this.f43780e = null;
        }
        Handler handler = this.f43781f;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public AlbumScaleMainView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlbumScaleMainView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        RoundImageView roundImageView = new RoundImageView(context);
        this.f43776a = roundImageView;
        WrapRoundImageView wrapRoundImageView = new WrapRoundImageView(context);
        this.f43777b = wrapRoundImageView;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
        roundImageView.setScaleType(scaleType);
        wrapRoundImageView.setScaleType(scaleType);
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        addView(roundImageView, layoutParams);
        addView(wrapRoundImageView, layoutParams2);
        this.f43781f = new Handler(Looper.getMainLooper(), this);
    }
}
