package com.qq.e.ads.nativ.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* loaded from: classes4.dex */
public class NativeAdContainer extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private ViewStatusListener f35260a;

    /* renamed from: b, reason: collision with root package name */
    private ViewStatus f35261b;

    /* renamed from: com.qq.e.ads.nativ.widget.NativeAdContainer$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35262a;

        static {
            int[] iArr = new int[ViewStatus.values().length];
            f35262a = iArr;
            try {
                iArr[ViewStatus.ATTACHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35262a[ViewStatus.DETACHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum ViewStatus {
        INIT,
        ATTACHED,
        DETACHED
    }

    public NativeAdContainer(Context context) {
        super(context);
        this.f35261b = ViewStatus.INIT;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewStatusListener viewStatusListener = this.f35260a;
        if (viewStatusListener != null) {
            viewStatusListener.onDispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f35261b = ViewStatus.ATTACHED;
        ViewStatusListener viewStatusListener = this.f35260a;
        if (viewStatusListener != null) {
            viewStatusListener.onAttachToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f35261b = ViewStatus.DETACHED;
        ViewStatusListener viewStatusListener = this.f35260a;
        if (viewStatusListener != null) {
            viewStatusListener.onDetachFromWindow();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        ViewStatusListener viewStatusListener = this.f35260a;
        if (viewStatusListener != null) {
            viewStatusListener.onWindowFocusChanged(z2);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        ViewStatusListener viewStatusListener = this.f35260a;
        if (viewStatusListener != null) {
            viewStatusListener.onWindowVisibilityChanged(i2);
        }
    }

    public void setViewStatusListener(ViewStatusListener viewStatusListener) {
        this.f35260a = viewStatusListener;
        if (viewStatusListener != null) {
            int i2 = AnonymousClass1.f35262a[this.f35261b.ordinal()];
            if (i2 == 1) {
                this.f35260a.onAttachToWindow();
            } else {
                if (i2 != 2) {
                    return;
                }
                this.f35260a.onDetachFromWindow();
            }
        }
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35261b = ViewStatus.INIT;
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f35261b = ViewStatus.INIT;
    }
}
