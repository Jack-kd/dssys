package com.meishu.sdk.meishu_ad;

import android.view.View;

/* loaded from: classes4.dex */
public class f implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f32222a;

    public f(v vVar) {
        this.f32222a = vVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        v.a(this.f32222a);
    }
}
