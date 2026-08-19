package com.anythink.network.ubix;

import android.content.Context;
import com.anythink.network.ubix.UbATNativeAd;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.manager.UBiXAdManager;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.UBiXNativeAdListener;
import com.ubix.ssp.open.nativee.UBiXNativeManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class UbATNativeUnifiedAd extends UbATNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f10508a = UbATNativeUnifiedAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final UbATNativeAd.AdListener f10509b;

    public class a implements UBiXNativeAdListener {
        public a() {
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeAdListener
        public void onAdLoadFailed(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String unused = UbATNativeUnifiedAd.this.f10508a;
            if (UbATNativeUnifiedAd.this.f10509b != null) {
                UbATNativeUnifiedAd.this.f10509b.onNativeAdFailToLoad(String.valueOf(errorCode), errorMessage);
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeAdListener
        public void onAdLoadSucceed(List<NativeAd> list) {
            if (list == null || list.isEmpty()) {
                if (UbATNativeUnifiedAd.this.f10509b != null) {
                    UbATNativeUnifiedAd.this.f10509b.onNativeAdFailToLoad("", "native list is null");
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            NativeAd nativeAd = null;
            long price = 0;
            for (NativeAd nativeAd2 : list) {
                if (nativeAd2 != null) {
                    arrayList.add(new UbATFeedAd(nativeAd2));
                    if (nativeAd == null) {
                        price = nativeAd2.getPrice();
                        nativeAd = nativeAd2;
                    }
                }
            }
            if (arrayList.isEmpty()) {
                if (UbATNativeUnifiedAd.this.f10509b != null) {
                    UbATNativeUnifiedAd.this.f10509b.onNativeAdFailToLoad("", "native list contains only null items");
                }
            } else {
                String unused = UbATNativeUnifiedAd.this.f10508a;
                arrayList.size();
                if (UbATNativeUnifiedAd.this.f10509b != null) {
                    UbATNativeUnifiedAd.this.f10509b.onNativeAdLoadSuccess(arrayList, nativeAd, price);
                }
            }
        }
    }

    public UbATNativeUnifiedAd(UbATNativeAd.AdListener adListener) {
        this.f10509b = adListener;
    }

    @Override // com.anythink.network.ubix.UbATNativeAd
    public void destroy() {
    }

    @Override // com.anythink.network.ubix.UbATNativeAd
    public void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Thread.currentThread().getName();
            UBiXNativeManager uBiXNativeManagerCreateNativeAd = UBiXAdManager.createNativeAd();
            uBiXNativeManagerCreateNativeAd.setExtraInfo(UbATConst.toExtraMap(map2));
            uBiXNativeManagerCreateNativeAd.loadNativeAd(context, str, new a());
            uBiXNativeManagerCreateNativeAd.loadAd();
        } catch (Throwable th) {
            UbATNativeAd.AdListener adListener = this.f10509b;
            if (adListener != null) {
                adListener.onNativeAdFailToLoad("", "loadAd exception:" + th.getMessage());
            }
        }
    }
}
