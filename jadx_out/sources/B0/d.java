package B0;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.AdError;
import com.anythink.nativead.api.ATNative;
import com.anythink.nativead.api.ATNativeAdView;
import com.anythink.nativead.api.ATNativeDislikeListener;
import com.anythink.nativead.api.ATNativeEventListener;
import com.anythink.nativead.api.ATNativeNetworkListener;
import com.anythink.nativead.api.NativeAd;
import com.bykv.vk.component.ttvideo.player.C;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class d implements PlatformView {

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f32b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f33c;

    /* renamed from: d, reason: collision with root package name */
    public final Activity f34d;

    /* renamed from: e, reason: collision with root package name */
    public final MethodChannel f35e;

    /* renamed from: f, reason: collision with root package name */
    public int f36f = 0;

    /* renamed from: g, reason: collision with root package name */
    public final ATNativeAdView f37g;

    /* renamed from: h, reason: collision with root package name */
    public ATNative f38h;

    /* renamed from: i, reason: collision with root package name */
    public NativeAd f39i;

    public class a implements ATNativeNetworkListener {
        public a() {
        }

        @Override // com.anythink.nativead.api.ATNativeNetworkListener
        public void onNativeAdLoadFail(AdError adError) {
            Log.e("adDemo", "onNativeAdLoadFail 广告加载失败 --- " + adError);
            d.this.f35e.invokeMethod("onError", null);
        }

        @Override // com.anythink.nativead.api.ATNativeNetworkListener
        public void onNativeAdLoaded() {
            d.this.l();
        }
    }

    public class c extends ATNativeDislikeListener {
        public c() {
        }

        @Override // com.anythink.nativead.api.ATNativeDislikeListener
        public void onAdCloseButtonClick(ATNativeAdView aTNativeAdView, ATAdInfo aTAdInfo) {
            Log.e("adDemo", "onAdCloseButtonClick 广告被关闭");
            d.this.f35e.invokeMethod("onClose", null);
            if (d.this.f38h != null) {
                d.this.f38h.makeAdRequest();
            }
        }
    }

    public d(Activity activity, BinaryMessenger binaryMessenger, int i2, Map map) {
        this.f33c = map;
        this.f34d = activity;
        E0.a.a("native framework layout height(dp):" + ((Integer) map.get("height")).intValue());
        LinearLayout linearLayout = new LinearLayout(activity);
        this.f32b = linearLayout;
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        linearLayout.setBackgroundColor(0);
        linearLayout.setGravity(48);
        linearLayout.setOrientation(1);
        ATNativeAdView aTNativeAdView = new ATNativeAdView(activity);
        this.f37g = aTNativeAdView;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 48;
        aTNativeAdView.setLayoutParams(layoutParams);
        linearLayout.addView(aTNativeAdView);
        this.f35e = new MethodChannel(binaryMessenger, "com.flutter.advert/NativeAdView_" + i2);
        i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [android.view.View] */
    public static /* synthetic */ void a(final d dVar, final int i2, final int i3, final int i4, final int i5, int i6) {
        int iH = dVar.h(i2);
        ATNativeAdView aTNativeAdView = dVar.f37g;
        int childCount = aTNativeAdView.getChildCount();
        ATNativeAdView childAt = aTNativeAdView;
        if (childCount > 0) {
            childAt = dVar.f37g.getChildAt(0);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iH, C.ENCODING_PCM_32BIT);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        childAt.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int measuredHeight = childAt.getMeasuredHeight();
        dVar.f37g.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        final int iMax = Math.max(measuredHeight, dVar.f37g.getMeasuredHeight());
        Log.e("adDemo", "measure try=" + i3 + " childCount=" + dVar.f37g.getChildCount() + " measuredPx=" + iMax);
        if (iMax <= dVar.h(80)) {
            if (i3 < i4) {
                dVar.f37g.postDelayed(new Runnable() { // from class: B0.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f20b.m(i2, i3 + 1, i4, i5, iMax);
                    }
                }, i5);
                return;
            } else {
                dVar.g(dVar.h(250));
                return;
            }
        }
        if (i3 < i4 && Math.abs(iMax - i6) > dVar.h(2)) {
            dVar.f37g.postDelayed(new Runnable() { // from class: B0.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f26b.m(i2, i3 + 1, i4, i5, iMax);
                }
            }, i5);
        }
        dVar.g(iMax);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        try {
            NativeAd nativeAd = this.f39i;
            if (nativeAd != null) {
                nativeAd.destory();
                this.f39i = null;
            }
        } catch (Throwable unused) {
        }
        try {
            if (this.f38h != null) {
                this.f38h = null;
            }
        } catch (Throwable unused2) {
        }
        try {
            this.f32b.removeAllViews();
        } catch (Throwable unused3) {
        }
    }

    public final void g(int i2) {
        int iK = k(i2);
        if (iK < 30) {
            Log.e("adDemo", "ignore too small height dp=" + iK + " px=" + i2);
            return;
        }
        if (iK <= this.f36f) {
            Log.e("adDemo", "skip smaller height: " + iK + " last=" + this.f36f);
            return;
        }
        this.f36f = iK;
        ViewGroup.LayoutParams layoutParams = this.f32b.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = i2;
            this.f32b.setLayoutParams(layoutParams);
        }
        Log.e("adDemo", "report height px=" + i2 + " dp=" + iK);
        this.f35e.invokeMethod("onShow", Integer.valueOf(iK));
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        return this.f32b;
    }

    public final int h(int i2) {
        float f2 = this.f37g.getResources().getDisplayMetrics().density;
        Log.e("adDemo", "dpToPx density=" + f2);
        return Math.round(i2 * f2);
    }

    public void i() {
        int iIntValue = ((Integer) this.f33c.get("width")).intValue();
        this.f38h = new ATNative(this.f34d, (String) this.f33c.get("adId"), new a());
        HashMap map = new HashMap();
        map.put(ATAdConst.KEY.AD_WIDTH, Integer.valueOf(h(iIntValue)));
        map.put(ATAdConst.KEY.AD_HEIGHT, 0);
        this.f38h.setLocalExtra(map);
        this.f38h.makeAdRequest();
    }

    public final void j(int i2) {
        m(i2, 0, 10, 50, 0);
    }

    public final int k(int i2) {
        float f2 = this.f37g.getResources().getDisplayMetrics().density;
        Log.e("adDemo", "pxToDp density=" + f2);
        return Math.round(i2 / f2);
    }

    public void l() {
        NativeAd nativeAd;
        ATNative aTNative = this.f38h;
        if (aTNative == null || !aTNative.checkAdStatus().isReady() || (nativeAd = this.f38h.getNativeAd()) == null) {
            return;
        }
        NativeAd nativeAd2 = this.f39i;
        if (nativeAd2 != null) {
            try {
                nativeAd2.destory();
            } catch (Throwable unused) {
            }
        }
        this.f39i = nativeAd;
        nativeAd.renderAdContainer(this.f37g, null);
        this.f39i.prepare(this.f37g, null);
        this.f37g.requestLayout();
        this.f32b.requestLayout();
        int iIntValue = ((Integer) this.f33c.get("width")).intValue();
        j(iIntValue);
        this.f39i.setNativeEventListener(new b(iIntValue));
        this.f39i.setDislikeCallbackListener(new c());
    }

    public final void m(final int i2, final int i3, final int i4, final int i5, final int i6) {
        this.f37g.post(new Runnable() { // from class: B0.a
            @Override // java.lang.Runnable
            public final void run() {
                d.a(this.f14b, i2, i3, i4, i5, i6);
            }
        });
    }

    public class b implements ATNativeEventListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f41a;

        public b(int i2) {
            this.f41a = i2;
        }

        @Override // com.anythink.nativead.api.ATNativeEventListener
        public void onAdClicked(ATNativeAdView aTNativeAdView, ATAdInfo aTAdInfo) {
            Log.e("adDemo", "onAdClicked 广告点击");
            d.this.f35e.invokeMethod("onClick", null);
        }

        @Override // com.anythink.nativead.api.ATNativeEventListener
        public void onAdImpressed(ATNativeAdView aTNativeAdView, ATAdInfo aTAdInfo) {
            Log.e("adDemo", "onAdImpressed 广告曝光");
            d.this.j(this.f41a);
        }

        @Override // com.anythink.nativead.api.ATNativeEventListener
        public void onAdVideoEnd(ATNativeAdView aTNativeAdView) {
        }

        @Override // com.anythink.nativead.api.ATNativeEventListener
        public void onAdVideoStart(ATNativeAdView aTNativeAdView) {
        }

        @Override // com.anythink.nativead.api.ATNativeEventListener
        public void onAdVideoProgress(ATNativeAdView aTNativeAdView, int i2) {
        }
    }
}
