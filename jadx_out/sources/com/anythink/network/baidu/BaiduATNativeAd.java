package com.anythink.network.baidu;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.network.baidu.impression.BDImpressionController;
import com.anythink.network.baidu.impression.BDImpressionTracker;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.XNativeView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class BaiduATNativeAd extends CustomNativeAd {

    /* renamed from: i, reason: collision with root package name */
    private static final String f9352i = "BaiduATNativeAd";

    /* renamed from: a, reason: collision with root package name */
    protected NativeResponse f9353a;

    /* renamed from: b, reason: collision with root package name */
    protected Context f9354b;

    /* renamed from: c, reason: collision with root package name */
    BDImpressionTracker f9355c;

    /* renamed from: d, reason: collision with root package name */
    boolean f9356d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f9357e = false;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, Object> f9358f;

    /* renamed from: g, reason: collision with root package name */
    private XNativeView f9359g;

    /* renamed from: h, reason: collision with root package name */
    Boolean f9360h;

    public class a implements NativeResponse.AdInteractionListener {
        public a() {
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void adActReward(int i2) {
            Log.e(BaiduATNativeAd.f9352i, "Baidu Native adActReward:" + i2);
            try {
                BaiduATNativeAd.this.notifyAdActReward(i2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void adActRewardSuccess() {
            Log.e(BaiduATNativeAd.f9352i, "Baidu Native adActRewardSuccess:");
            try {
                BaiduATNativeAd.this.notifyAdActRewardSuccess();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADExposed() {
            BDImpressionTracker bDImpressionTracker = BaiduATNativeAd.this.f9355c;
            if (bDImpressionTracker != null) {
                bDImpressionTracker.clear();
                BaiduATNativeAd.this.f9355c = null;
            }
            BaiduATNativeAd.this.notifyAdImpression();
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADExposureFailed(int i2) {
            Log.e(BaiduATNativeAd.f9352i, "Baidu Native onADExposureFailed:" + i2);
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADStatusChanged() {
            NativeResponse nativeResponse;
            if (((com.anythink.nativead.unitgroup.a) BaiduATNativeAd.this).mDownloadListener == null || (nativeResponse = BaiduATNativeAd.this.f9353a) == null) {
                return;
            }
            long appSize = nativeResponse.getAppSize();
            String title = BaiduATNativeAd.this.f9353a.getTitle();
            String appPackage = BaiduATNativeAd.this.f9353a.getAppPackage();
            long downloadProgress = (BaiduATNativeAd.this.getDownloadProgress() * appSize) / 100;
            int downloadStatus = BaiduATNativeAd.this.getDownloadStatus();
            if (downloadStatus != 1) {
                if (downloadStatus == 2) {
                    ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) BaiduATNativeAd.this).mDownloadListener).onInstalled(appPackage, title);
                    return;
                }
                if (downloadStatus == 4) {
                    if (BaiduATNativeAd.this.f9357e) {
                        ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) BaiduATNativeAd.this).mDownloadListener).onDownloadUpdate(appSize, downloadProgress, appPackage, title);
                        return;
                    } else {
                        ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) BaiduATNativeAd.this).mDownloadListener).onDownloadStart(appSize, downloadProgress, appPackage, title);
                        BaiduATNativeAd.this.f9357e = true;
                        return;
                    }
                }
                if (downloadStatus == 5) {
                    ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) BaiduATNativeAd.this).mDownloadListener).onDownloadFinish(appSize, appPackage, title);
                    BaiduATNativeAd.this.f9357e = false;
                    return;
                } else if (downloadStatus == 6) {
                    ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) BaiduATNativeAd.this).mDownloadListener).onDownloadFail(appSize, downloadProgress, appPackage, title);
                    BaiduATNativeAd.this.f9357e = false;
                    return;
                } else if (downloadStatus != 7) {
                    return;
                }
            }
            if (BaiduATNativeAd.this.f9357e) {
                ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) BaiduATNativeAd.this).mDownloadListener).onDownloadPause(appSize, downloadProgress, appPackage, title);
                BaiduATNativeAd.this.f9357e = false;
            }
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onAdClick() {
            BaiduATNativeAd.this.notifyAdClicked();
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onAdUnionClick() {
        }
    }

    public class b extends BDImpressionController {
        public b() {
        }

        @Override // com.anythink.network.baidu.impression.BDImpressionController, com.anythink.network.baidu.impression.BDImpressionInterface
        public void recordImpression(View view) {
            try {
                NativeResponse nativeResponse = BaiduATNativeAd.this.f9353a;
                if (nativeResponse == null || view == null) {
                    return;
                }
                nativeResponse.recordImpression(view);
            } catch (Throwable unused) {
            }
        }
    }

    public class c implements XNativeView.INativeViewClickListener {
        public c() {
        }

        @Override // com.baidu.mobads.sdk.api.XNativeView.INativeViewClickListener
        public void onNativeViewClick(XNativeView xNativeView) {
            BaiduATNativeAd.this.notifyAdClicked();
        }
    }

    public class d implements NativeResponse.AdShakeViewListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ATShakeViewListener f9364a;

        public d(ATShakeViewListener aTShakeViewListener) {
            this.f9364a = aTShakeViewListener;
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdShakeViewListener
        public void onDismiss() {
            ATShakeViewListener aTShakeViewListener = this.f9364a;
            if (aTShakeViewListener != null) {
                aTShakeViewListener.onDismiss();
            }
        }
    }

    public class e implements NativeResponse.AdShakeViewListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ATShakeViewListener f9366a;

        public e(ATShakeViewListener aTShakeViewListener) {
            this.f9366a = aTShakeViewListener;
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdShakeViewListener
        public void onDismiss() {
            ATShakeViewListener aTShakeViewListener = this.f9366a;
            if (aTShakeViewListener != null) {
                aTShakeViewListener.onDismiss();
            }
        }
    }

    public BaiduATNativeAd() {
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        b(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        this.f9353a = null;
        XNativeView xNativeView = this.f9359g;
        if (xNativeView != null) {
            xNativeView.setNativeItem(null);
            this.f9359g.setNativeViewClickListener(null);
            this.f9359g = null;
        }
        this.f9354b = null;
        BDImpressionTracker bDImpressionTracker = this.f9355c;
        if (bDImpressionTracker != null) {
            bDImpressionTracker.clear();
            this.f9355c = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse == null || nativeResponse.getMaterialType() != NativeResponse.MaterialType.VIDEO) {
            return null;
        }
        if (this.f9359g == null) {
            XNativeView xNativeView = new XNativeView(this.f9354b);
            this.f9359g = xNativeView;
            xNativeView.setNativeItem(this.f9353a);
            Boolean bool = this.f9360h;
            if (bool != null) {
                this.f9359g.setVideoMute(bool.booleanValue());
            } else {
                Boolean bool2 = ATSDKGlobalSetting.isGlobalMute;
                if (bool2 != null) {
                    this.f9359g.setVideoMute(bool2.booleanValue());
                }
            }
            if (!this.f9356d) {
                this.f9359g.setNativeViewClickListener(new c());
            }
        }
        return this.f9359g;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadProgress() {
        int downloadStatus;
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse == null || (downloadStatus = nativeResponse.getDownloadStatus()) < 0 || downloadStatus > 100) {
            return 0;
        }
        return downloadStatus;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadStatus() {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse == null) {
            return 0;
        }
        int downloadStatus = nativeResponse.getDownloadStatus();
        if (downloadStatus == -1) {
            return 1;
        }
        if (downloadStatus >= 0 && downloadStatus <= 100) {
            return 4;
        }
        switch (downloadStatus) {
            case 101:
                return 5;
            case 102:
                return 7;
            case 103:
                return 2;
            case 104:
                return 6;
            default:
                return 0;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public int getMainImageHeight() {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse != null) {
            return nativeResponse.getMainPicHeight();
        }
        return 0;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public int getMainImageWidth() {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse != null) {
            return nativeResponse.getMainPicWidth();
        }
        return 0;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public int getNativeAdInteractionType() {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse == null) {
            return 0;
        }
        int adActionType = nativeResponse.getAdActionType();
        if (adActionType == 1) {
            return 2;
        }
        if (adActionType != 2) {
            return adActionType != 3 ? 0 : 3;
        }
        return 1;
    }

    @Override // com.anythink.nativead.unitgroup.a
    public Object getObject() {
        return this.f9353a;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getShakeView(int i2, int i3, ATShakeViewListener aTShakeViewListener) {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse != null) {
            return nativeResponse.renderShakeView(i2, i3, new d(aTShakeViewListener));
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getSlideView(int i2, int i3, int i4, ATShakeViewListener aTShakeViewListener) {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse != null) {
            return nativeResponse.renderSlideView(i2, i3, i4, new e(aTShakeViewListener));
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd
    public void impressionTrack(View view) {
        NativeResponse nativeResponse = this.f9353a;
        if (nativeResponse == null || view == null) {
            return;
        }
        nativeResponse.recordImpression(view);
        notifyAdImpression();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        List creativeClickViewList;
        if (this.f9353a != null) {
            List arrayList = new ArrayList();
            if ((aTNativePrepareInfo instanceof ATNativePrepareExInfo) && (creativeClickViewList = ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList()) != null) {
                arrayList = creativeClickViewList;
            }
            List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
            if (clickViewList == null || clickViewList.size() == 0) {
                clickViewList = a(view);
            }
            this.f9353a.registerViewForInteraction(view, clickViewList, arrayList, new a());
        }
        XNativeView xNativeView = this.f9359g;
        if (xNativeView != null) {
            xNativeView.render();
        }
        try {
            BDImpressionTracker bDImpressionTracker = this.f9355c;
            if (bDImpressionTracker != null) {
                bDImpressionTracker.addView(view, new b());
            }
        } catch (Throwable unused) {
        }
    }

    public void setData(NativeResponse nativeResponse) {
        setIconImageUrl(nativeResponse.getIconUrl());
        if (TextUtils.isEmpty(nativeResponse.getImageUrl())) {
            List<String> multiPicUrls = nativeResponse.getMultiPicUrls();
            if (multiPicUrls != null && multiPicUrls.size() > 0) {
                setMainImageUrl(multiPicUrls.get(0));
                setMainImageWidth(nativeResponse.getMainPicWidth());
                setMainImageHeight(nativeResponse.getMainPicHeight());
            }
        } else {
            setMainImageUrl(nativeResponse.getImageUrl());
            setMainImageWidth(nativeResponse.getMainPicWidth());
            setMainImageHeight(nativeResponse.getMainPicHeight());
        }
        setMainImageWidth(nativeResponse.getMainPicWidth());
        setMainImageHeight(nativeResponse.getMainPicHeight());
        setImageUrlList(nativeResponse.getMultiPicUrls());
        setVideoUrl(nativeResponse.getVideoUrl());
        setVideoDuration(nativeResponse.getDuration());
        setAdChoiceIconUrl(nativeResponse.getBaiduLogoUrl());
        setTitle(nativeResponse.getTitle());
        setDescriptionText(nativeResponse.getDesc());
        setCallToActionText(nativeResponse.getActButtonString());
        setAdvertiserName(nativeResponse.getBrandName());
        int i2 = nativeResponse.getAdActionType() == 1 ? 2 : 0;
        if (nativeResponse.getAdActionType() == 2) {
            i2 = 1;
        }
        if (nativeResponse.getAdActionType() == 3) {
            i2 = 3;
        }
        setNativeInteractionType(i2);
        if (nativeResponse.getAdActionType() == 2) {
            setAdAppInfo(new BaiduATDownloadAppInfo(nativeResponse));
        }
        if (TextUtils.equals(nativeResponse.getAdMaterialType(), NativeResponse.MaterialType.VIDEO.getValue())) {
            this.mAdSourceType = "1";
        } else {
            this.mAdSourceType = "2";
        }
        int adActionType = this.f9353a.getAdActionType();
        if (adActionType == 1) {
            setNativeInteractionType(2);
        } else if (adActionType == 2) {
            setNativeInteractionType(1);
        } else {
            if (adActionType != 3) {
                return;
            }
            setNativeInteractionType(3);
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void setVideoMute(boolean z2) {
        this.f9360h = Boolean.valueOf(z2);
        XNativeView xNativeView = this.f9359g;
        if (xNativeView != null) {
            xNativeView.setVideoMute(z2);
        }
    }

    private void b(View view) {
        if (view == null) {
            return;
        }
        if (!(view instanceof ViewGroup) || view == this.f9359g) {
            view.setOnClickListener(null);
            view.setClickable(false);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                b(viewGroup.getChildAt(i2));
            }
        }
    }

    public BaiduATNativeAd(Context context, NativeResponse nativeResponse, boolean z2, boolean z3, Map<String, Object> map) {
        a(context, nativeResponse, map);
        this.f9356d = z2;
        if (z3) {
            if (this.f9358f == null) {
                this.f9358f = new HashMap();
            }
            this.f9358f.put(BaiduATConst.EN_P_KEY, nativeResponse.getPECPM());
        }
        setNetworkInfoMap(this.f9358f);
    }

    public void a(Context context, NativeResponse nativeResponse, Map<String, Object> map) {
        Context applicationContext = context.getApplicationContext();
        this.f9354b = applicationContext;
        this.f9355c = new BDImpressionTracker(applicationContext, 50);
        this.f9353a = nativeResponse;
        this.f9358f = BaiduATInitManager.getInstance().a(nativeResponse.getAdDataForKey("request_id"), (Map<String, Object>) null, map);
        setData(this.f9353a);
    }

    private void a(View view, View.OnClickListener onClickListener) {
        if ((view instanceof ViewGroup) && view != this.f9359g) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2), onClickListener);
            }
            return;
        }
        view.setOnClickListener(onClickListener);
    }

    private List<View> a(View view) {
        ArrayList arrayList = new ArrayList();
        if ((view instanceof ViewGroup) && view != this.f9359g) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                arrayList.addAll(a(viewGroup.getChildAt(i2)));
            }
            return arrayList;
        }
        arrayList.add(view);
        return arrayList;
    }
}
