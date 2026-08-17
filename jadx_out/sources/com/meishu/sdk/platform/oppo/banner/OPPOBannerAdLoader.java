package com.meishu.sdk.platform.oppo.banner;

import android.app.Activity;
import android.text.TextUtils;
import com.heytap.msp.mobad.api.ad.BannerAd;
import com.heytap.msp.mobad.api.listener.IBannerAdListener;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.ad.banner.b;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class OPPOBannerAdLoader extends BasePlatformLoader<BannerAdLoader, b> {
    private static final String TAG = "OPPOBannerAdLoader";
    private ArrayList<BannerAd> bannerAdList;

    public OPPOBannerAdLoader(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo) {
        super(bannerAdLoader, sdkAdInfo);
        this.bannerAdList = new ArrayList<>();
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        ArrayList<BannerAd> arrayList = this.bannerAdList;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            BannerAd bannerAd = arrayList.get(i2);
            i2++;
            bannerAd.destroyAd();
        }
        this.bannerAdList.clear();
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((BannerAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        final OPPOBannerAd oPPOBannerAd = new OPPOBannerAd(this);
        final BannerAd bannerAd = new BannerAd((Activity) getContext(), getSdkAdInfo().getPid());
        bannerAd.setAdListener(new IBannerAdListener() { // from class: com.meishu.sdk.platform.oppo.banner.OPPOBannerAdLoader.1
            public void onAdClick() {
                if (OPPOBannerAdLoader.this.getSdkAdInfo() != null && !TextUtils.isEmpty(OPPOBannerAdLoader.this.getSdkAdInfo().getClk())) {
                    LogUtil.d(OPPOBannerAdLoader.TAG, "send onAdClick");
                    a.a(OPPOBannerAdLoader.this.getContext(), f.a(OPPOBannerAdLoader.this.getSdkAdInfo().getClk(), oPPOBannerAd));
                }
                if (oPPOBannerAd.getInteractionListener() != null) {
                    oPPOBannerAd.getInteractionListener().onAdClicked();
                }
            }

            public void onAdClose() {
                if (OPPOBannerAdLoader.this.getLoaderListener() != null) {
                    OPPOBannerAdLoader.this.getLoaderListener().onAdClosed();
                }
            }

            @Deprecated
            public void onAdFailed(String str) {
            }

            public void onAdReady() {
                oPPOBannerAd.setAdView(bannerAd.getAdView());
                if (OPPOBannerAdLoader.this.getLoaderListener() != null) {
                    OPPOBannerAdLoader.this.getLoaderListener().onAdLoaded(oPPOBannerAd);
                }
            }

            public void onAdShow() {
                if (OPPOBannerAdLoader.this.getLoaderListener() != null) {
                    OPPOBannerAdLoader.this.getLoaderListener().onAdExposure();
                }
            }

            public void onAdFailed(int i2, String str) {
                LogUtil.e(OPPOBannerAdLoader.TAG, str + " " + i2);
                a0.a(OPPOBannerAdLoader.this.getSdkAdInfo().getErr(), Integer.valueOf(i2), str);
                if (OPPOBannerAdLoader.this.getLoaderListener() != null) {
                    OPPOBannerAdLoader.this.getLoaderListener().onAdError();
                }
            }
        });
        bannerAd.loadAd();
        this.bannerAdList.add(bannerAd);
    }
}
