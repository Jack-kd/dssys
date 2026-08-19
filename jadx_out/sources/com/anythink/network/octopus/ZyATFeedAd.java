package com.anythink.network.octopus;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.octopus.ad.NativeAd;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ZyATFeedAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f10106a = ZyATFeedAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private NativeAd f10107b;

    /* renamed from: c, reason: collision with root package name */
    private NativeAdResponse f10108c;

    /* renamed from: d, reason: collision with root package name */
    private Context f10109d;

    public class a implements NativeAdEventListener {
        public a() {
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onADExposed() {
            String unused = ZyATFeedAd.this.f10106a;
            ZyATFeedAd.this.notifyAdImpression();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClick() {
            String unused = ZyATFeedAd.this.f10106a;
            ZyATFeedAd.this.notifyAdClicked();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClose() {
            String unused = ZyATFeedAd.this.f10106a;
            ZyATFeedAd.this.notifyAdDislikeClick();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdRenderFailed(int i2) {
            String unused = ZyATFeedAd.this.f10106a;
        }
    }

    public ZyATFeedAd(Context context, NativeAd nativeAd, NativeAdResponse nativeAdResponse) {
        this.f10109d = context.getApplicationContext();
        this.f10107b = nativeAd;
        this.f10108c = nativeAdResponse;
        a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        a(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeAd nativeAd = this.f10107b;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f10107b = null;
        }
        NativeAdResponse nativeAdResponse = this.f10108c;
        if (nativeAdResponse != null) {
            nativeAdResponse.destroy();
            this.f10108c = null;
        }
        this.f10109d = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public Bitmap getAdLogo() {
        NativeAdResponse nativeAdResponse = this.f10108c;
        if (nativeAdResponse != null) {
            return nativeAdResponse.getLogo(this.f10109d);
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        try {
            NativeAdResponse nativeAdResponse = this.f10108c;
            if (nativeAdResponse != null) {
                return nativeAdResponse.getVideoView(this.f10109d);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return false;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (view == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view;
            List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
            if (clickViewList == null) {
                clickViewList = new ArrayList<>();
                a(clickViewList, view);
            }
            this.f10108c.bindUnifiedView(viewGroup, clickViewList, new a());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a() {
        try {
            NativeAdResponse nativeAdResponse = this.f10108c;
            if (nativeAdResponse != null) {
                int materialType = nativeAdResponse.getMaterialType();
                int i2 = 1;
                if (materialType == 2) {
                    this.mAdSourceType = "1";
                } else if (materialType == 1) {
                    this.mAdSourceType = "2";
                }
                if (this.f10108c.getInteractionType() != 2) {
                    i2 = 2;
                }
                setNativeInteractionType(i2);
                setTitle(this.f10108c.getTitle());
                setDescriptionText(this.f10108c.getDescription());
                setIconImageUrl(this.f10108c.getIconUrl());
                setMainImageUrl(this.f10108c.getImageUrl());
                setImageUrlList(this.f10108c.getImageUrls());
                setCallToActionText(this.f10108c.getButtonText());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(List<View> list, View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(list, viewGroup.getChildAt(i2));
            }
            return;
        }
        list.add(view);
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
