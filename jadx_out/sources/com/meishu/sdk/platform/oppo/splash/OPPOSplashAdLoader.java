package com.meishu.sdk.platform.oppo.splash;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.heytap.msp.mobad.api.ad.SplashAd;
import com.heytap.msp.mobad.api.listener.ISplashAdListener;
import com.heytap.msp.mobad.api.params.SplashAdParams;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.ad.splash.d;
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
public class OPPOSplashAdLoader extends BasePlatformLoader<SplashAdLoader, d> {
    private static final String TAG = "OPPOSplashAdLoader";
    private ArrayList<OPPOSplashAd> oppoSplashAdList;

    public class MyISplashAdListener implements ISplashAdListener {
        private OPPOSplashAd oppoSplashAd;
        private SplashAd splashAd;

        public MyISplashAdListener() {
        }

        public void onAdClick() {
            if (OPPOSplashAdLoader.this.getSdkAdInfo() != null && !TextUtils.isEmpty(OPPOSplashAdLoader.this.getSdkAdInfo().getClk())) {
                LogUtil.d(OPPOSplashAdLoader.TAG, "send onAdClick");
                a.a(OPPOSplashAdLoader.this.getContext(), f.a(OPPOSplashAdLoader.this.getSdkAdInfo().getClk(), this.oppoSplashAd));
            }
            if (this.oppoSplashAd.getInteractionListener() != null) {
                this.oppoSplashAd.getInteractionListener().onAdClicked();
            }
        }

        public void onAdDismissed() {
            if (OPPOSplashAdLoader.this.getLoaderListener() != null) {
                OPPOSplashAdLoader.this.getLoaderListener().onAdClosed();
            }
        }

        @Deprecated
        public void onAdFailed(String str) {
            this.splashAd.destroyAd();
        }

        public void onAdShow() {
            if (OPPOSplashAdLoader.this.getLoaderListener() != null) {
                OPPOSplashAdLoader.this.getLoaderListener().onAdLoaded(this.oppoSplashAd);
                OPPOSplashAdLoader.this.getLoaderListener().onAdPresent(this.oppoSplashAd);
                OPPOSplashAdLoader.this.getLoaderListener().onAdExposure();
            }
        }

        public void setOPPOSplashAd(OPPOSplashAd oPPOSplashAd) {
            this.oppoSplashAd = oPPOSplashAd;
        }

        public void setSplashAd(SplashAd splashAd) {
            this.splashAd = splashAd;
        }

        public void onAdFailed(int i2, String str) {
            LogUtil.e(OPPOSplashAdLoader.TAG, str + " " + i2);
            a0.a(OPPOSplashAdLoader.this.getSdkAdInfo().getErr(), Integer.valueOf(i2), str);
            if (OPPOSplashAdLoader.this.getLoaderListener() != null) {
                OPPOSplashAdLoader.this.getLoaderListener().onAdError();
            }
        }
    }

    public OPPOSplashAdLoader(SplashAdLoader splashAdLoader, SdkAdInfo sdkAdInfo) {
        super(splashAdLoader, sdkAdInfo);
        this.oppoSplashAdList = new ArrayList<>();
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        ArrayList<OPPOSplashAd> arrayList = this.oppoSplashAdList;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            OPPOSplashAd oPPOSplashAd = arrayList.get(i2);
            i2++;
            oPPOSplashAd.destroy();
        }
        this.oppoSplashAdList.clear();
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        Object obj = getLocalParams().get(SplashAdLoader.KEY_SKIP_BUTTON);
        if (!((Boolean) getLocalParams().get(SplashAdLoader.KEY_AUTO_SHOW)).booleanValue() && getLoaderListener() != null) {
            getLoaderListener().onAdError();
            return;
        }
        SplashAdParams.Builder builder = new SplashAdParams.Builder();
        if (obj != null && (obj instanceof View)) {
            ((View) obj).setVisibility(4);
        }
        ImageView imageView = new ImageView(getContext());
        imageView.setImageAlpha(0);
        imageView.setImageDrawable(new ColorDrawable(0));
        imageView.setBackground(new ColorDrawable(0));
        SplashAdParams splashAdParamsBuild = builder.setShowPreLoadPage(false).setFetchTimeout(getAdLoader().getFetchDelay()).build();
        OPPOSplashAd oPPOSplashAd = new OPPOSplashAd(this);
        MyISplashAdListener myISplashAdListener = new MyISplashAdListener();
        myISplashAdListener.setOPPOSplashAd(oPPOSplashAd);
        SplashAd splashAd = new SplashAd((Activity) getContext(), this.sdkAdInfo.getPid(), myISplashAdListener, splashAdParamsBuild);
        oPPOSplashAd.setOPPOSplashAd(splashAd);
        myISplashAdListener.setSplashAd(splashAd);
        this.oppoSplashAdList.add(oPPOSplashAd);
    }
}
