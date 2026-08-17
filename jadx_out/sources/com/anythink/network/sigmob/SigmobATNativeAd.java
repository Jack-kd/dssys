package com.anythink.network.sigmob;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.AdAppInfo;
import com.sigmob.windad.natives.NativeADEventListener;
import com.sigmob.windad.natives.WindNativeAdData;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class SigmobATNativeAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private Context f10210a;

    /* renamed from: b, reason: collision with root package name */
    private WindNativeAdData f10211b;

    /* renamed from: c, reason: collision with root package name */
    FrameLayout f10212c = null;

    /* renamed from: d, reason: collision with root package name */
    ImageView f10213d = null;

    /* renamed from: e, reason: collision with root package name */
    ImageView f10214e = null;

    /* renamed from: f, reason: collision with root package name */
    ImageView f10215f = null;

    /* renamed from: g, reason: collision with root package name */
    List<ImageView> f10216g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    WindNativeUnifiedAd f10217h;

    /* renamed from: i, reason: collision with root package name */
    ATNativePrepareInfo f10218i;

    public class a implements NativeADEventListener {
        public a() {
        }

        @Override // com.sigmob.windad.natives.NativeADEventListener
        public void onAdClicked() {
            SigmobATNativeAd.this.notifyAdClicked();
        }

        @Override // com.sigmob.windad.natives.NativeADEventListener
        public void onAdDetailDismiss() {
        }

        @Override // com.sigmob.windad.natives.NativeADEventListener
        public void onAdDetailShow() {
        }

        @Override // com.sigmob.windad.natives.NativeADEventListener
        public void onAdError(WindAdError windAdError) {
        }

        @Override // com.sigmob.windad.natives.NativeADEventListener
        public void onAdExposed() {
            SigmobATNativeAd.this.notifyAdImpression();
        }
    }

    public class b implements WindNativeAdData.NativeADMediaListener {
        public b() {
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
        public void onVideoCompleted() {
            SigmobATNativeAd.this.notifyAdVideoEnd();
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
        public void onVideoError(WindAdError windAdError) {
            SigmobATNativeAd.this.notifyAdVideoVideoPlayFail("" + windAdError.getErrorCode(), windAdError.getMessage());
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
        public void onVideoLoad() {
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
        public void onVideoPause() {
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
        public void onVideoResume() {
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
        public void onVideoStart() {
            SigmobATNativeAd.this.notifyAdVideoStart();
        }
    }

    public class c implements WindNativeAdData.DislikeInteractionCallback {
        public c() {
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
        public void onCancel() {
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
        public void onSelected(int i2, String str, boolean z2) {
            SigmobATNativeAd.this.notifyAdDislikeClick();
        }

        @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
        public void onShow() {
        }
    }

    public SigmobATNativeAd(Context context, WindNativeAdData windNativeAdData, WindNativeUnifiedAd windNativeUnifiedAd) {
        this.f10210a = context;
        this.f10211b = windNativeAdData;
        this.f10217h = windNativeUnifiedAd;
        a(windNativeAdData);
    }

    private void a(WindNativeAdData windNativeAdData) {
        setTitle(windNativeAdData.getTitle());
        setDescriptionText(windNativeAdData.getDesc());
        setIconImageUrl(windNativeAdData.getIconUrl());
        setCallToActionText(windNativeAdData.getCTAText());
        if (windNativeAdData.getAdPatternType() == 1) {
            this.mAdSourceType = "1";
            this.f10212c = new FrameLayout(this.f10210a);
        } else {
            this.mAdSourceType = "2";
            this.f10213d = new ImageView(this.f10210a);
            this.f10216g.clear();
            this.f10216g.add(this.f10213d);
            if (this.f10211b.getAdPatternType() == 3) {
                this.f10214e = new ImageView(this.f10210a);
                this.f10215f = new ImageView(this.f10210a);
                this.f10216g.add(this.f10214e);
                this.f10216g.add(this.f10215f);
            }
        }
        AdAppInfo adAppInfo = windNativeAdData.getAdAppInfo();
        if (adAppInfo != null) {
            setAdAppInfo(new com.anythink.network.sigmob.a(adAppInfo));
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        ATNativePrepareInfo aTNativePrepareInfo = this.f10218i;
        if (aTNativePrepareInfo != null) {
            View closeView = aTNativePrepareInfo.getCloseView();
            if (closeView != null) {
                closeView.setOnTouchListener(null);
            }
            this.f10218i = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        super.destroy();
        WindNativeAdData windNativeAdData = this.f10211b;
        if (windNativeAdData != null) {
            windNativeAdData.destroy();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public Bitmap getAdLogo() {
        WindNativeAdData windNativeAdData = this.f10211b;
        if (windNativeAdData != null) {
            return windNativeAdData.getAdLogo();
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        WindNativeAdData windNativeAdData = this.f10211b;
        if (windNativeAdData == null) {
            return null;
        }
        View view = windNativeAdData.getAdPatternType() == 1 ? this.f10212c : this.f10213d;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        view.setLayoutParams(layoutParams);
        return view;
    }

    public List<ImageView> getNativeImageViewList() {
        return this.f10216g;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void pauseVideo() {
        super.pauseVideo();
        WindNativeAdData windNativeAdData = this.f10211b;
        if (windNativeAdData == null || windNativeAdData.getAdPatternType() != 1) {
            return;
        }
        this.f10211b.pauseVideo();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        List<View> creativeClickViewList;
        WindNativeUnifiedAd windNativeUnifiedAd = this.f10217h;
        if (windNativeUnifiedAd != null) {
            windNativeUnifiedAd.setBidEcpm(SigmobATInitManager.getEcpmInt(windNativeUnifiedAd));
        }
        if (this.f10211b != null) {
            this.f10218i = aTNativePrepareInfo;
            List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
            ArrayList arrayList = new ArrayList();
            if ((aTNativePrepareInfo instanceof ATNativePrepareExInfo) && (creativeClickViewList = ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList()) != null) {
                arrayList.addAll(creativeClickViewList);
            }
            if (clickViewList != null) {
                arrayList.addAll(clickViewList);
            }
            if (clickViewList == null || clickViewList.size() < 1) {
                clickViewList = new ArrayList<>();
                clickViewList.add(view);
            }
            List<View> list = clickViewList;
            if (arrayList.size() == 0) {
                arrayList.add(view);
            }
            this.f10211b.bindViewForInteraction(view, list, arrayList, aTNativePrepareInfo.getCloseView(), new a());
            if (this.f10211b.getAdPatternType() == 1) {
                this.f10211b.bindMediaViewWithoutAppInfo(this.f10212c, new b());
            } else {
                this.f10211b.bindImageViews(this.f10216g, 0);
            }
            if (view.getContext() == null || !(view.getContext() instanceof Activity)) {
                return;
            }
            this.f10211b.setDislikeInteractionCallback((Activity) view.getContext(), new c());
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void resumeVideo() {
        super.resumeVideo();
        WindNativeAdData windNativeAdData = this.f10211b;
        if (windNativeAdData == null || windNativeAdData.getAdPatternType() != 1) {
            return;
        }
        this.f10211b.resumeVideo();
    }
}
