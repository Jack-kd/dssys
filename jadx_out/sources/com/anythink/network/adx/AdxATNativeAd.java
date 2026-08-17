package com.anythink.network.adx;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.SDMNativeAd;
import com.smartdigimkt.sdk.api.format.SDMNativeAdListener;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class AdxATNativeAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    SDMNativeAd f9233a;

    /* renamed from: b, reason: collision with root package name */
    Context f9234b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9235c;

    /* renamed from: d, reason: collision with root package name */
    View f9236d;

    /* renamed from: e, reason: collision with root package name */
    Object f9237e;

    /* renamed from: f, reason: collision with root package name */
    private WeakReference<AdxATAdapter> f9238f;

    public class a implements SDMNativeAdListener {
        public a() {
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onAdClick() {
            AdxATNativeAd.this.notifyAdClicked();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onAdClosed() {
            AdxATNativeAd.this.notifyAdDislikeClick();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onAdShow() {
            AdxATNativeAd.this.notifyAdImpression();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onDeeplinkCallback(boolean z2) {
            AdxATNativeAd.this.notifyDeeplinkCallback(z2);
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onShowFailed(AdError adError) {
        }
    }

    public class b implements SDMNativeAdMediaViewListener {
        public b() {
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
        public void onProgressUpdate(long j2, long j3) {
            if (AdxATNativeAd.this.getVideoDuration() == 0.0d) {
                AdxATNativeAd.this.setVideoDuration(j3 / 1000.0d);
            }
            AdxATNativeAd.this.notifyAdVideoPlayProgress((int) (j2 / 1000.0d));
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
        public void onVideoAdComplete() {
            AdxATNativeAd.this.notifyAdVideoEnd();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
        public void onVideoAdStartPlay(long j2) {
            AdxATNativeAd.this.setVideoDuration(j2 / 1000.0d);
            AdxATNativeAd.this.notifyAdVideoStart();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
        public void onVideoError(String str, String str2) {
            AdxATNativeAd.this.notifyAdVideoVideoPlayFail(str, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdxATNativeAd(android.content.Context r3, com.smartdigimkt.sdk.api.format.SDMNativeAd r4, com.anythink.network.adx.AdxATAdapter r5) {
        /*
            r2 = this;
            r2.<init>()
            android.content.Context r3 = r3.getApplicationContext()
            r2.f9234b = r3
            r2.f9233a = r4
            java.lang.ref.WeakReference r3 = new java.lang.ref.WeakReference
            r3.<init>(r5)
            r2.f9238f = r3
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            com.anythink.network.adx.AdxATNativeAd$a r5 = new com.anythink.network.adx.AdxATNativeAd$a
            r5.<init>()
            r3.setListener(r5)
            boolean r3 = r4.isTemplateAd()
            r2.f9235c = r3
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            int r3 = r3.getAdType()
            r4 = 2
            r5 = 1
            if (r3 != r5) goto L31
            java.lang.String r3 = "1"
            r2.mAdSourceType = r3
            goto L37
        L31:
            if (r3 != r4) goto L37
            java.lang.String r3 = "2"
            r2.mAdSourceType = r3
        L37:
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            boolean r3 = r3.isTemplateAd()
            if (r3 == 0) goto L40
            return
        L40:
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            java.lang.String r3 = r3.getAdChoiceIconUrl()
            r2.setAdChoiceIconUrl(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            java.lang.String r3 = r3.getTitle()
            r2.setTitle(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            java.lang.String r3 = r3.getDescription()
            r2.setDescriptionText(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            java.lang.String r3 = r3.getIcon()
            r2.setIconImageUrl(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            java.lang.String r3 = r3.getMainImageUrl()
            r2.setMainImageUrl(r3)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            boolean r1 = android.text.TextUtils.isEmpty(r3)
            if (r1 != 0) goto L7b
            r0.add(r3)
        L7b:
            r2.setImageUrlList(r0)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            java.lang.String r3 = r3.getCallToAction()
            r2.setCallToActionText(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            boolean r3 = r3.isDownloadApp()
            if (r3 == 0) goto L99
            com.anythink.network.adx.AdxAppInfo r3 = new com.anythink.network.adx.AdxAppInfo
            com.smartdigimkt.sdk.api.format.SDMNativeAd r0 = r2.f9233a
            r3.<init>(r0)
            r2.setAdAppInfo(r3)
        L99:
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            int r3 = r3.getInteractionType()
            if (r3 == r5) goto Lb8
            if (r3 == r4) goto Lb4
            r0 = 3
            if (r3 == r0) goto Lb4
            r4 = 4
            if (r3 == r4) goto Lb8
            r4 = 6
            if (r3 == r4) goto Lb0
            r4 = 7
            if (r3 == r4) goto Lb0
            goto Lbb
        Lb0:
            r2.setNativeInteractionType(r0)
            goto Lbb
        Lb4:
            r2.setNativeInteractionType(r4)
            goto Lbb
        Lb8:
            r2.setNativeInteractionType(r5)
        Lbb:
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            int r3 = r3.getAdImageWidth()
            r2.setMainImageWidth(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            int r3 = r3.getAdImageHeight()
            r2.setMainImageHeight(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            int r3 = r3.getAdVideoWidth()
            r2.setVideoWidth(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            int r3 = r3.getAdVideoHeight()
            r2.setVideoHeight(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f9233a
            long r3 = r3.getVideoDuration()
            double r3 = (double) r3
            r0 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r3 = r3 / r0
            r2.setVideoDuration(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.adx.AdxATNativeAd.<init>(android.content.Context, com.smartdigimkt.sdk.api.format.SDMNativeAd, com.anythink.network.adx.AdxATAdapter):void");
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        SDMNativeAd sDMNativeAd = this.f9233a;
        if (sDMNativeAd != null) {
            sDMNativeAd.unregisterView();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        AdxATAdapter adxATAdapter;
        WeakReference<AdxATAdapter> weakReference = this.f9238f;
        if (weakReference != null && (adxATAdapter = weakReference.get()) != null) {
            adxATAdapter.destory();
            this.f9238f.clear();
        }
        SDMNativeAd sDMNativeAd = this.f9233a;
        if (sDMNativeAd != null) {
            sDMNativeAd.setListener(null);
            this.f9233a.destroy();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (this.f9236d == null) {
            this.f9236d = this.f9233a.getMediaView(this.f9234b, new b());
        }
        return this.f9236d;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        return this.f9233a.getCustomAdContainer();
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadStatus() {
        int downloadStatus;
        SDMNativeAd sDMNativeAd = this.f9233a;
        if (sDMNativeAd == null || (downloadStatus = sDMNativeAd.getDownloadStatus()) < 0) {
            return 0;
        }
        return downloadStatus;
    }

    @Override // com.anythink.nativead.unitgroup.a
    public Object getObject() {
        return this.f9237e;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getShakeView(int i2, int i3, ATShakeViewListener aTShakeViewListener) {
        return this.f9233a.generateShakeViewContainer();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public double getVideoProgress() {
        return this.f9233a != null ? r0.getVideoCurrentPosition() / 1000.0d : super.getVideoProgress();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return this.f9233a.isTemplateAd();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void onPause() {
        SDMNativeAd sDMNativeAd = this.f9233a;
        if (sDMNativeAd != null) {
            sDMNativeAd.onPause();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void onResume() {
        SDMNativeAd sDMNativeAd = this.f9233a;
        if (sDMNativeAd != null) {
            sDMNativeAd.onResume();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void pauseVideo() {
        this.f9233a.pauseVideo();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        SDMNativeAd sDMNativeAd = this.f9233a;
        if (sDMNativeAd != null) {
            sDMNativeAd.onResume();
        }
        if (this.f9233a != null) {
            this.f9233a.registerAdView(view, aTNativePrepareInfo.getClickViewList(), aTNativePrepareInfo instanceof ATNativePrepareExInfo ? ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList() : null, aTNativePrepareInfo.getChoiceViewLayoutParams(), aTNativePrepareInfo.getCloseView());
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void resumeVideo() {
        this.f9233a.resumeVideo();
    }

    public void setAdObject(Object obj) {
        this.f9237e = obj;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void setVideoMute(boolean z2) {
        super.setVideoMute(z2);
        SDMNativeAd sDMNativeAd = this.f9233a;
        if (sDMNativeAd != null) {
            sDMNativeAd.setMute(z2);
        }
    }
}
