package com.anythink.network.ks;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATCompViewListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.api.KsImage;
import com.kwad.sdk.api.KsNativeAd;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATNativeAd extends CustomNativeAd {

    /* renamed from: k, reason: collision with root package name */
    private static final String f9880k = "KSATNativeAd";

    /* renamed from: a, reason: collision with root package name */
    Context f9881a;

    /* renamed from: b, reason: collision with root package name */
    KsNativeAd f9882b;

    /* renamed from: c, reason: collision with root package name */
    View f9883c;

    /* renamed from: e, reason: collision with root package name */
    FrameLayout f9885e;

    /* renamed from: f, reason: collision with root package name */
    boolean f9886f;

    /* renamed from: h, reason: collision with root package name */
    int f9888h;

    /* renamed from: i, reason: collision with root package name */
    int f9889i;

    /* renamed from: d, reason: collision with root package name */
    long f9884d = 0;

    /* renamed from: g, reason: collision with root package name */
    int f9887g = 0;

    /* renamed from: j, reason: collision with root package name */
    long f9890j = 0;

    public class a implements KsNativeAd.AdInteractionListener {
        public a() {
        }

        @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
        public boolean handleDownloadDialog(DialogInterface.OnClickListener onClickListener) {
            return false;
        }

        @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
        public void onAdClicked(View view, KsNativeAd ksNativeAd) {
            KSATNativeAd.this.notifyAdClicked();
        }

        @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
        public void onAdShow(KsNativeAd ksNativeAd) {
            KSATInitManager.getInstance().a(KSATNativeAd.this.getShowId(), new WeakReference(ksNativeAd));
            KSATNativeAd.this.notifyAdImpression();
        }

        @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
        public void onDownloadTipsDialogDismiss() {
        }

        @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
        public void onDownloadTipsDialogShow() {
        }
    }

    public class b implements KsAppDownloadListener {
        public b() {
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onDownloadFailed() {
            if (((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            CustomAdapterDownloadListener customAdapterDownloadListener = (CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener;
            KSATNativeAd kSATNativeAd = KSATNativeAd.this;
            customAdapterDownloadListener.onDownloadFail(kSATNativeAd.f9884d, kSATNativeAd.f9890j, "", kSATNativeAd.getTitle());
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onDownloadFinished() {
            if (((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            CustomAdapterDownloadListener customAdapterDownloadListener = (CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener;
            KSATNativeAd kSATNativeAd = KSATNativeAd.this;
            customAdapterDownloadListener.onDownloadFinish(kSATNativeAd.f9884d, "", kSATNativeAd.getTitle());
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onDownloadStarted() {
            if (((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            CustomAdapterDownloadListener customAdapterDownloadListener = (CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener;
            KSATNativeAd kSATNativeAd = KSATNativeAd.this;
            customAdapterDownloadListener.onDownloadStart(kSATNativeAd.f9884d, 0L, "", kSATNativeAd.getTitle());
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onIdle() {
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onInstalled() {
            if (((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener).onInstalled("", KSATNativeAd.this.getTitle());
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onProgressUpdate(int i2) {
            if (((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener == null || !(((com.anythink.nativead.unitgroup.a) KSATNativeAd.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            KSATNativeAd kSATNativeAd = KSATNativeAd.this;
            kSATNativeAd.f9890j = (kSATNativeAd.f9884d * i2) / 100;
            CustomAdapterDownloadListener customAdapterDownloadListener = (CustomAdapterDownloadListener) ((com.anythink.nativead.unitgroup.a) kSATNativeAd).mDownloadListener;
            KSATNativeAd kSATNativeAd2 = KSATNativeAd.this;
            customAdapterDownloadListener.onDownloadUpdate(kSATNativeAd2.f9884d, kSATNativeAd2.f9890j, "", kSATNativeAd2.getTitle());
        }
    }

    public class c implements KsNativeAd.VideoPlayListener {
        public c() {
        }

        @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
        public void onVideoPlayComplete() {
            KSATNativeAd.this.notifyAdVideoEnd();
        }

        @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
        public void onVideoPlayError(int i2, int i3) {
            KSATNativeAd.this.notifyAdVideoVideoPlayFail("" + i2, "" + i3);
        }

        @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
        public void onVideoPlayPause() {
        }

        @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
        public void onVideoPlayReady() {
        }

        @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
        public void onVideoPlayResume() {
        }

        @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
        public void onVideoPlayStart() {
            KSATNativeAd.this.notifyAdVideoStart();
        }
    }

    public KSATNativeAd(Context context, KsNativeAd ksNativeAd, boolean z2, Map<String, Object> map) {
        this.f9888h = 0;
        this.f9881a = context.getApplicationContext();
        this.f9882b = ksNativeAd;
        this.f9886f = z2;
        try {
            if (ATInitMediation.getIntFromMap(map, KSATConst.NATIVE_AD_SOURCE_LOGO_TYPE, 0) == 1) {
                this.f9888h = 1;
            }
        } catch (Throwable unused) {
        }
        this.f9889i = ATInitMediation.getIntFromMap(map, KSATConst.NATIVE_CONVERT_TYPE_KEY, 2);
        b();
        this.f9885e = new FrameLayout(context.getApplicationContext());
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        a(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        KsNativeAd ksNativeAd = this.f9882b;
        if (ksNativeAd != null) {
            ksNativeAd.setDownloadListener(null);
            try {
                this.f9882b.registerViewForInteraction(null, null, null);
            } catch (Exception unused) {
            }
        }
        this.f9881a = null;
        this.f9885e = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (a()) {
            return this.f9885e;
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.a
    public Object getObject() {
        return this.f9882b;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getRoateView(Map<String, Object> map, ATCompViewListener aTCompViewListener) {
        try {
            KsNativeAd ksNativeAd = this.f9882b;
            if (ksNativeAd == null || this.f9881a == null || !ksNativeAd.enableRotate()) {
                return null;
            }
            return this.f9882b.getRotateView(this.f9881a);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getShakeView(int i2, int i3, ATShakeViewListener aTShakeViewListener) {
        try {
            KsNativeAd ksNativeAd = this.f9882b;
            if (ksNativeAd == null || !ksNativeAd.enableRotate()) {
                return null;
            }
            return this.f9882b.getRotateView(this.f9881a);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
        if (clickViewList == null || clickViewList.isEmpty()) {
            clickViewList = new ArrayList<>();
            a(clickViewList, view);
        }
        a((ViewGroup) view, clickViewList);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void setVideoMute(boolean z2) {
        super.setVideoMute(z2);
        this.f9887g = z2 ? 1 : 2;
    }

    private void a(List<View> list, View view) {
        if (!(view instanceof ViewGroup) || view == this.f9883c) {
            if (view != this.f9883c) {
                list.add(view);
            }
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(list, viewGroup.getChildAt(i2));
            }
        }
    }

    private void b() {
        if (this.f9882b.getInteractionType() == 1) {
            setTitle(this.f9882b.getAppName());
        } else {
            setTitle(this.f9882b.getProductName());
        }
        setIconImageUrl(this.f9882b.getAppIconUrl());
        setAdFrom(this.f9882b.getAdSource());
        setStarRating(Double.valueOf(this.f9882b.getAppScore()));
        setDescriptionText(this.f9882b.getAdDescription());
        setAdChoiceIconUrl(this.f9882b.getAdSourceLogoUrl(this.f9888h));
        int i2 = this.f9882b.getInteractionType() == 1 ? 1 : 0;
        if (this.f9882b.getInteractionType() == 2) {
            i2 = 2;
        }
        setNetworkInfoMap(KSATInitManager.getInstance().a(this.f9882b.getMediaExtraInfo(), (Map<String, Object>) null));
        setNativeInteractionType(i2);
        ArrayList arrayList = new ArrayList();
        List<KsImage> imageList = this.f9882b.getImageList();
        if (imageList != null && imageList.size() > 0) {
            for (int i3 = 0; i3 < imageList.size(); i3++) {
                KsImage ksImage = imageList.get(i3);
                if (ksImage != null) {
                    arrayList.add(ksImage.getImageUrl());
                    if (i3 == 0) {
                        setMainImageUrl(ksImage.getImageUrl());
                        setMainImageWidth(ksImage.getWidth());
                        setMainImageHeight(ksImage.getHeight());
                    }
                }
            }
        }
        setImageUrlList(arrayList);
        setCallToActionText(this.f9882b.getActionDescription());
        setVideoDuration(this.f9882b.getVideoDuration());
        setVideoUrl(this.f9882b.getVideoUrl());
        setVideoWidth(this.f9882b.getVideoWidth());
        setVideoHeight(this.f9882b.getVideoHeight());
        this.f9884d = this.f9882b.getAppPackageSize();
        if (this.f9882b.getInteractionType() == 1) {
            setAdAppInfo(new KSATDownloadAppInfo(this.f9882b));
        }
        if (this.f9882b.getMaterialType() == 1) {
            this.mAdSourceType = "1";
            return;
        }
        if (this.f9882b.getMaterialType() == 8) {
            this.mAdSourceType = "3";
        } else if (this.f9882b.getMaterialType() == 3 || this.f9882b.getMaterialType() == 2 || this.f9882b.getMaterialType() == 5) {
            this.mAdSourceType = "2";
        }
    }

    private void a(ViewGroup viewGroup, List<View> list) {
        a aVar = new a();
        HashMap map = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                map.put(list.get(i2), Integer.valueOf(this.f9889i));
            }
        }
        this.f9882b.setDownloadListener(new b());
        this.f9882b.setVideoPlayListener(new c());
        if (a()) {
            KsAdVideoPlayConfig.Builder builder = new KsAdVideoPlayConfig.Builder();
            builder.videoSoundEnable(this.f9886f);
            int i3 = this.f9887g;
            if (i3 > 0) {
                builder.videoSoundEnable(i3 != 1);
            }
            View videoView = this.f9882b.getVideoView(viewGroup.getContext(), builder.build());
            this.f9883c = videoView;
            if (videoView != null) {
                map.put(videoView, Integer.valueOf(this.f9889i));
            }
        }
        if (viewGroup.getContext() instanceof Activity) {
            this.f9882b.registerViewForInteraction((Activity) viewGroup.getContext(), viewGroup, map, aVar);
        } else {
            this.f9882b.registerViewForInteraction(viewGroup, list, aVar);
        }
        View view = this.f9883c;
        if (view == null || this.f9885e == null || view.getParent() != null) {
            return;
        }
        this.f9885e.addView(this.f9883c);
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        if ((view instanceof ViewGroup) && view != this.f9883c) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2));
            }
            return;
        }
        view.setOnClickListener(null);
        view.setClickable(false);
    }

    private boolean a() {
        KsNativeAd ksNativeAd = this.f9882b;
        if (ksNativeAd != null) {
            return ksNativeAd.getMaterialType() == 1 || this.f9882b.getMaterialType() == 8;
        }
        return false;
    }
}
