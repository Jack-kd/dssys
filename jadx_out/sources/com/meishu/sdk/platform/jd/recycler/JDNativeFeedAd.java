package com.meishu.sdk.platform.jd.recycler;

import android.view.View;
import android.view.ViewGroup;
import com.jd.ad.sdk.dl.addata.JADMaterialData;
import com.jd.ad.sdk.nativead.JADNative;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.recycler.DownloadStatusListener;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.platform.ms.recycler.MsCustomVideo;
import com.octopus.ad.ADBidEvent;
import java.util.List;

/* loaded from: classes4.dex */
public class JDNativeFeedAd extends a implements RecyclerAdData {
    private static final String TAG = "JDNativeFeedAd";
    private JDFeedAdWrapper adWrapper;
    private JADMaterialData feedAd;
    private boolean hasExposed;
    private JADNative nativeAd;

    public JDNativeFeedAd(JDFeedAdWrapper jDFeedAdWrapper) {
        super(jDFeedAdWrapper, ADBidEvent.JINGDONG);
        this.hasExposed = false;
        this.adWrapper = jDFeedAdWrapper;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041 A[PHI: r0
      0x0041: PHI (r0v6 android.view.ViewGroup) = (r0v5 android.view.ViewGroup), (r0v8 android.view.ViewGroup) binds: [B:12:0x0034, B:14:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bindAdToView(android.content.Context r12, android.view.ViewGroup r13, java.util.List<android.view.View> r14, final com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener r15) {
        /*
            r11 = this;
            java.lang.Class<android.app.Activity> r0 = android.app.Activity.class
            boolean r0 = r0.isInstance(r12)
            if (r0 != 0) goto L10
            java.lang.String r12 = "JDNativeFeedAd"
            java.lang.String r13 = "jd native click need Activity"
            com.meishu.sdk.core.utils.LogUtil.e(r12, r13)
            return
        L10:
            com.meishu.sdk.platform.jd.recycler.JDFeedAdWrapper r0 = r11.adWrapper
            if (r0 == 0) goto L27
            com.meishu.sdk.core.domain.SdkAdInfo r0 = r0.getSdkAdInfo()
            if (r0 == 0) goto L27
            com.meishu.sdk.platform.jd.recycler.JDFeedAdWrapper r0 = r11.adWrapper
            com.meishu.sdk.core.domain.SdkAdInfo r0 = r0.getSdkAdInfo()
            java.lang.String[] r0 = r0.getEventUrl()
            com.meishu.sdk.core.utils.p1.b(r0)
        L27:
            java.lang.Class r0 = r11.getClass()
            java.lang.Class<com.meishu.sdk.core.view.TouchAdContainer> r1 = com.meishu.sdk.core.view.TouchAdContainer.class
            android.view.ViewGroup[] r13 = com.meishu.sdk.core.ad.recycler.d.a(r13, r0, r1)
            r0 = 1
            r0 = r13[r0]
            if (r0 != 0) goto L41
            r0 = 0
            r0 = r13[r0]
            android.view.ViewParent r13 = r0.getParent()
            android.view.ViewGroup r13 = (android.view.ViewGroup) r13
            if (r13 != 0) goto L43
        L41:
            r7 = r0
            goto L73
        L43:
            int r1 = r13.indexOfChild(r0)
            android.view.ViewGroup$LayoutParams r2 = r0.getLayoutParams()
            android.view.ViewGroup$LayoutParams r3 = new android.view.ViewGroup$LayoutParams
            r4 = -1
            r3.<init>(r4, r4)
            r13.removeView(r0)
            com.meishu.sdk.core.view.TouchAdContainer r4 = new com.meishu.sdk.core.view.TouchAdContainer
            android.content.Context r5 = r0.getContext()
            r4.<init>(r5)
            com.meishu.sdk.core.view.TouchPositionListener r5 = new com.meishu.sdk.core.view.TouchPositionListener
            r5.<init>(r11)
            r4.setTouchPositionListener(r5)
            r4.addView(r0, r3)
            int r0 = r0.getId()
            r4.setId(r0)
            r13.addView(r4, r1, r2)
            r7 = r4
        L73:
            com.jd.ad.sdk.nativead.JADNative r5 = r11.nativeAd
            if (r5 == 0) goto L84
            r6 = r12
            android.app.Activity r6 = (android.app.Activity) r6
            com.meishu.sdk.platform.jd.recycler.JDNativeFeedAd$1 r10 = new com.meishu.sdk.platform.jd.recycler.JDNativeFeedAd$1
            r10.<init>()
            r9 = 0
            r8 = r14
            r5.registerNativeView(r6, r7, r8, r9, r10)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.jd.recycler.JDNativeFeedAd.bindAdToView(android.content.Context, android.view.ViewGroup, java.util.List, com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener):void");
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, int i2, int i3, RecyclerAdMediaListener recyclerAdMediaListener) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void destroy() {
        JADNative jADNative = this.nativeAd;
        if (jADNative != null) {
            this.feedAd = null;
            jADNative.destroy();
            this.nativeAd = null;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getActionText() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getAdPatternType() {
        return (this.feedAd.getImageUrls() == null || 1 >= this.feedAd.getImageUrls().size()) ? 12 : 13;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntro() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntroUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppName() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public List<MeishuAdInfo.PermissionBean> getAppPermissionList() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppPremissionUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getContent() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public MsCustomVideo getCustomVideo() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDesc() {
        JADMaterialData jADMaterialData = this.feedAd;
        return jADMaterialData != null ? jADMaterialData.getDescription() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDeveloper() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public long getDuration() {
        return 0L;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFrom() {
        JADMaterialData jADMaterialData = this.feedAd;
        return jADMaterialData != null ? jADMaterialData.getResource() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFromId() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFromLogo() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getHeight() {
        return 0;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getIconTitle() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getIconUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String[] getImgUrls() {
        try {
            return (String[]) this.feedAd.getImageUrls().toArray(new String[this.feedAd.getImageUrls().size()]);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getInteractionType() {
        return 0;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public View getMediaView() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPackageName() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatFormEcpm() {
        JADNative jADNative = this.nativeAd;
        if (jADNative == null || jADNative.getJADExtra() == null) {
            return null;
        }
        return this.nativeAd.getJADExtra().getPrice() + "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return ADBidEvent.JINGDONG;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getTitle() {
        JADMaterialData jADMaterialData = this.feedAd;
        return jADMaterialData != null ? jADMaterialData.getTitle() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoCover() {
        return "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getWidth() {
        return 0;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public boolean isNativeExpress() {
        int adPatternType = this.adWrapper.getAdLoader().getAdPatternType();
        return adPatternType == 200000 ? 2 == this.adWrapper.getSdkAdInfo().getDrawing() : adPatternType == 100000;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void mute() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void pauseVideo() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void replay() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void resumeVideo() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setDownloadStatusListener(DownloadStatusListener downloadStatusListener) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setExpressMediaListener(ExpressMediaListener expressMediaListener) {
    }

    public void setFeedAd(JADMaterialData jADMaterialData, JADNative jADNative) {
        this.feedAd = jADMaterialData;
        this.nativeAd = jADNative;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void startVideo() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void stopVideo() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void unmute() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener) {
    }
}
