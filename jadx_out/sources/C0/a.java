package C0;

import android.app.Activity;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.AdError;
import com.anythink.rewardvideo.api.ATRewardVideoAd;
import com.anythink.rewardvideo.api.ATRewardVideoListener;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import x0.C1799a;

/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static ATRewardVideoAd f46a;

    public static void a(Activity activity, String str) {
        ATRewardVideoAd aTRewardVideoAd = new ATRewardVideoAd(activity, str);
        f46a = aTRewardVideoAd;
        aTRewardVideoAd.setAdListener(new C0001a(activity));
        f46a.load();
    }

    /* renamed from: C0.a$a, reason: collision with other inner class name */
    public class C0001a implements ATRewardVideoListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Activity f47a;

        public C0001a(Activity activity) {
            this.f47a = activity;
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onReward(ATAdInfo aTAdInfo) {
            C1799a.a(MediationConstant.RIT_TYPE_REWARD_VIDEO, "onRewardVerify:true");
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onRewardedVideoAdFailed(AdError adError) {
            C1799a.a(MediationConstant.RIT_TYPE_REWARD_VIDEO, "onError");
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onRewardedVideoAdLoaded() {
            ATRewardVideoAd aTRewardVideoAd = a.f46a;
            if (aTRewardVideoAd == null || !aTRewardVideoAd.isAdReady()) {
                return;
            }
            a.f46a.show(this.f47a);
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onRewardedVideoAdPlayClicked(ATAdInfo aTAdInfo) {
            C1799a.a(MediationConstant.RIT_TYPE_REWARD_VIDEO, "onClick");
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onRewardedVideoAdPlayFailed(AdError adError, ATAdInfo aTAdInfo) {
            C1799a.a(MediationConstant.RIT_TYPE_REWARD_VIDEO, "onError");
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onRewardedVideoAdPlayStart(ATAdInfo aTAdInfo) {
            C1799a.a(MediationConstant.RIT_TYPE_REWARD_VIDEO, "onShow");
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onRewardedVideoAdClosed(ATAdInfo aTAdInfo) {
        }

        @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
        public void onRewardedVideoAdPlayEnd(ATAdInfo aTAdInfo) {
        }
    }
}
