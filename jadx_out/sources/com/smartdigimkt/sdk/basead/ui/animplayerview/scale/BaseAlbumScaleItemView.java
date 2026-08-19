package com.smartdigimkt.sdk.basead.ui.animplayerview.scale;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.y1.l;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes5.dex */
public abstract class BaseAlbumScaleItemView extends FrameLayout implements l {

    /* renamed from: a, reason: collision with root package name */
    public AnimatorSet f43783a;

    /* renamed from: b, reason: collision with root package name */
    public float f43784b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f43785c;

    /* renamed from: d, reason: collision with root package name */
    public long f43786d;

    public BaseAlbumScaleItemView(Context context) {
        this(context, null);
    }

    public abstract int a(Context context);

    public float dip2px(float f2) {
        return (f2 * getContext().getResources().getDisplayMetrics().density) + 0.5f;
    }

    public List<Animator> getAnimatorList(View view, float f2, float f3, int i2) {
        ArrayList arrayList = new ArrayList();
        if (f2 > 0.0f || f3 > 0.0f) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, f2);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationX", 0.0f, f3);
            arrayList.add(objectAnimatorOfFloat);
            arrayList.add(objectAnimatorOfFloat2);
        }
        if (i2 > 0) {
            float f4 = i2;
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, f4);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, f4);
            arrayList.add(objectAnimatorOfFloat3);
            arrayList.add(objectAnimatorOfFloat4);
        }
        return arrayList;
    }

    public int getScreenHeight() {
        return getContext().getResources().getDisplayMetrics().heightPixels;
    }

    public int getScreenWidth() {
        return getContext().getResources().getDisplayMetrics().widthPixels;
    }

    public void initView(View view) {
    }

    @Override // com.smartdigimkt.y1.l
    public void pause() {
        AnimatorSet animatorSet = this.f43783a;
        if (animatorSet != null) {
            animatorSet.pause();
        }
    }

    public void release() {
        stop();
    }

    public void resume() {
        AnimatorSet animatorSet = this.f43783a;
        if (animatorSet != null) {
            animatorSet.resume();
        }
    }

    public void setBitmapResources(List<Bitmap> list) {
        ViewGroup viewGroup = (ViewGroup) getChildAt(0);
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            Objects.toString(childAt);
            if (childAt instanceof WrapRoundImageView) {
                ((WrapRoundImageView) childAt).setImageBitmap(list.get(i2 % 4));
            }
        }
    }

    public void setMainViewScale(float f2) {
        this.f43784b = f2;
    }

    public void setOrientation(boolean z2) {
        this.f43785c = z2;
    }

    public void setStartDelay(long j2) {
        this.f43786d = j2;
    }

    public void start() {
    }

    @Override // com.smartdigimkt.y1.l
    public void stop() {
        AnimatorSet animatorSet = this.f43783a;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f43783a = null;
        }
    }

    public BaseAlbumScaleItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseAlbumScaleItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        View viewInflate = LayoutInflater.from(context).inflate(a(context), (ViewGroup) this, false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(viewInflate, layoutParams);
        initView(viewInflate);
    }
}
