package com.anythink.interstitial.a;

import android.content.Context;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdRevenueListener;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.interstitial.api.ATInterstitialAutoEventListener;
import com.anythink.interstitial.api.ATInterstitialExListener;

/* loaded from: classes2.dex */
public final class e implements ATInterstitialExListener {

    /* renamed from: a, reason: collision with root package name */
    ATInterstitialAutoEventListener f9115a;

    /* renamed from: b, reason: collision with root package name */
    ATAdRevenueListener f9116b;

    public e(ATInterstitialAutoEventListener aTInterstitialAutoEventListener, ATAdRevenueListener aTAdRevenueListener) {
        this.f9115a = aTInterstitialAutoEventListener;
        this.f9116b = aTAdRevenueListener;
    }

    @Override // com.anythink.interstitial.api.ATInterstitialExListener
    public final void onDeeplinkCallback(final ATAdInfo aTAdInfo, final boolean z2) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.1
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onDeeplinkCallback(aTAdInfo, z2);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialExListener
    public final void onDownloadConfirm(final Context context, final ATAdInfo aTAdInfo, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.2
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    Context contextM = context;
                    if (contextM == null) {
                        contextM = s.b().M();
                    }
                    aTInterstitialAutoEventListener.onDownloadConfirm(contextM, aTAdInfo, aTNetworkConfirmInfo);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdClicked(final ATAdInfo aTAdInfo) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.8
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdClicked(aTAdInfo);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdClose(final ATAdInfo aTAdInfo) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.7
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdClose(aTAdInfo);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdLoadFail(AdError adError) {
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdLoaded() {
    }

    @Override // com.anythink.interstitial.api.ATInterstitialExListener
    public final void onInterstitialAdReward(final ATAdInfo aTAdInfo) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.3
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdReward(aTAdInfo);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdShow(final ATAdInfo aTAdInfo) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.9
            @Override // java.lang.Runnable
            public final void run() {
                ATAdRevenueListener aTAdRevenueListener = e.this.f9116b;
                if (aTAdRevenueListener != null) {
                    aTAdRevenueListener.onAdRevenuePaid(aTAdInfo);
                }
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdShow(aTAdInfo);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdVideoEnd(final ATAdInfo aTAdInfo) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.5
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdVideoEnd(aTAdInfo);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdVideoError(final AdError adError) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.6
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdVideoError(adError);
                }
            }
        });
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public final void onInterstitialAdVideoStart(final ATAdInfo aTAdInfo) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.interstitial.a.e.4
            @Override // java.lang.Runnable
            public final void run() {
                ATInterstitialAutoEventListener aTInterstitialAutoEventListener = e.this.f9115a;
                if (aTInterstitialAutoEventListener != null) {
                    aTInterstitialAutoEventListener.onInterstitialAdVideoStart(aTAdInfo);
                }
            }
        });
    }
}
