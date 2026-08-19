package com.anythink.network.toutiao;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.bytedance.sdk.openadsdk.DislikeInfo;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class TTATNativeExpressAd extends CustomNativeAd {

    /* renamed from: j, reason: collision with root package name */
    private static final String f10392j = "TTATNativeExpressAd";

    /* renamed from: a, reason: collision with root package name */
    TTNativeExpressAd f10393a;

    /* renamed from: b, reason: collision with root package name */
    Context f10394b;

    /* renamed from: c, reason: collision with root package name */
    String f10395c;

    /* renamed from: d, reason: collision with root package name */
    double f10396d;

    /* renamed from: e, reason: collision with root package name */
    double f10397e;

    /* renamed from: f, reason: collision with root package name */
    boolean f10398f;

    /* renamed from: g, reason: collision with root package name */
    TTDislikeDialogAbstract f10399g;

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, Object> f10400h;

    /* renamed from: i, reason: collision with root package name */
    View f10401i;

    public class a implements TTNativeExpressAd.ExpressVideoAdListener {
        public a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onClickRetry() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onProgressUpdate(long j2, long j3) {
            if (TTATNativeExpressAd.this.getVideoDuration() == 0.0d) {
                TTATNativeExpressAd.this.setVideoDuration(j3 / 1000.0d);
            }
            TTATNativeExpressAd tTATNativeExpressAd = TTATNativeExpressAd.this;
            double d2 = j2 / 1000.0d;
            tTATNativeExpressAd.f10396d = d2;
            tTATNativeExpressAd.notifyAdVideoPlayProgress((int) d2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onVideoAdComplete() {
            TTATNativeExpressAd.this.notifyAdVideoEnd();
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onVideoAdContinuePlay() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onVideoAdPaused() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onVideoAdStartPlay() {
            TTATNativeExpressAd.this.notifyAdVideoStart();
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onVideoError(int i2, int i3) {
            String unused = TTATNativeExpressAd.f10392j;
            String.format("onVideoError, errorCode: %d, errorMsg: %s", Integer.valueOf(i2), i3 + "");
            TTATNativeExpressAd.this.notifyAdVideoVideoPlayFail("" + i2, "" + i3);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
        public void onVideoLoad() {
        }
    }

    public class b implements TTAppDownloadListener {
        public b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadActive(long j2, long j3, String str, String str2) {
            TTATNativeExpressAd tTATNativeExpressAd = TTATNativeExpressAd.this;
            if (tTATNativeExpressAd.f10398f) {
                if (((com.anythink.nativead.unitgroup.a) tTATNativeExpressAd).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                    return;
                }
                ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener).onDownloadUpdate(j2, j3, str, str2);
                return;
            }
            tTATNativeExpressAd.f10398f = true;
            if (((com.anythink.nativead.unitgroup.a) tTATNativeExpressAd).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener).onDownloadStart(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFailed(long j2, long j3, String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener).onDownloadFail(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFinished(long j2, String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener).onDownloadFinish(j2, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadPaused(long j2, long j3, String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener).onDownloadPause(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onIdle() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onInstalled(String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeExpressAd.this).mDownloadListener).onInstalled(str, str2);
        }
    }

    public class c implements TTAdDislike.DislikeInteractionCallback {
        public c() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onCancel() {
        }

        @Deprecated
        public void onRefuse() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onSelected(int i2, String str, boolean z2) {
            TTATNativeExpressAd.this.notifyAdDislikeClick();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onShow() {
        }

        @Deprecated
        public void onSelected(int i2, String str) {
            TTATNativeExpressAd.this.notifyAdDislikeClick();
        }
    }

    public class d implements TTNativeExpressAd.ExpressAdInteractionListener {
        public d() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdClicked(View view, int i2) {
            TTATNativeExpressAd.this.notifyAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdShow(View view, int i2) {
            String unused = TTATNativeExpressAd.f10392j;
            TTATNativeExpressAd tTATNativeExpressAd = TTATNativeExpressAd.this;
            TTATInitManager tTATInitManager = TTATInitManager.getInstance();
            TTATNativeExpressAd tTATNativeExpressAd2 = TTATNativeExpressAd.this;
            tTATNativeExpressAd.setNetworkInfoMap(tTATInitManager.a(tTATNativeExpressAd2.f10393a, tTATNativeExpressAd2.f10400h));
            TTATNativeExpressAd.this.notifyAdImpression();
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderFail(View view, String str, int i2) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderSuccess(View view, float f2, float f3) {
        }
    }

    public TTATNativeExpressAd(Context context, String str, TTNativeExpressAd tTNativeExpressAd, boolean z2, boolean z3) {
        this(context, str, tTNativeExpressAd, z2, z3, 0.0f, 0.0f);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        this.f10401i = null;
        TTNativeExpressAd tTNativeExpressAd = this.f10393a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.setExpressInteractionListener((TTNativeExpressAd.AdInteractionListener) null);
            this.f10393a.destroy();
            this.f10393a = null;
        }
        this.f10394b = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public Bitmap getAdLogo() {
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        TTNativeExpressAd tTNativeExpressAd;
        try {
            if (this.f10401i == null && (tTNativeExpressAd = this.f10393a) != null) {
                this.f10401i = tTNativeExpressAd.getExpressAdView();
                b();
            }
            return this.f10401i;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public double getVideoProgress() {
        return this.f10396d;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (view == null || !(view.getContext() instanceof Activity)) {
            return;
        }
        a((Activity) view.getContext());
    }

    public void setAdData(boolean z2) {
        this.f10393a.setCanInterruptVideoPlay(z2);
        int i2 = this.f10393a.getInteractionType() == 4 ? 1 : 0;
        if (this.f10393a.getInteractionType() == 3) {
            i2 = 3;
        }
        if (this.f10393a.getInteractionType() == 2) {
            i2 = 2;
        }
        setNativeInteractionType(i2);
        this.f10393a.setVideoAdListener(new a());
        this.f10393a.setDownloadListener(new b());
        int imageMode = this.f10393a.getImageMode();
        if (imageMode != 15) {
            if (imageMode == 16 || imageMode == 2 || imageMode == 3 || imageMode == 4) {
                this.mAdSourceType = "2";
                return;
            } else if (imageMode != 5) {
                return;
            }
        }
        this.mAdSourceType = "1";
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.BaseAd
    public void setDevParams(Map<String, Object> map) {
        Object obj = map.get(ATAdConst.KEY.CUSTOM_DISLIKE_DIALOG);
        if (obj instanceof TTDislikeDialogAbstract) {
            Objects.toString(obj);
            this.f10399g = (TTDislikeDialogAbstract) obj;
        }
    }

    public TTATNativeExpressAd(Context context, String str, TTNativeExpressAd tTNativeExpressAd, boolean z2, boolean z3, float f2, float f3) {
        List<FilterWord> filterWords;
        this.f10398f = false;
        this.f10394b = context.getApplicationContext();
        this.f10395c = str;
        this.f10393a = tTNativeExpressAd;
        HashMap map = new HashMap();
        this.f10400h = map;
        if (f2 > 0.0f) {
            map.put("express_width", Float.valueOf(f2));
        }
        if (f3 > 0.0f) {
            map.put("express_height", Float.valueOf(f3));
        }
        if (this.f10393a.getMediaExtraInfo() != null) {
            Map<String, Object> mediaExtraInfo = this.f10393a.getMediaExtraInfo();
            mediaExtraInfo.get(MediationConstant.KEY_GM_POLICY);
            map.putAll(mediaExtraInfo);
        }
        DislikeInfo dislikeInfo = this.f10393a.getDislikeInfo();
        if (dislikeInfo != null && (filterWords = dislikeInfo.getFilterWords()) != null && filterWords.size() > 0) {
            dislikeInfo.toString();
            map.put(TTATConst.CUSTOM_DISLIKE_INFO, dislikeInfo);
        }
        setNetworkInfoMap(TTATInitManager.getInstance().a((Map<String, Object>) map, (Map<String, Object>) null));
        setAdData(z2);
    }

    private void b() {
        TTNativeExpressAd tTNativeExpressAd = this.f10393a;
        if (tTNativeExpressAd == null) {
            return;
        }
        tTNativeExpressAd.setExpressInteractionListener(new d());
    }

    private void a(Activity activity) {
        TTNativeExpressAd tTNativeExpressAd = this.f10393a;
        if (tTNativeExpressAd == null) {
            return;
        }
        if (this.f10399g != null) {
            Log.e(f10392j, "bindDislike: setDislikeDialog=" + this.f10399g);
            this.f10393a.setDislikeDialog(this.f10399g);
            return;
        }
        tTNativeExpressAd.setDislikeCallback(activity, new c());
    }
}
