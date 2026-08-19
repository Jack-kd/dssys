package com.anythink.network.beizi;

import android.content.Context;
import android.view.View;
import com.anythink.core.api.ATAdConst;
import com.anythink.network.beizi.BzATNativeAd;
import com.beizi.fusion.NativeAd;
import com.beizi.fusion.NativeAdListener;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BzATNativeExpressAd extends BzATNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f9507a = BzATNativeExpressAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final BzATNativeAd.AdListener f9508b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9509c;

    /* renamed from: d, reason: collision with root package name */
    NativeAd f9510d;

    /* renamed from: e, reason: collision with root package name */
    private final int f9511e;

    /* renamed from: f, reason: collision with root package name */
    private final int f9512f;

    /* renamed from: g, reason: collision with root package name */
    private BzATExpressAd f9513g;

    public class a implements NativeAdListener {
        public a() {
        }

        @Override // com.beizi.fusion.NativeAdListener
        public void onAdClick() {
            String unused = BzATNativeExpressAd.this.f9507a;
            if (BzATNativeExpressAd.this.f9513g != null) {
                BzATNativeExpressAd.this.f9513g.notifyAdClicked();
            }
        }

        @Override // com.beizi.fusion.NativeAdListener
        public void onAdClosed() {
            String unused = BzATNativeExpressAd.this.f9507a;
        }

        @Override // com.beizi.fusion.NativeAdListener
        public void onAdFailed(int i2) {
            String unused = BzATNativeExpressAd.this.f9507a;
            if (BzATNativeExpressAd.this.f9508b != null) {
                BzATNativeExpressAd.this.f9508b.onNativeAdFailToLoad(String.valueOf(i2), "i:" + i2);
            }
        }

        @Override // com.beizi.fusion.NativeAdListener
        public void onAdLoaded(View view) {
            String unused = BzATNativeExpressAd.this.f9507a;
            Objects.toString(view);
            BzATNativeExpressAd bzATNativeExpressAd = BzATNativeExpressAd.this;
            if (bzATNativeExpressAd.f9510d == null || view == null) {
                if (bzATNativeExpressAd.f9508b != null) {
                    BzATNativeExpressAd.this.f9508b.onNativeAdFailToLoad("", "onAdLoaded view is null");
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            BzATNativeExpressAd.this.f9513g = new BzATExpressAd(BzATNativeExpressAd.this.f9510d, view);
            arrayList.add(BzATNativeExpressAd.this.f9513g);
            String unused2 = BzATNativeExpressAd.this.f9507a;
            BzATNativeExpressAd.this.f9510d.getECPM();
            int ecpm = BzATNativeExpressAd.this.f9510d.getECPM();
            if (BzATNativeExpressAd.this.f9508b != null) {
                BzATNativeExpressAd.this.f9508b.onNativeAdLoadSuccess(arrayList, BzATNativeExpressAd.this.f9510d, ecpm);
            }
        }

        @Override // com.beizi.fusion.NativeAdListener
        public void onAdShown() {
            String unused = BzATNativeExpressAd.this.f9507a;
            if (BzATNativeExpressAd.this.f9513g != null) {
                BzATNativeExpressAd.this.f9513g.notifyAdImpression();
            }
        }

        @Override // com.beizi.fusion.NativeAdListener
        public void onAdClosed(View view) {
            String unused = BzATNativeExpressAd.this.f9507a;
            Objects.toString(view);
            if (BzATNativeExpressAd.this.f9513g != null) {
                BzATNativeExpressAd.this.f9513g.notifyAdDislikeClick();
            }
        }
    }

    public BzATNativeExpressAd(boolean z2, BzATNativeAd.AdListener adListener, int i2, int i3) {
        this.f9508b = adListener;
        this.f9509c = z2;
        this.f9511e = i2;
        this.f9512f = i3;
    }

    @Override // com.anythink.network.beizi.BzATNativeAd
    public void destroy() {
    }

    @Override // com.anythink.network.beizi.BzATNativeAd
    public void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            int iA = a(context, context.getResources().getDisplayMetrics().widthPixels);
            try {
                if (map2.containsKey(ATAdConst.KEY.AD_WIDTH)) {
                    iA = a(context, Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString()));
                }
            } catch (Throwable unused) {
            }
            int iA2 = map2.containsKey(ATAdConst.KEY.AD_HEIGHT) ? a(context, Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString())) : 0;
            Thread.currentThread().getName();
            NativeAd nativeAd = new NativeAd(context, str, new a(), this.f9512f, this.f9511e);
            this.f9510d = nativeAd;
            nativeAd.loadAd(iA, iA2);
        } catch (Throwable th) {
            BzATNativeAd.AdListener adListener = this.f9508b;
            if (adListener != null) {
                adListener.onNativeAdFailToLoad("", "loadAd with exception:" + th.getMessage());
            }
        }
    }

    private static int a(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }
}
