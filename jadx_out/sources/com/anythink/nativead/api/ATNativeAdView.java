package com.anythink.nativead.api;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.core.common.h.n;
import com.anythink.core.common.v.c;
import com.anythink.nativead.api.NativeAd;
import com.anythink.nativead.unitgroup.a;

/* loaded from: classes2.dex */
public class ATNativeAdView extends FrameLayout {
    private static final String TAG = "ATNativeAdView";
    View mAdView;
    NativeAd.ImpressionEventListener mImpressionEventListener;
    boolean mIsInWindow;
    NativeAd mNativeAd;
    int mNativeAdId;

    public ATNativeAdView(Context context) {
        super(context);
    }

    private void callbackImpression() {
        NativeAd.ImpressionEventListener impressionEventListener = this.mImpressionEventListener;
        if (impressionEventListener != null) {
            impressionEventListener.onImpression();
        }
    }

    private void clearAdClickRecord(n nVar) {
        c.a().b().d(nVar);
    }

    public synchronized void attachNativeAd(NativeAd nativeAd) {
        this.mNativeAd = nativeAd;
    }

    public synchronized void clear() {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            try {
                nativeAd.clear(this);
            } catch (Throwable unused) {
            }
            this.mNativeAd = null;
        }
    }

    public void clearImpressionListener(int i2) {
        if (this.mNativeAdId == i2) {
            this.mImpressionEventListener = null;
        }
    }

    public void destory() {
        this.mImpressionEventListener = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a aVar;
        n detail;
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null && (aVar = nativeAd.mBaseNativeAd) != null && (detail = aVar.getDetail()) != null) {
            com.anythink.core.common.u.a.a(getContext(), motionEvent, detail);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean isAttachInWindow() {
        return this.mIsInWindow;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsInWindow = true;
        if (getVisibility() == 0) {
            callbackImpression();
        }
        isHardwareAccelerated();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        a aVar;
        super.onDetachedFromWindow();
        this.mIsInWindow = false;
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd == null || (aVar = nativeAd.mBaseNativeAd) == null) {
            return;
        }
        clearAdClickRecord(aVar.getDetail());
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0 && getVisibility() == 0) {
            callbackImpression();
        }
    }

    public void renderView(int i2, View view, NativeAd.ImpressionEventListener impressionEventListener) {
        View view2 = this.mAdView;
        if (view2 != null) {
            removeView(view2);
        }
        this.mAdView = view;
        this.mNativeAdId = i2;
        this.mImpressionEventListener = impressionEventListener;
        addView(view);
        if (this.mIsInWindow && getVisibility() == 0) {
            callbackImpression();
        }
    }

    public ATNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ATNativeAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
