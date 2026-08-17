package A0;

import android.app.Activity;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.AdError;
import com.anythink.interstitial.api.ATInterstitial;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import k.AbstractC1587a;
import x0.C1799a;

/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static ATInterstitial f13a;

    public static void a(Activity activity, String str) {
        new HashMap().put("user_id", "112222");
        ATInterstitial aTInterstitial = new ATInterstitial(activity, str);
        f13a = aTInterstitial;
        aTInterstitial.setAdListener(new C0000a(aTInterstitial, activity));
        f13a.load();
    }

    /* renamed from: A0.a$a, reason: collision with other inner class name */
    public class C0000a extends AbstractC1587a {
        public C0000a(ATInterstitial aTInterstitial, Activity activity) {
            super(aTInterstitial, activity);
        }

        @Override // k.AbstractC1587a
        public void d(ATAdInfo aTAdInfo) {
            C1799a.a(MediationConstant.RIT_TYPE_INTERSTITIAL, "onClick");
        }

        @Override // k.AbstractC1587a
        public void e(ATAdInfo aTAdInfo) {
            C1799a.a(MediationConstant.RIT_TYPE_INTERSTITIAL, "onClose");
        }

        @Override // k.AbstractC1587a
        public void g(AdError adError) {
            Log.e("adDemo", "onInterstitialAdError 广告播放出错");
            C1799a.a(MediationConstant.RIT_TYPE_INTERSTITIAL, "onError");
        }

        @Override // k.AbstractC1587a
        public void j(ATAdInfo aTAdInfo) {
            C1799a.a(MediationConstant.RIT_TYPE_INTERSTITIAL, "onShow");
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdLoadFail(AdError adError) {
            Log.e("adDemo", "onInterstitialAdLoadFail 广告加载失败" + adError.toString());
            C1799a.a(MediationConstant.RIT_TYPE_INTERSTITIAL, "onError");
        }

        @Override // k.AbstractC1587a
        public void h() {
        }

        @Override // k.AbstractC1587a
        public void f(ATAdInfo aTAdInfo) {
        }

        @Override // k.AbstractC1587a
        public void i(ATAdInfo aTAdInfo) {
        }
    }
}
