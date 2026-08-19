package com.kwad.components.core.page.splitLandingPage.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.C;
import com.kwad.components.core.t.d;
import com.kwad.sdk.core.webview.KsAdWebView;

/* loaded from: classes4.dex */
public class SplitScrollWebView extends KsAdWebView {
    private boolean afO;
    private a afP;
    private float afQ;
    private boolean afR;
    private int afq;

    public interface a {
        void g(float f2);

        boolean uR();
    }

    public SplitScrollWebView(Context context) {
        super(context);
        this.afO = false;
        uL();
    }

    private void uL() {
        this.afq = 0;
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.afq != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(((getContext() instanceof Activity ? com.kwad.sdk.c.a.a.k((Activity) getContext()) : com.kwad.sdk.c.a.a.getScreenHeight(getContext())) - (d.wJ() ? com.kwad.sdk.c.a.a.getStatusBarHeight(getContext()) : 0)) - this.afq, C.ENCODING_PCM_32BIT);
        }
        super.onMeasure(i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0038  */
    @Override // com.kwad.sdk.core.webview.KsAdWebView, android.webkit.WebView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r6)
            boolean r1 = r5.afO
            if (r1 == 0) goto Ld
            boolean r6 = super.onTouchEvent(r0)
            return r6
        Ld:
            int r1 = androidx.core.view.MotionEventCompat.getActionMasked(r6)
            float r2 = r6.getY()
            r3 = 0
            if (r1 == 0) goto L51
            r6 = 1
            if (r1 == r6) goto L38
            r4 = 2
            if (r1 == r4) goto L22
            r0 = 3
            if (r1 == r0) goto L38
            goto L50
        L22:
            float r1 = r5.afQ
            float r3 = r1 - r2
            com.kwad.components.core.page.splitLandingPage.view.SplitScrollWebView$a r4 = r5.afP
            if (r4 == 0) goto L33
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 > 0) goto L33
            r5.afR = r6
            r4.g(r3)
        L33:
            boolean r6 = super.onTouchEvent(r0)
            return r6
        L38:
            com.kwad.components.core.page.splitLandingPage.view.SplitScrollWebView$a r0 = r5.afP
            if (r0 == 0) goto L50
            float r1 = r5.afQ
            float r1 = r1 - r2
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 >= 0) goto L48
            boolean r1 = r5.afR
            if (r1 == 0) goto L50
        L48:
            boolean r0 = r0.uR()
            if (r0 == 0) goto L50
            r5.afO = r6
        L50:
            return r3
        L51:
            r5.afQ = r2
            r5.afR = r3
            boolean r6 = super.onTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.core.page.splitLandingPage.view.SplitScrollWebView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setDisableAnimation(boolean z2) {
        this.afO = z2;
    }

    public void setSplitScrollWebViewListener(a aVar) {
        this.afP = aVar;
    }

    public SplitScrollWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.afO = false;
        uL();
    }

    public SplitScrollWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.afO = false;
        uL();
    }
}
