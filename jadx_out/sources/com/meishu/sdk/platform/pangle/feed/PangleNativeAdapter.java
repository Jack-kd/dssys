package com.meishu.sdk.platform.pangle.feed;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeRequest;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerAdapter;
import com.meishu.sdk.platform.pangle.PangleInitManager;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class PangleNativeAdapter extends MsCustomRecyclerAdapter {
    public PangleNativeAdapter(RecyclerMixAdLoader recyclerMixAdLoader, SdkAdInfo sdkAdInfo) {
        super(recyclerMixAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        PAGNativeAd.loadAd(str, new PAGNativeRequest(), new PAGNativeAdLoadListener() { // from class: com.meishu.sdk.platform.pangle.feed.PangleNativeAdapter.2
            public void onError(int i2, String str2) {
                PangleNativeAdapter.this.onError(i2, str2);
            }

            public void onAdLoaded(PAGNativeAd pAGNativeAd) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new PangleFeedAd(PangleNativeAdapter.this, pAGNativeAd));
                PangleNativeAdapter.this.onFeedAdLoad(arrayList);
            }
        });
    }

    @Override // com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerAdapter
    public void loadCustomAd(String str, String str2, final String str3, String str4) {
        PangleInitManager.getInstance().initSdk(this.context, str, new PangleInitManager.InitCallback() { // from class: com.meishu.sdk.platform.pangle.feed.PangleNativeAdapter.1
            @Override // com.meishu.sdk.platform.pangle.PangleInitManager.InitCallback
            public void onError(int i2, String str5) {
            }

            @Override // com.meishu.sdk.platform.pangle.PangleInitManager.InitCallback
            public void onSuccess() {
                PangleNativeAdapter.this.loadAdWithCallback(str3);
            }
        });
    }
}
