package com.anythink.network.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADEventListenerWithClickInfo;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class GDTATNativeAd extends CustomNativeAd {

    /* renamed from: n, reason: collision with root package name */
    private static final String f9698n = "GDTATNativeAd";

    /* renamed from: a, reason: collision with root package name */
    WeakReference<Context> f9699a;

    /* renamed from: b, reason: collision with root package name */
    Context f9700b;

    /* renamed from: c, reason: collision with root package name */
    NativeUnifiedADData f9701c;

    /* renamed from: d, reason: collision with root package name */
    int f9702d;

    /* renamed from: e, reason: collision with root package name */
    int f9703e;

    /* renamed from: f, reason: collision with root package name */
    int f9704f;

    /* renamed from: h, reason: collision with root package name */
    boolean f9706h;

    /* renamed from: j, reason: collision with root package name */
    View f9708j;

    /* renamed from: k, reason: collision with root package name */
    MediaView f9709k;

    /* renamed from: m, reason: collision with root package name */
    NativeAdContainer f9711m;

    /* renamed from: g, reason: collision with root package name */
    int f9705g = 0;

    /* renamed from: i, reason: collision with root package name */
    private boolean f9707i = false;

    /* renamed from: l, reason: collision with root package name */
    boolean f9710l = false;

    public class a implements DownloadConfirmListener {
        public a() {
        }

        @Override // com.qq.e.comm.compliance.DownloadConfirmListener
        public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
            GDTATNativeAd gDTATNativeAd = GDTATNativeAd.this;
            View view = gDTATNativeAd.f9708j;
            gDTATNativeAd.f9708j = null;
            GDTDownloadFirmInfo gDTDownloadFirmInfo = new GDTDownloadFirmInfo();
            gDTDownloadFirmInfo.appInfoUrl = str;
            gDTDownloadFirmInfo.scenes = i2;
            gDTDownloadFirmInfo.confirmCallBack = downloadConfirmCallBack;
            GDTATNativeAd.this.notifyDownloadConfirm(activity, view, gDTDownloadFirmInfo);
        }
    }

    public class b extends NativeADEventListenerWithClickInfo {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ NativeUnifiedADData f9713a;

        public b(NativeUnifiedADData nativeUnifiedADData) {
            this.f9713a = nativeUnifiedADData;
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListenerWithClickInfo
        public void onADClicked(View view) {
            GDTATNativeAd.this.f9708j = view;
            Objects.toString(view);
            GDTATNativeAd.this.notifyAdClicked();
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListener
        public void onADError(AdError adError) {
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListener
        public void onADExposed() {
            GDTATInitManager.getInstance().a(GDTATNativeAd.this.getShowId(), new WeakReference(this.f9713a));
            GDTATNativeAd.this.notifyAdImpression();
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListener
        public void onADStatusChanged() {
            NativeUnifiedADData nativeUnifiedADData;
            String str;
            long j2;
            long downloadProgress;
            if (((com.anythink.nativead.unitgroup.a) GDTATNativeAd.this).mDownloadListener == null || (nativeUnifiedADData = GDTATNativeAd.this.f9701c) == null) {
                return;
            }
            int appStatus = nativeUnifiedADData.getAppStatus();
            NativeUnifiedADAppMiitInfo appMiitInfo = GDTATNativeAd.this.f9701c.getAppMiitInfo();
            if (!GDTATNativeAd.this.f9701c.isAppAd() || appMiitInfo == null) {
                str = "";
                j2 = 0;
                downloadProgress = 0;
            } else {
                String appName = appMiitInfo.getAppName();
                long packageSizeBytes = appMiitInfo.getPackageSizeBytes();
                str = appName;
                downloadProgress = (GDTATNativeAd.this.getDownloadProgress() * packageSizeBytes) / 100;
                j2 = packageSizeBytes;
            }
            if (appStatus == 1) {
                ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) GDTATNativeAd.this).mDownloadListener).onInstalled("", str);
                return;
            }
            if (appStatus == 4) {
                if (GDTATNativeAd.this.f9707i) {
                    ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) GDTATNativeAd.this).mDownloadListener).onDownloadUpdate(j2, downloadProgress, "", str);
                    return;
                } else {
                    ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) GDTATNativeAd.this).mDownloadListener).onDownloadStart(j2, downloadProgress, "", str);
                    GDTATNativeAd.this.f9707i = true;
                    return;
                }
            }
            if (appStatus == 8) {
                ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) GDTATNativeAd.this).mDownloadListener).onDownloadFinish(j2, "", str);
                GDTATNativeAd.this.f9707i = false;
            } else if (appStatus == 16) {
                ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) GDTATNativeAd.this).mDownloadListener).onDownloadFail(j2, downloadProgress, "", str);
                GDTATNativeAd.this.f9707i = false;
            } else if (appStatus == 32 && GDTATNativeAd.this.f9707i) {
                ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) GDTATNativeAd.this).mDownloadListener).onDownloadPause(j2, downloadProgress, "", str);
                GDTATNativeAd.this.f9707i = false;
            }
        }
    }

    public class c implements NativeADMediaListener {
        public c() {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoClicked() {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoCompleted() {
            GDTATNativeAd.this.notifyAdVideoEnd();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoError(AdError adError) {
            GDTATNativeAd.this.notifyAdVideoVideoPlayFail("" + adError.getErrorCode(), adError.getErrorMsg());
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoInit() {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoLoaded(int i2) {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoLoading() {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoPause() {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoReady() {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoResume() {
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoStart() {
            GDTATNativeAd.this.notifyAdVideoStart();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoStop() {
        }
    }

    public GDTATNativeAd(Context context, NativeUnifiedADData nativeUnifiedADData, int i2, int i3, int i4, boolean z2) {
        this.f9706h = false;
        this.f9700b = context.getApplicationContext();
        this.f9699a = new WeakReference<>(context);
        this.f9702d = i2;
        this.f9703e = i3;
        this.f9704f = i4;
        this.f9701c = nativeUnifiedADData;
        a(nativeUnifiedADData);
        this.f9706h = z2;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        a(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        super.destroy();
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.setNativeAdEventListener(null);
            this.f9701c.destroy();
            this.f9701c = null;
        }
        this.f9709k = null;
        this.f9700b = null;
        WeakReference<Context> weakReference = this.f9699a;
        if (weakReference != null) {
            weakReference.clear();
            this.f9699a = null;
        }
        NativeAdContainer nativeAdContainer = this.f9711m;
        if (nativeAdContainer != null) {
            nativeAdContainer.removeAllViews();
            this.f9711m = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData == null) {
            return super.getAdMediaView(objArr);
        }
        if (nativeUnifiedADData.getAdPatternType() != 2) {
            return super.getAdMediaView(objArr);
        }
        if (this.f9709k == null) {
            MediaView mediaView = new MediaView(this.f9700b);
            this.f9709k = mediaView;
            mediaView.setBackgroundColor(-16777216);
            ViewGroup.LayoutParams layoutParams = this.f9709k.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -2);
            }
            this.f9709k.setLayoutParams(layoutParams);
        }
        return this.f9709k;
    }

    public String getCallToAction(NativeUnifiedADData nativeUnifiedADData) {
        if (!TextUtils.isEmpty(nativeUnifiedADData.getCTAText())) {
            return nativeUnifiedADData.getCTAText();
        }
        boolean zIsAppAd = nativeUnifiedADData.isAppAd();
        int appStatus = nativeUnifiedADData.getAppStatus();
        return !zIsAppAd ? "浏览" : appStatus != 0 ? appStatus != 1 ? appStatus != 2 ? appStatus != 4 ? appStatus != 8 ? appStatus != 16 ? "浏览" : "下载" : "安装" : "下载" : "更新" : "启动" : "下载";
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        if (this.f9701c != null) {
            this.f9711m = new NativeAdContainer(this.f9700b);
        }
        return this.f9711m;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadProgress() {
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData != null) {
            return nativeUnifiedADData.getProgress();
        }
        return 0;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadStatus() {
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData == null) {
            return 0;
        }
        int appStatus = nativeUnifiedADData.getAppStatus();
        if (appStatus == 0) {
            return 1;
        }
        if (appStatus == 1) {
            return 2;
        }
        if (appStatus == 2) {
            return 3;
        }
        if (appStatus == 4) {
            return 4;
        }
        if (appStatus == 8) {
            return 5;
        }
        if (appStatus == 16) {
            return 6;
        }
        if (appStatus != 32) {
            return appStatus != 64 ? 0 : 8;
        }
        return 7;
    }

    @Override // com.anythink.nativead.unitgroup.a
    public Object getObject() {
        return this.f9701c;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public double getVideoProgress() {
        return this.f9701c != null ? r0.getVideoCurrentPosition() / 1000.0d : super.getVideoProgress();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return false;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void onResume() {
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.resume();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void pauseVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.pauseVideo();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        List<View> creativeClickViewList;
        if (this.f9701c == null || this.f9711m == null) {
            return;
        }
        List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
        if (clickViewList == null || clickViewList.size() == 0) {
            clickViewList = new ArrayList<>();
            a(view, clickViewList);
        }
        List<View> list = clickViewList;
        FrameLayout.LayoutParams choiceViewLayoutParams = aTNativePrepareInfo.getChoiceViewLayoutParams();
        ArrayList arrayList = new ArrayList();
        if ((aTNativePrepareInfo instanceof ATNativePrepareExInfo) && (creativeClickViewList = ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList()) != null) {
            arrayList.addAll(creativeClickViewList);
        }
        this.f9701c.bindAdToView(view.getContext(), this.f9711m, choiceViewLayoutParams, list, arrayList);
        try {
            if (this.f9709k == null) {
                return;
            }
            int i2 = this.f9705g;
            boolean zIsPlayMute = i2 > 0 ? i2 == 1 : GDTATInitManager.getInstance().isPlayMute(this.f9702d);
            VideoOption.Builder autoPlayPolicy = new VideoOption.Builder().setAutoPlayMuted(zIsPlayMute).setDetailPageMuted(zIsPlayMute).setAutoPlayPolicy(this.f9703e);
            if (this.f9706h) {
                autoPlayPolicy.setEnableUserControl(true);
            }
            this.f9701c.bindMediaView(this.f9709k, autoPlayPolicy.build(), new c());
            this.f9701c.setVideoMute(zIsPlayMute);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd
    public void registerDownloadConfirmListener() {
        this.f9701c.setDownloadConfirmListener(new a());
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void resumeVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.resumeVideo();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void setVideoMute(boolean z2) {
        this.f9705g = z2 ? 1 : 2;
        NativeUnifiedADData nativeUnifiedADData = this.f9701c;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.setVideoMute(z2);
        }
    }

    private void a(NativeUnifiedADData nativeUnifiedADData) {
        String strValueOf;
        setTitle(nativeUnifiedADData.getTitle());
        setDescriptionText(nativeUnifiedADData.getDesc());
        setIconImageUrl(nativeUnifiedADData.getIconUrl());
        setStarRating(Double.valueOf(nativeUnifiedADData.getAppScore()));
        setAppPrice(nativeUnifiedADData.getAppPrice());
        setCallToActionText(getCallToAction(nativeUnifiedADData));
        setMainImageUrl(nativeUnifiedADData.getImgUrl());
        setMainImageWidth(nativeUnifiedADData.getPictureWidth());
        setMainImageHeight(nativeUnifiedADData.getPictureHeight());
        setImageUrlList(nativeUnifiedADData.getImgList());
        setVideoDuration(nativeUnifiedADData.getVideoDuration() / 1000.0d);
        setNativeInteractionType(nativeUnifiedADData.isAppAd() ? 1 : 0);
        NativeUnifiedADAppMiitInfo appMiitInfo = nativeUnifiedADData.getAppMiitInfo();
        if (nativeUnifiedADData.isAppAd() && appMiitInfo != null) {
            try {
                strValueOf = String.valueOf(nativeUnifiedADData.getDownloadCount());
            } catch (Exception unused) {
                strValueOf = "";
            }
            setAdAppInfo(new GDTATDownloadAppInfo(appMiitInfo, strValueOf));
        }
        if (nativeUnifiedADData.getAdPatternType() == 2) {
            this.mAdSourceType = "1";
        } else {
            this.mAdSourceType = "2";
        }
        nativeUnifiedADData.setNativeAdEventListener(new b(nativeUnifiedADData));
        setNetworkInfoMap(GDTATInitManager.getInstance().a(nativeUnifiedADData.getExtraInfo(), (Map<String, Object>) null));
    }

    private void a(View view, List<View> list) {
        if ((view instanceof ViewGroup) && view != this.f9709k) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2), list);
            }
            return;
        }
        list.add(view);
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        if ((view instanceof ViewGroup) && view != this.f9709k) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2));
            }
            return;
        }
        view.setOnClickListener(null);
        view.setClickable(false);
    }
}
