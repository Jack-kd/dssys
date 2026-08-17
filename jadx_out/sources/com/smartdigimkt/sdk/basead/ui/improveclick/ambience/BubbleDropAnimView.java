package com.smartdigimkt.sdk.basead.ui.improveclick.ambience;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import com.smartdigimkt.k2.e;
import com.smartdigimkt.l2.f;
import com.smartdigimkt.l3.a;

/* loaded from: classes5.dex */
public class BubbleDropAnimView extends BaseAmbienceView {

    /* renamed from: b, reason: collision with root package name */
    public BubbleDropChildView f43972b;

    /* renamed from: c, reason: collision with root package name */
    public ObjectAnimator f43973c;

    /* renamed from: d, reason: collision with root package name */
    public Bitmap f43974d;

    /* renamed from: e, reason: collision with root package name */
    public int f43975e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f43976f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f43977g;

    public BubbleDropAnimView(Context context) {
        super(context);
        this.f43976f = false;
        this.f43977g = false;
    }

    public final void a() {
        BubbleDropChildView bubbleDropChildView = this.f43972b;
        if (bubbleDropChildView == null) {
            return;
        }
        if (this.f43973c == null && !this.f43976f) {
            bubbleDropChildView.setVisibility(0);
            this.f43972b.initRedPacketList(this.f43974d);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f43972b, "translationY", -r1, this.f43975e);
            this.f43973c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setRepeatCount(0);
            this.f43973c.setDuration(4000L);
            this.f43973c.setInterpolator(new LinearInterpolator());
            this.f43973c.addListener(new f(this));
        }
        ObjectAnimator objectAnimator = this.f43973c;
        if (objectAnimator != null && !objectAnimator.isStarted() && !this.f43976f) {
            this.f43972b.setTranslationY(-this.f43975e);
            this.f43973c.start();
        }
        this.f43977g = false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BaseAmbienceView
    public void initSetting(a aVar, e eVar) {
        this.f43971a = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BaseAmbienceView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initView() throws java.security.NoSuchAlgorithmException {
        /*
            r4 = this;
            com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropChildView r0 = new com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropChildView
            android.content.Context r1 = r4.getContext()
            r0.<init>(r1)
            r4.f43972b = r0
            com.smartdigimkt.l2.d r1 = new com.smartdigimkt.l2.d
            r1.<init>(r4)
            r0.initSetting(r1)
            com.smartdigimkt.t1.d r0 = com.smartdigimkt.t1.d.a()
            java.util.Map r1 = r0.f44205g
            if (r1 == 0) goto L43
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L22
            goto L43
        L22:
            java.util.Map r0 = r0.f44205g
            java.lang.String r1 = "am_bubble"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L33
            goto L43
        L33:
            com.smartdigimkt.t3.m r1 = com.smartdigimkt.z.a0.a()
            com.smartdigimkt.t3.o r2 = new com.smartdigimkt.t3.o
            r3 = 3
            r2.<init>(r3, r0)
            r0 = 0
            android.graphics.Bitmap r0 = r1.b(r2, r0, r0)
            goto L44
        L43:
            r0 = 0
        L44:
            r4.f43974d = r0
            if (r0 == 0) goto L88
            boolean r0 = r0.isRecycled()
            if (r0 == 0) goto L4f
            goto L88
        L4f:
            android.content.Context r0 = r4.getContext()
            boolean r0 = com.smartdigimkt.c5.k.f(r0)
            r1 = -1
            if (r0 == 0) goto L73
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            android.content.Context r2 = r4.getContext()
            android.content.res.Resources r2 = r2.getResources()
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            int r2 = r2.heightPixels
            r0.<init>(r2, r1)
            r1 = 13
            r0.addRule(r1)
            goto L78
        L73:
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r0.<init>(r1, r1)
        L78:
            com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropChildView r1 = r4.f43972b
            r4.addView(r1, r0)
            com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropChildView r0 = r4.f43972b
            com.smartdigimkt.l2.e r1 = new com.smartdigimkt.l2.e
            r1.<init>(r4)
            r0.post(r1)
            return
        L88:
            r4.release()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropAnimView.initView():void");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BaseAmbienceView
    public void onPause() {
        ObjectAnimator objectAnimator = this.f43973c;
        if (objectAnimator != null) {
            objectAnimator.pause();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BaseAmbienceView
    public void onResume() {
        ObjectAnimator objectAnimator = this.f43973c;
        if (objectAnimator != null) {
            if (objectAnimator.isPaused()) {
                this.f43973c.resume();
            } else {
                a();
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BaseAmbienceView
    public void release() {
        if (this.f43977g) {
            return;
        }
        BubbleDropChildView bubbleDropChildView = this.f43972b;
        if (bubbleDropChildView != null) {
            bubbleDropChildView.release();
        }
        BubbleDropChildView bubbleDropChildView2 = this.f43972b;
        if (bubbleDropChildView2 != null) {
            bubbleDropChildView2.setTranslationY(-this.f43975e);
        }
        ObjectAnimator objectAnimator = this.f43973c;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.f43973c.cancel();
            this.f43973c = null;
        }
        this.f43977g = true;
    }

    public BubbleDropAnimView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43976f = false;
        this.f43977g = false;
    }

    public BubbleDropAnimView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43976f = false;
        this.f43977g = false;
    }
}
