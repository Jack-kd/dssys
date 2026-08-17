package com.anythink.network.beizi;

import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdAppInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.beizi.fusion.NativeUnifiedAd;
import com.beizi.fusion.NativeUnifiedAdResponse;
import com.beizi.fusion.model.UnifiedAdDownloadAppInfo;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BzATFeedAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f9475a = BzATFeedAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private NativeUnifiedAd f9476b;

    /* renamed from: c, reason: collision with root package name */
    private final NativeUnifiedAdResponse f9477c;

    public class a extends ATAdAppInfo {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UnifiedAdDownloadAppInfo f9478a;

        public a(UnifiedAdDownloadAppInfo unifiedAdDownloadAppInfo) {
            this.f9478a = unifiedAdDownloadAppInfo;
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppName() {
            return this.f9478a.getAppName();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppPackageName() {
            return null;
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppPermissonUrl() {
            return this.f9478a.getAppPermission();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppPrivacyUrl() {
            return this.f9478a.getAppPrivacy();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public long getAppSize() {
            return 0L;
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppVersion() {
            return this.f9478a.getAppVersion();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getDownloadCount() {
            return null;
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getFunctionUrl() {
            return this.f9478a.getAppIntro();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getPublisher() {
            return this.f9478a.getAppDeveloper();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String unused = BzATFeedAd.this.f9475a;
            Objects.toString(view);
            BzATFeedAd.this.notifyAdDislikeClick();
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f9481a;

        public c(List list) {
            this.f9481a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BzATFeedAd.this.f9477c != null) {
                BzATFeedAd.this.f9477c.registerViewForInteraction(this.f9481a);
            }
        }
    }

    public BzATFeedAd(NativeUnifiedAd nativeUnifiedAd, NativeUnifiedAdResponse nativeUnifiedAdResponse) {
        this.f9476b = nativeUnifiedAd;
        this.f9477c = nativeUnifiedAdResponse;
        a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeUnifiedAd nativeUnifiedAd = this.f9476b;
        if (nativeUnifiedAd != null) {
            nativeUnifiedAd.destroy();
            this.f9476b = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public ATAdAppInfo getAdAppInfo() {
        UnifiedAdDownloadAppInfo downloadAppInfo;
        NativeUnifiedAdResponse nativeUnifiedAdResponse = this.f9477c;
        if (nativeUnifiedAdResponse == null || (downloadAppInfo = nativeUnifiedAdResponse.getDownloadAppInfo()) == null) {
            return null;
        }
        return new a(downloadAppInfo);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        NativeUnifiedAdResponse nativeUnifiedAdResponse = this.f9477c;
        if (nativeUnifiedAdResponse == null || !nativeUnifiedAdResponse.isVideo()) {
            return null;
        }
        return this.f9477c.getVideoView();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        NativeUnifiedAdResponse nativeUnifiedAdResponse = this.f9477c;
        if (nativeUnifiedAdResponse != null) {
            return nativeUnifiedAdResponse.getViewContainer();
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void onResume() {
        NativeUnifiedAd nativeUnifiedAd = this.f9476b;
        if (nativeUnifiedAd != null) {
            nativeUnifiedAd.resume();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (aTNativePrepareInfo == null || view == null) {
            return;
        }
        try {
            bindDislikeListener(new b());
            List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
            if (clickViewList == null || clickViewList.isEmpty()) {
                return;
            }
            view.post(new c(clickViewList));
        } catch (Throwable unused) {
        }
    }

    private void a() {
        try {
            setTitle(this.f9477c.getTitle());
            setIconImageUrl(this.f9477c.getIconUrl());
            setDescriptionText(this.f9477c.getDescription());
            setNativeInteractionType(this.f9477c.getDownloadAppInfo() != null ? 1 : 2);
            this.f9477c.getMaterialType();
            this.f9477c.isVideo();
            if (this.f9477c.isVideo()) {
                this.mAdSourceType = "1";
            } else {
                this.mAdSourceType = "2";
            }
            setMainImageUrl(this.f9477c.getImageUrl());
            setImageUrlList(this.f9477c.getImgList());
            if (this.f9476b != null) {
                setNetworkInfoMap(BzATInitManager.getInstance().a(this.f9476b.getCustomExtraJsonData(), (Map<String, Object>) null));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
