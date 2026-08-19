package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.anythink.core.api.ATNativeAdInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.d.o;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.e.d;
import com.anythink.core.common.inner.ui.BaseScreenATView;
import com.anythink.core.common.inner.ui.CloseImageView;
import com.anythink.core.common.l.e.a.e;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class ThirdPartySelfRenderScreenATView extends BaseScreenATView implements e {

    /* renamed from: K, reason: collision with root package name */
    private static final String f5253K = "ThirdPartySelfRenderScreenATView";

    /* renamed from: L, reason: collision with root package name */
    private static final int f5254L = 0;

    /* renamed from: M, reason: collision with root package name */
    private View f5255M;

    /* renamed from: N, reason: collision with root package name */
    private View f5256N;

    /* renamed from: O, reason: collision with root package name */
    private BaseAd f5257O;

    /* renamed from: P, reason: collision with root package name */
    private ATNativeAdInfo.AdPrepareInfo f5258P;

    /* renamed from: Q, reason: collision with root package name */
    private com.anythink.core.common.l.e.a.b f5259Q;

    /* renamed from: R, reason: collision with root package name */
    private boolean f5260R;

    /* renamed from: S, reason: collision with root package name */
    private boolean f5261S;

    /* renamed from: T, reason: collision with root package name */
    private FrameLayout f5262T;

    public ThirdPartySelfRenderScreenATView(Context context) {
        super(context);
        this.f5260R = true;
        this.f5261S = false;
    }

    private boolean A() {
        x xVar = this.f4824f;
        return xVar != null && xVar.f4482b == Integer.parseInt("2");
    }

    public static /* synthetic */ boolean b(ThirdPartySelfRenderScreenATView thirdPartySelfRenderScreenATView) {
        thirdPartySelfRenderScreenATView.f5261S = true;
        return true;
    }

    private View y() {
        try {
            Context context = getContext();
            CloseImageView closeImageView = new CloseImageView(context, null);
            closeImageView.setBackgroundResource(p.a(context, "myoffer_base_close_icon", "drawable"));
            int iA = p.a(getContext(), 24.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
            layoutParams.gravity = 5;
            int iA2 = p.a(context, 5.0f);
            if (A()) {
                layoutParams.topMargin = iA2;
            } else {
                layoutParams.topMargin = p.b(context) + iA2;
            }
            layoutParams.rightMargin = iA2;
            this.f5262T.addView(closeImageView, layoutParams);
            return closeImageView;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void z() {
        ak.a(this.f5255M);
        BaseAd baseAd = this.f5257O;
        ViewGroup customAdContainer = baseAd != null ? baseAd.getCustomAdContainer() : null;
        try {
            if (this.f5255M.getLayoutParams() == null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                layoutParams.gravity = 17;
                if (customAdContainer != null) {
                    ak.a((View) customAdContainer);
                    customAdContainer.addView(this.f5255M);
                    this.f5262T.addView(customAdContainer, layoutParams);
                } else {
                    this.f5262T.addView(this.f5255M, layoutParams);
                }
            } else {
                ViewGroup.LayoutParams layoutParams2 = this.f5255M.getLayoutParams();
                if (customAdContainer != null) {
                    ak.a((View) customAdContainer);
                    customAdContainer.addView(this.f5255M);
                    this.f5262T.addView(customAdContainer, layoutParams2);
                } else {
                    this.f5262T.addView(this.f5255M, layoutParams2);
                }
            }
            if (customAdContainer != null) {
                customAdContainer.setBackgroundColor(0);
            }
        } catch (Throwable th) {
            Log.e(f5253K, "addAdView() >>> failed: " + th.getMessage());
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a() {
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView, com.anythink.core.common.inner.ui.BaseATView
    public void destroy() {
        super.destroy();
        BaseAd baseAd = this.f5257O;
        if (baseAd != null) {
            baseAd.setNativeEventListener(null);
            this.f5257O.clear(this);
            this.f5257O.destroy();
        }
        RelativeLayout relativeLayout = this.f4880v;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
        removeAllViews();
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final int g() {
        return 0;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void init() {
        BaseAd baseAd = this.f5257O;
        if (baseAd == null) {
            return;
        }
        baseAd.setNativeEventListener(new o() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartySelfRenderScreenATView.1
            @Override // com.anythink.core.common.d.o
            public final void a(String str, String str2) {
                ThirdPartySelfRenderScreenATView.this.a(com.anythink.core.common.inner.b.b.a(str, str2));
                if (ThirdPartySelfRenderScreenATView.this.f5259Q != null) {
                    ThirdPartySelfRenderScreenATView.this.f5259Q.onVideoError(str, str2);
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdActReward(int i2) {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdActRewardSuccess() {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdClicked(View view) {
                if (((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E.b(new com.anythink.core.common.inner.e.e().a(com.anythink.core.common.inner.mixad.f.b.f4762g, com.anythink.core.common.inner.mixad.f.b.f4756a));
                }
                if (ThirdPartySelfRenderScreenATView.this.f5259Q != null) {
                    ThirdPartySelfRenderScreenATView.this.f5259Q.onAdClicked(view);
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdDislikeButtonClick() {
                if (((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E.d();
                }
                if (ThirdPartySelfRenderScreenATView.this.f5259Q != null) {
                    ThirdPartySelfRenderScreenATView.this.f5259Q.onClose();
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdImpressed() {
                if (ThirdPartySelfRenderScreenATView.this.f5261S) {
                    return;
                }
                ThirdPartySelfRenderScreenATView.b(ThirdPartySelfRenderScreenATView.this);
                if (((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E.a(new com.anythink.core.common.inner.e.e());
                }
                if (ThirdPartySelfRenderScreenATView.this.f5259Q != null) {
                    ThirdPartySelfRenderScreenATView.this.f5259Q.onAdImpressed();
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoEnd() {
                if (((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E.b();
                }
                if (ThirdPartySelfRenderScreenATView.this.f5259Q != null) {
                    ThirdPartySelfRenderScreenATView.this.f5259Q.onAdVideoEnd();
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoProgress(int i2) {
            }

            @Override // com.anythink.core.common.d.n
            public final void onAdVideoStart() {
                if (((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E.a();
                }
                if (ThirdPartySelfRenderScreenATView.this.f5259Q != null) {
                    ThirdPartySelfRenderScreenATView.this.f5259Q.onAdVideoStart();
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onDeeplinkCallback(boolean z2) {
                if (((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E != null) {
                    ((BaseScreenATView) ThirdPartySelfRenderScreenATView.this).f4855E.a(z2);
                }
                if (ThirdPartySelfRenderScreenATView.this.f5259Q != null) {
                    ThirdPartySelfRenderScreenATView.this.f5259Q.onDeeplinkCallback(z2);
                }
            }

            @Override // com.anythink.core.common.d.n
            public final void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            }
        });
        this.f5257O.registerListener(this.f5262T, this.f5258P);
        View view = this.f5256N;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.thirdparty.ThirdPartySelfRenderScreenATView.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ThirdPartySelfRenderScreenATView.this.l();
                }
            });
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void p() {
        ATNativeAdInfo.AdPrepareInfo adPrepareInfo = this.f5258P;
        if (adPrepareInfo == null) {
            return;
        }
        View closeView = adPrepareInfo.getCloseView();
        if (closeView == null && (!A() || this.f5260R)) {
            closeView = y();
        }
        this.f5256N = closeView;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void q() {
    }

    public void setMixNativeAdEventListener(com.anythink.core.common.l.e.a.b bVar) {
        this.f5259Q = bVar;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final boolean a(int i2) {
        return false;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void l() {
        d dVar = this.f4855E;
        if (dVar != null) {
            dVar.d();
        }
        com.anythink.core.common.l.e.a.b bVar = this.f5259Q;
        if (bVar != null) {
            bVar.onClose();
        }
    }

    public ThirdPartySelfRenderScreenATView(Context context, x xVar, w wVar, String str, int i2, int i3, BaseAd baseAd, View view, ATNativeAdInfo.AdPrepareInfo adPrepareInfo) {
        super(context, xVar, wVar, str, i2, i3);
        this.f5260R = true;
        this.f5261S = false;
        this.f5262T = new FrameLayout(getContext());
        this.f5262T.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        if (adPrepareInfo != null) {
            this.f5258P = adPrepareInfo;
        } else {
            this.f5258P = new ATNativeAdInfo.AdPrepareInfo();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(p.a(context, 32.0f), p.a(context, 8.0f));
            layoutParams.gravity = 85;
            this.f5258P.setChoiceViewLayoutParams(layoutParams);
        }
        if (xVar != null) {
            y yVar = xVar.f4500t;
            if (yVar instanceof com.anythink.core.common.inner.mixad.e.c) {
                this.f5260R = ((com.anythink.core.common.inner.mixad.e.c) yVar).ah();
            }
        }
        this.f5255M = view;
        this.f5257O = baseAd;
        ak.a(view);
        BaseAd baseAd2 = this.f5257O;
        ViewGroup customAdContainer = baseAd2 != null ? baseAd2.getCustomAdContainer() : null;
        try {
            if (this.f5255M.getLayoutParams() == null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                layoutParams2.gravity = 17;
                if (customAdContainer != null) {
                    ak.a((View) customAdContainer);
                    customAdContainer.addView(this.f5255M);
                    this.f5262T.addView(customAdContainer, layoutParams2);
                } else {
                    this.f5262T.addView(this.f5255M, layoutParams2);
                }
            } else {
                ViewGroup.LayoutParams layoutParams3 = this.f5255M.getLayoutParams();
                if (customAdContainer != null) {
                    ak.a((View) customAdContainer);
                    customAdContainer.addView(this.f5255M);
                    this.f5262T.addView(customAdContainer, layoutParams3);
                } else {
                    this.f5262T.addView(this.f5255M, layoutParams3);
                }
            }
            if (customAdContainer != null) {
                customAdContainer.setBackgroundColor(0);
            }
        } catch (Throwable th) {
            Log.e(f5253K, "addAdView() >>> failed: " + th.getMessage());
        }
        p();
        setBackgroundColor(0);
        addView(this.f5262T);
    }

    private void a(Context context, x xVar, ATNativeAdInfo.AdPrepareInfo adPrepareInfo) {
        if (adPrepareInfo != null) {
            this.f5258P = adPrepareInfo;
        } else {
            this.f5258P = new ATNativeAdInfo.AdPrepareInfo();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(p.a(context, 32.0f), p.a(context, 8.0f));
            layoutParams.gravity = 85;
            this.f5258P.setChoiceViewLayoutParams(layoutParams);
        }
        if (xVar != null) {
            y yVar = xVar.f4500t;
            if (yVar instanceof com.anythink.core.common.inner.mixad.e.c) {
                this.f5260R = ((com.anythink.core.common.inner.mixad.e.c) yVar).ah();
            }
        }
    }
}
