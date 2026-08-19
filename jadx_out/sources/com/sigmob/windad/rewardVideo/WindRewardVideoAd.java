package com.sigmob.windad.rewardVideo;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.c;
import com.sigmob.sdk.videoAd.C1378e;
import com.sigmob.sdk.videoAd.k;
import com.sigmob.sdk.videoAd.l;
import com.sigmob.sdk.videoAd.m;
import com.sigmob.windad.WindAdError;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class WindRewardVideoAd extends c<C1378e> implements k, l, m {

    /* renamed from: m, reason: collision with root package name */
    protected WindRewardVideoAdListener f39205m;

    public WindRewardVideoAd(WindRewardAdRequest windRewardAdRequest) {
        super(windRewardAdRequest, false, 1);
        setAdLoadListener(this);
    }

    @Override // com.sigmob.sdk.c
    public void a(final l lVar) {
        if (((c) this).f37240c == 0) {
            return;
        }
        C1258h.f(((c) this).f37242e.getPlacementId());
        ((C1378e) ((c) this).f37240c).a(new l() { // from class: com.sigmob.windad.rewardVideo.a
            @Override // com.sigmob.sdk.videoAd.l
            public final void onVideoAdRewarded(WindRewardInfo windRewardInfo, String str) {
                this.f39206a.a(lVar, windRewardInfo, str);
            }
        });
    }

    @Override // com.sigmob.sdk.c
    public void destroy() {
        this.f39205m = null;
        super.destroy();
    }

    @Override // com.sigmob.sdk.c, com.sigmob.sdk.base.m
    public boolean loadAd() {
        return super.loadAd();
    }

    @Override // com.sigmob.sdk.videoAd.m
    public void onAdClicked(String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdClicked(str);
    }

    @Override // com.sigmob.sdk.videoAd.m
    public void onAdClosed(String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdClosed(str);
    }

    @Override // com.sigmob.sdk.videoAd.k
    public void onAdLoadError(WindAdError windAdError, String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdLoadError(windAdError, str);
    }

    @Override // com.sigmob.sdk.videoAd.k
    public void onAdLoadSuccess(String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdLoadSuccess(str);
    }

    @Override // com.sigmob.sdk.videoAd.k
    public void onAdPreLoadFail(WindAdError windAdError, String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdPreLoadFail(str);
    }

    @Override // com.sigmob.sdk.videoAd.k
    public void onAdPreLoadSuccess(String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdPreLoadSuccess(str);
    }

    @Override // com.sigmob.sdk.videoAd.m
    public void onAdShow(String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdPlayStart(str);
    }

    @Override // com.sigmob.sdk.videoAd.m
    public void onAdShowError(WindAdError windAdError, String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdPlayError(windAdError, str);
    }

    @Override // com.sigmob.sdk.videoAd.m
    public void onVideoAdPlayComplete(String str) {
    }

    @Override // com.sigmob.sdk.videoAd.m
    public void onVideoAdPlayEnd(String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdPlayEnd(str);
    }

    @Override // com.sigmob.sdk.videoAd.l
    public void onVideoAdRewarded(WindRewardInfo windRewardInfo, String str) {
        WindRewardVideoAdListener windRewardVideoAdListener = this.f39205m;
        if (windRewardVideoAdListener == null) {
            return;
        }
        windRewardVideoAdListener.onRewardAdRewarded(windRewardInfo, str);
    }

    public void setWindRewardVideoAdListener(WindRewardVideoAdListener windRewardVideoAdListener) {
        this.f39205m = windRewardVideoAdListener;
    }

    public boolean show(HashMap<String, String> map) {
        return super.show(map, this, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final l lVar, final WindRewardInfo windRewardInfo, final String str) {
        ((c) this).f37238a.post(new Runnable() { // from class: com.sigmob.windad.rewardVideo.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f39208b.a(windRewardInfo, lVar, str);
            }
        });
    }

    @Override // com.sigmob.sdk.c
    public C1378e createAdManager() {
        return new C1378e(false);
    }

    @Override // com.sigmob.sdk.c, com.sigmob.sdk.base.m
    public boolean loadAd(String str) {
        return super.loadAd(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WindRewardInfo windRewardInfo, l lVar, String str) {
        T t2 = ((c) this).f37240c;
        if (t2 != 0) {
            ((C1378e) t2).a("reward_callback", windRewardInfo.getOptions());
        }
        if (lVar != null) {
            SigmobLog.i("onVideoAdRewarded " + str);
            lVar.onVideoAdRewarded(windRewardInfo, str);
        }
    }
}
