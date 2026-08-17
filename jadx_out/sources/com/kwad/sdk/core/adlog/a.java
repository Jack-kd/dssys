package com.kwad.sdk.core.adlog;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.track.AdTrackLog;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.h;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.al;
import com.kwad.sdk.utils.br;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a extends com.kwad.sdk.core.network.b {
    int aLd;

    @NonNull
    private final com.kwad.sdk.core.adlog.c.a aLe;
    private final AdTemplate mAdTemplate;

    @KsJson
    /* renamed from: com.kwad.sdk.core.adlog.a$a, reason: collision with other inner class name */
    public static class C0601a extends com.kwad.sdk.core.response.a.a {
        public String aLA;
        public int aLB;
        public int aLC;
        public int aLD;
        public int aLE;

        @Nullable
        public AdTrackLog aLF;
        public int aLG;
        public int aLf;
        public String aLg;
        public String aLh;
        public String aLi;
        public String aLj;
        public String aLl;
        public int aLm;
        public int aLn;
        public int aLo;
        public int aLp;
        public int aLq;
        public boolean aLr;
        public String aLs;
        public JSONObject aLt;
        public int aLv;
        public int aLw;
        public int aLx;
        public int aLy;
        public String aLz;
        public String templateId;
        public int tkPublishType;
        public int aLk = -1;
        public long duration = -1;
        public int showLiveStatus = -1;
        public int aLu = 0;
        public int showLiveStyle = -1;

        public final AdTrackLog a(AdTemplate adTemplate, String str, String str2, com.kwad.sdk.g.a<AdTrackLog> aVar) {
            h hVar;
            if (adTemplate == null || (hVar = (h) ServiceProvider.get(h.class)) == null || !hVar.FZ()) {
                return null;
            }
            AdTrackLog adTrackLog = new AdTrackLog(str, str2);
            this.aLF = adTrackLog;
            adTrackLog.bindABParams(adTemplate);
            if (aVar != null) {
                aVar.accept(this.aLF);
            }
            return this.aLF;
        }

        @Override // com.kwad.sdk.core.response.a.a
        public void afterToJson(JSONObject jSONObject) {
            super.afterToJson(jSONObject);
            int i2 = this.aLk;
            if (i2 != -1) {
                ac.putValue(jSONObject, "shield_reason", i2);
            }
            long j2 = this.duration;
            if (j2 != -1) {
                ac.putValue(jSONObject, "duration", j2);
            }
            int i3 = this.showLiveStatus;
            if (i3 != -1) {
                ac.putValue(jSONObject, "show_live_status", i3);
            }
            int i4 = this.showLiveStyle;
            if (i4 != -1) {
                ac.putValue(jSONObject, "show_live_style", i4);
            }
            AdTrackLog adTrackLog = this.aLF;
            if (adTrackLog != null) {
                ac.putValue(jSONObject, "ad_track_log", adTrackLog.toJson().toString());
            }
            JSONObject jSONObject2 = this.aLt;
            if (jSONObject2 != null) {
                try {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObject.putOpt(next, this.aLt.get(next));
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public a(@NonNull com.kwad.sdk.core.adlog.c.a aVar) {
        this.aLe = aVar;
        this.mAdTemplate = aVar.adTemplate;
        this.aLd = aVar.aKI;
    }

    private void IR() {
        JSONObject jSONObject = this.aLe.aMe;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        ac.putValue(jSONObject, "clientTimestamp", System.currentTimeMillis());
        putBody("extData", jSONObject.toString());
    }

    private void a(String str, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        int i2 = aVar.aML;
        if (i2 >= 0) {
            putBody("adOrder", i2);
        }
        int i3 = aVar.QX;
        if (i3 >= 0) {
            putBody("adInterstitialSource", i3);
        }
        if (!TextUtils.isEmpty(aVar.aMj)) {
            putBody("adRenderArea", aVar.aMj);
        }
        putBody("adxResult", aVar.adxResult);
        int i4 = aVar.aMP;
        if (i4 != 0) {
            putBody("fingerSwipeType", i4);
        }
        int i5 = aVar.aMQ;
        if (i5 != 0) {
            putBody("fingerSwipeDistance", i5);
        }
        int i6 = aVar.aMI;
        if (i6 != -1) {
            putBody("installStatus", i6);
        }
        C0601a c0601a = aVar.QZ;
        if (c0601a != null) {
            putBody("clientExtData", c0601a.toJson().toString());
        }
        String str2 = aVar.aMT;
        if (str2 != null) {
            putBody("clientPkFailAdInfo", str2);
        }
        int i7 = aVar.Rb;
        if (i7 != -1) {
            putBody("triggerType", i7);
        }
        int i8 = aVar.Ra;
        if (i8 != 0) {
            putBody("photoSizeStyle", i8);
        }
    }

    private void b(String str, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        int i2 = aVar.nm;
        if (i2 != 0) {
            putBody("itemClickType", i2);
        }
        if (!TextUtils.isEmpty(aVar.QY)) {
            putBody("payload", aVar.QY);
        }
        int i3 = aVar.aMA;
        if (i3 != 0) {
            putBody("adAggPageSource", i3);
        }
        int i4 = aVar.aML;
        if (i4 >= 0) {
            putBody("adOrder", i4);
        }
        int i5 = aVar.QX;
        if (i5 >= 0) {
            putBody("adInterstitialSource", i5);
        }
        int i6 = aVar.Rb;
        if (i6 != -1) {
            putBody("triggerType", i6);
        }
        int i7 = aVar.aMS;
        if (i7 != 0) {
            putBody("cardCloseType", i7);
        }
        putBody("adxResult", aVar.adxResult);
        double d2 = aVar.np;
        if (d2 > 0.0d) {
            putBody("splashShakeAcceleration", d2);
        }
        if (!TextUtils.isEmpty(aVar.aMM)) {
            putBody("splashInteractionRotateAngle", aVar.aMM);
        }
        int i8 = aVar.aMP;
        if (i8 != 0) {
            putBody("fingerSwipeType", i8);
        }
        int i9 = aVar.aMQ;
        if (i9 != 0) {
            putBody("fingerSwipeDistance", i9);
        }
        long j2 = aVar.zV;
        if (j2 > 0) {
            putBody("playedDuration", j2);
        }
        int i10 = aVar.aMK;
        if (i10 > 0) {
            putBody("playedRate", i10);
        }
        String str2 = aVar.aMT;
        if (str2 != null) {
            putBody("clientPkFailAdInfo", str2);
        }
        int i11 = aVar.aMs;
        if (i11 != -1) {
            putBody("retainCodeType", i11);
        }
        C0601a c0601a = aVar.QZ;
        if (c0601a != null) {
            putBody("clientExtData", c0601a.toJson().toString());
        }
        int i12 = aVar.aMR;
        if (i12 != 0) {
            putBody("finger_swiper_angle", i12);
        }
        int i13 = aVar.Ra;
        if (i13 != 0) {
            putBody("photoSizeStyle", i13);
        }
    }

    private void c(String str, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        int i2 = aVar.aMh;
        if (i2 != 0) {
            putBody("itemCloseType", i2);
        }
        int i3 = aVar.aMf;
        if (i3 > 0) {
            putBody("photoPlaySecond", i3);
        }
        int i4 = aVar.aMg;
        if (i4 != 0) {
            putBody("awardReceiveStage", i4);
        }
        int i5 = aVar.aMi;
        if (i5 != 0) {
            putBody("elementType", i5);
        }
        if (!TextUtils.isEmpty(aVar.QY)) {
            putBody("payload", aVar.QY);
        }
        C0601a c0601a = aVar.QZ;
        if (c0601a != null) {
            putBody("clientExtData", c0601a.toJson().toString());
        }
        int i6 = aVar.aMt;
        if (i6 > 0) {
            putBody("deeplinkType", i6);
        }
        if (!TextUtils.isEmpty(aVar.aMu)) {
            putBody("deeplinkAppName", aVar.aMu);
        }
        int i7 = aVar.aMv;
        if (i7 != 0) {
            putBody("deeplinkFailedReason", i7);
        }
        int i8 = aVar.downloadSource;
        if (i8 > 0) {
            putBody("downloadSource", i8);
        }
        int i9 = aVar.aMS;
        if (i9 != 0) {
            putBody("cardCloseType", i9);
        }
        int i10 = aVar.aMw;
        if (i10 > 0) {
            putBody("isPackageChanged", i10);
        }
        putBody("installedFrom", aVar.aMx);
        putBody("isChangedEndcard", aVar.aMz);
        int i11 = aVar.aMA;
        if (i11 != 0) {
            putBody("adAggPageSource", i11);
        }
        String str2 = aVar.aMy;
        if (str2 != null) {
            putBody("downloadFailedReason", str2);
        }
        if (!br.isNullString(aVar.aMC)) {
            putBody("installedPackageName", aVar.aMC);
        }
        if (!br.isNullString(aVar.aMB)) {
            putBody("serverPackageName", aVar.aMB);
        }
        int i12 = aVar.aME;
        if (i12 > 0) {
            putBody("closeButtonClickTime", i12);
        }
        int i13 = aVar.aMD;
        if (i13 > 0) {
            putBody("closeButtonImpressionTime", i13);
        }
        int i14 = aVar.downloadStatus;
        if (i14 >= 0) {
            putBody("downloadStatus", i14);
        }
        long j2 = aVar.aMF;
        if (j2 > 0) {
            putBody("landingPageLoadedDuration", j2);
        }
        long j3 = aVar.RD;
        if (j3 > 0) {
            putBody("leaveTime", j3);
        }
        long j4 = aVar.aMG;
        if (j4 > 0) {
            putBody("adItemClickBackDuration", j4);
        }
        int i15 = aVar.aMs;
        if (i15 != -1) {
            putBody("retainCodeType", i15);
        }
        long j5 = aVar.aMk;
        if (j5 > -1) {
            putBody("highestLossPrice", j5);
        }
        int i16 = aVar.aMl;
        if (i16 >= 0 || i16 == -9999) {
            putBody("impFailReason", i16);
        }
        long j6 = aVar.aMm;
        if (j6 > -1 || j6 == -9999) {
            putBody("winEcpm", j6);
        }
        int i17 = aVar.adnType;
        if (i17 > 0 || i17 == -9999) {
            putBody("adnType", i17);
        }
        if (!TextUtils.isEmpty(aVar.adnName)) {
            putBody(MediationConstant.KEY_ADN_NAME, aVar.adnName);
        }
        if (!TextUtils.isEmpty(aVar.aMn)) {
            putBody("adnAdvertiser", aVar.aMn);
        }
        if (!TextUtils.isEmpty(aVar.aMo)) {
            putBody("adnTitle", aVar.aMo);
        }
        if (!TextUtils.isEmpty(aVar.aMp)) {
            putBody("adnRequestId", aVar.aMp);
        }
        putBody("adnShowType", aVar.aMq);
        putBody("adnClickType", aVar.aMr);
        putBody("adnMaterialType", aVar.adnMaterialType);
        if (!TextUtils.isEmpty(aVar.adnMaterialUrl)) {
            putBody("adnMaterialUrl", aVar.adnMaterialUrl);
        }
        putBody("downloadCardType", aVar.aMJ);
        putBody("landingPageType", aVar.ads);
        int i18 = aVar.QX;
        if (i18 >= 0) {
            putBody("adInterstitialSource", i18);
        }
        int i19 = aVar.aMN;
        if (i19 > 0) {
            putBody("downloadInstallType", i19);
        }
        int i20 = aVar.aMP;
        if (i20 != 0) {
            putBody("fingerSwipeType", i20);
        }
        int i21 = aVar.aMQ;
        if (i21 != 0) {
            putBody("fingerSwipeDistance", i21);
        }
        int i22 = aVar.aMO;
        if (i22 > 0) {
            putBody("businessSceneType", i22);
        }
        long j7 = aVar.zV;
        if (j7 > 0) {
            putBody("playedDuration", j7);
        }
        int i23 = aVar.aMK;
        if (i23 > 0) {
            putBody("playedRate", i23);
        }
        int i24 = aVar.aMH;
        if (i24 != -1) {
            putBody("appStorePageType", i24);
        }
        int i25 = aVar.Rb;
        if (i25 != -1) {
            putBody("triggerType", i25);
        }
        int i26 = aVar.Ra;
        if (i26 != 0) {
            putBody("photoSizeStyle", i26);
        }
    }

    @Override // com.kwad.sdk.core.network.b
    public final void buildBaseBody() {
    }

    @Override // com.kwad.sdk.core.network.b
    public final void buildBaseHeader() {
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final JSONObject getBody() {
        return this.mBodyParams;
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        String strReplaceFirst;
        Context context = ServiceProvider.getContext();
        AdInfo adInfoEO = e.eO(this.mAdTemplate);
        int i2 = this.aLd;
        if (i2 == 1) {
            String str = adInfoEO.adBaseInfo.showUrl;
            strReplaceFirst = ((this.mAdTemplate.mBidEcpm == 0 && ((h) ServiceProvider.get(h.class)).FO()) ? str.replaceFirst("__PR__", String.valueOf(com.kwad.sdk.core.response.helper.a.aX(e.eO(this.mAdTemplate)))) : str.replaceFirst("__PR__", String.valueOf(this.mAdTemplate.mBidEcpm))).replaceFirst("__TYPE__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerType)).replaceFirst("__BEHAVIOR__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerBehavior));
            a(strReplaceFirst, this.aLe);
            a(strReplaceFirst, this.mAdTemplate, this.aLe);
        } else if (i2 == 2) {
            strReplaceFirst = al.av(context, al.a(adInfoEO.adBaseInfo.clickUrl, this.aLe.no)).replaceFirst("__PR__", String.valueOf(this.mAdTemplate.mBidEcpm)).replaceFirst("__TYPE__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerType)).replaceFirst("__BEHAVIOR__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerBehavior));
            b(strReplaceFirst, this.aLe);
            a(strReplaceFirst, this.mAdTemplate, this.aLe);
        } else {
            strReplaceFirst = adInfoEO.adBaseInfo.convUrl.replaceFirst("__ACTION__", String.valueOf(i2)).replaceFirst("__PR__", String.valueOf(this.mAdTemplate.mBidEcpm)).replaceFirst("__TYPE__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerType)).replaceFirst("__BEHAVIOR__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerBehavior));
            c(strReplaceFirst, this.aLe);
        }
        IR();
        return strReplaceFirst;
    }

    private void a(String str, AdTemplate adTemplate, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (TextUtils.isEmpty(str) || adTemplate == null) {
            return;
        }
        int i2 = adTemplate.mInitVoiceStatus;
        if (i2 != 0) {
            putBody("initVoiceStatus", i2);
        }
        if (this.mAdTemplate.mBidEcpm == 0) {
            putBody("ecpmType", 2);
        } else {
            putBody("ecpmType", 1);
        }
        if (aVar == null) {
            return;
        }
        int i3 = aVar.aMA;
        if (i3 != 0) {
            putBody("adAggPageSource", i3);
        }
        if (TextUtils.isEmpty(aVar.QY)) {
            return;
        }
        putBody("payload", aVar.QY);
    }
}
