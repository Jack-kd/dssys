package com.anythink.network.octopus;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.octopus.ZyATNativeAd;
import com.octopus.ad.IBidding;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ZyATAdapter extends CustomNativeAdapter {
    public static final String TAG = "ZyATAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f10074a;

    /* renamed from: b, reason: collision with root package name */
    private String f10075b = "0";

    /* renamed from: c, reason: collision with root package name */
    boolean f10076c = false;

    /* renamed from: d, reason: collision with root package name */
    private ZyATNativeAd f10077d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10078a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10079b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10080c;

        public a(Context context, Map map, Map map2) {
            this.f10078a = context;
            this.f10079b = map;
            this.f10080c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ZyATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            ZyATAdapter.this.a(this.f10078a, this.f10079b, this.f10080c);
        }
    }

    public class b implements ZyATNativeAd.AdListener {
        public b() {
        }

        @Override // com.anythink.network.octopus.ZyATNativeAd.AdListener
        public void onNativeAdFailToLoad(String str, String str2) {
            String str3 = ZyATAdapter.TAG;
            ZyATAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.octopus.ZyATNativeAd.AdListener
        public void onNativeAdLoadSuccess(List<CustomNativeAd> list, IBidding iBidding, double d2) {
            String str = ZyATAdapter.TAG;
            Objects.toString(list);
            if (list == null || list.isEmpty()) {
                ZyATAdapter.this.notifyATLoadFail("", "nativeAdDataList is null");
                return;
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) list.toArray(new CustomNativeAd[list.size()]);
            ZyATAdapter zyATAdapter = ZyATAdapter.this;
            if (!zyATAdapter.f10076c) {
                if (((ATBaseAdInternalAdapter) zyATAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) ZyATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            ATBiddingListener aTBiddingListener = zyATAdapter.mBiddingListener;
            if (aTBiddingListener != null) {
                if (d2 <= 0.0d) {
                    aTBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                ZyATBiddingNotice zyATBiddingNotice = new ZyATBiddingNotice(iBidding);
                ZyATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", zyATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return ZyATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        ZyATNativeAd zyATNativeAd = this.f10077d;
        if (zyATNativeAd != null) {
            zyATNativeAd.destroy();
            this.f10077d = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return ZyATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10074a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return ZyATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10074a = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10075b = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        if (TextUtils.isEmpty(this.f10074a) || context == null) {
            notifyATLoadFail("", "octopus: unit_id or context is empty");
        } else {
            ZyATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new a(context, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10076c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.content.Context r9, java.util.Map<java.lang.String, java.lang.Object> r10, java.util.Map<java.lang.String, java.lang.Object> r11) {
        /*
            r8 = this;
            java.lang.String r0 = ""
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2e
            r1.getName()     // Catch: java.lang.Throwable -> L2e
            com.anythink.network.octopus.ZyATAdapter$b r1 = new com.anythink.network.octopus.ZyATAdapter$b     // Catch: java.lang.Throwable -> L2e
            r1.<init>()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r2 = r8.f10075b     // Catch: java.lang.Throwable -> L2e
            int r3 = r2.hashCode()     // Catch: java.lang.Throwable -> L2e
            r4 = 48
            r5 = 0
            r6 = 2
            r7 = 1
            if (r3 == r4) goto L3a
            r4 = 49
            if (r3 == r4) goto L30
            r4 = 51
            if (r3 == r4) goto L24
            goto L44
        L24:
            java.lang.String r3 = "3"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L2e
            if (r2 == 0) goto L44
            r2 = r6
            goto L45
        L2e:
            r9 = move-exception
            goto L76
        L30:
            java.lang.String r3 = "1"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L2e
            if (r2 == 0) goto L44
            r2 = r7
            goto L45
        L3a:
            java.lang.String r3 = "0"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L2e
            if (r2 == 0) goto L44
            r2 = r5
            goto L45
        L44:
            r2 = -1
        L45:
            if (r2 == 0) goto L65
            if (r2 == r7) goto L5b
            if (r2 == r6) goto L51
            java.lang.String r9 = "octopus not support this type"
            r8.notifyATLoadFail(r0, r9)     // Catch: java.lang.Throwable -> L2e
            return
        L51:
            com.anythink.network.octopus.ZyATNativeExpressAd r2 = new com.anythink.network.octopus.ZyATNativeExpressAd     // Catch: java.lang.Throwable -> L2e
            boolean r3 = r8.f10076c     // Catch: java.lang.Throwable -> L2e
            r2.<init>(r3, r1)     // Catch: java.lang.Throwable -> L2e
            r8.f10077d = r2     // Catch: java.lang.Throwable -> L2e
            goto L6e
        L5b:
            com.anythink.network.octopus.ZyATNativeFeedAd r2 = new com.anythink.network.octopus.ZyATNativeFeedAd     // Catch: java.lang.Throwable -> L2e
            boolean r3 = r8.f10076c     // Catch: java.lang.Throwable -> L2e
            r2.<init>(r3, r7, r1)     // Catch: java.lang.Throwable -> L2e
            r8.f10077d = r2     // Catch: java.lang.Throwable -> L2e
            goto L6e
        L65:
            com.anythink.network.octopus.ZyATNativeFeedAd r2 = new com.anythink.network.octopus.ZyATNativeFeedAd     // Catch: java.lang.Throwable -> L2e
            boolean r3 = r8.f10076c     // Catch: java.lang.Throwable -> L2e
            r2.<init>(r3, r5, r1)     // Catch: java.lang.Throwable -> L2e
            r8.f10077d = r2     // Catch: java.lang.Throwable -> L2e
        L6e:
            com.anythink.network.octopus.ZyATNativeAd r1 = r8.f10077d     // Catch: java.lang.Throwable -> L2e
            java.lang.String r2 = r8.f10074a     // Catch: java.lang.Throwable -> L2e
            r1.loadAd(r9, r2, r10, r11)     // Catch: java.lang.Throwable -> L2e
            return
        L76:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "octopus startLoadAd exception:"
            r10.append(r11)
            java.lang.String r9 = r9.getMessage()
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.notifyATLoadFail(r0, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.octopus.ZyATAdapter.a(android.content.Context, java.util.Map, java.util.Map):void");
    }
}
