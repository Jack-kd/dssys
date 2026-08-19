package com.kwad.components.core.page.recycle;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import com.bykv.vk.component.ttvideo.player.C;
import com.kwad.sdk.core.webview.KsAdWebView;

/* loaded from: classes4.dex */
public class NestedScrollWebView extends KsAdWebView implements NestedScrollingChild {
    private int afi;
    private final int[] afj;
    private final int[] afk;
    private int afl;
    private boolean afm;
    private int afn;
    private int afo;
    private NestedScrollingChildHelper afp;
    private int afq;
    private int mLastMotionY;
    private VelocityTracker mVelocityTracker;

    public NestedScrollWebView(Context context) {
        super(context);
        this.afj = new int[2];
        this.afk = new int[2];
        uL();
    }

    private void uL() {
        this.afq = 0;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.afp = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        this.afo = viewConfiguration.getScaledMaximumFlingVelocity();
        this.afn = viewConfiguration.getScaledMinimumFlingVelocity();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return this.afp.dispatchNestedFling(f2, f3, z2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.afp.dispatchNestedPreFling(f2, f3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.afp.dispatchNestedPreScroll(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.afp.dispatchNestedScroll(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.afp.hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.afp.isNestedScrollingEnabled();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.afq != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(((getContext() instanceof Activity ? com.kwad.sdk.c.a.a.k((Activity) getContext()) : com.kwad.sdk.c.a.a.getScreenHeight(getContext())) - (com.kwad.components.core.t.d.wJ() ? com.kwad.sdk.c.a.a.getStatusBarHeight(getContext()) : 0)) - this.afq, C.ENCODING_PCM_32BIT);
        }
        super.onMeasure(i2, i3);
    }

    @Override // com.kwad.sdk.core.webview.KsAdWebView, android.webkit.WebView, android.view.View
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        if (hasFocus()) {
            return;
        }
        requestFocus();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00de  */
    @Override // com.kwad.sdk.core.webview.KsAdWebView, android.webkit.WebView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.core.page.recycle.NestedScrollWebView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z2) {
        this.afp.setNestedScrollingEnabled(z2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i2) {
        return this.afp.startNestedScroll(i2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.afp.stopNestedScroll();
    }

    public NestedScrollWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.afj = new int[2];
        this.afk = new int[2];
        uL();
    }

    public NestedScrollWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.afj = new int[2];
        this.afk = new int[2];
        uL();
    }
}
