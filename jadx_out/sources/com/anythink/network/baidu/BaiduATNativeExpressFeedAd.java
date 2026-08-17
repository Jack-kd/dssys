package com.anythink.network.baidu;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.baidu.mobads.sdk.api.ExpressResponse;
import java.util.Map;

/* loaded from: classes2.dex */
public class BaiduATNativeExpressFeedAd extends CustomNativeAd {
    public static final String TAG = "BaiduATNativeExpressFeedAd";

    /* renamed from: a, reason: collision with root package name */
    private final Context f9368a;

    /* renamed from: b, reason: collision with root package name */
    private final ExpressResponse f9369b;

    /* renamed from: c, reason: collision with root package name */
    private RenderCallback f9370c;

    /* renamed from: d, reason: collision with root package name */
    private FrameLayout f9371d;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, Object> f9372e;

    public interface RenderCallback {
        void onAdRenderFail();

        void onAdRenderSuccess(CustomNativeAd customNativeAd);
    }

    public class a implements ExpressResponse.ExpressDislikeListener {
        public a() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
        public void onDislikeItemClick(String str) {
            String str2 = BaiduATNativeExpressFeedAd.TAG;
            BaiduATNativeExpressFeedAd.this.notifyAdDislikeClick();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
        public void onDislikeWindowClose() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
        public void onDislikeWindowShow() {
        }
    }

    public class b implements ExpressResponse.ExpressCloseListener {
        public b() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressCloseListener
        public void onAdClose(ExpressResponse expressResponse) {
            String str = BaiduATNativeExpressFeedAd.TAG;
            BaiduATNativeExpressFeedAd.this.notifyAdDislikeClick();
        }
    }

    public class c implements ExpressResponse.ExpressInteractionListener {
        public c() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdClick() {
            BaiduATNativeExpressFeedAd.this.notifyAdClicked();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdExposed() {
            BaiduATNativeExpressFeedAd.this.notifyAdImpression();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdRenderFail(View view, String str, int i2) {
            if (BaiduATNativeExpressFeedAd.this.f9370c != null) {
                BaiduATNativeExpressFeedAd.this.f9370c.onAdRenderFail();
            }
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdRenderSuccess(View view, float f2, float f3) {
            if (BaiduATNativeExpressFeedAd.this.f9370c != null) {
                BaiduATNativeExpressFeedAd.this.f9370c.onAdRenderSuccess(BaiduATNativeExpressFeedAd.this);
            }
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdUnionClick() {
        }
    }

    public class d implements ExpressResponse.ExpressDislikeListener {
        public d() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
        public void onDislikeItemClick(String str) {
            BaiduATNativeExpressFeedAd.this.notifyAdDislikeClick();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
        public void onDislikeWindowClose() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
        public void onDislikeWindowShow() {
        }
    }

    public BaiduATNativeExpressFeedAd(Context context, ExpressResponse expressResponse, int i2, int i3, boolean z2, Map<String, Object> map) {
        this.f9368a = context;
        this.f9369b = expressResponse;
        if (i2 > 0 && i3 > 0) {
            expressResponse.setExpectedSizePixel(i2, i3);
        }
        this.f9371d = new FrameLayout(context);
        int adActionType = expressResponse.getAdActionType();
        int i4 = 2;
        if (adActionType != 1) {
            if (adActionType != 2) {
                i4 = 3;
                if (adActionType != 3) {
                    i4 = 0;
                }
            } else {
                i4 = 1;
            }
        }
        setNativeInteractionType(i4);
        Map<String, Object> mapA = BaiduATInitManager.getInstance().a(expressResponse.getAdDataForKey("request_id"), (Map<String, Object>) null, map);
        this.f9372e = mapA;
        if (z2) {
            mapA.put(BaiduATConst.EN_P_KEY, expressResponse.getPECPM());
        }
        setNetworkInfoMap(this.f9372e);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        super.destroy();
        FrameLayout frameLayout = this.f9371d;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            this.f9371d = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        FrameLayout frameLayout = this.f9371d;
        if (frameLayout != null) {
            return frameLayout;
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.a
    public Object getObject() {
        return this.f9369b;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        ExpressResponse expressResponse = this.f9369b;
        if (expressResponse == null) {
            return;
        }
        expressResponse.setAdDislikeListener(new a());
        this.f9369b.setAdCloseListener(new b());
        View expressAdView = this.f9369b.getExpressAdView();
        if (this.f9371d == null) {
            this.f9371d = new FrameLayout(this.f9368a);
        }
        if (this.f9371d.getChildCount() > 0) {
            this.f9371d.removeAllViews();
        }
        if (expressAdView != null) {
            ViewParent parent = expressAdView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(expressAdView);
            }
            this.f9371d.addView(expressAdView);
        }
    }

    public void setRenderCallback(RenderCallback renderCallback) {
        this.f9370c = renderCallback;
    }

    public void startRender() {
        a(this.f9369b);
    }

    private void a(ExpressResponse expressResponse) {
        if (expressResponse == null) {
            return;
        }
        expressResponse.setInteractionListener(new c());
        expressResponse.setAdDislikeListener(new d());
        expressResponse.render();
    }
}
