package com.meishu.sdk.platform.gdt.splash;

import android.text.TextUtils;
import com.meishu.sdk.core.ad.splash.d;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.gdt.GDTPlatformError;
import com.qq.e.ads.splash.SplashADListener;
import com.qq.e.comm.util.AdError;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/* loaded from: classes4.dex */
public class GDTSplashADListenerImpl {
    private static final String TAG = "GDTSplashADListenerImpl";
    private boolean isAdClicked;
    private boolean isAdLoaded;
    private long leftMilliseconds;
    private d splashADListener;
    private GDTSplashAd splashAd;
    private GDTSplashAdWrapper splashAdWrapper;

    public GDTSplashADListenerImpl(GDTSplashAdWrapper gDTSplashAdWrapper, d dVar, GDTSplashAd gDTSplashAd) {
        this.splashAdWrapper = gDTSplashAdWrapper;
        this.splashADListener = dVar;
        this.splashAd = gDTSplashAd;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public Object createListenerProxy() throws ClassNotFoundException {
        Class cls = SplashADListener.class;
        if (cls == null) {
            try {
                cls = Class.forName("com.qq.e.ads.splash.SplashADZoomOutListener");
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.1
            /* JADX WARN: Removed duplicated region for block: B:31:0x0060  */
            @Override // java.lang.reflect.InvocationHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object invoke(java.lang.Object r2, java.lang.reflect.Method r3, java.lang.Object[] r4) {
                /*
                    r1 = this;
                    java.lang.String r2 = r3.getName()     // Catch: java.lang.Throwable -> L17
                    int r3 = r2.hashCode()     // Catch: java.lang.Throwable -> L17
                    r0 = 0
                    switch(r3) {
                        case -1769079577: goto L56;
                        case -1013111773: goto L4c;
                        case -341068665: goto L42;
                        case 33105782: goto L38;
                        case 338184217: goto L2e;
                        case 945876735: goto L24;
                        case 1244436841: goto L1a;
                        case 1516986245: goto Ld;
                        default: goto Lc;
                    }     // Catch: java.lang.Throwable -> L17
                Lc:
                    goto L60
                Ld:
                    java.lang.String r3 = "onADClicked"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = r0
                    goto L61
                L17:
                    r2 = move-exception
                    goto La6
                L1a:
                    java.lang.String r3 = "onADExposure"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = 1
                    goto L61
                L24:
                    java.lang.String r3 = "onADTick"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = 3
                    goto L61
                L2e:
                    java.lang.String r3 = "onADPresent"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = 6
                    goto L61
                L38:
                    java.lang.String r3 = "isSupportZoomOut"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = 7
                    goto L61
                L42:
                    java.lang.String r3 = "onADDismissed"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = 4
                    goto L61
                L4c:
                    java.lang.String r3 = "onNoAD"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = 5
                    goto L61
                L56:
                    java.lang.String r3 = "onADLoaded"
                    boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L17
                    if (r2 == 0) goto L60
                    r2 = 2
                    goto L61
                L60:
                    r2 = -1
                L61:
                    switch(r2) {
                        case 0: goto La0;
                        case 1: goto L9a;
                        case 2: goto L8c;
                        case 3: goto L7e;
                        case 4: goto L78;
                        case 5: goto L6e;
                        case 6: goto L68;
                        case 7: goto L65;
                        default: goto L64;
                    }     // Catch: java.lang.Throwable -> L17
                L64:
                    goto La9
                L65:
                    java.lang.Boolean r2 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L17
                    return r2
                L68:
                    com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl r2 = com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.this     // Catch: java.lang.Throwable -> L17
                    r2.onADPresent()     // Catch: java.lang.Throwable -> L17
                    goto La9
                L6e:
                    com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl r2 = com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.this     // Catch: java.lang.Throwable -> L17
                    r3 = r4[r0]     // Catch: java.lang.Throwable -> L17
                    com.qq.e.comm.util.AdError r3 = (com.qq.e.comm.util.AdError) r3     // Catch: java.lang.Throwable -> L17
                    r2.onNoAD(r3)     // Catch: java.lang.Throwable -> L17
                    goto La9
                L78:
                    com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl r2 = com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.this     // Catch: java.lang.Throwable -> L17
                    r2.onADDismissed()     // Catch: java.lang.Throwable -> L17
                    goto La9
                L7e:
                    com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl r2 = com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.this     // Catch: java.lang.Throwable -> L17
                    r3 = r4[r0]     // Catch: java.lang.Throwable -> L17
                    java.lang.Long r3 = (java.lang.Long) r3     // Catch: java.lang.Throwable -> L17
                    long r3 = r3.longValue()     // Catch: java.lang.Throwable -> L17
                    r2.onADTick(r3)     // Catch: java.lang.Throwable -> L17
                    goto La9
                L8c:
                    com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl r2 = com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.this     // Catch: java.lang.Throwable -> L17
                    r3 = r4[r0]     // Catch: java.lang.Throwable -> L17
                    java.lang.Long r3 = (java.lang.Long) r3     // Catch: java.lang.Throwable -> L17
                    long r3 = r3.longValue()     // Catch: java.lang.Throwable -> L17
                    r2.onADLoaded(r3)     // Catch: java.lang.Throwable -> L17
                    goto La9
                L9a:
                    com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl r2 = com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.this     // Catch: java.lang.Throwable -> L17
                    r2.onADExposure()     // Catch: java.lang.Throwable -> L17
                    goto La9
                La0:
                    com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl r2 = com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.this     // Catch: java.lang.Throwable -> L17
                    r2.onADClicked()     // Catch: java.lang.Throwable -> L17
                    goto La9
                La6:
                    r2.printStackTrace()
                La9:
                    r2 = 0
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.gdt.splash.GDTSplashADListenerImpl.AnonymousClass1.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
            }
        });
    }

    public void onADClicked() {
        try {
            this.isAdClicked = true;
            if (this.splashAdWrapper.getSdkAdInfo() != null && !TextUtils.isEmpty(this.splashAdWrapper.getSdkAdInfo().getClk())) {
                LogUtil.d(TAG, "send onADClicked");
                a0.a(this.splashAdWrapper.getContext(), f.a(this.splashAdWrapper.getSdkAdInfo().getClk(), this.splashAd), new i());
                this.splashAdWrapper.getSdkAdInfo().getMsLoadedTime();
                this.splashAdWrapper.getAdLoader().getPosId();
            }
            GDTSplashAd gDTSplashAd = this.splashAd;
            if (gDTSplashAd == null || gDTSplashAd.getInteractionListener() == null) {
                return;
            }
            this.splashAd.getInteractionListener().onAdClicked();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onADDismissed() {
        try {
            d dVar = this.splashADListener;
            if (dVar != null) {
                if (!this.isAdClicked) {
                    if (this.leftMilliseconds < 800) {
                        dVar.onAdTimeOver(this.splashAd);
                    } else {
                        dVar.onAdSkip(this.splashAd);
                    }
                }
                this.splashADListener.onAdClosed();
            }
            GDTSplashAd gDTSplashAd = this.splashAd;
            if (gDTSplashAd == null || gDTSplashAd.getInteractionListener() == null) {
                return;
            }
            this.splashAd.getInteractionListener().onAdClosed();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onADExposure() {
        try {
            LogUtil.d(TAG, "send onADExposure");
            i0.a(this.splashAdWrapper.getSdkAdInfo(), this.splashAdWrapper.getAdLoader().getAdContainer());
            d dVar = this.splashADListener;
            if (dVar != null) {
                dVar.onAdExposure();
            }
            GDTSplashAd gDTSplashAd = this.splashAd;
            if (gDTSplashAd == null || gDTSplashAd.getInteractionListener() == null) {
                return;
            }
            this.splashAd.getInteractionListener().onAdExposure();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onADLoaded(long j2) {
        LogUtil.d(TAG, "load GDT  succ------------------------");
        try {
            if (this.splashADListener != null) {
                if (this.splashAdWrapper.getSdkAdInfo() != null) {
                    this.splashAdWrapper.getSdkAdInfo().setEcpm(String.valueOf(this.splashAd.getSplashAd().getECPM()));
                }
                this.splashADListener.onAdLoaded(this.splashAd);
                this.splashADListener.onAdReady(this.splashAd);
                this.isAdLoaded = true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onADPresent() {
        d dVar = this.splashADListener;
        if (dVar != null) {
            dVar.onAdPresent(this.splashAd);
        }
    }

    public void onADTick(long j2) {
        try {
            this.leftMilliseconds = j2;
            d dVar = this.splashADListener;
            if (dVar != null) {
                dVar.onAdTick(j2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onNoAD(AdError adError) {
        try {
            LogUtil.e(TAG, "onNoAD, code: " + adError.getErrorCode() + ", msg: " + adError.getErrorMsg());
            if (!this.isAdLoaded) {
                new GDTPlatformError(adError, this.splashAdWrapper.getSdkAdInfo()).post(this.splashADListener);
                return;
            }
            d dVar = this.splashADListener;
            if (dVar != null) {
                dVar.onAdRenderFail(adError.getErrorMsg(), adError.getErrorCode());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
