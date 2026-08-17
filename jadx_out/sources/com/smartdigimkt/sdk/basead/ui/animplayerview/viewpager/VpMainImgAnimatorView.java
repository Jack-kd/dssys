package com.smartdigimkt.sdk.basead.ui.animplayerview.viewpager;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.smartdigimkt.b2.a;
import com.smartdigimkt.b2.c;
import com.smartdigimkt.b2.d;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.y1.m;
import java.util.List;

/* loaded from: classes5.dex */
public class VpMainImgAnimatorView extends RelativeLayout implements m {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f43789l = 0;

    /* renamed from: a, reason: collision with root package name */
    public WrapRoundImageView f43790a;

    /* renamed from: b, reason: collision with root package name */
    public WrapRoundImageView f43791b;

    /* renamed from: c, reason: collision with root package name */
    public CircleIndicatorView f43792c;

    /* renamed from: d, reason: collision with root package name */
    public CircleIndicatorView f43793d;

    /* renamed from: e, reason: collision with root package name */
    public int f43794e;

    /* renamed from: f, reason: collision with root package name */
    public float f43795f;

    /* renamed from: g, reason: collision with root package name */
    public float f43796g;

    /* renamed from: h, reason: collision with root package name */
    public final a f43797h;

    /* renamed from: i, reason: collision with root package name */
    public ObjectAnimator f43798i;

    /* renamed from: j, reason: collision with root package name */
    public ObjectAnimator f43799j;

    /* renamed from: k, reason: collision with root package name */
    public AnimatorSet f43800k;

    public VpMainImgAnimatorView(Context context) {
        this(context, null);
    }

    public final void a() {
        WrapRoundImageView wrapRoundImageView = this.f43790a;
        float translationX = wrapRoundImageView.getTranslationX();
        float f2 = this.f43795f;
        if (translationX != f2) {
            f2 = this.f43796g;
        }
        float translationX2 = wrapRoundImageView.getTranslationX();
        float f3 = this.f43795f;
        if (translationX2 == f3) {
            f3 = -this.f43796g;
        }
        float[] fArr = {f2, f3};
        WrapRoundImageView wrapRoundImageView2 = this.f43791b;
        float translationX3 = wrapRoundImageView2.getTranslationX();
        float f4 = this.f43795f;
        if (translationX3 != f4) {
            f4 = this.f43796g;
        }
        float translationX4 = wrapRoundImageView2.getTranslationX();
        float f5 = this.f43795f;
        if (translationX4 == f5) {
            f5 = -this.f43796g;
        }
        float[] fArr2 = {f4, f5};
        ObjectAnimator objectAnimator = this.f43798i;
        WrapRoundImageView wrapRoundImageView3 = this.f43790a;
        float f6 = fArr[0];
        float f7 = fArr[1];
        if (objectAnimator == null) {
            objectAnimator = new ObjectAnimator();
            objectAnimator.setPropertyName("translationX");
            objectAnimator.addListener(new d(this, wrapRoundImageView3));
        }
        objectAnimator.setTarget(wrapRoundImageView3);
        objectAnimator.setFloatValues(f6, f7);
        this.f43798i = objectAnimator;
        ObjectAnimator objectAnimator2 = this.f43799j;
        WrapRoundImageView wrapRoundImageView4 = this.f43791b;
        float f8 = fArr2[0];
        float f9 = fArr2[1];
        if (objectAnimator2 == null) {
            objectAnimator2 = new ObjectAnimator();
            objectAnimator2.setPropertyName("translationX");
            objectAnimator2.addListener(new d(this, wrapRoundImageView4));
        }
        objectAnimator2.setTarget(wrapRoundImageView4);
        objectAnimator2.setFloatValues(f8, f9);
        this.f43799j = objectAnimator2;
        if (this.f43800k == null) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f43800k = animatorSet;
            animatorSet.playTogether(this.f43798i, this.f43799j);
            this.f43800k.setDuration(500L);
            this.f43800k.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f43800k.addListener(new c(this));
        }
        this.f43800k.start();
    }

    @Override // com.smartdigimkt.y1.m
    public void addMainView(Bitmap bitmap, WrapRoundImageView... wrapRoundImageViewArr) {
        if (wrapRoundImageViewArr == null || bitmap == null || wrapRoundImageViewArr.length < 2) {
            return;
        }
        removeAllViews();
        this.f43790a = wrapRoundImageViewArr[0];
        this.f43791b = wrapRoundImageViewArr[1];
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        layoutParams2.addRule(13);
        this.f43790a.setLayoutParams(layoutParams);
        this.f43791b.setLayoutParams(layoutParams2);
        addView(this.f43790a);
        addView(this.f43791b);
        int i2 = getContext().getResources().getDisplayMetrics().widthPixels;
        int i3 = getContext().getResources().getDisplayMetrics().heightPixels;
        this.f43790a.setBitmapAndResize(bitmap, i2, i3);
        this.f43791b.setBitmapAndResize(bitmap, i2, i3);
        ViewGroup.LayoutParams layoutParams3 = this.f43790a.getLayoutParams();
        this.f43794e = layoutParams3.width;
        int i4 = layoutParams3.height;
        ViewGroup.LayoutParams layoutParams4 = getLayoutParams();
        layoutParams4.width = this.f43794e;
        layoutParams4.height = i4;
        setLayoutParams(layoutParams4);
        float translationX = this.f43790a.getTranslationX();
        this.f43795f = translationX;
        float f2 = translationX + this.f43794e;
        this.f43796g = f2;
        this.f43791b.setTranslationX(f2);
        this.f43792c = new CircleIndicatorView(getContext());
        this.f43793d = new CircleIndicatorView(getContext());
        int iA = k.a(getContext(), 8.0f);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(iA, iA);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(iA, iA);
        layoutParams6.leftMargin = k.a(getContext(), 4.0f);
        linearLayout.addView(this.f43792c, layoutParams5);
        linearLayout.addView(this.f43793d, layoutParams6);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(12);
        layoutParams7.addRule(14);
        layoutParams7.bottomMargin = k.a(getContext(), 3.0f);
        addView(linearLayout, layoutParams7);
        b();
    }

    public final void b() {
        WrapRoundImageView wrapRoundImageView;
        if (this.f43792c == null || this.f43793d == null || (wrapRoundImageView = this.f43790a) == null) {
            return;
        }
        if (wrapRoundImageView.getTranslationX() == this.f43795f) {
            this.f43792c.setSelectStatus(true);
            this.f43793d.setSelectStatus(false);
        } else {
            this.f43792c.setSelectStatus(false);
            this.f43793d.setSelectStatus(true);
        }
    }

    @Override // com.smartdigimkt.y1.l
    public void pause() {
        AnimatorSet animatorSet = this.f43800k;
        if (animatorSet != null) {
            animatorSet.pause();
        }
    }

    @Override // com.smartdigimkt.y1.m
    public void release() {
        stop();
    }

    public void resume() {
        AnimatorSet animatorSet = this.f43800k;
        if (animatorSet != null) {
            animatorSet.resume();
            return;
        }
        a aVar = this.f43797h;
        if (aVar != null) {
            aVar.removeMessages(100);
            this.f43797h.sendEmptyMessageDelayed(100, 1500L);
        }
    }

    @Override // com.smartdigimkt.y1.l
    public void setBitmapResources(List<Bitmap> list) {
    }

    @Override // com.smartdigimkt.y1.l
    public void start() {
        if (this.f43800k != null) {
            resume();
            return;
        }
        a aVar = this.f43797h;
        if (aVar != null) {
            aVar.sendEmptyMessageDelayed(100, 1500L);
        }
    }

    @Override // com.smartdigimkt.y1.l
    public void stop() {
        a aVar = this.f43797h;
        if (aVar != null) {
            aVar.removeMessages(100);
        }
        ObjectAnimator objectAnimator = this.f43798i;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.f43798i = null;
        }
        ObjectAnimator objectAnimator2 = this.f43799j;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllListeners();
            this.f43799j = null;
        }
        AnimatorSet animatorSet = this.f43800k;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.f43800k.cancel();
            this.f43800k = null;
        }
    }

    public VpMainImgAnimatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VpMainImgAnimatorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43797h = new a(this, Looper.getMainLooper());
    }
}
