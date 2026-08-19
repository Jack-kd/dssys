package com.anythink.network.toutiao;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATCustomVideo;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class TTATNativeAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    TTNativeAd f10377a;

    /* renamed from: b, reason: collision with root package name */
    Context f10378b;

    /* renamed from: c, reason: collision with root package name */
    String f10379c;

    /* renamed from: d, reason: collision with root package name */
    boolean f10380d = false;

    /* renamed from: e, reason: collision with root package name */
    TTATCustomVideo f10381e;

    /* renamed from: f, reason: collision with root package name */
    boolean f10382f;

    /* renamed from: g, reason: collision with root package name */
    private final Map<String, Object> f10383g;

    /* renamed from: h, reason: collision with root package name */
    double f10384h;

    /* renamed from: i, reason: collision with root package name */
    View f10385i;

    public class a implements TTFeedAd.VideoAdListener {
        public a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onProgressUpdate(long j2, long j3) {
            if (TTATNativeAd.this.getVideoDuration() == 0.0d) {
                TTATNativeAd.this.setVideoDuration(j3 / 1000.0d);
            }
            TTATNativeAd tTATNativeAd = TTATNativeAd.this;
            double d2 = j2 / 1000.0d;
            tTATNativeAd.f10384h = d2;
            tTATNativeAd.notifyAdVideoPlayProgress((int) d2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdComplete(TTFeedAd tTFeedAd) {
            TTATNativeAd.this.notifyAdVideoEnd();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdContinuePlay(TTFeedAd tTFeedAd) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdPaused(TTFeedAd tTFeedAd) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdStartPlay(TTFeedAd tTFeedAd) {
            TTATNativeAd.this.notifyAdVideoStart();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoError(int i2, int i3) {
            TTATNativeAd.this.notifyAdVideoVideoPlayFail("" + i2, "" + i3);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoLoad(TTFeedAd tTFeedAd) {
        }
    }

    public class b implements TTAppDownloadListener {
        public b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadActive(long j2, long j3, String str, String str2) {
            TTATNativeAd tTATNativeAd = TTATNativeAd.this;
            if (tTATNativeAd.f10380d) {
                if (((com.anythink.nativead.unitgroup.a) tTATNativeAd).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                    return;
                }
                ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener).onDownloadUpdate(j2, j3, str, str2);
                return;
            }
            tTATNativeAd.f10380d = true;
            if (((com.anythink.nativead.unitgroup.a) tTATNativeAd).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener).onDownloadStart(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFailed(long j2, long j3, String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener).onDownloadFail(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFinished(long j2, String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener).onDownloadFinish(j2, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadPaused(long j2, long j3, String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener).onDownloadPause(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onIdle() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onInstalled(String str, String str2) {
            if (((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) TTATNativeAd.this).mDownloadListener).onInstalled(str, str2);
        }
    }

    public class c implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f10388a;

        public class a implements TTAdDislike.DislikeInteractionCallback {
            public a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onCancel() {
            }

            @Deprecated
            public void onRefuse() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onSelected(int i2, String str, boolean z2) {
                TTATNativeAd.this.notifyAdDislikeClick();
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onShow() {
            }

            @Deprecated
            public void onSelected(int i2, String str) {
                TTATNativeAd.this.notifyAdDislikeClick();
            }
        }

        public c(Activity activity) {
            this.f10388a = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TTNativeAd tTNativeAd = TTATNativeAd.this.f10377a;
            if (tTNativeAd == null) {
                return;
            }
            TTAdDislike dislikeDialog = tTNativeAd.getDislikeDialog(this.f10388a);
            dislikeDialog.setDislikeInteractionCallback(new a());
            if (dislikeDialog.isShow()) {
                return;
            }
            dislikeDialog.showDislikeDialog();
        }
    }

    public class d implements TTNativeAd.AdInteractionListener {
        private d() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdClicked(View view, TTNativeAd tTNativeAd) {
            TTATNativeAd.this.notifyAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
            TTATNativeAd.this.notifyAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdShow(TTNativeAd tTNativeAd) {
            TTATNativeAd tTATNativeAd = TTATNativeAd.this;
            TTATInitManager tTATInitManager = TTATInitManager.getInstance();
            TTATNativeAd tTATNativeAd2 = TTATNativeAd.this;
            tTATNativeAd.setNetworkInfoMap(tTATInitManager.a(tTATNativeAd2.f10377a, tTATNativeAd2.f10383g));
            TTATNativeAd.this.notifyAdImpression();
        }

        public /* synthetic */ d(TTATNativeAd tTATNativeAd, a aVar) {
            this();
        }
    }

    public TTATNativeAd(Context context, String str, TTNativeAd tTNativeAd, boolean z2, Bitmap bitmap, int i2, boolean z3) {
        this.f10378b = context.getApplicationContext();
        this.f10379c = str;
        this.f10377a = tTNativeAd;
        this.f10382f = z3;
        HashMap map = new HashMap();
        this.f10383g = map;
        if (this.f10377a.getMediaExtraInfo() != null) {
            Map<String, Object> mediaExtraInfo = this.f10377a.getMediaExtraInfo();
            mediaExtraInfo.get(MediationConstant.KEY_GM_POLICY);
            map.putAll(mediaExtraInfo);
        }
        setNetworkInfoMap(TTATInitManager.getInstance().a((Map<String, Object>) map, (Map<String, Object>) null));
        setAdData(z2, bitmap, i2);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        a(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        super.destroy();
        try {
            TTNativeAd tTNativeAd = this.f10377a;
            if (tTNativeAd != null) {
                tTNativeAd.setActivityForDownloadApp(null);
                this.f10377a.destroy();
                this.f10377a = null;
            }
        } catch (Exception unused) {
        }
        this.f10378b = null;
        this.f10385i = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public Bitmap getAdLogo() {
        try {
            TTNativeAd tTNativeAd = this.f10377a;
            if (tTNativeAd != null) {
                return tTNativeAd.getAdLogo();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        TTNativeAd tTNativeAd = this.f10377a;
        if (tTNativeAd != null) {
            this.f10385i = tTNativeAd.getAdView();
        }
        return this.f10385i;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public ATCustomVideo getNativeCustomVideo() {
        return this.f10381e;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public double getVideoProgress() {
        return this.f10384h;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        View view2;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (aTNativePrepareInfo instanceof ATNativePrepareExInfo) {
                List<View> creativeClickViewList = ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList();
                if (creativeClickViewList != null) {
                    arrayList.addAll(creativeClickViewList);
                }
                List<View> directDownloadViewList = ((ATNativePrepareExInfo) aTNativePrepareInfo).getDirectDownloadViewList();
                if (directDownloadViewList != null) {
                    arrayList2.addAll(directDownloadViewList);
                }
            }
            List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
            if (clickViewList == null || clickViewList.isEmpty()) {
                clickViewList = new ArrayList<>();
                a(clickViewList, view);
            }
            List<View> list = clickViewList;
            d dVar = new d(this, null);
            if (list.isEmpty()) {
                this.f10377a.registerViewForInteraction((ViewGroup) view, view, dVar);
            } else {
                if (!this.f10382f && (view2 = this.f10385i) != null) {
                    list.add(view2);
                }
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    this.f10377a.registerViewForInteraction((ViewGroup) view, list, list, dVar);
                } else {
                    this.f10377a.registerViewForInteraction((ViewGroup) view, list, list, arrayList, arrayList2, (View) null, dVar);
                }
            }
            if (view.getContext() instanceof Activity) {
                this.f10377a.setActivityForDownloadApp((Activity) view.getContext());
                a((Activity) view.getContext());
            }
        } catch (Throwable th) {
            Log.e("TTATNativeAd", "prepare() >>> failed: " + th.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0198  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setAdData(boolean r7, android.graphics.Bitmap r8, int r9) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.toutiao.TTATNativeAd.setAdData(boolean, android.graphics.Bitmap, int):void");
    }

    private void a(List<View> list, View view) {
        if (!(view instanceof ViewGroup) || view == this.f10377a.getAdView()) {
            if (view != this.f10377a.getAdView()) {
                list.add(view);
            }
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(list, viewGroup.getChildAt(i2));
            }
        }
    }

    private void a(Activity activity) {
        bindDislikeListener(new c(activity));
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            TTNativeAd tTNativeAd = this.f10377a;
            if (tTNativeAd == null || view != tTNativeAd.getAdView()) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    a(viewGroup.getChildAt(i2));
                }
                return;
            }
            return;
        }
        view.setOnClickListener(null);
        view.setClickable(false);
    }
}
