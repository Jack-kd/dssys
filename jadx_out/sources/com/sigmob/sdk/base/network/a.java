package com.sigmob.sdk.base.network;

import android.util.Base64;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.App;
import com.czhj.sdk.common.models.BidRequest;
import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.models.Permission;
import com.czhj.sdk.common.models.Privacy;
import com.czhj.sdk.common.models.User;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.HttpHeaderParser;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1286z;
import com.sigmob.sdk.base.common.ab;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.models.rtb.InterstitialSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.NativeAdSetting;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.network.f;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class a extends SigmobRequest<BidResponse> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36464a = "a";

    /* renamed from: b, reason: collision with root package name */
    private final f.a f36465b;

    /* renamed from: c, reason: collision with root package name */
    private final LoadAdRequest f36466c;

    /* renamed from: d, reason: collision with root package name */
    private byte[] f36467d;

    public a(String str, LoadAdRequest loadAdRequest, f.a aVar) {
        super(str, 1, null);
        Preconditions.NoThrow.checkNotNull(aVar);
        this.f36465b = aVar;
        this.f36466c = loadAdRequest;
        setRetryPolicy(new DefaultRetryPolicy(5000, 0, 0.0f));
        setShouldCache(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0276 A[Catch: all -> 0x0059, TryCatch #1 {all -> 0x0059, blocks: (B:3:0x002b, B:5:0x0051, B:8:0x005c, B:10:0x0063, B:14:0x0077, B:16:0x0089, B:74:0x036b, B:76:0x03ba, B:77:0x03c5, B:17:0x014d, B:19:0x015d, B:21:0x0167, B:22:0x018b, B:24:0x0191, B:27:0x019f, B:40:0x0279, B:42:0x0298, B:43:0x029b, B:45:0x02c1, B:46:0x02c4, B:48:0x02e2, B:49:0x02e4, B:51:0x02ee, B:52:0x02f0, B:54:0x02ff, B:55:0x0302, B:57:0x030c, B:58:0x030f, B:60:0x031a, B:61:0x0321, B:63:0x032b, B:64:0x0332, B:66:0x033c, B:67:0x0344, B:69:0x034a, B:73:0x035d, B:34:0x01f5, B:35:0x0210, B:37:0x026c, B:39:0x0276, B:36:0x0214), top: B:84:0x002b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.czhj.sdk.common.models.BidRequest.Builder a(com.sigmob.sdk.base.models.LoadAdRequest r14) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.network.a.a(com.sigmob.sdk.base.models.LoadAdRequest):com.czhj.sdk.common.models.BidRequest$Builder");
    }

    public static User.Builder c() {
        User.Builder builder = new User.Builder();
        builder.is_minor = Boolean.valueOf(!com.sigmob.sdk.base.i.a().d());
        builder.disable_personalized_recommendation = Boolean.valueOf(!com.sigmob.sdk.base.i.a().e());
        builder.change_recommendation_state = Boolean.valueOf(com.sigmob.sdk.base.i.a().f());
        return builder;
    }

    public static Privacy.Builder d() {
        int iG;
        Privacy.Builder builder = new Privacy.Builder();
        builder.age(Integer.valueOf(com.sigmob.sdk.base.i.a().b()));
        builder.child_protection(Integer.valueOf(com.sigmob.sdk.base.i.a().c()));
        try {
            iG = com.sigmob.sdk.base.i.a().g();
        } catch (Throwable unused) {
            iG = 0;
        }
        builder.gdpr_consent(Integer.valueOf(iG));
        WindAdOptions options = WindAds.sharedAds().getOptions();
        WindCustomController windCustomController = (options == null || options.getCustomController() == null) ? new WindCustomController() : options.getCustomController();
        builder.allow_geo = Boolean.valueOf(windCustomController.isCanUseLocation());
        builder.allow_imei = Boolean.valueOf(windCustomController.isCanUsePhoneState());
        builder.allow_oaid = Boolean.valueOf(windCustomController.isCanUseOaid());
        builder.allow_android_id = Boolean.valueOf(windCustomController.isCanUseAndroidId());
        builder.allow_installed_apps = Boolean.valueOf(windCustomController.isCanUseAppList());
        builder.allow_carrier_code = Boolean.valueOf(windCustomController.isCanUseSimOperator());
        return builder;
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError volleyError) {
        f.a aVar;
        WindAdError windAdError;
        C1286z c1286zA;
        String placementId = this.f36466c.getPlacementId();
        if (this.f36466c.getAdType() == 5 && (c1286zA = C1286z.a(placementId)) != null) {
            c1286zA.f36065g = c1286zA.f36061c;
        }
        if (volleyError instanceof ParseError) {
            aVar = this.f36465b;
            windAdError = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
        } else {
            SigmobLog.e(placementId + " ERROR_SIGMOB_NETWORK " + volleyError.getMessage());
            aVar = this.f36465b;
            windAdError = WindAdError.ERROR_SIGMOB_NETWORK;
        }
        f.a(aVar, windAdError.getErrorCode(), volleyError.getMessage(), null, this.f36466c);
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f36467d;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/octet-stream";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        LoadAdRequest loadAdRequest;
        Map<String, String> headers = super.getHeaders();
        try {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
        } catch (NoSuchMethodError unused) {
            headers.put("e", "1");
        }
        try {
            loadAdRequest = this.f36466c;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        BidRequest bidRequestBuild = loadAdRequest != null ? a(loadAdRequest).build() : null;
        if (bidRequestBuild == null) {
            SigmobLog.e("builder Ads Post entry fail ");
            return null;
        }
        try {
            byte[] bArrEncode = bidRequestBuild.encode();
            this.f36467d = bArrEncode;
            this.f36467d = c.b(bArrEncode);
            headers.put("cp", "1");
        } catch (Throwable unused2) {
            headers.remove("cp");
            this.f36467d = bidRequestBuild.encode();
        }
        try {
            this.f36467d = AESUtil.Encrypt(this.f36467d, "KGpfzbYsn4T9Jyuq");
        } catch (Exception e2) {
            e2.printStackTrace();
            headers.remove("e");
            headers.remove("agn");
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<BidResponse> parseNetworkResponse(NetworkResponse networkResponse) {
        ParseError parseError;
        try {
            if (networkResponse.data == null) {
                parseError = new ParseError(networkResponse);
            } else {
                BidResponse bidResponseDecode = BidResponse.ADAPTER.decode((networkResponse.headers.containsKey("cp") && "1".equals(networkResponse.headers.get("cp"))) ? c.a(networkResponse.data) : networkResponse.data);
                if (bidResponseDecode != null) {
                    return Response.success(bidResponseDecode, HttpHeaderParser.parseCacheHeaders(networkResponse));
                }
                parseError = new ParseError(networkResponse);
            }
            return Response.error(parseError);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return Response.error(new ParseError(th));
        }
    }

    public static App.Builder b() {
        App.Builder builderCreateApp = ModelBuilderCreator.createApp();
        builderCreateApp.sdk_ext_cap.add(4);
        builderCreateApp.app_id(WindAds.sharedAds().getAppId());
        Permission.Builder builder = new Permission.Builder();
        boolean zJ = com.sigmob.sdk.base.o.a().j();
        boolean sensorStatus = WindAds.sharedAds().getSensorStatus();
        boolean zF = (!sensorStatus || zJ) ? false : com.sigmob.sdk.b.f();
        boolean z2 = sensorStatus && zF;
        SigmobLogger.d(f36464a, "createApp: accelerometer = " + z2 + ", complianceMark = " + zJ + ", sensorStatus = " + sensorStatus + ", sensorEnable = " + zF, new Object[0]);
        builder.accelerometer(Boolean.valueOf(z2));
        builderCreateApp.permission(builder.build());
        return builderCreateApp;
    }

    public f.a a() {
        return this.f36465b;
    }

    private void a(final int i2, final String str, final String str2, int i3, String str3) {
        ad.a(PointCategory.SERVER_ERROR, i3, str3, (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.network.j
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                a.a(str2, str, i2, obj);
            }
        });
    }

    @Override // com.czhj.volley.Request
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(BidResponse bidResponse) {
        String strDecryptString;
        C1286z c1286zA;
        AndroidMarket androidMarket;
        Integer num;
        NativeAdSetting nativeAdSetting;
        C1286z c1286zA2;
        int i2 = 0;
        int adType = this.f36466c.getAdType();
        String placementId = this.f36466c.getPlacementId();
        AndroidMarket androidMarket2 = null;
        int i3 = 5;
        if (bidResponse != null) {
            if (adType == 5) {
                C1286z c1286zA3 = C1286z.a(placementId);
                if (c1286zA3 != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    c1286zA3.f36061c = jCurrentTimeMillis;
                    c1286zA3.f36065g = jCurrentTimeMillis;
                    c1286zA3.f36060b = 0;
                    c1286zA3.f36059a = 0;
                    SlotAdSetting slotAdSetting = bidResponse.slot_ad_setting;
                    if (slotAdSetting != null && (nativeAdSetting = slotAdSetting.native_setting) != null) {
                        c1286zA3.f36063e = ((Integer) Wire.get(nativeAdSetting.ad_pool_size, 0)).intValue();
                        c1286zA3.f36062d = ((Integer) Wire.get(nativeAdSetting.req_interval_time, 0)).intValue();
                        c1286zA3.f36064f = ((Integer) Wire.get(nativeAdSetting.media_expected_floor, 0)).intValue();
                        ab.a().a(((Integer) Wire.get(nativeAdSetting.log_interval_time, 0)).intValue());
                    }
                }
                C1286z.a(placementId, c1286zA3);
            }
            List<Ad> list = bidResponse.ads;
            int size = list.size();
            if (com.sigmob.sdk.base.utils.f.b(list)) {
                com.sigmob.sdk.base.o.f36521a = Boolean.valueOf(v.a(bidResponse.noncompliance_mark));
            }
            com.sigmob.sdk.base.utils.k.c(f36464a, "noncomplianceMark(bid) = " + com.sigmob.sdk.base.o.f36521a + ", size = " + size, new Object[0]);
            String str = bidResponse.uid;
            if (com.sigmob.sdk.base.utils.s.b(str)) {
                try {
                    strDecryptString = AESUtil.DecryptStringServer(str, "KGpfzbYsn4T9Jyuq");
                } catch (NoSuchMethodError unused) {
                    strDecryptString = AESUtil.DecryptString(str, "KGpfzbYsn4T9Jyuq");
                }
                ClientMetadata.getInstance().setUid(strDecryptString);
            }
            if (com.sigmob.sdk.base.utils.s.b(bidResponse.adx_id)) {
                this.f36466c.setAdx_id(bidResponse.adx_id);
            }
            this.f36466c.setRequestId(bidResponse.request_id);
            if (com.sigmob.sdk.base.utils.f.a(list)) {
                Long l2 = bidResponse.error_code;
                int errorCode = l2 == null ? WindAdError.ERROR_AD_ERROR.getErrorCode() : l2.intValue();
                a(adType, placementId, bidResponse.request_id, errorCode, bidResponse.error_message);
                f.a(this.f36465b, errorCode, bidResponse.error_message, bidResponse.request_id, this.f36466c);
                return;
            }
            try {
                ArrayList arrayList = new ArrayList();
                while (i2 < size) {
                    Ad ad = list.get(i2);
                    if (this.f36466c.getAdType() == 6 && com.sigmob.sdk.base.utils.f.b(ad.materials) && v.b(bidResponse.slot_ad_setting) && v.b(bidResponse.slot_ad_setting.interstitial_setting)) {
                        for (MaterialMeta materialMeta : ad.materials) {
                            if (materialMeta != null && (androidMarket = materialMeta.android_market) != null && (num = androidMarket.type) != null) {
                                InterstitialSetting interstitialSetting = bidResponse.slot_ad_setting.interstitial_setting;
                                Boolean bool = interstitialSetting.click_close_ad;
                                Integer num2 = interstitialSetting.seconds_close_ad;
                                if (num.intValue() == 1 && (v.a(bool) || v.a((Number) num2))) {
                                    materialMeta.android_market = androidMarket2;
                                }
                            }
                        }
                    }
                    BaseAdUnit baseAdUnitAdUnit = BaseAdUnit.adUnit(ad, bidResponse.request_id, this.f36466c, bidResponse.slot_ad_setting, bidResponse.scene, bidResponse.uid, bidResponse.expiration_time, bidResponse.bidding_response);
                    baseAdUnitAdUnit.setAd_type(adType);
                    baseAdUnitAdUnit.setAdx_id(this.f36466c.getAdx_id());
                    baseAdUnitAdUnit.setAdslot_id(placementId);
                    baseAdUnitAdUnit.setHalfInterstitial(this.f36466c.isHalfInterstitial());
                    baseAdUnitAdUnit.setRvCallBackUrl(bidResponse.rv_callback_url);
                    baseAdUnitAdUnit.setTraceId(this.f36466c.getTraceId());
                    baseAdUnitAdUnit.setOriginVid(this.f36466c.getOriginVid());
                    baseAdUnitAdUnit.setBid_token(this.f36466c.getBidToken());
                    baseAdUnitAdUnit.setRequestSceneType(this.f36466c.getRequest_scene_type());
                    Map<String, String> map = bidResponse.saas_options;
                    try {
                        if (com.sigmob.sdk.base.utils.f.b(map) && map.containsKey("adInfoList")) {
                            List list2 = (List) com.sigmob.sdk.base.utils.i.a(map.get("adInfoList"), (Class<?>) List.class, Map.class);
                            if (com.sigmob.sdk.base.utils.f.b(list2) && com.sigmob.sdk.base.utils.f.a(i2, list2)) {
                                Map map2 = (Map) list2.get(i2);
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(map2);
                                String strA = com.sigmob.sdk.base.utils.i.a(arrayList2);
                                HashMap map3 = new HashMap();
                                map3.put("adInfoList", strA);
                                baseAdUnitAdUnit.setSaasOptions(map3);
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    arrayList.add(baseAdUnitAdUnit);
                    i2++;
                    androidMarket2 = null;
                    i3 = 5;
                }
                if (adType == i3 && (c1286zA = C1286z.a(placementId)) != null) {
                    C1258h.a(placementId, arrayList, c1286zA.f36063e);
                }
                f.a(this.f36465b, arrayList, this.f36466c);
                if (adType == 6 || adType == 1 || adType == 4) {
                    C1258h.a(bidResponse.request_id, bidResponse);
                    return;
                }
                return;
            } catch (Throwable th) {
                SigmobLog.e("ads Response: error ", th);
            }
        } else if (adType == 5 && (c1286zA2 = C1286z.a(placementId)) != null) {
            c1286zA2.f36065g = c1286zA2.f36061c;
        }
        f.a(this.f36465b, WindAdError.ERROR_SIGMOB_INFORMATION_LOSE.getErrorCode(), "bidResponse is null", null, this.f36466c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2, int i2, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            PointEntitySigmobError pointEntitySigmobError = (PointEntitySigmobError) obj;
            pointEntitySigmobError.setRequest_id(str);
            pointEntitySigmobError.setPlacement_id(str2);
            pointEntitySigmobError.setAdtype(String.valueOf(i2));
        }
    }
}
