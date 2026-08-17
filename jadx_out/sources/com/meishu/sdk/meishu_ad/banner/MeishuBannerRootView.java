package com.meishu.sdk.meishu_ad.banner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.ms.banner.c;

/* loaded from: classes4.dex */
public class MeishuBannerRootView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public b f32195a;

    /* renamed from: b, reason: collision with root package name */
    public c f32196b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f32197c;

    public MeishuBannerRootView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        LogUtil.d("MeishuBannerRootView", "onVisibilityChanged: " + i2 + ", isShown: " + isShown() + ", isAdExposured: " + this.f32197c);
        if (!this.f32197c && i2 == 0 && isShown()) {
            this.f32197c = true;
            StringBuilder sbA = com.meishu.sdk.activity.a.a("adListener is not null: ");
            sbA.append(this.f32195a != null);
            LogUtil.d("MeishuBannerRootView", sbA.toString());
            if (this.f32195a != null) {
                LogUtil.d("MeishuBannerRootView", "send onADExposure");
                ((com.meishu.sdk.platform.ms.banner.a) this.f32195a).onADExposure();
            }
            c cVar = this.f32196b;
            if (cVar == null || cVar.getInteractionListener() == null) {
                return;
            }
            this.f32196b.getInteractionListener().onAdExposure();
        }
    }

    public void setAdListener(b bVar) {
        this.f32195a = bVar;
    }

    public void setBannerAd(c cVar) {
        this.f32196b = cVar;
    }

    public MeishuBannerRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MeishuBannerRootView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
