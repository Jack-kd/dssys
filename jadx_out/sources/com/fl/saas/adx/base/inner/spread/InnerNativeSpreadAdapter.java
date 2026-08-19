package com.fl.saas.adx.base.inner.spread;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.fl.saas.AbstractC1179g;
import com.fl.saas.AbstractC1192k0;
import com.fl.saas.C1188j;
import com.fl.saas.D0;
import com.fl.saas.InterfaceC1164b1;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.api.mixNative.NativeClickCallbackListener;
import com.fl.saas.adx.api.mixNative.NativeEventListener;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.api.mixNative.NativePrepareInfo;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bidding.C2SBiddingECPM;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.InnerNativeAdapter;
import com.fl.saas.adx.base.inner.spread.coustomView.NativeSpreadView;
import com.fl.saas.adx.base.innterNative.ActionView;
import com.fl.saas.adx.base.innterNative.BaseNativeAd;
import com.fl.saas.adx.base.innterNative.NativeStyle;
import com.fl.saas.adx.base.interfaces.AdChangeCacheData;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public abstract class InnerNativeSpreadAdapter extends AbstractC1179g implements InnerNativeAdapter, AdChangeCacheData {
    private AbstractC1192k0 handler;
    private boolean hasShowView;
    private NativeAd mNativeAd;
    private NativeSpreadView nativeSpreadView;
    private ViewGroup spreadViewGroup;

    /* renamed from: com.fl.saas.adx.base.inner.spread.InnerNativeSpreadAdapter$1, reason: invalid class name */
    public class AnonymousClass1 implements NativeLoadListener {
        public AnonymousClass1() {
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            InnerNativeSpreadAdapter.this.disposeError(fLError);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeLoadListener
        public void onNativeAdLoaded(final NativeAd nativeAd) {
            try {
                InnerNativeSpreadAdapter innerNativeSpreadAdapter = InnerNativeSpreadAdapter.this;
                innerNativeSpreadAdapter.setAdSource(innerNativeSpreadAdapter.handler.getAdSource());
                InnerNativeSpreadAdapter.this.bindC2SBidECPM(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.inner.spread.d
                    @Override // com.fl.saas.InterfaceC1164b1
                    public final Object a() {
                        return Integer.valueOf(C2SBiddingECPM.getC2SBiddingECPM(nativeAd, InnerNativeSpreadAdapter.this.handler));
                    }
                });
                InnerNativeSpreadAdapter.this.mNativeAd = nativeAd;
                InnerNativeSpreadAdapter.this.render(nativeAd);
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
            java.lang.String r5 = "value4"
            long r6 = r4.b(r5)
            com.fl.saas.S0 r4 = com.fl.saas.S0.a()
            java.lang.String r8 = "value5"
            int r4 = r4.a(r8)
            com.fl.saas.S0 r9 = com.fl.saas.S0.a()
            java.lang.String r10 = "value6"
            int r9 = r9.a(r10)
            com.fl.saas.S0 r11 = com.fl.saas.S0.a()
            java.lang.String r12 = "value7"
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
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.base.inner.spread.InnerNativeSpreadAdapter.checkStyle():boolean");
    }

    public static /* synthetic */ void h(InnerNativeSpreadAdapter innerNativeSpreadAdapter) {
        View viewBindActionView;
        innerNativeSpreadAdapter.getClass();
        try {
            NativeAd nativeAd = innerNativeSpreadAdapter.mNativeAd;
            if (nativeAd instanceof ActionView) {
                viewBindActionView = ((ActionView) nativeAd).bindActionView(ActionView.Type.Spread);
                if (viewBindActionView != null) {
                    innerNativeSpreadAdapter.nativeSpreadView.getSelfView().addView(viewBindActionView);
                }
            } else {
                viewBindActionView = null;
            }
            NativeSpreadView nativeSpreadView = innerNativeSpreadAdapter.nativeSpreadView;
            boolean z2 = true;
            if (innerNativeSpreadAdapter.getAdSource().f30443M != 1) {
                z2 = false;
            }
            nativeSpreadView.setViewType(z2, innerNativeSpreadAdapter.checkStyle(), innerNativeSpreadAdapter.getAdSource().f30431I);
            innerNativeSpreadAdapter.nativeSpreadView.setClickAreaVisibility(viewBindActionView);
            innerNativeSpreadAdapter.nativeSpreadView.show();
            NativePrepareInfo nativePrepareInfo = new NativePrepareInfo();
            nativePrepareInfo.setActivity(innerNativeSpreadAdapter.getActivityOrNull());
            nativePrepareInfo.setCtaView(innerNativeSpreadAdapter.nativeSpreadView.getCATView());
            nativePrepareInfo.setClickView(innerNativeSpreadAdapter.nativeSpreadView.getClicks());
            innerNativeSpreadAdapter.mNativeAd.prepare(nativePrepareInfo);
            innerNativeSpreadAdapter.spreadViewGroup.addView(innerNativeSpreadAdapter.nativeSpreadView.getNativeAdView(), ViewHelper.getMatchParent());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            innerNativeSpreadAdapter.disposeError(new FLError(ErrorCodeConstant.RENDER_ERROR, "展示异常"));
        }
    }

    public static /* synthetic */ void i(InnerNativeSpreadAdapter innerNativeSpreadAdapter, ViewGroup viewGroup) {
        innerNativeSpreadAdapter.spreadViewGroup = viewGroup;
        if (viewGroup != null) {
            innerNativeSpreadAdapter.showSpreadView();
        } else {
            innerNativeSpreadAdapter.disposeError(new FLError(ErrorCodeConstant.NULL_ERROR, "展示时传入ViewGroup为null"));
        }
    }

    public static /* synthetic */ int j(InnerNativeSpreadAdapter innerNativeSpreadAdapter) {
        if (innerNativeSpreadAdapter.canUseEcpm()) {
            return innerNativeSpreadAdapter.getAdSource().g();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render(NativeAd nativeAd) {
        if (nativeAd instanceof BaseNativeAd) {
            BaseNativeAd baseNativeAd = (BaseNativeAd) nativeAd;
            baseNativeAd.setEcpmMapper(new BaseNativeAd.EcpmMapper() { // from class: com.fl.saas.adx.base.inner.spread.b
                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.EcpmMapper
                public final int getECPM() {
                    return InnerNativeSpreadAdapter.j(this.f30231a);
                }
            });
            baseNativeAd.setAdInfoMapper(new BaseNativeAd.AdInfoMapper() { // from class: com.fl.saas.adx.base.inner.spread.InnerNativeSpreadAdapter.2
                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
                public AdInfo getAdInfo() {
                    return AdInfo.create(InnerNativeSpreadAdapter.this.getAdSource().f30532p, InnerNativeSpreadAdapter.this.getAdSource().f30535q, InnerNativeSpreadAdapter.this.getAdSource().f30514j, InnerNativeSpreadAdapter.this.getAdSource().f30517k);
                }

                @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
                public C1188j getSource() {
                    return InnerNativeSpreadAdapter.this.getAdSource();
                }
            });
        }
        NativeMaterial adMaterial = nativeAd.getAdMaterial();
        if (DeviceUtil.filling_timing == 0) {
            if (ViewHelper.checkMateria(adMaterial)) {
                responseAd();
            } else {
                disposeError(FLError.create(ErrorCodeConstant.RENDER_ERROR, "media and imgUrl is empty"));
            }
        }
        final SpreadViewHelper spreadViewHelper = new SpreadViewHelper(getContext(), adMaterial, new SpreadViewEvent() { // from class: com.fl.saas.adx.base.inner.spread.InnerNativeSpreadAdapter.3
            @Override // com.fl.saas.adx.base.inner.InnerViewLoaderEvent
            public void onAdFailed(FLError fLError) {
                InnerNativeSpreadAdapter.this.disposeError(fLError);
            }

            @Override // com.fl.saas.adx.base.inner.spread.SpreadViewEvent
            public void onDismiss() {
                InnerNativeSpreadAdapter.this.onClosedEvent();
            }

            @Override // com.fl.saas.adx.base.inner.InnerViewLoaderEvent
            public void onLoaded(NativeSpreadView nativeSpreadView) {
                InnerNativeSpreadAdapter.this.nativeSpreadView = nativeSpreadView;
                if (DeviceUtil.filling_timing != 0) {
                    InnerNativeSpreadAdapter.this.responseAd();
                } else {
                    if (InnerNativeSpreadAdapter.this.hasShowView || InnerNativeSpreadAdapter.this.spreadViewGroup == null) {
                        return;
                    }
                    InnerNativeSpreadAdapter.this.showSpreadView();
                }
            }
        });
        nativeAd.renderAdContainer(spreadViewHelper.getNativeAdView(), spreadViewHelper.getSelfView());
        if (nativeAd instanceof BaseNativeAd) {
            ((BaseNativeAd) nativeAd).setReportEventListener(new D0() { // from class: com.fl.saas.adx.base.inner.spread.InnerNativeSpreadAdapter.4
                @Override // com.fl.saas.D0
                public void onClickedEvent() {
                    SpreadViewHelper spreadViewHelper2 = spreadViewHelper;
                    if (spreadViewHelper2 != null) {
                        spreadViewHelper2.onClicked();
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
        nativeAd.setNativeEventListener(new NativeEventListener() { // from class: com.fl.saas.adx.base.inner.spread.InnerNativeSpreadAdapter.5
            private boolean isReportExposure = false;

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdClicked(NativeAdView nativeAdView) {
                InnerNativeSpreadAdapter.this.onClickedEvent();
                spreadViewHelper.onClicked();
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdClose(NativeAdView nativeAdView) {
                InnerNativeSpreadAdapter.this.onClosedEvent();
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdFailed(NativeAdView nativeAdView, FLError fLError) {
                InnerNativeSpreadAdapter.this.onAdFailed(fLError);
                spreadViewHelper.cancelCountdown();
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeEventListener
            public void onAdImpressed(NativeAdView nativeAdView) throws Resources.NotFoundException {
                if (this.isReportExposure) {
                    return;
                }
                this.isReportExposure = true;
                spreadViewHelper.startCountdown();
                InnerNativeSpreadAdapter.this.onShowEvent();
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
        nativeAd.setClickCallBackListener(new NativeClickCallbackListener() { // from class: com.fl.saas.adx.base.inner.spread.InnerNativeSpreadAdapter.6
            @Override // com.fl.saas.adx.api.mixNative.NativeClickCallbackListener
            public void onAdClicked(String str) {
                InnerNativeSpreadAdapter.this.onClickedEvent(str);
            }
        });
        spreadViewHelper.initView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void responseAd() {
        onSpreadLoadedEvent(new AbstractC1179g.a() { // from class: com.fl.saas.adx.base.inner.spread.a
            @Override // com.fl.saas.AbstractC1179g.a
            public final void a(ViewGroup viewGroup) {
                InnerNativeSpreadAdapter.i(this.f30230a, viewGroup);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSpreadView() {
        if (this.nativeSpreadView == null || this.spreadViewGroup == null) {
            return;
        }
        this.hasShowView = true;
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.inner.spread.c
            @Override // java.lang.Runnable
            public final void run() {
                InnerNativeSpreadAdapter.h(this.f30232b);
            }
        });
    }

    @Override // com.fl.saas.AbstractC1179g, com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        super.destroy();
        if (!isCache()) {
            innerDestroy(this.handler, this.mNativeAd);
        }
        this.mNativeAd = null;
        this.nativeSpreadView = null;
        this.spreadViewGroup = null;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeAdapter
    @Nullable
    public NativeAd getNativeAd() {
        return this.mNativeAd;
    }

    @Override // com.fl.saas.AbstractC1200n
    public void handle(Context context) {
        this.handler = loadNativeHandler();
        this.handler.setContext(getContext()).a(getAppId(), getPosId()).setLinkId(getLinkId()).a(new AdParams.Builder(getKey()).setIsMixNative(false).build()).a(new AnonymousClass1());
        this.handler.a(NativeStyle.NATIVE);
        this.handler.a(isHot());
        this.handler.a(context);
    }

    @Override // com.fl.saas.adx.base.interfaces.AdChangeCacheData
    public void setCacheData(String str, C1188j c1188j) {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd instanceof AdChangeCacheData) {
            ((AdChangeCacheData) nativeAd).setCacheData(str, c1188j);
        }
    }
}
