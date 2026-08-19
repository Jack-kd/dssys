package D0;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.splashad.api.ATSplashAd;
import com.anythink.splashad.api.ATSplashAdExtraInfo;
import com.anythink.splashad.api.ATSplashExListener;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;
import java.util.Map;
import x0.C1799a;

/* loaded from: classes3.dex */
public class a implements PlatformView {

    /* renamed from: f, reason: collision with root package name */
    public static ATSplashAd f48f;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f49b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f50c;

    /* renamed from: d, reason: collision with root package name */
    public final Activity f51d;

    /* renamed from: e, reason: collision with root package name */
    public final MethodChannel f52e;

    public a(Activity activity, BinaryMessenger binaryMessenger, int i2, Map map) {
        this.f50c = map;
        this.f51d = activity;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.f49b = frameLayout;
        frameLayout.setBackgroundColor(0);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        this.f52e = new MethodChannel(binaryMessenger, "com.flutter.advert/SplashAdView_" + i2);
        c();
    }

    public void c() {
        try {
            this.f49b.removeAllViews();
            ATSplashAd aTSplashAd = new ATSplashAd(this.f51d, (String) this.f50c.get("adId"), new C0002a());
            f48f = aTSplashAd;
            aTSplashAd.loadAd();
        } catch (Exception e2) {
            E0.a.a("splashonError:" + e2);
            C1799a.a("onError", null);
            this.f49b.removeAllViews();
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        return this.f49b;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
    }

    /* renamed from: D0.a$a, reason: collision with other inner class name */
    public class C0002a implements ATSplashExListener {
        public C0002a() {
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdClick(ATAdInfo aTAdInfo) {
            a.this.f52e.invokeMethod("onClick", null);
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdDismiss(ATAdInfo aTAdInfo, ATSplashAdExtraInfo aTSplashAdExtraInfo) {
            a.this.f52e.invokeMethod("onClose", null);
            a.this.f49b.removeAllViews();
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdLoadTimeout() {
            Log.e("adDemo", "onAdLoadTimeout 开屏广告加载超时失败");
            a.this.f52e.invokeMethod("onClose", null);
            a.this.f49b.removeAllViews();
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdLoaded(boolean z2) {
            if (a.f48f.isAdReady()) {
                ATSplashAd aTSplashAd = a.f48f;
                a aVar = a.this;
                aTSplashAd.show(aVar.f51d, aVar.f49b);
            }
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdShow(ATAdInfo aTAdInfo) {
            a.this.f52e.invokeMethod("onShow", null);
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onNoAdError(AdError adError) {
            a.this.f52e.invokeMethod("onError", null);
            a.this.f49b.removeAllViews();
        }

        @Override // com.anythink.splashad.api.ATSplashExListener
        public void onSplashAdReward(ATAdInfo aTAdInfo) {
        }

        @Override // com.anythink.splashad.api.ATSplashExListener
        public void onDeeplinkCallback(ATAdInfo aTAdInfo, boolean z2) {
        }

        @Override // com.anythink.splashad.api.ATSplashExListener
        public void onDownloadConfirm(Context context, ATAdInfo aTAdInfo, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        }
    }
}
