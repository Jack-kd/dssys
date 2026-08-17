package com.meishu.sdk.platform.sigmob.custom.feed;

import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerAdapter;
import com.meishu.sdk.platform.sigmob.custom.SigmobCustomInitManager;
import com.sigmob.windad.WindAdBiddingLossReason;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.natives.WindNativeAdData;
import com.sigmob.windad.natives.WindNativeAdRequest;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes4.dex */
public class SigmobCustomFeedAdapter extends MsCustomRecyclerAdapter {
    private SigmobCustomNativeAd sigmobCustomFeedAd;
    private WindNativeUnifiedAd windNativeUnifiedAd;

    public SigmobCustomFeedAdapter(RecyclerMixAdLoader recyclerMixAdLoader, SdkAdInfo sdkAdInfo) {
        super(recyclerMixAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        WindNativeUnifiedAd windNativeUnifiedAd = new WindNativeUnifiedAd(new WindNativeAdRequest(str, null, 1, null));
        this.windNativeUnifiedAd = windNativeUnifiedAd;
        windNativeUnifiedAd.setNativeAdLoadListener(new WindNativeUnifiedAd.WindNativeAdLoadListener() { // from class: com.meishu.sdk.platform.sigmob.custom.feed.SigmobCustomFeedAdapter.2
            @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
            public void onAdError(WindAdError windAdError, String str2) {
                SigmobCustomFeedAdapter.this.onRenderFail(-1, "加载失败");
            }

            @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
            public void onAdLoad(List<WindNativeAdData> list, String str2) {
                if (list == null || list.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                WindNativeAdData windNativeAdData = list.get(0);
                if (SigmobCustomFeedAdapter.this.windNativeUnifiedAd != null) {
                    String ecpm = SigmobCustomFeedAdapter.this.windNativeUnifiedAd.getEcpm();
                    if (SigmobCustomFeedAdapter.this.getSdkAdInfo() != null) {
                        SigmobCustomFeedAdapter.this.getSdkAdInfo().setEcpm(ecpm);
                    }
                }
                SigmobCustomFeedAdapter sigmobCustomFeedAdapter = SigmobCustomFeedAdapter.this;
                sigmobCustomFeedAdapter.sigmobCustomFeedAd = new SigmobCustomNativeAd(sigmobCustomFeedAdapter, windNativeAdData);
                arrayList.add(SigmobCustomFeedAdapter.this.sigmobCustomFeedAd);
                SigmobCustomFeedAdapter.this.onFeedAdLoad(arrayList);
            }
        });
        this.windNativeUnifiedAd.loadAd();
    }

    @Override // com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerAdapter
    public void loadCustomAd(String str, String str2, final String str3, String str4) {
        SigmobCustomInitManager.getInstance().initSdk(this.context, str, str2, new SigmobCustomInitManager.InitCallback() { // from class: com.meishu.sdk.platform.sigmob.custom.feed.SigmobCustomFeedAdapter.1
            @Override // com.meishu.sdk.platform.sigmob.custom.SigmobCustomInitManager.InitCallback
            public void onError(int i2, String str5) {
            }

            @Override // com.meishu.sdk.platform.sigmob.custom.SigmobCustomInitManager.InitCallback
            public void onSuccess() {
                SigmobCustomFeedAdapter.this.loadAdWithCallback(str3);
            }
        });
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        try {
            if (this.windNativeUnifiedAd != null) {
                if (z2) {
                    HashMap map = new HashMap();
                    map.put(WindAds.AUCTION_PRICE, Integer.valueOf(Integer.parseInt(this.windNativeUnifiedAd.getEcpm())));
                    map.put(WindAds.HIGHEST_LOSS_PRICE, Integer.valueOf(u0.a(Integer.parseInt(this.windNativeUnifiedAd.getEcpm()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
                    map.put(WindAds.CURRENCY, "CNY");
                    this.windNativeUnifiedAd.sendWinNotificationWithInfo(map);
                    return;
                }
                HashMap map2 = new HashMap();
                map2.put(WindAds.AUCTION_PRICE, Integer.valueOf(i2));
                map2.put(WindAds.CURRENCY, "CNY");
                map2.put(WindAds.LOSS_REASON, Integer.valueOf(WindAdBiddingLossReason.LOSS_REASON_LOW_PRICE.getCode()));
                this.windNativeUnifiedAd.sendLossNotificationWithInfo(map2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
