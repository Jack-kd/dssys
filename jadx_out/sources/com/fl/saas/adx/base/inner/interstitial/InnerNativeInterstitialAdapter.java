package com.fl.saas.adx.base.inner.interstitial;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.fl.saas.AbstractC1173e;
import com.fl.saas.AbstractC1192k0;
import com.fl.saas.C1188j;
import com.fl.saas.D0;
import com.fl.saas.InterfaceC1164b1;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeEventListener;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.api.mixNative.NativePrepareInfo;
import com.fl.saas.adx.base.activity.FLInterstitialActivity;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bidding.C2SBiddingECPM;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.FLAdTempHelper;
import com.fl.saas.adx.base.inner.InnerNativeAdapter;
import com.fl.saas.adx.base.inner.interstitial.coustomView.NativeInterstitialView;
import com.fl.saas.adx.base.innterNative.ActionView;
import com.fl.saas.adx.base.innterNative.BaseNativeAd;
import com.fl.saas.adx.base.innterNative.NativeStyle;
import com.fl.saas.adx.base.interfaces.AdChangeCacheData;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public abstract class InnerNativeInterstitialAdapter extends AbstractC1173e implements InnerNativeAdapter, AdChangeCacheData {
    private AbstractC1192k0 handler;
    private InterstitialViewHelper interstitialHelper;
    private boolean loadCallbackNeedShow = false;
    private NativeAd mNativeAd;
    private InterstitialViewEvent viewEvent;

    /* renamed from: com.fl.saas.adx.base.inner.interstitial.InnerNativeInterstitialAdapter$1, reason: invalid class name */
    public class AnonymousClass1 implements NativeLoadListener {
        public AnonymousClass1() {
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            InnerNativeInterstitialAdapter.this.disposeError(fLError);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeLoadListener
        public void onNativeAdLoaded(final NativeAd nativeAd) {
            try {
                InnerNativeInterstitialAdapter innerNativeInterstitialAdapter = InnerNativeInterstitialAdapter.this;
                innerNativeInterstitialAdapter.setAdSource(innerNativeInterstitialAdapter.handler.getAdSource());
                InnerNativeInterstitialAdapter.this.bindC2SBidECPM(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.inner.interstitial.b
                    @Override // com.fl.saas.InterfaceC1164b1
                    public final Object a() {
                        return Integer.valueOf(C2SBiddingECPM.getC2SBiddingECPM(nativeAd, InnerNativeInterstitialAdapter.this.handler));
                    }
                });
                InnerNativeInterstitialAdapter.this.mNativeAd = nativeAd;
                InnerNativeInterstitialAdapter.this.render(nativeAd);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkStyle() {
        /*
            r21 = this;
            com.fl.saas.j r0 = r21.getAdSource()
            java.lang.String r0 = r0.f30440L
            com.fl.saas.j r1 = r21.getAdSource()
            int r1 = r1.f30437K
            com.fl.saas.j r2 = r21.getAdSource()
            int r2 = r2.f30434J
            java.lang.String r3 = ","
            java.lang.String[] r3 = r0.split(r3)
            com.fl.saas.S0 r4 = com.fl.saas.S0.a()
            java.lang.String r5 = "interstitialValue4"
            long r6 = r4.b(r5)
            com.fl.saas.S0 r4 = com.fl.saas.S0.a()
            java.lang.String r8 = "interstitialValue5"
            int r4 = r4.a(r8)
            com.fl.saas.S0 r9 = com.fl.saas.S0.a()
            java.lang.String r10 = "interstitialValue6"
            int r9 = r9.a(r10)
            com.fl.saas.S0 r11 = com.fl.saas.S0.a()
            java.lang.String r12 = "interstitialValue7"
            long r13 = r11.b(r12)
            r15 = r6
            long r6 = com.fl.saas.adx.util.DeviceUtil.getBootTime()
            long r15 = r6 - r15
            long r13 = r6 - r13
            r11 = 1
            int r4 = r4 + r11
            com.fl.saas.S0 r11 = com.fl.saas.S0.a()
            r11.b(r8, r4)
            r18 = 86400000(0x5265c00, double:4.2687272E-316)
            int r11 = (r15 > r18 ? 1 : (r15 == r18 ? 0 : -1))
            r18 = r0
            r0 = 0
            r19 = 0
            if (r11 > 0) goto L62
            int r11 = (r15 > r19 ? 1 : (r15 == r19 ? 0 : -1))
            if (r11 >= 0) goto L7a
        L62:
            com.fl.saas.S0 r4 = com.fl.saas.S0.a()
            r4.b(r10, r0)
            com.fl.saas.S0 r4 = com.fl.saas.S0.a()
            r4.b(r5, r6)
            com.fl.saas.S0 r4 = com.fl.saas.S0.a()
            r5 = 1
            r4.b(r8, r5)
            r9 = r0
            r4 = 1
        L7a:
            boolean r5 = android.text.TextUtils.isEmpty(r18)
            if (r5 != 0) goto L97
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r4)
            java.lang.String r4 = ""
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            boolean r3 = com.fl.saas.AbstractC1157a1.a(r3, r4)
            if (r3 == 0) goto Lb9
        L97:
            long r3 = (long) r1
            r15 = 60000(0xea60, double:2.9644E-319)
            long r3 = r3 * r15
            int r1 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            if (r1 > 0) goto La4
            int r1 = (r13 > r19 ? 1 : (r13 == r19 ? 0 : -1))
            if (r1 >= 0) goto Lb9
        La4:
            if (r9 >= r2) goto Lb9
            r17 = 1
            int r9 = r9 + 1
            com.fl.saas.S0 r0 = com.fl.saas.S0.a()
            r0.b(r10, r9)
            com.fl.saas.S0 r0 = com.fl.saas.S0.a()
            r0.b(r12, r6)
            return r17
        Lb9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.base.inner.interstitial.InnerNativeInterstitialAdapter.checkStyle():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render(NativeAd nativeAd) {
        if (nativeAd instanceof BaseNativeAd) {
            BaseNativeAd baseNativeAd = (BaseNativeAd) nativeAd;
            baseNativeAd.setEcpmMapper(new BaseNativeAd.EcpmMapper() { // from class: com.fl.saas.adx.base.inner.interstitial.a
                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.EcpmMapper
                public final int getECPM() {
                    return InnerNativeInterstitialAdapter.s(this.f30157a);
                }
            });
            baseNativeAd.setAdInfoMapper(new BaseNativeAd.AdInfoMapper() { // from class: com.fl.saas.adx.base.inner.interstitial.InnerNativeInterstitialAdapter.2
                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
                public AdInfo getAdInfo() {
                    return InnerNativeInterstitialAdapter.this.getAdSource() != null ? AdInfo.create(InnerNativeInterstitialAdapter.this.getAdSource().f30532p, InnerNativeInterstitialAdapter.this.getAdSource().f30535q, InnerNativeInterstitialAdapter.this.getAdSource().f30514j, InnerNativeInterstitialAdapter.this.getAdSource().f30517k) : new AdInfo();
                }

                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
                public C1188j getSource() {
                    return InnerNativeInterstitialAdapter.this.getAdSource();
                }
            });
        }
        NativeMaterial adMaterial = nativeAd.getAdMaterial();
        if (DeviceUtil.filling_timing == 0) {
            if (ViewHelper.checkMateria(adMaterial)) {
                onLoadedEvent();
            } else {
                disposeError(FLError.create(ErrorCodeConstant.RENDER_ERROR, "media and imgUrl is empty"));
            }
        }
        boolean zIsFullScreenInterstitial = isFullScreenInterstitial();
        if (this.viewEvent == null) {
            this.viewEvent = new InterstitialViewEvent() { // from class: com.fl.saas.adx.base.inner.interstitial.InnerNativeInterstitialAdapter.3
                @Override // com.fl.saas.adx.base.inner.interstitial.InterstitialViewEvent
                public void onActivityShow(Activity activity) {
                    try {
                        NativePrepareInfo nativePrepareInfo = new NativePrepareInfo();
                        nativePrepareInfo.setActivity(activity);
                        nativePrepareInfo.setCtaView(InnerNativeInterstitialAdapter.this.interstitialHelper.getCATView());
                        nativePrepareInfo.setClickView(InnerNativeInterstitialAdapter.this.interstitialHelper.getClicks());
                        InnerNativeInterstitialAdapter.this.mNativeAd.prepare(nativePrepareInfo);
                    } catch (Throwable th) {
                        LogcatUtil.debug(th);
                    }
                }

                @Override // com.fl.saas.adx.base.inner.InnerViewLoaderEvent
                public void onAdFailed(FLError fLError) {
                    InnerNativeInterstitialAdapter.this.disposeError(fLError);
                }

                @Override // com.fl.saas.adx.base.inner.interstitial.InterstitialViewEvent
                public void onDismiss() {
                    InnerNativeInterstitialAdapter.this.onClosedEvent();
                    if (InnerNativeInterstitialAdapter.this.mNativeAd != null) {
                        InnerNativeInterstitialAdapter.this.mNativeAd.release();
                    }
                }

                @Override // com.fl.saas.adx.base.inner.InnerViewLoaderEvent
                public void onLoaded(NativeInterstitialView nativeInterstitialView) {
                    if (DeviceUtil.filling_timing != 0) {
                        InnerNativeInterstitialAdapter.this.onLoadedEvent();
                    } else if (InnerNativeInterstitialAdapter.this.loadCallbackNeedShow) {
                        InnerNativeInterstitialAdapter innerNativeInterstitialAdapter = InnerNativeInterstitialAdapter.this;
                        innerNativeInterstitialAdapter.startInterstitialActivity(innerNativeInterstitialAdapter.getContext());
                    }
                }
            };
        }
        InterstitialViewHelper interstitialViewHelper = new InterstitialViewHelper(getContext(), zIsFullScreenInterstitial, getAdSource().v(), adMaterial, getAdSource().i(), this.viewEvent, getAdSource());
        this.interstitialHelper = interstitialViewHelper;
        interstitialViewHelper.setAlpha(getAdSource().f30526n);
        nativeAd.renderAdContainer(this.interstitialHelper.getNativeAdView(), this.interstitialHelper.getSelfView());
        if (nativeAd instanceof BaseNativeAd) {
            ((BaseNativeAd) nativeAd).setReportEventListener(new D0() { // from class: com.fl.saas.adx.base.inner.interstitial.InnerNativeInterstitialAdapter.4
                @Override // com.fl.saas.D0
                public void onClickedEvent() {
                    if (InnerNativeInterstitialAdapter.this.interstitialHelper != null) {
                        InnerNativeInterstitialAdapter.this.interstitialHelper.click();
                    }
                }

                public void onLoadedEvent() {
                }

                @Override // com.fl.saas.D0
                public void onShowEvent() {
                }

                @Override // com.fl.saas.D0
                public void reportRequestShow() {
                }
            });
        }
        nativeAd.setNativeEventListener(new NativeEventListener() { // from class: com.fl.saas.adx.base.inner.interstitial.InnerNativeInterstitialAdapter.5
            private boolean isReportExposure = false;

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdClicked(NativeAdView nativeAdView) {
                InnerNativeInterstitialAdapter innerNativeInterstitialAdapter;
                try {
                    if (InnerNativeInterstitialAdapter.this.changeReRequestCount()) {
                        InnerNativeInterstitialAdapter.this.closeTopCountDownView();
                        InnerNativeInterstitialAdapter.this.reRequest();
                        innerNativeInterstitialAdapter = InnerNativeInterstitialAdapter.this;
                    } else if (!InnerNativeInterstitialAdapter.this.getAdSource().m() || InnerNativeInterstitialAdapter.this.getAdSource().f30518k0) {
                        InnerNativeInterstitialAdapter.this.interstitialHelper.click();
                        InnerNativeInterstitialAdapter.this.onClickedEvent();
                    } else {
                        InnerNativeInterstitialAdapter.this.closeTopCountDownView();
                        innerNativeInterstitialAdapter = InnerNativeInterstitialAdapter.this;
                    }
                    innerNativeInterstitialAdapter.interstitialHelper.closeInterstitial();
                    InnerNativeInterstitialAdapter.this.onClickedEvent();
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdClose(NativeAdView nativeAdView) {
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdFailed(NativeAdView nativeAdView, FLError fLError) {
                InnerNativeInterstitialAdapter.this.onAdFailed(fLError);
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdImpressed(NativeAdView nativeAdView) {
                if (this.isReportExposure) {
                    return;
                }
                this.isReportExposure = true;
                InnerNativeInterstitialAdapter.this.onShowEvent();
                InnerNativeInterstitialAdapter.this.interstitialHelper.startCountdown();
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdVideoEnd(NativeAdView nativeAdView) {
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdVideoProgress(NativeAdView nativeAdView, long j2) {
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdVideoStart(NativeAdView nativeAdView) {
            }
        });
        this.interstitialHelper.setClosePos(getAdSource().e()).setCloseViewSize(getAdSource().f30553w).setCountDown(true ^ getAdSource().n(), getAdSource().f30550v).setAutoClose(getAdSource().m()).setClickType(getAdSource().f30428H).setShakeType(getAdSource().q() && getAdSource().f30413C == 2).setSpeed(getAdSource().f30556x).setAnimalTime(getAdSource().f30449O).setAnimalStartTime(getAdSource().f30446N);
        this.interstitialHelper.loadView();
    }

    public static /* synthetic */ int s(InnerNativeInterstitialAdapter innerNativeInterstitialAdapter) {
        if (innerNativeInterstitialAdapter.canUseEcpm()) {
            return innerNativeInterstitialAdapter.getAdSource().g();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInterstitialActivity(Context context) {
        try {
            this.loadCallbackNeedShow = false;
            this.interstitialHelper.setViewType(checkStyle(), getAdSource().f30431I);
            NativeAd nativeAd = this.mNativeAd;
            if (nativeAd instanceof ActionView) {
                this.interstitialHelper.addActionView(((ActionView) nativeAd).bindActionView(ActionView.Type.Interstitial));
            }
            String str = getAdSource().f30505g;
            FLAdTempHelper.getInstance().addInterstitialHelper(str, this.interstitialHelper);
            FLInterstitialActivity.startMe(context, str);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.AbstractC1173e, com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        super.destroy();
        if (isCache()) {
            return;
        }
        innerDestroy(this.handler, this.mNativeAd);
        this.viewEvent = null;
        InterstitialViewHelper interstitialViewHelper = this.interstitialHelper;
        if (interstitialViewHelper != null) {
            interstitialViewHelper.destroy();
        }
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeAdapter
    @Nullable
    public NativeAd getNativeAd() {
        return this.mNativeAd;
    }

    @Override // com.fl.saas.AbstractC1200n
    public void handle(Context context) {
        LogcatUtil.d("handle");
        this.handler = loadNativeHandler();
        this.handler.setContext(getContext()).a(getAppId(), getPosId()).setLinkId(getLinkId()).a(new AdParams.Builder(getKey()).setIsMixNative(false).build()).a(new AnonymousClass1());
        this.handler.a(NativeStyle.NATIVE);
        this.handler.a(isHot());
        this.handler.a(context);
    }

    @Override // com.fl.saas.AbstractC1173e
    public boolean selfCloseInterstitialAd() {
        InterstitialViewHelper interstitialViewHelper = this.interstitialHelper;
        if (interstitialViewHelper == null) {
            return false;
        }
        interstitialViewHelper.closeInterstitial();
        return true;
    }

    @Override // com.fl.saas.adx.base.interfaces.AdChangeCacheData
    public void setCacheData(String str, C1188j c1188j) {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd instanceof AdChangeCacheData) {
            ((AdChangeCacheData) nativeAd).setCacheData(str, c1188j);
        }
    }

    @Override // com.fl.saas.AbstractC1173e
    public void showInterstitial(Activity activity) {
        if (activity != null) {
            setContext((Context) activity);
        }
        Context context = activity;
        if (this.interstitialHelper == null) {
            this.loadCallbackNeedShow = true;
            return;
        }
        if (activity == null) {
            context = getContext();
        }
        startInterstitialActivity(context);
    }
}
