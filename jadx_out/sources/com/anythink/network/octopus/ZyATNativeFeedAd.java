package com.anythink.network.octopus;

import android.content.Context;
import com.anythink.core.api.ATAdConst;
import com.anythink.network.octopus.ZyATNativeAd;
import com.octopus.ad.NativeAd;
import com.octopus.ad.NativeAdListener;
import com.octopus.ad.NativeAdResponse;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ZyATNativeFeedAd extends ZyATNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f10138a = ZyATNativeFeedAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final ZyATNativeAd.AdListener f10139b;

    /* renamed from: c, reason: collision with root package name */
    boolean f10140c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f10141d;

    /* renamed from: e, reason: collision with root package name */
    private NativeAd f10142e;

    public class a implements NativeAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10143a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f10144b;

        public a(int i2, Context context) {
            this.f10143a = i2;
            this.f10144b = context;
        }

        @Override // com.octopus.ad.NativeAdListener
        public void onAdFailed(int i2) {
            String unused = ZyATNativeFeedAd.this.f10138a;
            if (ZyATNativeFeedAd.this.f10139b != null) {
                ZyATNativeFeedAd.this.f10139b.onNativeAdFailToLoad(String.valueOf(i2), "i:" + i2);
            }
        }

        @Override // com.octopus.ad.NativeAdListener
        public void onAdLoaded(NativeAdResponse nativeAdResponse) {
            String unused = ZyATNativeFeedAd.this.f10138a;
            Objects.toString(nativeAdResponse);
            if (nativeAdResponse == null || ZyATNativeFeedAd.this.f10142e == null) {
                if (ZyATNativeFeedAd.this.f10139b != null) {
                    ZyATNativeFeedAd.this.f10139b.onNativeAdFailToLoad("", "onAdLoaded nativeAdResponse is null");
                    return;
                }
                return;
            }
            nativeAdResponse.setAdWidth(this.f10143a);
            ArrayList arrayList = new ArrayList();
            int price = ZyATNativeFeedAd.this.f10142e.getPrice();
            String unused2 = ZyATNativeFeedAd.this.f10138a;
            arrayList.add(ZyATNativeFeedAd.this.f10141d ? new ZyATExpressAd(ZyATNativeFeedAd.this.f10142e, nativeAdResponse) : new ZyATFeedAd(this.f10144b, ZyATNativeFeedAd.this.f10142e, nativeAdResponse));
            if (ZyATNativeFeedAd.this.f10139b != null) {
                ZyATNativeFeedAd.this.f10139b.onNativeAdLoadSuccess(arrayList, ZyATNativeFeedAd.this.f10142e, price);
            }
        }
    }

    public ZyATNativeFeedAd(boolean z2, boolean z3, ZyATNativeAd.AdListener adListener) {
        this.f10139b = adListener;
        this.f10140c = z2;
        this.f10141d = z3;
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
            NativeAd nativeAd = new NativeAd(context, str, new a(i2, context));
            this.f10142e = nativeAd;
            nativeAd.openAdInNativeBrowser(true);
            this.f10142e.loadAd();
        } catch (Throwable th) {
            ZyATNativeAd.AdListener adListener = this.f10139b;
            if (adListener != null) {
                adListener.onNativeAdFailToLoad("", "loadAd with exception:" + th.getMessage());
            }
        }
    }
}
