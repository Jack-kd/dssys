package com.meishu.sdk.meishu_ad.draw;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.platform.ms.draw.b;

/* loaded from: classes4.dex */
public class MeishuDrawRootView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.ad.draw.a f32212a;

    /* renamed from: b, reason: collision with root package name */
    public a f32213b;

    public interface a {
    }

    public MeishuDrawRootView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        com.meishu.sdk.core.ad.draw.a aVar;
        super.onVisibilityChanged(view, i2);
        a aVar2 = this.f32213b;
        if (aVar2 != null) {
            View view2 = ((b) aVar2).f32862a;
            if (view2 instanceof NormalMediaView) {
                if (i2 == 0) {
                    ((NormalMediaView) view2).resume();
                } else {
                    ((NormalMediaView) view2).pause();
                }
            }
        }
        if (i2 == 0 && isShown() && (aVar = this.f32212a) != null) {
            aVar.onAdExposure();
        }
    }

    public void setAdListener(com.meishu.sdk.core.ad.draw.a aVar) {
        this.f32212a = aVar;
    }

    public void setOnVisibilityChangeListener(a aVar) {
        this.f32213b = aVar;
    }

    public MeishuDrawRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MeishuDrawRootView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
