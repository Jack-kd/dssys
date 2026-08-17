package com.anythink.network.meishu;

import android.content.Context;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.BaseAd;
import com.anythink.network.meishu.MsNativeAd;
import com.meishu.sdk.core.ad.MsAdSlot;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdEventListener;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.utils.AdErrorInfo;
import com.meishu.sdk.core.utils.ResultBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class MsNativeExpressAd extends MsNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final MsNativeAd.AdListener f10018a;

    /* renamed from: b, reason: collision with root package name */
    private RecyclerMixAdLoader f10019b;

    /* renamed from: c, reason: collision with root package name */
    boolean f10020c;

    /* renamed from: d, reason: collision with root package name */
    private final int f10021d;

    /* renamed from: e, reason: collision with root package name */
    private final int f10022e;

    public class a implements RecyclerAdEventListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10023a;

        public a(Context context) {
            this.f10023a = context;
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdError(AdErrorInfo adErrorInfo) {
            if (MsNativeExpressAd.this.f10018a != null) {
                MsNativeExpressAd.this.f10018a.onNativeAdFailToLoad(String.valueOf(adErrorInfo.getCode()), adErrorInfo.getMessage());
            }
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdReady(List<RecyclerAdData> list) throws NumberFormatException {
            BaseAd msATFeedAd;
            if (list == null || list.isEmpty()) {
                if (MsNativeExpressAd.this.f10018a != null) {
                    MsNativeExpressAd.this.f10018a.onNativeAdFailToLoad("", "onAdReady list is null");
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            double d2 = 0.0d;
            for (int i2 = 0; i2 < list.size(); i2++) {
                RecyclerAdData recyclerAdData = list.get(i2);
                if (recyclerAdData.isNativeExpress()) {
                    msATFeedAd = new MsATExpressAd(this.f10023a, recyclerAdData);
                } else {
                    if (MsNativeExpressAd.this.f10022e == 0) {
                        recyclerAdData.unmute();
                    } else {
                        recyclerAdData.mute();
                    }
                    msATFeedAd = new MsATFeedAd(this.f10023a, recyclerAdData);
                }
                arrayList.add(msATFeedAd);
                if (d2 == 0.0d) {
                    try {
                        ResultBean data = recyclerAdData.getData();
                        if (data != null) {
                            d2 = Double.parseDouble(data.getEcpm());
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            if (MsNativeExpressAd.this.f10018a != null) {
                MsNativeExpressAd.this.f10018a.onNativeAdLoadSuccess(arrayList, list.get(0), d2);
            }
        }
    }

    public MsNativeExpressAd(boolean z2, int i2, int i3, MsNativeAd.AdListener adListener) {
        this.f10018a = adListener;
        this.f10020c = z2;
        this.f10022e = i3;
        this.f10021d = i2;
    }

    @Override // com.anythink.network.meishu.MsNativeAd
    public void destroy() {
        RecyclerMixAdLoader recyclerMixAdLoader = this.f10019b;
        if (recyclerMixAdLoader != null) {
            recyclerMixAdLoader.destroy();
            this.f10019b = null;
        }
    }

    @Override // com.anythink.network.meishu.MsNativeAd
    public void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2) {
        int i2 = 0;
        try {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            int i3 = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString()) : 0;
            try {
                if (map2.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                    i2 = Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString());
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            MsAdSlot.Builder channel = new MsAdSlot.Builder().setPid(str).setChannel(MsATInitManager.CHANNEL);
            if (i3 != 0) {
                channel.setWidth(i3);
            }
            if (i2 != 0) {
                channel.setHeight(i2);
            }
            if (this.f10020c) {
                channel.setFetchCount(1);
            } else {
                channel.setFetchCount(this.f10021d);
            }
            RecyclerMixAdLoader recyclerMixAdLoader = new RecyclerMixAdLoader(context, channel.build(), new a(context));
            this.f10019b = recyclerMixAdLoader;
            recyclerMixAdLoader.loadAd();
        } catch (Exception e2) {
            MsNativeAd.AdListener adListener = this.f10018a;
            if (adListener != null) {
                adListener.onNativeAdFailToLoad("", "loadAd with exception:" + e2.getMessage());
            }
        }
    }
}
