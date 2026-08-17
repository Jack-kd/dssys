package com.meishu.sdk.platform.huawei.paster;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.huawei.hms.ads.AdParam;
import com.huawei.hms.ads.MediaMuteListener;
import com.huawei.hms.ads.instreamad.InstreamAd;
import com.huawei.hms.ads.instreamad.InstreamAdLoadListener;
import com.huawei.hms.ads.instreamad.InstreamAdLoader;
import com.huawei.hms.ads.instreamad.InstreamMediaStateListener;
import com.huawei.hms.ads.instreamad.InstreamView;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.paster.PasterAdLoader;
import com.meishu.sdk.core.ad.paster.b;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.huawei.HWPlatformError;
import java.util.List;

/* loaded from: classes4.dex */
public class HWPasterAdWrapper extends BasePlatformLoader<PasterAdLoader, b> {
    private static final String TAG = "HWPasterAdWrapper";
    private HWPasterAd hwPasterAd;

    public HWPasterAdWrapper(PasterAdLoader pasterAdLoader, SdkAdInfo sdkAdInfo) {
        super(pasterAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAd(List<InstreamAd> list) {
        ViewGroup containerView = getAdLoader().getContainerView();
        View viewInflate = View.inflate(getContext(), R.layout.ms_layout_hw_paster, null);
        containerView.addView(viewInflate);
        InstreamView instreamViewFindViewById = viewInflate.findViewById(R.id.ms_instream_view);
        instreamViewFindViewById.setInstreamAds(list);
        instreamViewFindViewById.setOnInstreamAdClickListener(new InstreamView.OnInstreamAdClickListener() { // from class: com.meishu.sdk.platform.huawei.paster.HWPasterAdWrapper.2
            public void onClick() {
                if (HWPasterAdWrapper.this.getSdkAdInfo() == null || TextUtils.isEmpty(HWPasterAdWrapper.this.getSdkAdInfo().getClk()) || HWPasterAdWrapper.this.hwPasterAd == null) {
                    return;
                }
                LogUtil.d(HWPasterAdWrapper.TAG, "send onADClicked");
                a.a(HWPasterAdWrapper.this.getContext(), f.a(HWPasterAdWrapper.this.getSdkAdInfo().getClk(), HWPasterAdWrapper.this.hwPasterAd));
                if (HWPasterAdWrapper.this.hwPasterAd.getInteractionListener() != null) {
                    HWPasterAdWrapper.this.hwPasterAd.getInteractionListener().onAdClicked();
                }
            }
        });
        instreamViewFindViewById.setInstreamMediaStateListener(new InstreamMediaStateListener() { // from class: com.meishu.sdk.platform.huawei.paster.HWPasterAdWrapper.3
            public void onMediaCompletion(int i2) {
                if (HWPasterAdWrapper.this.getLoaderListener() != null) {
                    HWPasterAdWrapper.this.getLoaderListener().onVideoComplete();
                }
            }

            public void onMediaError(int i2, int i3, int i4) {
                if (HWPasterAdWrapper.this.getLoaderListener() != null) {
                    HWPasterAdWrapper.this.getLoaderListener().onVideoError();
                }
            }

            public void onMediaPause(int i2) {
            }

            public void onMediaProgress(int i2, int i3) {
            }

            public void onMediaStart(int i2) {
                if (HWPasterAdWrapper.this.getLoaderListener() != null) {
                    HWPasterAdWrapper.this.getLoaderListener().onAdExposure();
                }
                if (HWPasterAdWrapper.this.hwPasterAd.getInteractionListener() != null) {
                    HWPasterAdWrapper.this.hwPasterAd.getInteractionListener().onAdExposure();
                }
            }

            public void onMediaStop(int i2) {
            }
        });
        instreamViewFindViewById.setMediaMuteListener(new MediaMuteListener() { // from class: com.meishu.sdk.platform.huawei.paster.HWPasterAdWrapper.4
            public void onMute() {
            }

            public void onUnmute() {
            }
        });
        this.hwPasterAd = new HWPasterAd(this, instreamViewFindViewById);
        if (getLoaderListener() != null) {
            getLoaderListener().onAdLoaded(this.hwPasterAd);
            getLoaderListener().onAdReady(this.hwPasterAd);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((PasterAdLoader) this.adLoader).getContext().getApplicationContext(), i0.a(getSdkAdInfo().getReq()), new i());
        new InstreamAdLoader.Builder(this.context, getSdkAdInfo().getPid()).setTotalDuration(30).setMaxCount(1).setInstreamAdLoadListener(new InstreamAdLoadListener() { // from class: com.meishu.sdk.platform.huawei.paster.HWPasterAdWrapper.1
            public void onAdFailed(int i2) {
                new HWPlatformError("加载出错", i2, HWPasterAdWrapper.this.getSdkAdInfo()).post(HWPasterAdWrapper.this.loadListener);
            }

            public void onAdLoaded(List<InstreamAd> list) {
                HWPasterAdWrapper.this.initAd(list);
            }
        }).build().loadAd(new AdParam.Builder().build());
    }
}
