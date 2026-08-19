package com.kwad.sdk.core.b.a;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.core.adlog.a;
import com.kwad.sdk.core.response.model.AdTemplate;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class aj implements com.kwad.sdk.core.d<com.kwad.sdk.core.adlog.c.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.adlog.c.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.adlog.c.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.adlog.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        AdTemplate adTemplate = new AdTemplate();
        aVar.adTemplate = adTemplate;
        adTemplate.parseJson(jSONObject.optJSONObject("adTemplate"));
        aVar.aMe = jSONObject.optJSONObject("extData");
        aVar.aKI = jSONObject.optInt("adActionType");
        aVar.aMf = jSONObject.optInt("photoPlaySecond");
        aVar.aMg = jSONObject.optInt("awardReceiveStage");
        aVar.nm = jSONObject.optInt("itemClickType");
        aVar.aMh = jSONObject.optInt("itemCloseType");
        aVar.aMi = jSONObject.optInt("elementType");
        aVar.aMj = jSONObject.optString("adRenderArea");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.aMj)) {
            aVar.aMj = "";
        }
        aVar.aMk = jSONObject.optLong("highestLossPrice");
        aVar.aMl = jSONObject.optInt("impFailReason");
        aVar.aMm = jSONObject.optLong("winEcpm");
        aVar.adnType = jSONObject.optInt("adnType");
        aVar.adnName = jSONObject.optString(MediationConstant.KEY_ADN_NAME);
        if (obj.toString().equals(aVar.adnName)) {
            aVar.adnName = "";
        }
        aVar.aMn = jSONObject.optString("adnAdvertiser");
        if (obj.toString().equals(aVar.aMn)) {
            aVar.aMn = "";
        }
        aVar.aMo = jSONObject.optString("adnTitle");
        if (obj.toString().equals(aVar.aMo)) {
            aVar.aMo = "";
        }
        aVar.aMp = jSONObject.optString("adnRequestId");
        if (obj.toString().equals(aVar.aMp)) {
            aVar.aMp = "";
        }
        aVar.aMq = jSONObject.optInt("adnShowType");
        aVar.aMr = jSONObject.optInt("adnClickType");
        aVar.adnMaterialType = jSONObject.optInt("adnMaterialType");
        aVar.adnMaterialUrl = jSONObject.optString("adnMaterialUrl");
        if (obj.toString().equals(aVar.adnMaterialUrl)) {
            aVar.adnMaterialUrl = "";
        }
        aVar.aMs = jSONObject.optInt("retainCodeType");
        aVar.Ra = jSONObject.optInt("photoSizeStyle");
        aVar.QY = jSONObject.optString("payload");
        if (obj.toString().equals(aVar.QY)) {
            aVar.QY = "";
        }
        aVar.aMt = jSONObject.optInt("deeplinkType");
        aVar.aMu = jSONObject.optString("deeplinkAppName");
        if (obj.toString().equals(aVar.aMu)) {
            aVar.aMu = "";
        }
        aVar.aMv = jSONObject.optInt("deeplinkFailedReason");
        aVar.downloadSource = jSONObject.optInt("downloadSource");
        aVar.aMw = jSONObject.optInt("isPackageChanged");
        aVar.aMx = jSONObject.optString("installedFrom");
        if (obj.toString().equals(aVar.aMx)) {
            aVar.aMx = "";
        }
        aVar.aMy = jSONObject.optString("downloadFailedReason");
        if (obj.toString().equals(aVar.aMy)) {
            aVar.aMy = "";
        }
        aVar.aMz = jSONObject.optInt("isChangedEndcard");
        aVar.aMA = jSONObject.optInt("adAggPageSource");
        aVar.aMB = jSONObject.optString("serverPackageName");
        if (obj.toString().equals(aVar.aMB)) {
            aVar.aMB = "";
        }
        aVar.aMC = jSONObject.optString("installedPackageName");
        if (obj.toString().equals(aVar.aMC)) {
            aVar.aMC = "";
        }
        aVar.aMD = jSONObject.optInt("closeButtonImpressionTime");
        aVar.aME = jSONObject.optInt("closeButtonClickTime");
        aVar.aMF = jSONObject.optLong("landingPageLoadedDuration");
        aVar.RD = jSONObject.optLong("leaveTime");
        aVar.aMG = jSONObject.optLong("adItemClickBackDuration");
        aVar.aMH = jSONObject.optInt("appStorePageType");
        aVar.aMI = jSONObject.optInt("installStatus");
        aVar.downloadStatus = jSONObject.optInt("downloadStatus");
        aVar.aMJ = jSONObject.optInt("downloadCardType");
        a.C0601a c0601a = new a.C0601a();
        aVar.QZ = c0601a;
        c0601a.parseJson(jSONObject.optJSONObject("clientExtData"));
        aVar.ads = jSONObject.optInt("landingPageType");
        aVar.zV = jSONObject.optLong("playedDuration");
        aVar.aMK = jSONObject.optInt("playedRate");
        aVar.aML = jSONObject.optInt("adOrder");
        aVar.QX = jSONObject.optInt("adInterstitialSource");
        aVar.np = jSONObject.optDouble("splashShakeAcceleration");
        aVar.aMM = jSONObject.optString("splashInteractionRotateAngle");
        if (obj.toString().equals(aVar.aMM)) {
            aVar.aMM = "";
        }
        aVar.aMN = jSONObject.optInt("downloadInstallType");
        aVar.aMO = jSONObject.optInt("businessSceneType");
        aVar.adxResult = jSONObject.optInt("adxResult");
        aVar.aMP = jSONObject.optInt("fingerSwipeType");
        aVar.aMQ = jSONObject.optInt("fingerSwipeDistance");
        aVar.aMR = jSONObject.optInt("finger_swipe_angle");
        aVar.Rb = jSONObject.optInt("triggerType");
        aVar.aMS = jSONObject.optInt("cardCloseType");
        aVar.aMT = jSONObject.optString("clientPkFailAdInfo");
        if (obj.toString().equals(aVar.aMT)) {
            aVar.aMT = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.core.adlog.c.a aVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "adTemplate", aVar.adTemplate);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "extData", aVar.aMe);
        int i2 = aVar.aKI;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adActionType", i2);
        }
        int i3 = aVar.aMf;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoPlaySecond", i3);
        }
        int i4 = aVar.aMg;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "awardReceiveStage", i4);
        }
        int i5 = aVar.nm;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "itemClickType", i5);
        }
        int i6 = aVar.aMh;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "itemCloseType", i6);
        }
        int i7 = aVar.aMi;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "elementType", i7);
        }
        String str = aVar.aMj;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adRenderArea", aVar.aMj);
        }
        long j2 = aVar.aMk;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "highestLossPrice", j2);
        }
        int i8 = aVar.aMl;
        if (i8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "impFailReason", i8);
        }
        long j3 = aVar.aMm;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "winEcpm", j3);
        }
        int i9 = aVar.adnType;
        if (i9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnType", i9);
        }
        String str2 = aVar.adnName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediationConstant.KEY_ADN_NAME, aVar.adnName);
        }
        String str3 = aVar.aMn;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnAdvertiser", aVar.aMn);
        }
        String str4 = aVar.aMo;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnTitle", aVar.aMo);
        }
        String str5 = aVar.aMp;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnRequestId", aVar.aMp);
        }
        int i10 = aVar.aMq;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnShowType", i10);
        }
        int i11 = aVar.aMr;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnClickType", i11);
        }
        int i12 = aVar.adnMaterialType;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnMaterialType", i12);
        }
        String str6 = aVar.adnMaterialUrl;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnMaterialUrl", aVar.adnMaterialUrl);
        }
        int i13 = aVar.aMs;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retainCodeType", i13);
        }
        int i14 = aVar.Ra;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoSizeStyle", i14);
        }
        String str7 = aVar.QY;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "payload", aVar.QY);
        }
        int i15 = aVar.aMt;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplinkType", i15);
        }
        String str8 = aVar.aMu;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplinkAppName", aVar.aMu);
        }
        int i16 = aVar.aMv;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplinkFailedReason", i16);
        }
        int i17 = aVar.downloadSource;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadSource", i17);
        }
        int i18 = aVar.aMw;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isPackageChanged", i18);
        }
        String str9 = aVar.aMx;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "installedFrom", aVar.aMx);
        }
        String str10 = aVar.aMy;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadFailedReason", aVar.aMy);
        }
        int i19 = aVar.aMz;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isChangedEndcard", i19);
        }
        int i20 = aVar.aMA;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adAggPageSource", i20);
        }
        String str11 = aVar.aMB;
        if (str11 != null && !str11.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "serverPackageName", aVar.aMB);
        }
        String str12 = aVar.aMC;
        if (str12 != null && !str12.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "installedPackageName", aVar.aMC);
        }
        int i21 = aVar.aMD;
        if (i21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "closeButtonImpressionTime", i21);
        }
        int i22 = aVar.aME;
        if (i22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "closeButtonClickTime", i22);
        }
        long j4 = aVar.aMF;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "landingPageLoadedDuration", j4);
        }
        long j5 = aVar.RD;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "leaveTime", j5);
        }
        long j6 = aVar.aMG;
        if (j6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adItemClickBackDuration", j6);
        }
        int i23 = aVar.aMH;
        if (i23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appStorePageType", i23);
        }
        int i24 = aVar.aMI;
        if (i24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "installStatus", i24);
        }
        int i25 = aVar.downloadStatus;
        if (i25 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadStatus", i25);
        }
        int i26 = aVar.aMJ;
        if (i26 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadCardType", i26);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "clientExtData", aVar.QZ);
        int i27 = aVar.ads;
        if (i27 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "landingPageType", i27);
        }
        long j7 = aVar.zV;
        if (j7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playedDuration", j7);
        }
        int i28 = aVar.aMK;
        if (i28 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playedRate", i28);
        }
        int i29 = aVar.aML;
        if (i29 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adOrder", i29);
        }
        int i30 = aVar.QX;
        if (i30 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adInterstitialSource", i30);
        }
        double d2 = aVar.np;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "splashShakeAcceleration", d2);
        }
        String str13 = aVar.aMM;
        if (str13 != null && !str13.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "splashInteractionRotateAngle", aVar.aMM);
        }
        int i31 = aVar.aMN;
        if (i31 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadInstallType", i31);
        }
        int i32 = aVar.aMO;
        if (i32 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "businessSceneType", i32);
        }
        int i33 = aVar.adxResult;
        if (i33 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adxResult", i33);
        }
        int i34 = aVar.aMP;
        if (i34 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fingerSwipeType", i34);
        }
        int i35 = aVar.aMQ;
        if (i35 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fingerSwipeDistance", i35);
        }
        int i36 = aVar.aMR;
        if (i36 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "finger_swipe_angle", i36);
        }
        int i37 = aVar.Rb;
        if (i37 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "triggerType", i37);
        }
        int i38 = aVar.aMS;
        if (i38 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardCloseType", i38);
        }
        String str14 = aVar.aMT;
        if (str14 != null && !str14.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clientPkFailAdInfo", aVar.aMT);
        }
        return jSONObject;
    }
}
