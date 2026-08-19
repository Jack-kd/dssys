package com.meishu.sdk.meishu_ad.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.meishu.sdk.meishu_ad.splash.k;

/* loaded from: classes4.dex */
public class ViewContainer extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public a f32714a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f32715b;

    public interface a {
    }

    public ViewContainer(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f32715b = Boolean.TRUE;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f32715b = Boolean.FALSE;
        a aVar = this.f32714a;
        if (aVar != null) {
            ((k) aVar).f32543a.a();
        }
    }

    public void setWindowEventListener(a aVar) {
        this.f32714a = aVar;
    }

    public ViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
