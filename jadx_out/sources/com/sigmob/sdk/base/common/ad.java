package com.sigmob.sdk.base.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.Base64;
import android.view.MotionEvent;
import com.anythink.core.common.f.s;
import com.anythink.core.common.m.AbstractC1114b;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.DownloadItem;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.WXProgramRes;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntityClick;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.mta.PointEntitySigmobPrivacy;
import com.sigmob.sdk.base.mta.PointEntitySigmobRequest;
import com.sigmob.sdk.base.mta.PointEntitySigmobSuper;
import com.sigmob.sdk.base.mta.PointFiveEntity;
import com.sigmob.sdk.base.mta.PointInitEntity;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.mta.PointType;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import com.sigmob.windad.consent.WindAdConsentInformation;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ad {

    /* renamed from: a, reason: collision with root package name */
    private static final String f35712a = "ad";

    public interface a {
        void onAddExtra(Object obj);
    }

    public static void a(int i2) {
        PointEntitySigmobPrivacy pointEntitySigmobPrivacy = new PointEntitySigmobPrivacy();
        pointEntitySigmobPrivacy.setAge(String.valueOf(i2));
        pointEntitySigmobPrivacy.setAc_type(PointType.GDPR_CONSENT);
        pointEntitySigmobPrivacy.setSub_category("coppa");
        pointEntitySigmobPrivacy.setCategory("privacy");
        pointEntitySigmobPrivacy.commit();
    }

    public static void a(int i2, boolean z2) {
        PointEntitySigmobPrivacy pointEntitySigmobPrivacy = new PointEntitySigmobPrivacy();
        pointEntitySigmobPrivacy.setUser_consent(String.valueOf(i2));
        pointEntitySigmobPrivacy.setGdpr_region(z2 ? "1" : "0");
        try {
            pointEntitySigmobPrivacy.setGdpr_dialog_region(WindAdConsentInformation.getInstance(com.sigmob.sdk.b.e()).isRequestLocationInEeaOrUnknown() ? "1" : "0");
        } catch (Throwable unused) {
        }
        pointEntitySigmobPrivacy.setSub_category(PointCategory.CONSENT);
        pointEntitySigmobPrivacy.setCategory("gdpr");
        pointEntitySigmobPrivacy.setAc_type(PointType.GDPR_CONSENT);
        pointEntitySigmobPrivacy.commit();
    }

    public static void b(int i2) {
        PointEntitySigmobPrivacy pointEntitySigmobPrivacy = new PointEntitySigmobPrivacy();
        pointEntitySigmobPrivacy.setAge_restricted(String.valueOf(i2));
        pointEntitySigmobPrivacy.setAc_type(PointType.GDPR_CONSENT);
        pointEntitySigmobPrivacy.setSub_category("coppa");
        pointEntitySigmobPrivacy.setCategory("privacy");
        pointEntitySigmobPrivacy.commit();
    }

    public static void a(PackageInfo packageInfo, int i2) {
        if (packageInfo == null) {
            return;
        }
        PointEntitySigmobSuper pointEntitySigmobSuper = new PointEntitySigmobSuper();
        pointEntitySigmobSuper.setAc_type(PointType.SIGMOB_APP);
        pointEntitySigmobSuper.setCategory("app");
        Map<String, String> options = pointEntitySigmobSuper.getOptions();
        try {
            options.put("app_name", String.valueOf(AppPackageUtil.getPackageManager(com.sigmob.sdk.b.e()).getApplicationLabel(packageInfo.applicationInfo)));
        } catch (Throwable unused) {
        }
        options.put("package_name", packageInfo.packageName);
        options.put(com.sigmob.sdk.base.n.f36454q, String.valueOf(packageInfo.lastUpdateTime));
        options.put("app_version", packageInfo.versionName);
        options.put(com.sigmob.sdk.base.n.f36456s, String.valueOf(i2));
        pointEntitySigmobSuper.commit();
    }

    public static void b(boolean z2) {
        PointEntitySigmobPrivacy pointEntitySigmobPrivacy = new PointEntitySigmobPrivacy();
        pointEntitySigmobPrivacy.setAc_type(PointType.GDPR_CONSENT);
        pointEntitySigmobPrivacy.setSub_category(PointCategory.PERSONALIZED);
        pointEntitySigmobPrivacy.setCategory("privacy");
        pointEntitySigmobPrivacy.setIs_unpersonalized(z2 ? "0" : "1");
        pointEntitySigmobPrivacy.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(PackageInfo packageInfo, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            Context contextE = com.sigmob.sdk.b.e();
            Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    options.put(com.sigmob.sdk.base.n.f36457t, contextE.getPackageManager().canRequestPackageInstalls() ? "1" : "0");
                } catch (Throwable th) {
                    SigmobLog.e(th.getMessage());
                }
            }
            if (packageInfo == null) {
                return;
            }
            try {
                options.put("app_name", contextE.getPackageManager().getApplicationLabel(packageInfo.applicationInfo).toString());
            } catch (Throwable unused) {
            }
            options.put("package_name", packageInfo.packageName);
            options.put(com.sigmob.sdk.base.n.f36454q, String.valueOf(packageInfo.lastUpdateTime));
            options.put("app_version", packageInfo.versionName);
        }
    }

    public static void a(final AdTracker adTracker, final String str, BaseAdUnit baseAdUnit, final NetworkResponse networkResponse, final a aVar) {
        if (adTracker == null) {
            return;
        }
        al.a(adTracker.getEvent()).a(baseAdUnit).a(new a() { // from class: com.sigmob.sdk.base.common.K
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                ad.a(str, adTracker, networkResponse, aVar, obj);
            }
        }).a();
    }

    public static void a(AdTracker adTracker, String str, BaseAdUnit baseAdUnit, final VolleyError volleyError) {
        NetworkResponse networkResponse = volleyError == null ? null : volleyError.networkResponse;
        if (com.sigmob.sdk.base.utils.v.b(networkResponse)) {
            a(adTracker, str, baseAdUnit, networkResponse, (a) null);
        } else {
            a(adTracker, str, baseAdUnit, (NetworkResponse) null, new a() { // from class: com.sigmob.sdk.base.common.J
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    ad.a(volleyError, obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(VolleyError volleyError, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setHttp_code("-1");
            if (volleyError == null) {
                pointEntitySigmob.setTime_spend("0");
            } else {
                pointEntitySigmob.setTime_spend(String.valueOf(volleyError.getNetworkTimeMs()));
                pointEntitySigmob.setError_message(volleyError.getMessage());
            }
        }
    }

    public static void a(DownloadItem downloadItem, BaseAdUnit baseAdUnit, String str, boolean z2) {
        PointEntitySigmob pointEntitySigmob = new PointEntitySigmob();
        pointEntitySigmob.setAc_type(PointType.DOWNLOAD_TRACKING);
        pointEntitySigmob.setIssuccess(String.valueOf(downloadItem.status));
        pointEntitySigmob.setIscached(z2 ? "1" : "0");
        pointEntitySigmob.setDuration(String.valueOf(downloadItem.networkMs));
        pointEntitySigmob.setFile_size(String.valueOf(downloadItem.size));
        pointEntitySigmob.setFile_name(Base64.encodeToString(downloadItem.url.getBytes(), 2));
        pointEntitySigmob.setError_message(str);
        pointEntitySigmob.setCategory(String.valueOf(downloadItem.type.getType()));
        a(pointEntitySigmob.getCategory(), pointEntitySigmob.getSub_category(), baseAdUnit, pointEntitySigmob);
        pointEntitySigmob.commit();
    }

    public static void a(com.sigmob.sdk.base.a aVar, final String str, final BaseAdUnit baseAdUnit, final String str2, final String str3, final String str4, final long j2, final JSONObject jSONObject) {
        a(aVar == null ? str : aVar.name().toLowerCase(), str, baseAdUnit, new a() { // from class: com.sigmob.sdk.base.common.L
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                ad.a(baseAdUnit, str, str2, str3, str4, j2, jSONObject, obj);
            }
        });
    }

    public static void a(aa aaVar) {
        if (aaVar != null) {
            if (aaVar.f35701a == 0 && aaVar.f35702b == 0) {
                return;
            }
            PointEntitySigmobSuper pointEntitySigmobSuper = new PointEntitySigmobSuper();
            pointEntitySigmobSuper.setAc_type(PointType.LOAD_READY);
            pointEntitySigmobSuper.setCategory(PointCategory.LOAD_READY);
            Map<String, String> options = pointEntitySigmobSuper.getOptions();
            options.put("placement_id", String.valueOf(aaVar.f35703c));
            options.put(PointParamKey.FEED_PRE_REQUEST_COUNT, String.valueOf(aaVar.f35701a));
            options.put(PointParamKey.FEED_PRE_READY_COUNT, String.valueOf(aaVar.f35702b));
            pointEntitySigmobSuper.commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, Object obj) {
        if (aVar == null) {
            return;
        }
        aVar.onAddExtra(obj);
    }

    public static void a(BaseAdUnit baseAdUnit, MotionEvent motionEvent, String str, boolean z2) {
        long eventTime = motionEvent.getEventTime() - motionEvent.getDownTime();
        PointEntityClick pointEntityClick = new PointEntityClick();
        pointEntityClick.setAc_type("102");
        pointEntityClick.setCategory(str);
        pointEntityClick.setLocation(String.format(Locale.getDefault(), "{x:%f,y:%f}", Float.valueOf(motionEvent.getRawX()), Float.valueOf(motionEvent.getRawY())));
        pointEntityClick.setClick_duration(String.valueOf(eventTime));
        pointEntityClick.setPressure(String.valueOf(motionEvent.getPressure()));
        pointEntityClick.setTouchSize(String.valueOf(motionEvent.getSize()));
        pointEntityClick.setTouchType(String.valueOf(motionEvent.getToolType(0)));
        pointEntityClick.setIs_valid_click(z2 ? "1" : "0");
        if (com.sigmob.sdk.base.utils.v.b(baseAdUnit)) {
            pointEntityClick.setLoad_id(baseAdUnit.getLoad_id());
        }
        pointEntityClick.commit();
    }

    public static void a(BaseAdUnit baseAdUnit, String str, final PackageInfo packageInfo, String str2) {
        a(str, str2, baseAdUnit, new a() { // from class: com.sigmob.sdk.base.common.M
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                ad.a(packageInfo, obj);
            }
        });
    }

    public static void a(BaseAdUnit baseAdUnit, String str, final String str2) {
        a(PointCategory.TARGET_URL, (String) null, baseAdUnit, new a() { // from class: com.sigmob.sdk.base.common.H
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                ad.a(str2, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(com.sigmob.sdk.base.models.BaseAdUnit r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, long r9, org.json.JSONObject r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.common.ad.a(com.sigmob.sdk.base.models.BaseAdUnit, java.lang.String, java.lang.String, java.lang.String, java.lang.String, long, org.json.JSONObject, java.lang.Object):void");
    }

    public static void a(PointEntitySigmob pointEntitySigmob) {
        WindAdOptions options = WindAds.sharedAds().getOptions();
        if (options == null || options.getCustomController() == null) {
            pointEntitySigmob.setIs_custom_imei("0");
            pointEntitySigmob.setIs_custom_android_id("0");
            pointEntitySigmob.setIs_custom_oaid("0");
        } else {
            WindCustomController customController = options.getCustomController();
            pointEntitySigmob.setIs_custom_imei(customController.isCanUsePhoneState() ? "0" : "1");
            pointEntitySigmob.setIs_custom_android_id(customController.isCanUseAndroidId() ? "0" : "1");
            pointEntitySigmob.setIs_custom_oaid(com.sigmob.sdk.base.utils.s.a((CharSequence) customController.getDevOaid()) ? "0" : "1");
        }
    }

    public static void a(String str) {
        PointEntitySigmobSuper pointEntitySigmobSuper = new PointEntitySigmobSuper();
        pointEntitySigmobSuper.setAc_type("102");
        pointEntitySigmobSuper.setCategory(str);
        pointEntitySigmobSuper.setSha1(ClientMetadata.getInstance().getApkSha1());
        pointEntitySigmobSuper.setMd5(ClientMetadata.getInstance().getApkMd5());
        pointEntitySigmobSuper.commit();
    }

    public static void a(String str, int i2, String str2, BaseAdUnit baseAdUnit, a aVar) {
        PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError(str, i2, str2);
        if (com.sigmob.sdk.base.utils.v.b(aVar)) {
            aVar.onAddExtra(pointEntitySigmobErrorSigmobError);
        }
        a(str, str, baseAdUnit, pointEntitySigmobErrorSigmobError);
        pointEntitySigmobErrorSigmobError.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, AdTracker adTracker, NetworkResponse networkResponse, a aVar, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setAc_type(PointType.SIGMOB_REPORT_TRACKING);
            pointEntitySigmob.setUrl(str);
            pointEntitySigmob.setRetry(adTracker.getId() == null ? "0" : "1");
            pointEntitySigmob.setCategory(adTracker.getEvent());
            pointEntitySigmob.setRequest_id(adTracker.getRequest_id());
            pointEntitySigmob.setSource(adTracker.getSource());
            long timestamp = adTracker.getTimestamp();
            if (timestamp != 0) {
                pointEntitySigmob.setTimestamp(String.valueOf(timestamp));
            }
            if (com.sigmob.sdk.base.utils.v.b(networkResponse)) {
                byte[] bArr = networkResponse.data;
                pointEntitySigmob.setResponse(bArr == null ? null : Base64.encodeToString(bArr, 2));
                pointEntitySigmob.setHttp_code(String.valueOf(networkResponse.statusCode));
                pointEntitySigmob.setTime_spend(String.valueOf(networkResponse.networkTimeMs));
                pointEntitySigmob.setContent_type(networkResponse.headers.get(AbstractC1114b.f5589g));
                pointEntitySigmob.setContent_length(networkResponse.headers.get(com.sigmob.sdk.downloader.core.c.f37366e));
            }
        }
        if (com.sigmob.sdk.base.utils.v.b(aVar)) {
            aVar.onAddExtra(obj);
        }
    }

    public static void a(String str, a aVar) {
        int i2;
        PointInitEntity pointInitEntity = new PointInitEntity();
        pointInitEntity.setAc_type("1");
        pointInitEntity.setCategory(str);
        com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
        boolean zQ = oVarA.Q();
        boolean zP = oVarA.P();
        pointInitEntity.setAppinfo_switch(zQ ? "0,0" : "1,1");
        if (zP) {
            i2 = 0;
        } else {
            DeviceContext deviceContextB = com.sigmob.sdk.b.b();
            i2 = (deviceContextB == null ? ClientMetadata.getInstance().getLocation() : deviceContextB.getLocation()) != null ? 1 : 0;
            i = 1;
        }
        pointInitEntity.setLocation_switch(i + "," + i2);
        if (com.sigmob.sdk.base.utils.v.b(aVar)) {
            aVar.onAddExtra(pointInitEntity);
        }
        WindAdOptions options = WindAds.sharedAds().getOptions();
        if (options == null || options.getCustomController() == null) {
            pointInitEntity.setIs_custom_imei("0");
            pointInitEntity.setIs_custom_android_id("0");
            pointInitEntity.setIs_custom_oaid("0");
        } else {
            WindCustomController customController = options.getCustomController();
            pointInitEntity.setIs_custom_imei(customController.isCanUsePhoneState() ? "0" : "1");
            pointInitEntity.setIs_custom_android_id(customController.isCanUseAndroidId() ? "0" : "1");
            pointInitEntity.setIs_custom_oaid(com.sigmob.sdk.base.utils.s.a((CharSequence) customController.getDevOaid()) ? "0" : "1");
        }
        pointInitEntity.commit();
    }

    public static void a(String str, BaseAdUnit baseAdUnit, LoadAdRequest loadAdRequest, a aVar) {
        PointFiveEntity pointFiveEntity = new PointFiveEntity();
        pointFiveEntity.setAc_type(str);
        if (com.sigmob.sdk.base.utils.v.b(aVar)) {
            aVar.onAddExtra(pointFiveEntity);
        }
        String category = pointFiveEntity.getCategory();
        String sub_category = pointFiveEntity.getSub_category();
        Map<String, String> options = pointFiveEntity.getOptions();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) category) && com.sigmob.sdk.base.utils.f.b(options)) {
            category = options.get(PointParamKey.CATEGORY);
        }
        com.sigmob.sdk.base.utils.k.c(f35712a, "SigmobMRIADJS: category = " + category + ", options = " + options, new Object[0]);
        a(category, sub_category, baseAdUnit, pointFiveEntity);
        if (com.sigmob.sdk.base.utils.v.b(loadAdRequest)) {
            pointFiveEntity.setLoad_id(loadAdRequest.getLoadId());
            pointFiveEntity.setAdtype(String.valueOf(loadAdRequest.getAdType()));
            pointFiveEntity.setScene_id(loadAdRequest.getAdSceneId());
            pointFiveEntity.setScene_desc(loadAdRequest.getAdSceneDesc());
            pointFiveEntity.setPlacement_id(loadAdRequest.getPlacementId());
        }
        pointFiveEntity.commit();
    }

    public static void a(String str, WindAdError windAdError, BaseAdUnit baseAdUnit, a aVar) {
        if (windAdError == null) {
            return;
        }
        int errorCode = windAdError.getErrorCode();
        String message = windAdError.getMessage();
        PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError(str, errorCode, message);
        a(str, str, baseAdUnit, pointEntitySigmobErrorSigmobError);
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) message, (CharSequence) WindAdError.ERROR_SIGMOB_VIDEO_FILE.getMessage()) && com.sigmob.sdk.base.utils.s.a((CharSequence) str, (CharSequence) "load") && com.sigmob.sdk.base.utils.v.b(baseAdUnit)) {
            pointEntitySigmobErrorSigmobError.getOptions().put(s.a.f3400b, baseAdUnit.getVideo_url());
        }
        if (com.sigmob.sdk.base.utils.v.b(aVar)) {
            aVar.onAddExtra(pointEntitySigmobErrorSigmobError);
        }
        pointEntitySigmobErrorSigmobError.commit();
    }

    public static void a(String str, WindAdError windAdError, BaseAdUnit baseAdUnit, LoadAdRequest loadAdRequest) {
        a(str, (String) null, windAdError.getErrorCode(), windAdError.getMessage(), (WindAdRequest) null, loadAdRequest, baseAdUnit, (a) null);
    }

    public static void a(String str, WindAdError windAdError, WindAdRequest windAdRequest) {
        a(str, (String) null, windAdError.getErrorCode(), windAdError.getMessage(), windAdRequest, (LoadAdRequest) null, (BaseAdUnit) null, (a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(str);
        }
    }

    public static void a(String str, String str2, int i2, String str3, LoadAdRequest loadAdRequest) {
        a(str, str2, i2, str3, (WindAdRequest) null, loadAdRequest, (BaseAdUnit) null, (a) null);
    }

    public static void a(String str, String str2, int i2, String str3, WindAdRequest windAdRequest, LoadAdRequest loadAdRequest, BaseAdUnit baseAdUnit, a aVar) {
        PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError(str, i2, str3);
        pointEntitySigmobErrorSigmobError.setSub_category(str2);
        a(str, str, pointEntitySigmobErrorSigmobError, windAdRequest);
        a(str, str, pointEntitySigmobErrorSigmobError, loadAdRequest);
        a(str, str, baseAdUnit, pointEntitySigmobErrorSigmobError);
        if (com.sigmob.sdk.base.utils.v.b(aVar)) {
            aVar.onAddExtra(pointEntitySigmobErrorSigmobError);
        }
        pointEntitySigmobErrorSigmobError.commit();
    }

    public static void a(String str, String str2, BaseAdUnit baseAdUnit, a aVar) {
        a(str, str2, baseAdUnit, null, null, aVar);
    }

    public static void a(String str, String str2, BaseAdUnit baseAdUnit, PointEntitySigmob pointEntitySigmob) {
        if (baseAdUnit == null || pointEntitySigmob == null) {
            return;
        }
        try {
            int ad_type = baseAdUnit.getAd_type();
            pointEntitySigmob.setAdtype(String.valueOf(ad_type));
            pointEntitySigmob.setCampaign_id(baseAdUnit.getCamp_id());
            pointEntitySigmob.setCreative_id(baseAdUnit.getCrid());
            pointEntitySigmob.setRequest_id(baseAdUnit.getRequestId());
            pointEntitySigmob.setPlacement_id(baseAdUnit.getAdslot_id());
            pointEntitySigmob.setLoad_id(baseAdUnit.getLoad_id());
            pointEntitySigmob.setVid(baseAdUnit.getVid());
            pointEntitySigmob.setScene_id(baseAdUnit.getAd_scene_id());
            pointEntitySigmob.setScene_desc(baseAdUnit.getAd_scene_desc());
            pointEntitySigmob.setPlay_mode(String.valueOf(baseAdUnit.getPlayMode()));
            pointEntitySigmob.setCreative_type(String.valueOf(baseAdUnit.getCreativeType()));
            pointEntitySigmob.setBid_token(baseAdUnit.getBid_token());
            BiddingResponse biddingResponse = baseAdUnit.bidding_response;
            if (com.sigmob.sdk.base.utils.v.b(biddingResponse)) {
                pointEntitySigmob.setHb_price(biddingResponse.ecpm.intValue());
            }
            pointEntitySigmob.setPrice(baseAdUnit.getAd().settlement_price_enc);
            String str3 = baseAdUnit.getAd().product_id;
            if (com.sigmob.sdk.base.utils.s.b(str3)) {
                pointEntitySigmob.setProduct_id(str3);
            }
            String adx_id = baseAdUnit.getAdx_id();
            if (com.sigmob.sdk.base.utils.s.b(adx_id)) {
                pointEntitySigmob.setAdx_id(adx_id);
            }
            pointEntitySigmob.setTemplate_id(String.valueOf(baseAdUnit.getTemplateId()));
            MaterialMeta material = baseAdUnit.getMaterial();
            if (com.sigmob.sdk.base.utils.v.b(material)) {
                pointEntitySigmob.setTemplate_type(material.template_type.intValue());
            }
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) pointEntitySigmob.getTarget_url())) {
                pointEntitySigmob.setTarget_url(baseAdUnit.getLanding_page());
            }
            WXProgramRes wXProgramRes = baseAdUnit.getWXProgramRes();
            if (com.sigmob.sdk.base.utils.v.b(wXProgramRes)) {
                if (com.sigmob.sdk.base.utils.s.b(wXProgramRes.wx_app_path)) {
                    pointEntitySigmob.setWx_app_path(URLEncoder.encode(wXProgramRes.wx_app_path, "UTF-8"));
                }
                if (com.sigmob.sdk.base.utils.s.b(wXProgramRes.wx_app_username)) {
                    pointEntitySigmob.setWx_app_username(wXProgramRes.wx_app_username);
                }
            }
            String apkMd5 = baseAdUnit.getApkMd5();
            if (com.sigmob.sdk.base.utils.s.b(apkMd5)) {
                pointEntitySigmob.getOptions().put(PointParamKey.APK_MD5, apkMd5);
            }
            pointEntitySigmob.setAd_source_channel(baseAdUnit.getAd_source_channel());
            a(str, str2, pointEntitySigmob, ad_type, baseAdUnit.isHalfInterstitial());
        } catch (Throwable unused) {
        }
        Map<String, String> options = pointEntitySigmob.getOptions();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) pointEntitySigmob.getCategory())) {
            String str4 = com.sigmob.sdk.base.utils.s.b(str) ? str : options.get(PointParamKey.CATEGORY);
            if (com.sigmob.sdk.base.utils.s.b(str4)) {
                pointEntitySigmob.setCategory(str4);
            }
        }
        if (com.sigmob.sdk.base.utils.s.b(str, "request")) {
            Integer adExpiredTime = baseAdUnit.getAdExpiredTime();
            long create_time = baseAdUnit.getCreate_time();
            boolean zExpiredAdCanReload = baseAdUnit.expiredAdCanReload();
            options.put(PointParamKey.EXPIRE_RELOAD_COUNT, String.valueOf(baseAdUnit.expiredAdReloadNum()));
            options.put(PointParamKey.CAN_EXPIRE_RELOAD, String.valueOf(zExpiredAdCanReload ? 1 : 0));
            options.put(PointParamKey.EXPIRE_TIMESTAMP, String.valueOf(create_time + adExpiredTime.intValue()));
            int requestSceneType = baseAdUnit.getRequestSceneType();
            if (requestSceneType > 0) {
                options.put(PointParamKey.REQUEST_SCENE_TYPE, String.valueOf(requestSceneType));
            }
            Boolean boolEnableSmallWindow = baseAdUnit.enableSmallWindow();
            baseAdUnit.getDeeplinkUrl();
            int interactionType = baseAdUnit.getInteractionType();
            int mraidInteractionType = baseAdUnit.getMraidInteractionType();
            boolean zIsValid = baseAdUnit.isValid(interactionType);
            boolean zIsValid2 = baseAdUnit.isValid(mraidInteractionType);
            if (com.sigmob.sdk.base.utils.v.b((Object) boolEnableSmallWindow) && (zIsValid || zIsValid2)) {
                options.put(PointParamKey.ENABLE_SMALL_WINDOW, boolEnableSmallWindow.booleanValue() ? "1" : "0");
            }
            if (baseAdUnit.getAd_type() == 6) {
                Boolean boolAllowClickToAutoClose = baseAdUnit.allowClickToAutoClose();
                if (com.sigmob.sdk.base.utils.v.b((Object) boolAllowClickToAutoClose)) {
                    options.put(PointParamKey.CLICK_CLOSE_AD, boolAllowClickToAutoClose.booleanValue() ? "1" : "0");
                }
                Integer numAllowCountdownEndsClose = baseAdUnit.allowCountdownEndsClose();
                if (com.sigmob.sdk.base.utils.v.b(numAllowCountdownEndsClose)) {
                    options.put(PointParamKey.SECONDS_CLOSE_AD, String.valueOf(numAllowCountdownEndsClose));
                }
            }
            options.put(PointParamKey.TRACE_ID, baseAdUnit.getTraceId());
            if (requestSceneType == com.sigmob.sdk.base.j.NormalRequest.a() || requestSceneType == com.sigmob.sdk.base.j.ReloadAfterExpiration.a() || requestSceneType == com.sigmob.sdk.base.j.ActiveFailureReload.a()) {
                options.put(PointParamKey.VID, baseAdUnit.getVid());
                String originVid = baseAdUnit.getOriginVid();
                if (com.sigmob.sdk.base.utils.s.b(originVid)) {
                    options.put(PointParamKey.ORIGIN_VID, originVid);
                }
            }
        }
    }

    public static void a(String str, String str2, BaseAdUnit baseAdUnit, WindAdRequest windAdRequest, LoadAdRequest loadAdRequest, final a aVar) {
        al.a(str).c(str2).a(baseAdUnit).a(windAdRequest).a(loadAdRequest).a(new a() { // from class: com.sigmob.sdk.base.common.I
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                ad.a(aVar, obj);
            }
        }).a();
    }

    public static void a(String str, String str2, LoadAdRequest loadAdRequest) {
        a(str, str2, null, null, loadAdRequest, null);
    }

    private static void a(String str, String str2, PointEntitySigmob pointEntitySigmob, int i2, boolean z2) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) pointEntitySigmob.getShow_type()) && com.sigmob.sdk.base.utils.s.b(str)) {
            if ((str.equals("request") || str.equals(PointCategory.READY) || str.equals("start") || str.equals("endcard") || (com.sigmob.sdk.base.utils.s.b(str2) && str2.equals("click"))) && i2 == 4) {
                pointEntitySigmob.setShow_type(z2 ? "2" : "1");
            }
        }
    }

    public static void a(String str, String str2, PointEntitySigmob pointEntitySigmob, LoadAdRequest loadAdRequest) {
        if (pointEntitySigmob == null || loadAdRequest == null) {
            return;
        }
        pointEntitySigmob.setPlacement_id(loadAdRequest.getPlacementId());
        String bidToken = loadAdRequest.getBidToken();
        if (com.sigmob.sdk.base.utils.s.b(bidToken)) {
            pointEntitySigmob.setBid_token(bidToken);
        }
        String loadId = loadAdRequest.getLoadId();
        if (com.sigmob.sdk.base.utils.s.b(loadId)) {
            pointEntitySigmob.setLoad_id(loadId);
        }
        String adx_id = loadAdRequest.getAdx_id();
        if (com.sigmob.sdk.base.utils.s.b(adx_id)) {
            pointEntitySigmob.setAdx_id(adx_id);
        }
        int adType = loadAdRequest.getAdType();
        pointEntitySigmob.setAdtype(String.valueOf(adType));
        String requestId = loadAdRequest.getRequestId();
        if (com.sigmob.sdk.base.utils.s.b(requestId)) {
            pointEntitySigmob.setRequest_id(requestId);
        }
        String traceId = loadAdRequest.getTraceId();
        if (com.sigmob.sdk.base.utils.s.b(traceId)) {
            pointEntitySigmob.setTrace_id(traceId);
        }
        Map<String, String> options = loadAdRequest.getOptions();
        if (com.sigmob.sdk.base.utils.v.b(options)) {
            pointEntitySigmob.setExtinfo(new JSONObject(options).toString());
        }
        a(str, str2, pointEntitySigmob, adType, loadAdRequest.isHalfInterstitial());
        int request_scene_type = loadAdRequest.getRequest_scene_type();
        if (request_scene_type > 0) {
            pointEntitySigmob.getOptions().put(PointParamKey.REQUEST_SCENE_TYPE, String.valueOf(request_scene_type));
        }
    }

    public static void a(String str, String str2, PointEntitySigmob pointEntitySigmob, WindAdRequest windAdRequest) {
        if (pointEntitySigmob == null || windAdRequest == null) {
            return;
        }
        int adType = windAdRequest.getAdType();
        pointEntitySigmob.setPlacement_id(windAdRequest.getPlacementId());
        pointEntitySigmob.setLoad_id(windAdRequest.getLoadId());
        pointEntitySigmob.setAdx_id(windAdRequest.getAdxId());
        pointEntitySigmob.setAdtype(String.valueOf(adType));
        if (windAdRequest.hasOptions()) {
            try {
                pointEntitySigmob.setExtinfo(new JSONObject(windAdRequest.getOptions()).toString());
            } catch (Throwable unused) {
            }
        }
        a(str, str2, pointEntitySigmob, adType, windAdRequest.isHalfInterstitial());
    }

    public static void a(String str, String str2, WindAdRequest windAdRequest, LoadAdRequest loadAdRequest, a aVar) {
        PointEntitySigmobRequest pointEntitySigmobRequest = new PointEntitySigmobRequest();
        pointEntitySigmobRequest.setAc_type("5");
        pointEntitySigmobRequest.setCategory(str);
        pointEntitySigmobRequest.setSub_category(str2);
        a(str, str, pointEntitySigmobRequest, windAdRequest);
        a(str, str, pointEntitySigmobRequest, loadAdRequest);
        if (com.sigmob.sdk.base.utils.v.b(aVar)) {
            aVar.onAddExtra(pointEntitySigmobRequest);
        }
        a(pointEntitySigmobRequest);
        pointEntitySigmobRequest.commit();
    }

    public static void a(String str, boolean z2, int i2) {
        PointEntitySigmobSuper pointEntitySigmobSuper = new PointEntitySigmobSuper();
        pointEntitySigmobSuper.setAc_type("2002");
        pointEntitySigmobSuper.setCategory(PointCategory.OPEN_APP);
        Map<String, String> options = pointEntitySigmobSuper.getOptions();
        options.put(PointParamKey.APP_PKG_NAME, str);
        options.put(PointParamKey.CAN_OP, z2 ? "1" : "0");
        options.put("type", String.valueOf(i2));
        pointEntitySigmobSuper.commit();
    }

    public static void a(boolean z2) {
        PointEntitySigmobPrivacy pointEntitySigmobPrivacy = new PointEntitySigmobPrivacy();
        pointEntitySigmobPrivacy.setAc_type(PointType.GDPR_CONSENT);
        pointEntitySigmobPrivacy.setSub_category(PointCategory.ADULT);
        pointEntitySigmobPrivacy.setCategory("privacy");
        pointEntitySigmobPrivacy.setIs_minor(z2 ? "0" : "1");
        pointEntitySigmobPrivacy.commit();
    }
}
