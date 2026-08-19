package com.smartdigimkt.china.formatbusiness.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import com.smartdigimkt.e.g;
import com.smartdigimkt.e.q;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.R;
import com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView;
import com.smartdigimkt.z.z;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes5.dex */
public class BubbleVibrationSinglePictureSplashATView extends SinglePictureSplashATView {

    /* renamed from: n0, reason: collision with root package name */
    public static final /* synthetic */ int f39853n0 = 0;

    /* renamed from: m0, reason: collision with root package name */
    public Runnable f39854m0;

    public BubbleVibrationSinglePictureSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public final void a(int i2, boolean z2) {
        a aVar = this.f43216b;
        if (aVar != null && z.b(aVar)) {
            q.b(this);
        }
        super.a(i2, z2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        t();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        q.a(this, this.f39854m0);
        q.a(getContext());
        BubbleVibrationFallLayer bubbleVibrationFallLayer = null;
        this.f39854m0 = null;
        int childCount = getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt instanceof BubbleVibrationFallLayer) {
                bubbleVibrationFallLayer = (BubbleVibrationFallLayer) childAt;
                break;
            }
            childCount--;
        }
        if (bubbleVibrationFallLayer != null) {
            bubbleVibrationFallLayer.release();
            removeView(bubbleVibrationFallLayer);
        }
        super.onDetachedFromWindow();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            t();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, android.view.View
    public final void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            t();
            return;
        }
        a aVar = this.f43216b;
        if (aVar != null && z.b(aVar)) {
            q.b(this);
        }
        q.a(getContext());
    }

    @Override // com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void q() {
        super.q();
    }

    public final void t() {
        BubbleVibrationFallLayer bubbleVibrationFallLayer;
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                bubbleVibrationFallLayer = null;
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt instanceof BubbleVibrationFallLayer) {
                bubbleVibrationFallLayer = (BubbleVibrationFallLayer) childAt;
                break;
            }
        }
        if (bubbleVibrationFallLayer == null || !bubbleVibrationFallLayer.hasEffectiveBubbleDisplay()) {
            if (bubbleVibrationFallLayer != null && !bubbleVibrationFallLayer.isBubbleStartStillPending()) {
                bubbleVibrationFallLayer.release();
                removeView(bubbleVibrationFallLayer);
                q.a(this, this.f39854m0);
                this.f39854m0 = null;
            }
            if (this.f39854m0 == null || getTag(R.id.sdm_bubble_delay_runnable_tag) != this.f39854m0) {
                q.a(this, this.f39854m0);
                this.f39854m0 = null;
                this.f39854m0 = q.a(this, this.f43216b, new g(this));
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(int i2, int i3) {
        a aVar = this.f43216b;
        if (aVar != null && z.b(aVar)) {
            q.b(this);
        }
        super.a(i2, i3);
    }
}
