package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.ui.AsseblemSplashATView;
import com.anythink.core.common.inner.ui.CloseShadeView;
import com.anythink.core.common.l.e.a.f;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ThirdPartySplashATView extends AsseblemSplashATView implements f {

    /* renamed from: E, reason: collision with root package name */
    BaseAd f5265E;

    /* renamed from: F, reason: collision with root package name */
    private View f5266F;

    public ThirdPartySplashATView(Context context) {
        super(context);
    }

    private void a(View view) {
        List<View> arrayList;
        FrameLayout.LayoutParams layoutParamsA = com.anythink.core.common.inner.mixad.f.a.a(this.f4824f.f4490j, 0, 0);
        if (this.f5265E != null) {
            com.anythink.core.basead.b.b bVar = new com.anythink.core.basead.b.b();
            com.anythink.core.common.inner.ui.e.a aVar = this.f4934y;
            if (aVar != null) {
                aVar.a(this.f5265E, bVar, true);
            }
            bVar.a(((AsseblemSplashATView) this).f4785a);
            bVar.e(this.f4829k);
            bVar.d(((AsseblemSplashATView) this).f4786b);
            bVar.b(getIconView());
            if (this.f4824f.f4500t.q() == 0) {
                this.f4828j.add(this);
                arrayList = this.f4828j;
            } else if (this.f4824f.f4500t.q() == 2) {
                arrayList = new ArrayList<>();
                View view2 = this.f4788d;
                if (view2 != null) {
                    arrayList.add(view2);
                }
            } else {
                x xVar = this.f4824f;
                if (xVar != null && xVar.f4490j == 59) {
                    c.a(this.f5265E.getAdIconView());
                }
                arrayList = new ArrayList<>();
                arrayList.add(this.f4829k);
            }
            if (arrayList != null) {
                if (this.f4935z >= this.ranDom) {
                    arrayList.add(this.f4928s);
                } else {
                    CloseShadeView closeShadeView = this.f4928s;
                    if (closeShadeView != null) {
                        closeShadeView.setVisibility(8);
                    }
                }
            }
            this.f5265E.registerListener(view, arrayList, layoutParamsA, bVar);
        }
    }

    private void i() {
        BaseAd baseAd;
        BaseAd baseAd2;
        BaseAd baseAd3;
        FrameLayout frameLayout = (FrameLayout) findViewById(p.a(getContext(), "myoffer_splash_ad_lable_area", "id"));
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
            this.f4828j.add(frameLayout);
        }
        FrameLayout frameLayout2 = (FrameLayout) findViewById(p.a(getContext(), "myoffer_splash_ad_content_image_area", "id"));
        if (frameLayout2 != null && (baseAd3 = this.f5265E) != null && baseAd3.getAdMediaView(new Object[0]) != null) {
            View adMediaView = this.f5265E.getAdMediaView(new Object[0]);
            this.f5266F = adMediaView;
            if (adMediaView.getParent() != null) {
                ((ViewGroup) this.f5266F.getParent()).removeView(this.f5266F);
            }
            frameLayout2.addView(this.f5266F, new FrameLayout.LayoutParams(-1, -1));
        }
        RoundImageView roundImageView = (RoundImageView) findViewById(p.a(getContext(), "myoffer_splash_icon", "id"));
        if (roundImageView != null && (baseAd2 = this.f5265E) != null && baseAd2.getAdIconView() != null && roundImageView.getParent() != null && (roundImageView.getParent() instanceof ViewGroup)) {
            TextView textView = (TextView) findViewById(p.a(getContext(), "myoffer_splash_ad_title", "id"));
            if (textView != null) {
                textView.setGravity(3);
            }
            TextView textView2 = (TextView) findViewById(p.a(getContext(), "myoffer_splash_desc", "id"));
            if (textView2 != null) {
                textView2.setGravity(3);
            }
            roundImageView.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
            layoutParams.width = layoutParams.height;
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                if (this.f4824f.f4500t.l() == 2) {
                    ((RelativeLayout.LayoutParams) layoutParams).rightMargin = p.a(getContext(), 18.0f);
                } else {
                    ((RelativeLayout.LayoutParams) layoutParams).rightMargin = p.a(getContext(), 12.0f);
                }
            }
            roundImageView.setLayoutParams(layoutParams);
            ((ViewGroup) roundImageView.getParent()).addView(this.f5265E.getAdIconView(), roundImageView.getLayoutParams());
        }
        if (this.f4887l == null || (baseAd = this.f5265E) == null || baseAd.getAdLogoView() == null || this.f4887l.getParent() == null || !(this.f4887l.getParent() instanceof ViewGroup)) {
            return;
        }
        this.f4887l.setVisibility(4);
        ((ViewGroup) this.f4887l.getParent()).addView(this.f5265E.getAdLogoView(), this.f4887l.getLayoutParams());
    }

    private boolean j() {
        x xVar = this.f4824f;
        return xVar != null && xVar.f4490j == 59;
    }

    private boolean k() {
        x xVar = this.f4824f;
        return xVar != null && xVar.f4490j == 39;
    }

    private boolean l() {
        y yVar;
        x xVar = this.f4824f;
        return (xVar == null || (yVar = xVar.f4500t) == null || yVar.q() == 0) ? false : true;
    }

    private boolean m() {
        BaseAd baseAd = this.f5265E;
        return baseAd != null && baseAd.isNativeExpress();
    }

    @Override // com.anythink.core.common.inner.ui.BaseSdkSplashATView
    public final void f() {
        super.f();
    }

    @Override // com.anythink.core.common.inner.ui.BaseSplashATView
    public final void g() {
        h();
        if (this.f4931v) {
            return;
        }
        this.f4931v = true;
        com.anythink.core.common.inner.e.a aVar = this.f4932w;
        if (aVar != null) {
            aVar.b();
        }
    }

    public CloseShadeView getCloseShadeView() {
        CloseShadeView closeShadeView = this.f4928s;
        if (closeShadeView != null) {
            return closeShadeView;
        }
        return null;
    }

    public View getIconView() {
        BaseAd baseAd = this.f5265E;
        if (baseAd == null) {
            return null;
        }
        if (!TextUtils.isEmpty(baseAd.getIconImageUrl())) {
            return ((AsseblemSplashATView) this).f4787c;
        }
        View adIconView = this.f5265E.getAdIconView();
        if (adIconView != null) {
            return adIconView;
        }
        return null;
    }

    @Override // com.anythink.core.common.l.e.a.f
    public void handleFullScreenClick(View view) {
        x xVar;
        y yVar;
        if (view == null || (xVar = this.f4824f) == null || xVar.f4490j != 39 || xVar == null || (yVar = xVar.f4500t) == null || yVar.q() == 0) {
            return;
        }
        c.a(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s.b();
        s.a(new Runnable() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartySplashATView.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseAd baseAd = ThirdPartySplashATView.this.f5265E;
                if (baseAd != null) {
                    baseAd.destroy();
                    ThirdPartySplashATView.this.f5265E = null;
                }
            }
        }, 1000L);
    }

    @Override // com.anythink.core.common.l.e.a.f
    public void registerNativeAdContainer(View view) {
        List<View> arrayList;
        FrameLayout.LayoutParams layoutParamsA = com.anythink.core.common.inner.mixad.f.a.a(this.f4824f.f4490j, 0, 0);
        if (this.f5265E != null) {
            com.anythink.core.basead.b.b bVar = new com.anythink.core.basead.b.b();
            com.anythink.core.common.inner.ui.e.a aVar = this.f4934y;
            if (aVar != null) {
                aVar.a(this.f5265E, bVar, true);
            }
            bVar.a(((AsseblemSplashATView) this).f4785a);
            bVar.e(this.f4829k);
            bVar.d(((AsseblemSplashATView) this).f4786b);
            bVar.b(getIconView());
            if (this.f4824f.f4500t.q() == 0) {
                this.f4828j.add(this);
                arrayList = this.f4828j;
            } else if (this.f4824f.f4500t.q() == 2) {
                arrayList = new ArrayList<>();
                View view2 = this.f4788d;
                if (view2 != null) {
                    arrayList.add(view2);
                }
            } else {
                x xVar = this.f4824f;
                if (xVar != null && xVar.f4490j == 59) {
                    c.a(this.f5265E.getAdIconView());
                }
                arrayList = new ArrayList<>();
                arrayList.add(this.f4829k);
            }
            if (arrayList != null) {
                if (this.f4935z >= this.ranDom) {
                    arrayList.add(this.f4928s);
                } else {
                    CloseShadeView closeShadeView = this.f4928s;
                    if (closeShadeView != null) {
                        closeShadeView.setVisibility(8);
                    }
                }
            }
            this.f5265E.registerListener(view, arrayList, layoutParamsA, bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ThirdPartySplashATView(Context context, x xVar, w wVar, com.anythink.core.common.inner.e.a aVar, String str, BaseAd baseAd, com.anythink.core.common.l.a aVar2) {
        BaseAd baseAd2;
        BaseAd baseAd3;
        BaseAd baseAd4;
        super(context, xVar, wVar, aVar);
        this.f5265E = baseAd;
        FrameLayout frameLayout = (FrameLayout) findViewById(p.a(getContext(), "myoffer_splash_ad_lable_area", "id"));
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
            this.f4828j.add(frameLayout);
        }
        FrameLayout frameLayout2 = (FrameLayout) findViewById(p.a(getContext(), "myoffer_splash_ad_content_image_area", "id"));
        if (frameLayout2 != null && (baseAd4 = this.f5265E) != null && baseAd4.getAdMediaView(new Object[0]) != null) {
            View adMediaView = this.f5265E.getAdMediaView(new Object[0]);
            this.f5266F = adMediaView;
            if (adMediaView.getParent() != null) {
                ((ViewGroup) this.f5266F.getParent()).removeView(this.f5266F);
            }
            frameLayout2.addView(this.f5266F, new FrameLayout.LayoutParams(-1, -1));
        }
        RoundImageView roundImageView = (RoundImageView) findViewById(p.a(getContext(), "myoffer_splash_icon", "id"));
        if (roundImageView != null && (baseAd3 = this.f5265E) != null && baseAd3.getAdIconView() != null && roundImageView.getParent() != null && (roundImageView.getParent() instanceof ViewGroup)) {
            TextView textView = (TextView) findViewById(p.a(getContext(), "myoffer_splash_ad_title", "id"));
            if (textView != null) {
                textView.setGravity(3);
            }
            TextView textView2 = (TextView) findViewById(p.a(getContext(), "myoffer_splash_desc", "id"));
            if (textView2 != null) {
                textView2.setGravity(3);
            }
            roundImageView.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
            layoutParams.width = layoutParams.height;
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                if (this.f4824f.f4500t.l() == 2) {
                    ((RelativeLayout.LayoutParams) layoutParams).rightMargin = p.a(getContext(), 18.0f);
                } else {
                    ((RelativeLayout.LayoutParams) layoutParams).rightMargin = p.a(getContext(), 12.0f);
                }
            }
            roundImageView.setLayoutParams(layoutParams);
            ((ViewGroup) roundImageView.getParent()).addView(this.f5265E.getAdIconView(), roundImageView.getLayoutParams());
        }
        if (this.f4887l != null && (baseAd2 = this.f5265E) != null && baseAd2.getAdLogoView() != null && this.f4887l.getParent() != null && (this.f4887l.getParent() instanceof ViewGroup)) {
            this.f4887l.setVisibility(4);
            ((ViewGroup) this.f4887l.getParent()).addView(this.f5265E.getAdLogoView(), this.f4887l.getLayoutParams());
        }
        if (aVar2 instanceof View) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(13);
            addView((View) aVar2, layoutParams2);
        }
        BaseAd baseAd5 = this.f5265E;
        if (baseAd5 == null || !baseAd5.isNativeExpress()) {
            return;
        }
        this.f4935z = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(com.anythink.core.common.l.a aVar) {
        if (aVar instanceof View) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            addView((View) aVar, layoutParams);
        }
    }
}
