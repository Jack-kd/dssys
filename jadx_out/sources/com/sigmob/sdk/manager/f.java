package com.sigmob.sdk.manager;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1252e;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.common.InterfaceC1274p;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.network.f;
import com.sigmob.sdk.base.utils.s;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.sdk.mraid.C1315g;
import com.sigmob.sdk.mraid.C1317i;
import com.sigmob.windad.WindAdError;
import com.umeng.analytics.pro.r;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class f extends b implements C1258h.b, InterfaceC1274p, f.a {

    /* renamed from: h, reason: collision with root package name */
    protected final Handler f37806h = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.manager.f.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 8193) {
                f fVar = f.this;
                if (fVar.f37774b == AdStatus.AdStatusLoading) {
                    fVar.f37806h.removeMessages(r.a.f49637r);
                    f.this.a(WindAdError.ERROR_SIGMOB_AD_TIME_OUT);
                }
            }
        }
    };

    /* renamed from: i, reason: collision with root package name */
    protected String f37807i;

    /* renamed from: j, reason: collision with root package name */
    protected String f37808j;

    /* renamed from: k, reason: collision with root package name */
    protected String f37809k;

    /* renamed from: l, reason: collision with root package name */
    protected long f37810l;

    /* renamed from: m, reason: collision with root package name */
    protected LoadAdRequest f37811m;

    /* renamed from: n, reason: collision with root package name */
    protected BaseAdUnit f37812n;

    /* renamed from: o, reason: collision with root package name */
    protected List<BaseAdUnit> f37813o;

    /* renamed from: p, reason: collision with root package name */
    protected C1317i f37814p;

    /* renamed from: q, reason: collision with root package name */
    protected com.sigmob.sdk.videoAd.k f37815q;

    /* renamed from: r, reason: collision with root package name */
    protected com.sigmob.sdk.videoAd.m f37816r;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        this.f37812n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        a(this.f37811m, com.sigmob.sdk.base.j.AutoNextPreload);
    }

    public String a() {
        return h(this.f37774b == AdStatus.AdStatusPlaying ? this.f37812n : e());
    }

    public String b() {
        return i(this.f37774b == AdStatus.AdStatusPlaying ? this.f37812n : e());
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void c(BaseAdUnit baseAdUnit) {
        a("click", baseAdUnit);
        if (v.b(this.f37816r)) {
            this.f37816r.onAdClicked(this.f37807i);
        }
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void d(BaseAdUnit baseAdUnit) {
        a("dismissed", (Map<String, String>) null);
        AdStatus adStatus = this.f37774b;
        AdStatus adStatus2 = AdStatus.AdStatusClose;
        if (adStatus == adStatus2) {
            return;
        }
        this.f37774b = adStatus2;
        if (v.b(this.f37814p)) {
            this.f37814p.b(baseAdUnit);
        }
        r();
        if (v.b(this.f37816r)) {
            this.f37816r.onAdClosed(this.f37807i);
        }
        this.f37806h.post(new Runnable() { // from class: com.sigmob.sdk.manager.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f37839b.t();
            }
        });
        q(baseAdUnit);
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit e() {
        if (com.sigmob.sdk.base.utils.f.a(this.f37813o)) {
            return null;
        }
        return this.f37813o.get(0);
    }

    @Override // com.sigmob.sdk.manager.b
    public LoadAdRequest f() {
        return this.f37811m;
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit i() {
        return this.f37812n;
    }

    public Map<String, BiddingResponse> m() {
        return j(this.f37774b == AdStatus.AdStatusPlaying ? this.f37812n : e());
    }

    public void n() {
        com.sigmob.sdk.videoAd.k kVar;
        if (this.f37774b != AdStatus.AdStatusLoading || (kVar = this.f37815q) == null) {
            return;
        }
        kVar.onAdPreLoadSuccess(this.f37807i);
    }

    public abstract C1317i o();

    public void q() {
    }

    public void r() {
    }

    public void s() {
        a(C1315g.f37905b, (Map<String, String>) null);
        if (s.b(this.f37808j)) {
            C1258h.b(this.f37808j);
        }
        if (s.b(this.f37809k)) {
            C1258h.b(this.f37809k);
        }
        g();
        this.f37815q = null;
        this.f37816r = null;
        this.f37812n = null;
        this.f37806h.removeCallbacksAndMessages(null);
        b(this);
    }

    private void q(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null || this.f37811m == null) {
            return;
        }
        int playMode = baseAdUnit.getPlayMode();
        if (baseAdUnit.getDisableAutoLoad() || playMode == 0 || !s.a((CharSequence) baseAdUnit.getBid_token()) || baseAdUnit.bidding_response != null) {
            return;
        }
        this.f37811m.setLastCampid(baseAdUnit.getCamp_id());
        this.f37811m.setLastCrid(baseAdUnit.getCrid());
        a(this.f37811m, com.sigmob.sdk.base.j.AutoNextPreload);
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(int i2, String str, String str2, LoadAdRequest loadAdRequest) {
        b(loadAdRequest);
        ad.a(PointCategory.RESPOND, "0", i2, str, loadAdRequest);
        WindAdError windAdError = WindAdError.getWindAdError(i2);
        if (windAdError == null) {
            windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            windAdError.setErrorMessage(i2, str);
        }
        b(windAdError);
        a(windAdError);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void b(BaseAdUnit baseAdUnit) {
        a("start", baseAdUnit);
        q();
        g();
        b(this);
        if (v.b(this.f37816r)) {
            this.f37816r.onAdShow(this.f37807i);
        }
        if (baseAdUnit == null || this.f37811m == null) {
            return;
        }
        int playMode = baseAdUnit.getPlayMode();
        if (!baseAdUnit.getDisableAutoLoad() && playMode == 0 && s.a((CharSequence) baseAdUnit.getBid_token()) && baseAdUnit.bidding_response == null) {
            this.f37811m.setLastCampid(baseAdUnit.getCamp_id());
            this.f37811m.setLastCrid(baseAdUnit.getCrid());
            this.f37806h.post(new Runnable() { // from class: com.sigmob.sdk.manager.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f37838b.u();
                }
            });
        }
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean c() {
        C1317i c1317i;
        BaseAdUnit baseAdUnitE = e();
        if (baseAdUnitE != null && !d() && g(baseAdUnitE) && (c1317i = this.f37814p) != null && c1317i.a(baseAdUnitE) && C1258h.e(baseAdUnitE.getUuid()) != null) {
            return true;
        }
        if (!v.b(baseAdUnitE)) {
            return false;
        }
        C1258h.g().e(baseAdUnitE);
        return false;
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean d() {
        if (this.f37810l == 0) {
            return false;
        }
        return f(e());
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void e(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return;
        }
        C1258h.g().j(baseAdUnit.getCamp_id());
        C1258h.g().i(baseAdUnit.getCrid());
        g();
    }

    public void o(BaseAdUnit baseAdUnit) {
        if (v.b(this.f37816r)) {
            this.f37816r.onVideoAdPlayEnd(this.f37807i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sigmob.sdk.mraid.C1317i p() {
        /*
            r6 = this;
            com.sigmob.windad.WindAdError r0 = com.sigmob.windad.WindAdError.ERROR_SIGMOB_AD_PLAY_CHECK_FAIL
            com.sigmob.sdk.base.models.BaseAdUnit r1 = r6.e()
            com.czhj.sdk.common.models.AdStatus r2 = r6.f37774b
            com.czhj.sdk.common.models.AdStatus r3 = com.czhj.sdk.common.models.AdStatus.AdStatusPlaying
            r4 = 0
            r5 = 0
            if (r2 != r3) goto L18
            com.sigmob.windad.WindAdError r1 = com.sigmob.windad.WindAdError.ERROR_SIGMOB_AD_PLAY_HAS_PLAYING
            java.lang.String r1 = r1.getMessage()
        L14:
            r0.setMessage(r1)
            goto L52
        L18:
            java.util.List<com.sigmob.sdk.base.models.BaseAdUnit> r3 = r6.f37813o
            if (r3 == 0) goto L4f
            if (r1 != 0) goto L1f
            goto L4f
        L1f:
            com.czhj.sdk.common.models.AdStatus r3 = com.czhj.sdk.common.models.AdStatus.AdStatusReady
            if (r2 == r3) goto L26
            java.lang.String r1 = "ad status is not ready"
            goto L14
        L26:
            com.sigmob.sdk.mraid.i r2 = r6.f37814p
            if (r2 != 0) goto L2d
            java.lang.String r1 = "interstitial object is null"
            goto L14
        L2d:
            boolean r2 = r6.d()
            if (r2 == 0) goto L36
            com.sigmob.windad.WindAdError r0 = com.sigmob.windad.WindAdError.ERROR_SIGMOB_EXPIRED
            goto L53
        L36:
            boolean r2 = r6.g(r1)
            if (r2 != 0) goto L42
            java.lang.String r2 = "check ad unit endcard is invalid"
        L3e:
            r0.setMessage(r2)
            goto L53
        L42:
            com.sigmob.sdk.mraid.i r2 = r6.f37814p
            boolean r2 = r2.a(r1)
            if (r2 != 0) goto L4d
            java.lang.String r2 = "check ad unit info is invalid"
            goto L3e
        L4d:
            r4 = 1
            goto L53
        L4f:
            java.lang.String r1 = "not ready adUnit"
            goto L14
        L52:
            r1 = r5
        L53:
            if (r4 != 0) goto L65
            com.sigmob.sdk.videoAd.m r2 = r6.f37816r
            r6.a(r0, r2)
            r6.b(r6)
            java.lang.String r2 = "play"
            com.sigmob.sdk.base.models.LoadAdRequest r3 = r6.f37811m
            com.sigmob.sdk.base.common.ad.a(r2, r0, r1, r3)
            return r5
        L65:
            com.sigmob.sdk.mraid.i r0 = r6.f37814p
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.manager.f.p():com.sigmob.sdk.mraid.i");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(BaseAdUnit baseAdUnit) {
        ad.a(PointCategory.LOADSTART, null, baseAdUnit, null, this.f37811m, null);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "load");
    }

    @Override // com.sigmob.sdk.base.common.C1258h.b
    public void a(BaseAdUnit baseAdUnit) {
        p(baseAdUnit);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void b(BaseAdUnit baseAdUnit, String str) {
        this.f37806h.removeMessages(r.a.f49637r);
        com.sigmob.sdk.base.utils.k.f(this.f37773a, "onInterstitialFailed: error = " + str, new Object[0]);
        ad.a(PointCategory.LOADEND, "0", baseAdUnit, null, this.f37811m, null);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, C1244a.f35697y);
        g();
        if (baseAdUnit != null && baseAdUnit.getPlayMode() == 0) {
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
            windAdError.setMessage(str);
            a(baseAdUnit, "load", baseAdUnit.getAd_type(), baseAdUnit.getAdslot_id(), baseAdUnit.getLoad_id(), windAdError);
            a(windAdError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(LoadAdRequest loadAdRequest) {
        ad.a(PointCategory.RESPOND, "0", loadAdRequest);
    }

    @Override // com.sigmob.sdk.base.common.C1258h.b
    public void a(BaseAdUnit baseAdUnit, String str) {
        a(baseAdUnit, str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BaseAdUnit baseAdUnit, String str, boolean z2) {
        com.sigmob.sdk.base.network.h.a(baseAdUnit, s.a((CharSequence) str) ? C1244a.f35696x : C1244a.f35697y);
        ad.a(PointCategory.LOADEND, s.a((CharSequence) str) ? "1" : "0", baseAdUnit, null, this.f37811m, null);
        this.f37806h.removeMessages(r.a.f49637r);
        if (baseAdUnit == null) {
            return;
        }
        if (z2) {
            a(baseAdUnit, this.f37811m);
        }
        if (baseAdUnit.getPlayMode() == 0) {
            if (s.a((CharSequence) str)) {
                this.f37810l = baseAdUnit.getCreate_time();
                if (v.b(Boolean.valueOf(z2))) {
                    a((WindAdError) null);
                    return;
                }
                return;
            }
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
            windAdError.setMessage(str);
            a(baseAdUnit, "load", baseAdUnit.getAd_type(), baseAdUnit.getAdslot_id(), baseAdUnit.getLoad_id(), windAdError);
            if (v.b(Boolean.valueOf(z2))) {
                a(windAdError);
            }
            g();
        }
    }

    public void b(WindAdError windAdError) {
        com.sigmob.sdk.videoAd.k kVar;
        if (this.f37774b != AdStatus.AdStatusLoading || (kVar = this.f37815q) == null) {
            return;
        }
        kVar.onAdPreLoadFail(windAdError, this.f37807i);
    }

    private boolean b(LoadAdRequest loadAdRequest, String str) {
        if (!c()) {
            return false;
        }
        BaseAdUnit baseAdUnitE = e();
        if (v.b(baseAdUnitE)) {
            baseAdUnitE.setTraceId(str);
            baseAdUnitE.setRequestSceneType(loadAdRequest.getRequest_scene_type());
        }
        this.f37814p.a((Map<String, Object>) null, baseAdUnitE);
        SigmobLog.d("isExistCache: placementId = " + this.f37807i);
        n();
        a((WindAdError) null);
        l(baseAdUnitE);
        return true;
    }

    public void a(LoadAdRequest loadAdRequest, com.sigmob.sdk.base.j jVar) {
        a(loadAdRequest, jVar, (String) null, new f.a() { // from class: com.sigmob.sdk.manager.f.2
            @Override // com.sigmob.sdk.base.network.f.a
            public void a(int i2, String str, String str2, LoadAdRequest loadAdRequest2) {
                f.this.b(loadAdRequest2);
                ad.a(PointCategory.RESPOND, "0", i2, str, loadAdRequest2);
            }

            @Override // com.sigmob.sdk.base.network.f.a
            public void a(List<BaseAdUnit> list, LoadAdRequest loadAdRequest2) {
                if (com.sigmob.sdk.base.utils.f.a(list)) {
                    return;
                }
                BaseAdUnit baseAdUnit = list.get(0);
                f.this.f37809k = baseAdUnit.getRequestId();
                f fVar = f.this;
                fVar.f37813o = list;
                fVar.a(list, loadAdRequest2, baseAdUnit);
                int request_scene_type = loadAdRequest2.getRequest_scene_type();
                f.this.a(request_scene_type);
                SigmobLog.d("preloadAdsRequest: sceneType = " + request_scene_type);
                if (v.b(f.this.f37814p) && !f.this.f37814p.a(baseAdUnit)) {
                    f.this.a(WindAdError.ERROR_SIGMOB_INFORMATION_LOSE);
                    return;
                }
                for (BaseAdUnit baseAdUnit2 : f.this.f37813o) {
                    if (b.n(baseAdUnit2)) {
                        C1258h.g().f(baseAdUnit2);
                    }
                }
                int playMode = baseAdUnit.getPlayMode();
                if (playMode != 0) {
                    f.this.f37810l = baseAdUnit.getCreate_time();
                }
                C1258h.a(list);
                C1258h.b bVar = new C1258h.b() { // from class: com.sigmob.sdk.manager.f.2.1
                    @Override // com.sigmob.sdk.base.common.C1258h.b
                    public void a(BaseAdUnit baseAdUnit3) {
                        f.this.p(baseAdUnit3);
                    }

                    @Override // com.sigmob.sdk.base.common.C1258h.b
                    public void a(BaseAdUnit baseAdUnit3, String str) {
                        f.this.a(baseAdUnit3, str, true);
                    }
                };
                int creativeType = baseAdUnit.getCreativeType();
                SigmobLog.d("preloadAdsRequest: playMode = " + playMode + ", creativeType = " + creativeType);
                if (creativeType != EnumC1270n.CreativeTypeMRAIDTWO.a()) {
                    if (playMode == 2) {
                        f.this.a(baseAdUnit, loadAdRequest2);
                        return;
                    } else {
                        f.this.f37814p.a(new HashMap(), baseAdUnit);
                        C1258h.g().a(baseAdUnit, bVar);
                        return;
                    }
                }
                boolean zA = new C1252e(list, bVar, f.this.f37811m).a(false);
                SigmobLog.d("preloadAdsRequest: cache = " + zA);
                if (zA) {
                    f.this.f37814p.a(new HashMap(), baseAdUnit);
                } else {
                    f.this.a(baseAdUnit, loadAdRequest2);
                }
            }
        });
    }

    public void a(LoadAdRequest loadAdRequest, com.sigmob.sdk.base.j jVar, String str, f.a aVar) {
        g();
        boolean zA = b.a(jVar);
        loadAdRequest.setOriginVid(zA ? this.f37776d : "");
        loadAdRequest.setOriginPrice(zA ? this.f37777e : "");
        loadAdRequest.setRequest_scene_type(jVar.a());
        loadAdRequest.setExpired(d());
        if (!s.b(str)) {
            str = b.j();
        }
        this.f37811m.setTraceId(str);
        a(loadAdRequest);
        com.sigmob.sdk.base.network.f.a(loadAdRequest, aVar);
    }

    public void a(LoadAdRequest loadAdRequest, com.sigmob.sdk.videoAd.m mVar) throws UnsupportedEncodingException {
        this.f37816r = mVar;
        this.f37811m = loadAdRequest;
        C1317i c1317iP = p();
        if (c1317iP == null) {
            return;
        }
        BaseAdUnit baseAdUnitE = e();
        this.f37812n = baseAdUnitE;
        this.f37808j = baseAdUnitE.getRequestId();
        String loadId = this.f37811m.getLoadId();
        String adSceneId = this.f37811m.getAdSceneId();
        String adSceneDesc = this.f37811m.getAdSceneDesc();
        this.f37812n.setLoad_id(loadId);
        this.f37812n.setAd_scene_id(adSceneId);
        this.f37812n.setAd_scene_desc(adSceneDesc);
        SigMacroCommon macroCommon = this.f37812n.getMacroCommon();
        if (s.b(adSceneDesc)) {
            macroCommon.addMarcoKey(SigMacroCommon._ADSCENE_, adSceneDesc);
        }
        if (s.b(adSceneId)) {
            macroCommon.addMarcoKey(SigMacroCommon._ADSCENEID_, adSceneId);
        }
        String video_url = this.f37812n.getVideo_url();
        if (s.b(video_url)) {
            macroCommon.addMarcoKey(SigMacroCommon._VMD5_, C1258h.g().k(this.f37812n.getVideoPath()));
            try {
                macroCommon.addMarcoKey(SigMacroCommon._VURL_, URLEncoder.encode(video_url, "UTF-8"));
            } catch (UnsupportedEncodingException e2) {
                SigmobLog.e("show: error = " + e2.getMessage());
            }
        }
        boolean z2 = true;
        if (this.f37812n.getCreativeType() == EnumC1270n.CreativeTypeMRAIDTWO.a()) {
            if (!new C1252e(this.f37813o, this, this.f37811m).a(true)) {
                c1317iP.a(new HashMap(), this.f37812n);
            }
        } else if (this.f37812n.getPlayMode() == 2) {
            c1317iP.a(new HashMap(), this.f37812n);
            C1258h.g().a(this.f37812n, this);
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean(com.sigmob.sdk.base.n.f36459v, this.f37811m.isEnable_keep_on() || com.sigmob.sdk.base.o.a().i());
        if (!this.f37811m.isEnable_screen_lock_displayad() && !com.sigmob.sdk.base.o.a().h()) {
            z2 = false;
        }
        bundle.putBoolean(com.sigmob.sdk.base.n.f36458u, z2);
        c1317iP.a(this.f37812n, bundle);
        this.f37774b = AdStatus.AdStatusPlaying;
        this.f37810l = 0L;
    }

    public void a(LoadAdRequest loadAdRequest, String str) {
        this.f37774b = AdStatus.AdStatusLoading;
        if (loadAdRequest == null || s.a((CharSequence) loadAdRequest.getPlacementId())) {
            SigmobLog.e("loadAd: request or placementId is null.");
            a(WindAdError.ERROR_SIGMOB_PLACEMENTID_EMPTY);
            return;
        }
        try {
            WindAdError sigMobError = Sigmob.getInstance().getSigMobError();
            if (v.b(sigMobError)) {
                SigmobLog.e("loadAd: error = " + sigMobError);
                PointEntitySigmobError.SigmobError("load", sigMobError.getErrorCode(), sigMobError.getMessage()).commit();
                a(sigMobError);
                return;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (s.b(loadAdRequest.getBidToken())) {
            g();
        }
        this.f37807i = loadAdRequest.getPlacementId();
        this.f37811m = loadAdRequest;
        if (this.f37814p == null) {
            this.f37814p = o();
        }
        if (b(loadAdRequest, str)) {
            return;
        }
        if (s.b(this.f37808j)) {
            C1258h.b(this.f37808j);
        }
        if (s.b(this.f37809k)) {
            C1258h.b(this.f37809k);
        }
        loadAdRequest.setLastCampid(C1258h.g().o());
        loadAdRequest.setLastCrid(C1258h.g().n());
        a(loadAdRequest, com.sigmob.sdk.base.j.NormalRequest, str, this);
        this.f37806h.sendEmptyMessageDelayed(r.a.f49637r, com.sigmob.sdk.base.o.a().v());
    }

    public void a(com.sigmob.sdk.videoAd.k kVar) {
        this.f37815q = kVar;
    }

    public void a(WindAdError windAdError) {
        if (this.f37774b != AdStatus.AdStatusLoading) {
            return;
        }
        if (windAdError == null) {
            this.f37774b = AdStatus.AdStatusReady;
            a(this);
            a(e(), this.f37811m);
        } else {
            this.f37774b = AdStatus.AdStatusNone;
        }
        String strH = h();
        com.sigmob.sdk.videoAd.k kVar = this.f37815q;
        if (kVar == null) {
            return;
        }
        if (windAdError == null) {
            kVar.onAdLoadSuccess(strH);
        } else {
            kVar.onAdLoadError(windAdError, strH);
        }
    }

    public void a(String str, String str2) {
        a(this.f37774b == AdStatus.AdStatusPlaying ? this.f37812n : e(), str, str2);
    }

    @Override // com.sigmob.sdk.manager.b
    public void a(String str, String str2, com.sigmob.sdk.base.j jVar) {
        super.a(str, str2, jVar);
        LoadAdRequest loadAdRequestF = f();
        if (loadAdRequestF != null && s.a((CharSequence) loadAdRequestF.getBidToken())) {
            loadAdRequestF.setLastCampid("");
            loadAdRequestF.setLastCrid("");
            a(loadAdRequestF, jVar);
        }
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(List<BaseAdUnit> list, LoadAdRequest loadAdRequest) {
        WindAdError windAdError;
        try {
            if (com.sigmob.sdk.base.utils.f.a(list)) {
                windAdError = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
                b(windAdError);
                ad.a(PointCategory.RESPOND, "0", windAdError.getErrorCode(), windAdError.getMessage(), loadAdRequest);
            } else {
                BaseAdUnit baseAdUnit = list.get(0);
                this.f37808j = baseAdUnit.getRequestId();
                this.f37813o = list;
                a(list, loadAdRequest, baseAdUnit);
                if (this.f37814p == null) {
                    this.f37814p = o();
                }
                if (this.f37814p.a(baseAdUnit)) {
                    n();
                    C1258h.a(list);
                    for (BaseAdUnit baseAdUnit2 : this.f37813o) {
                        if (b.n(baseAdUnit2)) {
                            C1258h.g().f(baseAdUnit2);
                        }
                    }
                    int playMode = baseAdUnit.getPlayMode();
                    if (playMode != 0) {
                        this.f37810l = baseAdUnit.getCreate_time();
                        a((WindAdError) null);
                    }
                    if (baseAdUnit.getCreativeType() == EnumC1270n.CreativeTypeMRAIDTWO.a()) {
                        if (new C1252e(list, this, this.f37811m).a(false)) {
                            this.f37814p.a(new HashMap(), baseAdUnit);
                            return;
                        }
                        return;
                    }
                    if (playMode == 2) {
                        return;
                    }
                    this.f37814p.a(new HashMap(), baseAdUnit);
                    C1258h.g().a(baseAdUnit, this);
                    return;
                }
                windAdError = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
            }
            a(windAdError);
        } catch (Throwable th) {
            String message = th.getMessage();
            SigmobLog.e("onSuccess: error = " + message);
            g();
            WindAdError windAdError2 = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
            int errorCode = windAdError2.getErrorCode();
            windAdError2.setMessage(message);
            ad.a(PointCategory.RESPOND, "0", errorCode, message, loadAdRequest);
            a(windAdError2);
        }
    }
}
