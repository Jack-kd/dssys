package com.sigmob.sdk.videoAd;

import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.mraid.C1317i;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.rewardVideo.WindRewardInfo;
import java.util.HashMap;

/* renamed from: com.sigmob.sdk.videoAd.e, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1378e extends com.sigmob.sdk.manager.f implements h {

    /* renamed from: s, reason: collision with root package name */
    private static final int f38757s = 0;

    /* renamed from: t, reason: collision with root package name */
    private static final int f38758t = 1;

    /* renamed from: u, reason: collision with root package name */
    private static final int f38759u = 2;

    /* renamed from: v, reason: collision with root package name */
    private int f38760v;

    /* renamed from: w, reason: collision with root package name */
    private l f38761w;

    /* renamed from: x, reason: collision with root package name */
    private final boolean f38762x;

    public C1378e(boolean z2) {
        this.f38762x = z2;
    }

    private void t(BaseAdUnit baseAdUnit) {
        if (com.sigmob.sdk.base.utils.v.b(baseAdUnit)) {
            String rvCallBackUrl = baseAdUnit.getRvCallBackUrl();
            if (com.sigmob.sdk.base.utils.s.b(rvCallBackUrl)) {
                AdTracker adTracker = new AdTracker(AdTracker.MessageType.TRACKING_URL, rvCallBackUrl, "reward_server", baseAdUnit.getRequestId());
                adTracker.setRetryNum(Integer.valueOf(baseAdUnit.getTrackingRetryNum()));
                com.sigmob.sdk.base.network.h.a(adTracker, baseAdUnit, false, true, true, new TrackManager.Listener() { // from class: com.sigmob.sdk.videoAd.e.1
                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onErrorResponse(AdTracker adTracker2, VolleyError volleyError) {
                        if (C1378e.this.f38760v == 1) {
                            C1378e.this.a(2, "0", "1");
                        }
                    }

                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onSuccess(AdTracker adTracker2, NetworkResponse networkResponse) {
                        if (C1378e.this.f38760v == 1) {
                            C1378e.this.a(2, "1", "1");
                        }
                    }
                });
                return;
            }
        }
        a(2, "0", "0");
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void c(BaseAdUnit baseAdUnit, String str) {
        if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
            C1258h.g().e(baseAdUnit);
        }
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_PLAY;
        windAdError.setMessage(str);
        a(windAdError, this.f37816r);
        a(baseAdUnit, PointCategory.PLAY, this.f37811m.getAdType(), this.f37807i, this.f37811m.getLoadId(), windAdError);
        SigmobLog.d("onVideoPlayFail() called");
    }

    @Override // com.sigmob.sdk.manager.b
    public void g() {
        if (com.sigmob.sdk.base.utils.f.b(this.f37813o)) {
            for (BaseAdUnit baseAdUnit : this.f37813o) {
                if (baseAdUnit != null) {
                    if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
                        C1258h.g().e(baseAdUnit);
                    }
                    C1258h.b(baseAdUnit);
                }
            }
        }
        this.f37813o = null;
    }

    @Override // com.sigmob.sdk.manager.f
    public C1317i o() {
        return new C1380g(this, this.f38762x);
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void p(BaseAdUnit baseAdUnit) {
        SigmobLogger.d(this.f37773a, "onVideoComplete", new Object[0]);
        this.f38760v = 1;
        if (com.sigmob.sdk.base.utils.v.b(this.f37816r)) {
            this.f37816r.onVideoAdPlayComplete(this.f37807i);
        }
        t(baseAdUnit);
    }

    @Override // com.sigmob.sdk.manager.f
    public void q() {
        this.f38760v = 0;
    }

    @Override // com.sigmob.sdk.manager.f
    public void r() {
        if (this.f38760v == 1) {
            a(0, "0", "1");
        }
    }

    @Override // com.sigmob.sdk.manager.f
    public void s() {
        super.s();
        this.f38761w = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, String str2) {
        this.f38760v = i2;
        if (this.f38761w == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(WindAds.TRANS_ID, this.f37808j);
        map.put(WindAds.SERVER_ARRIVED, str);
        map.put("reward_type", str2);
        this.f38761w.onVideoAdRewarded(new WindRewardInfo(true, map), this.f37807i);
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void q(BaseAdUnit baseAdUnit) {
        SigmobLog.d("onVideoPlay() called");
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void r(BaseAdUnit baseAdUnit) {
        SigmobLog.d("onVideoSkip() called");
    }

    @Override // com.sigmob.sdk.videoAd.h
    public void s(BaseAdUnit baseAdUnit) {
        o(baseAdUnit);
    }

    public void a(l lVar) {
        this.f38761w = lVar;
    }
}
