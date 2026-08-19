package com.anythink.network.ubix;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdAppInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.UBiXImage;
import com.ubix.ssp.open.nativee.UBiXNativeInteractionListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class UbATFeedAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f10479a = UbATFeedAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private NativeAd f10480b;

    public class a extends ATAdAppInfo {
        public a() {
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppName() {
            return UbATFeedAd.this.f10480b.getAppName();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppPackageName() {
            return UbATFeedAd.this.f10480b.getAppPackageName();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppPermissonUrl() {
            return UbATFeedAd.this.f10480b.getAppPermissionLink();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppPrivacyUrl() {
            return UbATFeedAd.this.f10480b.getAppPrivacyLink();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public long getAppSize() {
            return UbATFeedAd.this.f10480b.getAppDownloadSize();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getAppVersion() {
            return UbATFeedAd.this.f10480b.getAppVersion();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getDownloadCount() {
            return null;
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getFunctionUrl() {
            return UbATFeedAd.this.f10480b.getAppIntroduceLink();
        }

        @Override // com.anythink.core.api.ATAdAppInfo
        public String getPublisher() {
            return UbATFeedAd.this.f10480b.getAppPublisher();
        }
    }

    public class b implements UBiXNativeInteractionListener {
        public b() {
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdClicked(View view) {
            String unused = UbATFeedAd.this.f10479a;
            UbATFeedAd.this.notifyAdClicked();
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdClosed() {
            String unused = UbATFeedAd.this.f10479a;
            UbATFeedAd.this.notifyAdDislikeClick();
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdExposeFailed(AdError adError) {
            String unused = UbATFeedAd.this.f10479a;
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdExposed() {
            String unused = UbATFeedAd.this.f10479a;
            UbATFeedAd.this.notifyAdImpression();
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdStatusChanged() {
        }
    }

    public UbATFeedAd(NativeAd nativeAd) {
        this.f10480b = nativeAd;
        a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        a(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeAd nativeAd = this.f10480b;
        if (nativeAd != null) {
            try {
                nativeAd.destroy();
            } catch (Throwable unused) {
            }
            this.f10480b = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public ATAdAppInfo getAdAppInfo() {
        NativeAd nativeAd = this.f10480b;
        if (nativeAd == null || !nativeAd.isDownloadAd()) {
            return null;
        }
        return new a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        NativeAd nativeAd = this.f10480b;
        if (nativeAd == null || !nativeAd.isVideoAd()) {
            return null;
        }
        return this.f10480b.getMediaView();
    }

    @Override // com.anythink.core.api.BaseAd
    public boolean isValid() {
        NativeAd nativeAd = this.f10480b;
        return nativeAd != null ? nativeAd.isValid() : super.isValid();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        try {
            if (this.f10480b != null && aTNativePrepareInfo != null && (view instanceof ViewGroup)) {
                List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
                if (clickViewList == null || clickViewList.isEmpty()) {
                    clickViewList = new ArrayList<>();
                    a(clickViewList, view);
                }
                View closeView = aTNativePrepareInfo.getCloseView();
                this.f10480b.registerViews((ViewGroup) view, clickViewList, closeView, new b());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a() {
        NativeAd nativeAd = this.f10480b;
        if (nativeAd == null) {
            return;
        }
        try {
            setTitle(nativeAd.getTitle());
            setDescriptionText(this.f10480b.getDesc());
            setCallToActionText(this.f10480b.getActionButtonText());
            setIconImageUrl(this.f10480b.getAppIcon());
            setMainImageUrl(this.f10480b.getImageUrl());
            List<UBiXImage> imageList = this.f10480b.getImageList();
            if (imageList != null && !imageList.isEmpty()) {
                ArrayList arrayList = new ArrayList(imageList.size());
                for (UBiXImage uBiXImage : imageList) {
                    if (uBiXImage != null && !TextUtils.isEmpty(uBiXImage.getUrl())) {
                        arrayList.add(uBiXImage.getUrl());
                    }
                }
                setImageUrlList(arrayList);
            }
            setNativeInteractionType(this.f10480b.isDownloadAd() ? 1 : 2);
            if (this.f10480b.isVideoAd()) {
                this.mAdSourceType = "1";
            } else {
                this.mAdSourceType = "2";
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(List<View> list, View view) {
        if ((view instanceof ViewGroup) && view != this.f10480b.getMediaView()) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(list, viewGroup.getChildAt(i2));
            }
            return;
        }
        if (view != this.f10480b.getMediaView()) {
            list.add(view);
        }
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2));
            }
            return;
        }
        view.setOnClickListener(null);
        view.setClickable(false);
    }
}
