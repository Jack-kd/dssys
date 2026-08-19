package com.anythink.network.beizi;

import android.content.Context;
import com.anythink.network.beizi.BzATNativeAd;
import com.beizi.fusion.NativeUnifiedAd;
import com.beizi.fusion.NativeUnifiedAdListener;
import com.beizi.fusion.NativeUnifiedAdResponse;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BzATNativeUnifiedAd extends BzATNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f9515a = BzATNativeExpressAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final BzATNativeAd.AdListener f9516b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9517c;

    /* renamed from: d, reason: collision with root package name */
    NativeUnifiedAd f9518d;

    /* renamed from: e, reason: collision with root package name */
    private final int f9519e;

    /* renamed from: f, reason: collision with root package name */
    private BzATFeedAd f9520f;

    public class a implements NativeUnifiedAdListener {
        public a() {
        }

        @Override // com.beizi.fusion.NativeUnifiedAdListener
        public void onAdClick() {
            String unused = BzATNativeUnifiedAd.this.f9515a;
            if (BzATNativeUnifiedAd.this.f9520f != null) {
                BzATNativeUnifiedAd.this.f9520f.notifyAdClicked();
            }
        }

        @Override // com.beizi.fusion.NativeUnifiedAdListener
        public void onAdFailed(int i2) {
            String unused = BzATNativeUnifiedAd.this.f9515a;
            if (BzATNativeUnifiedAd.this.f9516b != null) {
                BzATNativeUnifiedAd.this.f9516b.onNativeAdFailToLoad(String.valueOf(i2), "i:" + i2);
            }
        }

        @Override // com.beizi.fusion.NativeUnifiedAdListener
        public void onAdLoaded(NativeUnifiedAdResponse nativeUnifiedAdResponse) {
            String unused = BzATNativeUnifiedAd.this.f9515a;
            Objects.toString(nativeUnifiedAdResponse);
            BzATNativeUnifiedAd bzATNativeUnifiedAd = BzATNativeUnifiedAd.this;
            if (bzATNativeUnifiedAd.f9518d == null || nativeUnifiedAdResponse == null) {
                if (bzATNativeUnifiedAd.f9516b != null) {
                    BzATNativeUnifiedAd.this.f9516b.onNativeAdFailToLoad("", "onAdLoaded nativeUnifiedAdResponse is null");
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            BzATNativeUnifiedAd.this.f9520f = new BzATFeedAd(BzATNativeUnifiedAd.this.f9518d, nativeUnifiedAdResponse);
            arrayList.add(BzATNativeUnifiedAd.this.f9520f);
            String unused2 = BzATNativeUnifiedAd.this.f9515a;
            BzATNativeUnifiedAd.this.f9518d.getECPM();
            int ecpm = BzATNativeUnifiedAd.this.f9518d.getECPM();
            if (BzATNativeUnifiedAd.this.f9516b != null) {
                BzATNativeUnifiedAd.this.f9516b.onNativeAdLoadSuccess(arrayList, BzATNativeUnifiedAd.this.f9518d, ecpm);
            }
        }

        @Override // com.beizi.fusion.NativeUnifiedAdListener
        public void onAdShown() {
            String unused = BzATNativeUnifiedAd.this.f9515a;
            if (BzATNativeUnifiedAd.this.f9520f != null) {
                BzATNativeUnifiedAd.this.f9520f.notifyAdImpression();
            }
        }
    }

    public BzATNativeUnifiedAd(boolean z2, BzATNativeAd.AdListener adListener, int i2) {
        this.f9516b = adListener;
        this.f9517c = z2;
        this.f9519e = i2;
    }

    @Override // com.anythink.network.beizi.BzATNativeAd
    public void destroy() {
    }

    @Override // com.anythink.network.beizi.BzATNativeAd
    public void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Thread.currentThread().getName();
            NativeUnifiedAd nativeUnifiedAd = new NativeUnifiedAd(context, str, new a(), this.f9519e, 1);
            this.f9518d = nativeUnifiedAd;
            nativeUnifiedAd.loadAd();
        } catch (Throwable th) {
            BzATNativeAd.AdListener adListener = this.f9516b;
            if (adListener != null) {
                adListener.onNativeAdFailToLoad("", "loadAd with exception:" + th.getMessage());
            }
        }
    }
}
