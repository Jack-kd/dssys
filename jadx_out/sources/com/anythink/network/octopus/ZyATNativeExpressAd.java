package com.anythink.network.octopus;

import android.content.Context;
import com.anythink.core.api.ATAdConst;
import com.anythink.network.octopus.ZyATNativeAd;
import com.octopus.ad.DrawAd;
import com.octopus.ad.DrawAdListener;
import com.octopus.ad.NativeAdResponse;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ZyATNativeExpressAd extends ZyATNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f10132a = ZyATNativeExpressAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final ZyATNativeAd.AdListener f10133b;

    /* renamed from: c, reason: collision with root package name */
    boolean f10134c;

    /* renamed from: d, reason: collision with root package name */
    private DrawAd f10135d;

    public class a implements DrawAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10136a;

        public a(int i2) {
            this.f10136a = i2;
        }

        @Override // com.octopus.ad.NativeAdListener
        public void onAdFailed(int i2) {
            String unused = ZyATNativeExpressAd.this.f10132a;
            if (ZyATNativeExpressAd.this.f10133b != null) {
                ZyATNativeExpressAd.this.f10133b.onNativeAdFailToLoad(String.valueOf(i2), "i:" + i2);
            }
        }

        @Override // com.octopus.ad.NativeAdListener
        public void onAdLoaded(NativeAdResponse nativeAdResponse) {
            String unused = ZyATNativeExpressAd.this.f10132a;
            Objects.toString(nativeAdResponse);
            if (nativeAdResponse == null || ZyATNativeExpressAd.this.f10135d == null) {
                if (ZyATNativeExpressAd.this.f10133b != null) {
                    ZyATNativeExpressAd.this.f10133b.onNativeAdFailToLoad("", "onAdLoaded nativeAdResponse is null");
                    return;
                }
                return;
            }
            nativeAdResponse.setAdWidth(this.f10136a);
            int price = ZyATNativeExpressAd.this.f10135d.getPrice();
            String unused2 = ZyATNativeExpressAd.this.f10132a;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ZyATDrawExpressAd(ZyATNativeExpressAd.this.f10135d, nativeAdResponse));
            if (ZyATNativeExpressAd.this.f10133b != null) {
                ZyATNativeExpressAd.this.f10133b.onNativeAdLoadSuccess(arrayList, ZyATNativeExpressAd.this.f10135d, price);
            }
        }
    }

    public ZyATNativeExpressAd(boolean z2, ZyATNativeAd.AdListener adListener) {
        this.f10133b = adListener;
        this.f10134c = z2;
    }

    @Override // com.anythink.network.octopus.ZyATNativeAd
    public void destroy() {
    }

    @Override // com.anythink.network.octopus.ZyATNativeAd
    public void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            int i2 = context.getResources().getDisplayMetrics().widthPixels;
            try {
                if (map2.containsKey(ATAdConst.KEY.AD_WIDTH)) {
                    i2 = Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString());
                }
            } catch (Throwable unused) {
            }
            Thread.currentThread().getName();
            DrawAd drawAd = new DrawAd(context, str, new a(i2));
            this.f10135d = drawAd;
            drawAd.openAdInNativeBrowser(true);
            this.f10135d.loadAd();
        } catch (Throwable th) {
            ZyATNativeAd.AdListener adListener = this.f10133b;
            if (adListener != null) {
                adListener.onNativeAdFailToLoad("", "loadAd with exception:" + th.getMessage());
            }
        }
    }
}
