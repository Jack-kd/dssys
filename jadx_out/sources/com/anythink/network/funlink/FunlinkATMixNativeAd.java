package com.anythink.network.funlink;

import android.content.Context;
import com.anythink.network.funlink.FunlinkATFeedAd;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.base.exception.FLError;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class FunlinkATMixNativeAd extends FunlinkATFeedAd {

    /* renamed from: d, reason: collision with root package name */
    private static final String f9592d = "FunlinkATMixNativeAd";

    /* renamed from: a, reason: collision with root package name */
    private final String f9593a;

    /* renamed from: b, reason: collision with root package name */
    private final FunlinkATFeedAd.AdListener f9594b;

    /* renamed from: c, reason: collision with root package name */
    private NativeAd f9595c;

    public class a implements NativeLoadListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9596a;

        public a(Context context) {
            this.f9596a = context;
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            if (FunlinkATMixNativeAd.this.f9594b != null) {
                FunlinkATMixNativeAd.this.f9594b.onNativeAdFailToLoad(fLError != null ? String.valueOf(fLError.getCode()) : "", fLError != null ? fLError.getMsg() : "unknown error");
            }
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeLoadListener
        public void onNativeAdLoaded(NativeAd nativeAd) {
            long ecpm;
            if (nativeAd == null) {
                if (FunlinkATMixNativeAd.this.f9594b != null) {
                    FunlinkATMixNativeAd.this.f9594b.onNativeAdFailToLoad("", "nativeAd is null");
                    return;
                }
                return;
            }
            FunlinkATMixNativeAd.this.f9595c = nativeAd;
            ArrayList arrayList = new ArrayList();
            arrayList.add("1".equals(FunlinkATMixNativeAd.this.f9593a) ? new FunlinkATExpressAd(this.f9596a, nativeAd) : new FunlinkATSelfRenderAd(this.f9596a, nativeAd));
            try {
                ecpm = nativeAd.getECPM();
            } catch (Throwable th) {
                String unused = FunlinkATMixNativeAd.f9592d;
                th.getMessage();
                ecpm = 0;
            }
            if (FunlinkATMixNativeAd.this.f9594b != null) {
                FunlinkATMixNativeAd.this.f9594b.onNativeAdLoadSuccess(arrayList, nativeAd, ecpm);
            }
        }
    }

    public FunlinkATMixNativeAd(String str, FunlinkATFeedAd.AdListener adListener) {
        this.f9593a = str;
        this.f9594b = adListener;
    }

    @Override // com.anythink.network.funlink.FunlinkATFeedAd
    public void destroy() {
        NativeAd nativeAd = this.f9595c;
        if (nativeAd != null) {
            try {
                nativeAd.destroy();
            } catch (Throwable th) {
                th.getMessage();
            }
            this.f9595c = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    @Override // com.anythink.network.funlink.FunlinkATFeedAd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd(android.content.Context r4, java.lang.String r5, java.util.Map<java.lang.String, java.lang.Object> r6, java.util.Map<java.lang.String, java.lang.Object> r7) {
        /*
            r3 = this;
            java.lang.String r6 = "key_height"
            java.lang.String r0 = "key_width"
            com.fl.saas.adx.api.AdParams$Builder r1 = new com.fl.saas.adx.api.AdParams$Builder     // Catch: java.lang.Throwable -> L4c
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r5 = "1"
            java.lang.String r2 = r3.f9593a     // Catch: java.lang.Throwable -> L4c
            boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L4c
            if (r5 == 0) goto L59
            r5 = -1
            if (r7 == 0) goto L2b
            boolean r2 = r7.containsKey(r0)     // Catch: java.lang.Throwable -> L29
            if (r2 == 0) goto L2b
            java.lang.Object r0 = r7.get(r0)     // Catch: java.lang.Throwable -> L29
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L29
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L29
            goto L2c
        L29:
            r0 = r5
            goto L40
        L2b:
            r0 = r5
        L2c:
            if (r7 == 0) goto L40
            boolean r2 = r7.containsKey(r6)     // Catch: java.lang.Throwable -> L40
            if (r2 == 0) goto L40
            java.lang.Object r6 = r7.get(r6)     // Catch: java.lang.Throwable -> L40
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L40
            int r5 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Throwable -> L40
        L40:
            if (r5 <= 0) goto L4e
            float r5 = (float) r5
            int r5 = com.anythink.core.api.ATSDKUtils.px2dip(r4, r5)     // Catch: java.lang.Throwable -> L4c
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L4c
            r1.setExpressHeight(r5)     // Catch: java.lang.Throwable -> L4c
            goto L4e
        L4c:
            r4 = move-exception
            goto L66
        L4e:
            if (r0 <= 0) goto L59
            float r5 = (float) r0     // Catch: java.lang.Throwable -> L4c
            int r5 = com.anythink.core.api.ATSDKUtils.px2dip(r4, r5)     // Catch: java.lang.Throwable -> L4c
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L4c
            r1.setExpressWidth(r5)     // Catch: java.lang.Throwable -> L4c
        L59:
            com.fl.saas.adx.api.AdParams r5 = r1.build()     // Catch: java.lang.Throwable -> L4c
            com.anythink.network.funlink.FunlinkATMixNativeAd$a r6 = new com.anythink.network.funlink.FunlinkATMixNativeAd$a     // Catch: java.lang.Throwable -> L4c
            r6.<init>(r4)     // Catch: java.lang.Throwable -> L4c
            com.fl.saas.adx.api.FLSDK.loadMixNative(r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
            goto L84
        L66:
            com.anythink.network.funlink.FunlinkATFeedAd$AdListener r5 = r3.f9594b
            if (r5 == 0) goto L84
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "funlink loadAd exception: "
            r6.append(r7)
            java.lang.String r4 = r4.getMessage()
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            java.lang.String r6 = ""
            r5.onNativeAdFailToLoad(r6, r4)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.funlink.FunlinkATMixNativeAd.loadAd(android.content.Context, java.lang.String, java.util.Map, java.util.Map):void");
    }
}
