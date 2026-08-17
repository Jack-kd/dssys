package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLogger;

/* loaded from: classes4.dex */
public class ap extends v {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36868a = "ap";

    /* renamed from: b, reason: collision with root package name */
    private ao f36869b;

    /* renamed from: c, reason: collision with root package name */
    private C1293e f36870c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f36871d;

    public ap(Context context) {
        super(context);
        this.f36871d = false;
        View c1294f = new C1294f(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(c1294f, layoutParams);
        this.f36870c = new C1293e(context);
        this.f36869b = new ao(context);
        this.f36870c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f36870c);
        addView(this.f36869b);
        c();
    }

    private void c() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.ap.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ap.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ap.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int width = (int) (getWidth() * 0.25f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, (int) (width * 1.62f));
        layoutParams.setMargins(0, (int) (getHeight() * 0.38f), 0, 0);
        layoutParams.addRule(14);
        this.f36869b.setLayoutParams(layoutParams);
    }

    @Override // com.sigmob.sdk.base.views.v
    public void a() {
        this.f36871d = true;
        ao aoVar = this.f36869b;
        if (aoVar != null) {
            aoVar.a();
        }
    }

    @Override // com.sigmob.sdk.base.views.v
    public void b() {
        this.f36871d = false;
        C1293e c1293e = this.f36870c;
        if (c1293e != null) {
            c1293e.a(0.0f);
        }
        ao aoVar = this.f36869b;
        if (aoVar != null) {
            aoVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f36871d) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        c();
    }

    public ap(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36871d = false;
        c();
    }

    public void a(float f2) {
        C1293e c1293e = this.f36870c;
        if (c1293e == null || !this.f36871d) {
            return;
        }
        c1293e.a(f2);
        SigmobLogger.d(f36868a, "updateProcess: process = " + f2, new Object[0]);
    }

    public ap(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36871d = false;
        c();
    }
}
