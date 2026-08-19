package com.anythink.core.common.d;

import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATCustomContentResult;
import com.anythink.core.api.ATSDKUtils;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.IATAdxHandler;
import com.anythink.core.e.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class k extends ATAdInfo {

    /* renamed from: D, reason: collision with root package name */
    private Map<String, Object> f2865D;

    /* renamed from: I, reason: collision with root package name */
    private Map<String, Object> f2870I;

    /* renamed from: L, reason: collision with root package name */
    private double f2873L;

    /* renamed from: a, reason: collision with root package name */
    private ATBaseAdAdapter f2883a;

    /* renamed from: b, reason: collision with root package name */
    private Pair<Integer, String> f2884b;

    /* renamed from: g, reason: collision with root package name */
    private double f2889g;

    /* renamed from: h, reason: collision with root package name */
    private String f2890h;

    /* renamed from: i, reason: collision with root package name */
    private String f2891i;

    /* renamed from: j, reason: collision with root package name */
    private int f2892j;

    /* renamed from: n, reason: collision with root package name */
    private Double f2896n;

    /* renamed from: c, reason: collision with root package name */
    private int f2885c = -1;

    /* renamed from: d, reason: collision with root package name */
    private String f2886d = "";

    /* renamed from: e, reason: collision with root package name */
    private int f2887e = -1;

    /* renamed from: f, reason: collision with root package name */
    private double f2888f = 0.0d;

    /* renamed from: k, reason: collision with root package name */
    private int f2893k = 0;

    /* renamed from: l, reason: collision with root package name */
    private String f2894l = "";

    /* renamed from: m, reason: collision with root package name */
    private Double f2895m = Double.valueOf(0.0d);

    /* renamed from: o, reason: collision with root package name */
    private String f2897o = "";

    /* renamed from: p, reason: collision with root package name */
    private String f2898p = "";

    /* renamed from: q, reason: collision with root package name */
    private String f2899q = "";

    /* renamed from: r, reason: collision with root package name */
    private String f2900r = "";

    /* renamed from: s, reason: collision with root package name */
    private String f2901s = "unknow";

    /* renamed from: t, reason: collision with root package name */
    private String f2902t = "Network";

    /* renamed from: u, reason: collision with root package name */
    private String f2903u = "";

    /* renamed from: v, reason: collision with root package name */
    private int f2904v = 1;

    /* renamed from: w, reason: collision with root package name */
    private int f2905w = 0;

    /* renamed from: x, reason: collision with root package name */
    private String f2906x = "";

    /* renamed from: y, reason: collision with root package name */
    private String f2907y = "";

    /* renamed from: z, reason: collision with root package name */
    private int f2908z = 0;

    /* renamed from: A, reason: collision with root package name */
    private String f2862A = "";

    /* renamed from: B, reason: collision with root package name */
    private String f2863B = "";

    /* renamed from: C, reason: collision with root package name */
    private Map<String, Object> f2864C = null;

    /* renamed from: E, reason: collision with root package name */
    private String f2866E = "";

    /* renamed from: F, reason: collision with root package name */
    private int f2867F = 0;

    /* renamed from: G, reason: collision with root package name */
    private String f2868G = "";

    /* renamed from: H, reason: collision with root package name */
    private int f2869H = 0;

    /* renamed from: J, reason: collision with root package name */
    private int f2871J = 1;

    /* renamed from: K, reason: collision with root package name */
    private String f2872K = "";

    /* renamed from: M, reason: collision with root package name */
    private IATAdxHandler f2874M = null;

    /* renamed from: N, reason: collision with root package name */
    private int f2875N = -1;

    /* renamed from: O, reason: collision with root package name */
    private String f2876O = "";

    /* renamed from: Q, reason: collision with root package name */
    private String f2878Q = "";

    /* renamed from: R, reason: collision with root package name */
    private String f2879R = "";

    /* renamed from: P, reason: collision with root package name */
    private Map<String, String> f2877P = new HashMap();

    /* renamed from: S, reason: collision with root package name */
    private String f2880S = "";

    /* renamed from: U, reason: collision with root package name */
    private ATCustomContentResult f2882U = null;

    /* renamed from: T, reason: collision with root package name */
    private int f2881T = 0;

    /* renamed from: com.anythink.core.common.d.k$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2909a;

        static {
            int[] iArr = new int[ATAdConst.CURRENCY.values().length];
            f2909a = iArr;
            try {
                iArr[ATAdConst.CURRENCY.RMB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2909a[ATAdConst.CURRENCY.RMB_CENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2909a[ATAdConst.CURRENCY.USD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.anythink.core.common.d.k a(com.anythink.core.common.d.k r8, com.anythink.core.common.h.n r9, int r10) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.d.k.a(com.anythink.core.common.d.k, com.anythink.core.common.h.n, int):com.anythink.core.common.d.k");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(com.anythink.core.common.d.k r6, com.anythink.core.common.h.n r7, int r8) {
        /*
            double r0 = r7.q()
            r6.f2888f = r0
            double r0 = r7.r()
            r6.f2889g = r0
            int r0 = r7.Z()
            r1 = 1
            r2 = 2
            if (r0 == r2) goto L1a
            int r0 = r7.Z()
            if (r0 != r1) goto L33
        L1a:
            android.util.Pair r0 = new android.util.Pair
            int r3 = r7.Z()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            double r4 = r6.f2888f
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.String r4 = com.anythink.core.common.v.af.a(r4)
            r0.<init>(r3, r4)
            r6.f2884b = r0
        L33:
            int r0 = r7.K()
            if (r0 == r1) goto L3a
            goto L6e
        L3a:
            com.anythink.core.common.h.aa r7 = r7.at()
            if (r7 == 0) goto L6e
            r0 = 3
            if (r8 == 0) goto L64
            if (r8 == r1) goto L5f
            if (r8 == r2) goto L5a
            if (r8 == r0) goto L55
            r1 = 4
            if (r8 == r1) goto L50
            r1 = 5
            if (r8 == r1) goto L64
            return
        L50:
            int r7 = r7.f3602g
            if (r7 != r0) goto L6e
            goto L68
        L55:
            int r7 = r7.f3601f
            if (r7 != r0) goto L6e
            goto L68
        L5a:
            int r7 = r7.f3600e
            if (r7 != r0) goto L6e
            goto L68
        L5f:
            int r7 = r7.f3599d
            if (r7 != r0) goto L6e
            goto L68
        L64:
            int r7 = r7.f3603h
            if (r7 != r0) goto L6e
        L68:
            r7 = 0
            r6.f2888f = r7
            r6.f2889g = r7
        L6e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.d.k.b(com.anythink.core.common.d.k, com.anythink.core.common.h.n, int):void");
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getABTestId() {
        return this.f2869H;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getAdNetworkType() {
        return this.f2902t;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getAdSourceAdType() {
        return this.f2875N;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getAdSourceCustomExt() {
        return this.f2876O;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getAdsourceId() {
        return this.f2886d;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getAdsourceIndex() {
        return this.f2887e;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final IATAdxHandler getAdxHandler() {
        return this.f2874M;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final double getBidFloor() {
        return this.f2873L;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getBidType() {
        return this.f2881T;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getChannel() {
        return this.f2863B;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getCountry() {
        return this.f2898p;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getCurrency() {
        return this.f2897o;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final ATCustomContentResult getCustomContentResult() {
        return this.f2882U;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getCustomRule() {
        return this.f2864C != null ? new JSONObject(this.f2864C).toString() : "";
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getDismissType() {
        return this.f2867F;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final double getEcpm() {
        return this.f2888f;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getEcpmLevel() {
        return this.f2904v;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getEcpmPrecision() {
        return this.f2901s;
    }

    @Override // com.anythink.core.api.ATAdInfo
    @Deprecated
    public final double getEcpmWithCurrency(ATAdConst.CURRENCY currency) {
        return com.anythink.core.common.v.s.a(this.f2888f, com.anythink.core.common.v.s.a(this.f2897o), currency);
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getEncEcpmInfo() {
        return this.f2890h;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Map<String, Object> getExtInfoMap() {
        return this.f2865D;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getFormat() {
        return this.f2900r;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Map<String, Object> getLocalExtra() {
        return this.f2870I;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getNetworkFirmId() {
        return this.f2885c;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getNetworkName() {
        return this.f2878Q;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getNetworkPlacementId() {
        return this.f2903u;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getPlacementId() {
        return this.f2899q;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getPlacementType() {
        return this.f2871J;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Double getPublisherRevenue() {
        return this.f2895m;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getRequestId() {
        return this.f2880S;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getRewardUserCustomData() {
        ATBaseAdAdapter aTBaseAdAdapter = this.f2883a;
        return aTBaseAdAdapter != null ? aTBaseAdAdapter.getUserCustomData() : "";
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getRmbEncEcpmInfo() {
        return this.f2891i;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getScenarioId() {
        return this.f2906x;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getScenarioRewardName() {
        return this.f2907y;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getScenarioRewardNumber() {
        return this.f2908z;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getSecretId() {
        return this.f2892j;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getSegmentId() {
        return this.f2905w;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getSharedPlacementId() {
        return this.f2872K;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getShowCustomExt() {
        return this.f2879R;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getShowId() {
        return this.f2894l;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getSubChannel() {
        return this.f2862A;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getTopOnAdFormat() {
        return this.f2900r;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getTopOnPlacementId() {
        return this.f2899q;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getTpBidId() {
        return this.f2866E;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Map<String, String> getUrlTagParams() {
        return this.f2877P;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getWaterfallId() {
        return this.f2868G;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int isHeaderBiddingAdsource() {
        return this.f2893k;
    }

    public final String toString() {
        return a().toString();
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final double getEcpm(ATAdConst.CURRENCY currency) {
        double d2;
        double rmbChangeToUsdRate;
        int i2 = AnonymousClass1.f2909a[currency.ordinal()];
        if (i2 == 1) {
            return this.f2889g;
        }
        if (i2 == 2) {
            d2 = this.f2889g;
            rmbChangeToUsdRate = 100.0d;
        } else {
            if (i2 != 3) {
                return getEcpmWithCurrency(currency);
            }
            String str = this.f2897o;
            if (str == null || !str.equalsIgnoreCase("CNY")) {
                return this.f2888f;
            }
            d2 = this.f2888f;
            rmbChangeToUsdRate = ATSDKUtils.getRmbChangeToUsdRate();
        }
        return d2 * rmbChangeToUsdRate;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Double getPublisherRevenue(ATAdConst.CURRENCY currency) {
        int i2 = AnonymousClass1.f2909a[currency.ordinal()];
        if (i2 == 1) {
            return this.f2896n;
        }
        if (i2 == 2) {
            return Double.valueOf(this.f2896n.doubleValue() * 100.0d);
        }
        if (i2 != 3) {
            return getPublisherRevenue();
        }
        String str = this.f2897o;
        return (str == null || !str.equalsIgnoreCase("CNY")) ? this.f2895m : Double.valueOf(this.f2895m.doubleValue() * ATSDKUtils.getRmbChangeToUsdRate());
    }

    public final void b(double d2) {
        this.f2889g = d2;
        this.f2896n = Double.valueOf(d2 / 1000.0d);
    }

    public static k a(BaseAd baseAd, ATBaseAdAdapter aTBaseAdAdapter) {
        return a(baseAd, aTBaseAdAdapter, 0);
    }

    public static k a(BaseAd baseAd, ATBaseAdAdapter aTBaseAdAdapter, int i2) {
        if (baseAd != null) {
            k kVarA = a(a(baseAd.getDetail(), i2), aTBaseAdAdapter);
            kVarA.f2865D = baseAd.getNetworkInfoMap();
            return kVarA;
        }
        return new k();
    }

    private static k a(k kVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            kVar.f2883a = aTBaseAdAdapter;
            kVar.f2865D = aTBaseAdAdapter.getInternalNetworkInfoMap();
            kVar.f2875N = kVar.f2883a.getTrackingInfo().ae();
            kVar.f2876O = aTBaseAdAdapter.getAdCustomExt();
            try {
                if (kVar.f2883a.getTrackingInfo().al()) {
                    kVar.f2874M = kVar.f2883a.getUnitGroupInfo().Y().i();
                    return kVar;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return kVar;
    }

    public static k a(ATBaseAdAdapter aTBaseAdAdapter) {
        return a(aTBaseAdAdapter, 0);
    }

    public static k a(ATBaseAdAdapter aTBaseAdAdapter, int i2) {
        if (aTBaseAdAdapter != null) {
            return a(a(aTBaseAdAdapter.getTrackingInfo(), i2), aTBaseAdAdapter);
        }
        return new k();
    }

    public static k a(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter, int i2) {
        return a(a(nVar, i2), aTBaseAdAdapter);
    }

    public static k a(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
        return a(nVar, aTBaseAdAdapter, 0);
    }

    private static k a(com.anythink.core.common.h.n nVar, int i2) {
        k kVar = new k();
        return nVar != null ? a(kVar, nVar, i2) : kVar;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f2894l);
            jSONObject.put("publisher_revenue", this.f2895m);
            jSONObject.put("publisher_revenue_cny", this.f2896n);
            jSONObject.put(DeepLinkPresetEvent.UMEventParamCurrency, this.f2897o);
            jSONObject.put(bv.f48888O, this.f2898p);
            jSONObject.put("adunit_id", this.f2899q);
            jSONObject.put("adunit_format", this.f2900r);
            jSONObject.put(com.anythink.core.common.k.f5376U, this.f2901s);
            jSONObject.put("network_type", this.f2902t);
            jSONObject.put("network_placement_id", this.f2903u);
            jSONObject.put(com.anythink.core.common.k.f5375T, this.f2904v);
            jSONObject.put("segment_id", this.f2905w);
            if (!TextUtils.isEmpty(this.f2906x)) {
                jSONObject.put("scenario_id", this.f2906x);
            }
            if (!TextUtils.isEmpty(this.f2907y) && this.f2908z != 0) {
                jSONObject.put("scenario_reward_name", this.f2907y);
                jSONObject.put("scenario_reward_number", this.f2908z);
            }
            if (!TextUtils.isEmpty(this.f2863B)) {
                jSONObject.put("channel", this.f2863B);
            }
            if (!TextUtils.isEmpty(this.f2862A)) {
                jSONObject.put("sub_channel", this.f2862A);
            }
            Map<String, Object> map = this.f2864C;
            if (map != null && map.size() > 0) {
                jSONObject.put("custom_rule", new JSONObject(this.f2864C));
            }
            jSONObject.put("network_firm_id", this.f2885c);
            jSONObject.put("adsource_id", this.f2886d);
            jSONObject.put("adsource_index", this.f2887e);
            jSONObject.put("adsource_price", this.f2888f);
            jSONObject.put("adsource_price_cny", this.f2889g);
            jSONObject.put("adsource_isheaderbidding", this.f2893k);
            Map<String, Object> map2 = this.f2865D;
            if (map2 != null && map2.size() > 0) {
                jSONObject.put("ext_info", new JSONObject(this.f2865D));
            }
            ATBaseAdAdapter aTBaseAdAdapter = this.f2883a;
            if (aTBaseAdAdapter != null) {
                jSONObject.put(MediationConstant.REWARD_CUSTOM_DATA, aTBaseAdAdapter.getUserCustomData());
            }
            if (!TextUtils.isEmpty(this.f2866E)) {
                jSONObject.put("tp_bid_id", this.f2866E);
            }
            int i2 = this.f2867F;
            if (i2 != 0) {
                jSONObject.put("dismiss_type", i2);
            }
            if (!TextUtils.isEmpty(this.f2868G)) {
                jSONObject.put(m.a.f8918T, this.f2868G);
            }
            jSONObject.put(com.anythink.core.common.m.f.f5760J, this.f2869H);
            Map<String, Object> map3 = this.f2870I;
            if (map3 != null && map3.size() > 0) {
                jSONObject.put("user_load_extra_data", new JSONObject(this.f2870I));
            }
            jSONObject.put("placement_type", this.f2871J);
            if (!TextUtils.isEmpty(this.f2872K)) {
                jSONObject.put("shared_placement_id", this.f2872K);
            }
            jSONObject.put("bid_floor", this.f2873L);
            jSONObject.put("ad_source_type", this.f2875N);
            jSONObject.put("ad_source_custom_ext", this.f2876O);
            jSONObject.put("url_tag_params", this.f2877P);
            jSONObject.put("network_name", this.f2878Q);
            jSONObject.put("show_custom_ext", this.f2879R);
            if (!TextUtils.isEmpty(this.f2890h)) {
                jSONObject.put(com.anythink.core.common.k.aU, this.f2890h);
            }
            if (!TextUtils.isEmpty(this.f2891i)) {
                jSONObject.put(com.anythink.core.common.k.aV, this.f2891i);
            }
            jSONObject.put(m.a.aD, this.f2892j);
            jSONObject.put("req_id", this.f2880S);
            jSONObject.put(com.anythink.core.common.k.f5366K, this.f2881T);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    public final void a(double d2) {
        this.f2888f = d2;
        this.f2895m = Double.valueOf(d2 / 1000.0d);
    }
}
