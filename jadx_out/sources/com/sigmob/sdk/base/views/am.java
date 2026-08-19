package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* loaded from: classes4.dex */
public class am extends v {

    /* renamed from: a, reason: collision with root package name */
    private al f36829a;

    /* renamed from: b, reason: collision with root package name */
    private C1294f f36830b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f36831c;

    public am(Context context) {
        super(context);
        this.f36831c = false;
        c();
    }

    private void c() {
        C1294f c1294f = new C1294f(getContext());
        this.f36830b = c1294f;
        addView(c1294f, new RelativeLayout.LayoutParams(-1, -1));
        this.f36829a = new al(getContext());
        addView(this.f36829a, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.sigmob.sdk.base.views.v
    public void a() {
        this.f36831c = true;
    }

    @Override // com.sigmob.sdk.base.views.v
    public void b() {
        this.f36831c = false;
        al alVar = this.f36829a;
        if (alVar == null) {
            return;
        }
        alVar.a(0.0f);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
    }

    public am(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36831c = false;
        c();
    }

    public void a(float f2) {
        al alVar = this.f36829a;
        if (alVar == null || !this.f36831c) {
            return;
        }
        alVar.a(f2);
    }

    public am(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36831c = false;
        c();
    }
}
