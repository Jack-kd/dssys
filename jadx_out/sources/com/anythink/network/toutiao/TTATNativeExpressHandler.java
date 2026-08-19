package com.anythink.network.toutiao;

import android.util.Log;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class TTATNativeExpressHandler {

    /* renamed from: c, reason: collision with root package name */
    static final String f10406c = "TTATNativeExpressHandler";

    /* renamed from: a, reason: collision with root package name */
    final List<TTNativeExpressAd> f10407a;

    /* renamed from: b, reason: collision with root package name */
    final List<TTNativeExpressAdWrapper> f10408b = new ArrayList();

    public interface RenderCallback {
        void onRenderFail(String str, int i2);

        void onRenderSuccess(List<TTNativeExpressAdWrapper> list);
    }

    public class TTNativeExpressAdWrapper {
        public float expressHeight;
        public float expressWidth;
        public TTNativeExpressAd ttNativeExpressAd;

        public TTNativeExpressAdWrapper(TTNativeExpressAd tTNativeExpressAd, float f2, float f3) {
            this.ttNativeExpressAd = tTNativeExpressAd;
            this.expressWidth = f2;
            this.expressHeight = f3;
        }
    }

    public class a implements TTNativeExpressAd.ExpressAdInteractionListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int[] f10410a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ RenderCallback f10411b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ TTNativeExpressAd f10412c;

        public a(int[] iArr, RenderCallback renderCallback, TTNativeExpressAd tTNativeExpressAd) {
            this.f10410a = iArr;
            this.f10411b = renderCallback;
            this.f10412c = tTNativeExpressAd;
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdClicked(View view, int i2) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdShow(View view, int i2) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderFail(View view, String str, int i2) {
            Log.e(TTATNativeExpressHandler.f10406c, String.format("onRenderFail, errorCode: %d, errorMsg: %s", Integer.valueOf(i2), str));
            int[] iArr = this.f10410a;
            int i3 = iArr[0] - 1;
            iArr[0] = i3;
            if (i3 == 0) {
                if (TTATNativeExpressHandler.this.f10408b.size() == 0) {
                    RenderCallback renderCallback = this.f10411b;
                    if (renderCallback != null) {
                        renderCallback.onRenderFail(str, i2);
                        return;
                    }
                    return;
                }
                RenderCallback renderCallback2 = this.f10411b;
                if (renderCallback2 != null) {
                    renderCallback2.onRenderSuccess(TTATNativeExpressHandler.this.f10408b);
                }
                TTATNativeExpressHandler.this.f10408b.clear();
                TTATNativeExpressHandler.this.f10407a.clear();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderSuccess(View view, float f2, float f3) {
            String str = TTATNativeExpressHandler.f10406c;
            TTATNativeExpressHandler tTATNativeExpressHandler = TTATNativeExpressHandler.this;
            tTATNativeExpressHandler.f10408b.add(tTATNativeExpressHandler.new TTNativeExpressAdWrapper(this.f10412c, f2, f3));
            int[] iArr = this.f10410a;
            int i2 = iArr[0] - 1;
            iArr[0] = i2;
            if (i2 == 0) {
                RenderCallback renderCallback = this.f10411b;
                if (renderCallback != null) {
                    renderCallback.onRenderSuccess(TTATNativeExpressHandler.this.f10408b);
                }
                TTATNativeExpressHandler.this.f10408b.clear();
                TTATNativeExpressHandler.this.f10407a.clear();
            }
        }
    }

    public TTATNativeExpressHandler(List<TTNativeExpressAd> list) {
        this.f10407a = list;
    }

    public void startRender(RenderCallback renderCallback) {
        int[] iArr = {this.f10407a.size()};
        for (TTNativeExpressAd tTNativeExpressAd : this.f10407a) {
            tTNativeExpressAd.setExpressInteractionListener(new a(iArr, renderCallback, tTNativeExpressAd));
            tTNativeExpressAd.render();
        }
    }
}
