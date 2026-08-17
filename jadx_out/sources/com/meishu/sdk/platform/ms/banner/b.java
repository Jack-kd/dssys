package com.meishu.sdk.platform.ms.banner;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.bquery.i;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.view.DownloadView;
import com.meishu.sdk.core.view.gif.GifImageView;
import com.meishu.sdk.meishu_ad.banner.MeishuBannerRootView;
import com.meishu.sdk.meishu_ad.v;
import com.meishu.sdk.platform.ms.g;

/* loaded from: classes4.dex */
public class b extends g<com.meishu.sdk.meishu_ad.banner.a, BannerAdLoader, com.meishu.sdk.core.ad.banner.b> {

    /* renamed from: b, reason: collision with root package name */
    public v f32855b;

    public b(BannerAdLoader bannerAdLoader, com.meishu.sdk.meishu_ad.banner.a aVar) {
        super(bannerAdLoader, aVar);
        this.f32855b = new v(bannerAdLoader.getContext());
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        ((com.meishu.sdk.core.ad.banner.b) getLoaderListener()).onAdLoaded(new c((com.meishu.sdk.meishu_ad.banner.a) this.f32888a));
        v vVar = this.f32855b;
        com.meishu.sdk.meishu_ad.banner.a aVar = (com.meishu.sdk.meishu_ad.banner.a) this.f32888a;
        a aVar2 = new a(this, (com.meishu.sdk.core.ad.banner.b) getLoaderListener());
        vVar.getClass();
        try {
            vVar.f32572d = aVar.getEventUrl();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        MeishuBannerRootView meishuBannerRootView = (MeishuBannerRootView) LayoutInflater.from(vVar.f32569a).inflate(R.layout.ms_banner_ad_layout, (ViewGroup) null);
        meishuBannerRootView.setAdListener(aVar2);
        i iVar = new i(meishuBannerRootView);
        GifImageView gifImageView = (GifImageView) meishuBannerRootView.findViewById(R.id.ms_banner_image);
        if (aVar.getImageUrls() == null || aVar.getImageUrls().length == 0) {
            LogUtil.i("AdNative", "empty srcUrls");
            vVar.a(aVar2, "empty srcUrls", ErrorCodeUtil.EMPTY_SRC_URL);
            return;
        }
        if (aVar.getAdPatternType() == 2) {
            StringBuilder sbA = com.meishu.sdk.activity.a.a("unsupported type: ");
            sbA.append(aVar.getAdPatternType());
            LogUtil.i("AdNative", sbA.toString());
            vVar.a(aVar2, "unsupported type", ErrorCodeUtil.UNSUPPORTED_TYPE);
            return;
        }
        if (!AdSdk.adConfig().showLogo()) {
            iVar.b(R.id.ms_img_meishu_ad_tag).d(8);
        } else if (!TextUtils.isEmpty(aVar.getFromLogo())) {
            iVar.b(R.id.ms_img_meishu_ad_tag).a(aVar.getFromLogo(), false);
        }
        new DownloadView().handleDownloadView(meishuBannerRootView, aVar);
        vVar.f32582n = System.currentTimeMillis();
        com.meishu.sdk.core.cache.a.a(aVar.getImageUrls()[0], new com.meishu.sdk.meishu_ad.a(vVar, aVar2, aVar, meishuBannerRootView, gifImageView, iVar), true);
    }
}
