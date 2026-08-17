package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.anythink.core.api.ATNativeAdInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.inner.ui.BaseMediaATView;
import com.anythink.core.common.inner.ui.MediaATView;
import com.anythink.core.common.l.e.a.d;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.p;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class ThirdPartyNativeTemplateView extends MediaATView implements d {

    /* renamed from: r, reason: collision with root package name */
    ATNativeAdInfo.AdPrepareInfo f5251r;

    /* renamed from: s, reason: collision with root package name */
    private BaseAd f5252s;

    public ThirdPartyNativeTemplateView(Context context, w wVar, x xVar, boolean z2, BaseMediaATView.a aVar, BaseAd baseAd) {
        super(context, wVar, xVar, z2, aVar);
        this.f5252s = baseAd;
    }

    @Override // com.anythink.core.common.inner.ui.MediaATView
    public final void a(int i2, int i3) {
        ViewGroup viewGroup = (ViewGroup) findViewById(p.a(getContext(), "myoffer_media_ad_main_image_container", "id"));
        View adMediaView = this.f5252s.getAdMediaView(viewGroup);
        if (viewGroup == null || adMediaView == null) {
            super.a(i2, i3);
        } else {
            if (this.f4841c.f4500t.q() != 0) {
                c.a(adMediaView);
            }
            ak.a(adMediaView);
            viewGroup.addView(adMediaView, new ViewGroup.LayoutParams(-1, -1));
        }
        this.f5252s.setVideoMute(true);
        View viewFindViewById = findViewById(p.a(getContext(), "myoffer_ad_lable", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
    }

    @Override // com.anythink.core.common.l.e.a.d
    public void destroyNativeAd() {
    }

    public ATNativeAdInfo.AdPrepareInfo getAdPrepareInfo() {
        return this.f5251r;
    }

    @Override // com.anythink.core.common.inner.ui.MediaATView, com.anythink.core.common.inner.ui.BaseMediaATView
    public void init(int i2, int i3, int i4) {
        super.init(i2, i3, i4);
        ATNativeAdInfo.AdPrepareInfo adPrepareInfo = new ATNativeAdInfo.AdPrepareInfo();
        this.f5251r = adPrepareInfo;
        adPrepareInfo.setTitleView(((MediaATView) this).f5006j);
        this.f5251r.setDescView(this.f5011o);
        this.f5251r.setIconView(this.f5010n);
        this.f5251r.setMainImageView(this.f5009m);
        this.f5251r.setCtaView(((MediaATView) this).f5007k);
        this.f5251r.setParentView(this);
        this.f5251r.setCloseView(this.f4845g);
        this.f5251r.setAdLogoView(this.f5012p);
        this.f5251r.getClickViewList().clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(((MediaATView) this).f5007k);
        if (this.f4841c.f4500t.q() == 0) {
            arrayList.add(((MediaATView) this).f5006j);
            arrayList.add(this.f5011o);
            arrayList.add(this.f5010n);
            arrayList.add(this.f5009m);
            arrayList.add(this);
        }
        this.f5251r.setClickViewList(arrayList);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(p.a(getContext(), 32.0f), p.a(getContext(), 12.0f));
        layoutParams.gravity = 85;
        this.f5251r.setChoiceViewLayoutParams(layoutParams);
        View adIconView = this.f5252s.getAdIconView();
        RoundImageView roundImageView = this.f5010n;
        if (roundImageView != null && adIconView != null) {
            if (roundImageView.getParent() != null && (this.f5010n.getParent() instanceof ViewGroup)) {
                ak.a(adIconView);
                this.f5010n.setVisibility(0);
                ((ViewGroup) this.f5010n.getParent()).addView(adIconView, this.f5010n.getLayoutParams());
            }
            if (this.f4841c.f4500t.q() != 0) {
                c.a(adIconView);
            }
        }
        View adLogoView = this.f5252s.getAdLogoView();
        ImageView imageView = this.f5012p;
        if (imageView != null && adLogoView != null && imageView.getParent() != null && (this.f5012p.getParent() instanceof ViewGroup)) {
            ak.a(adLogoView);
            this.f5012p.setVisibility(4);
            ((ViewGroup) this.f5012p.getParent()).addView(adLogoView, this.f5012p.getLayoutParams());
        }
        if (this.f4847i != null) {
            com.anythink.core.basead.b.b bVar = new com.anythink.core.basead.b.b();
            this.f4847i.a(this.f5252s, bVar, true);
            this.f5251r.setDomainView(bVar.h());
            this.f5251r.setWarningView(bVar.i());
            this.f5251r.setAdFromView(bVar.f());
        }
    }

    @Override // com.anythink.core.common.inner.ui.MediaATView
    public final boolean a() {
        return this.f5252s.getAdIconView() == null && super.a();
    }
}
