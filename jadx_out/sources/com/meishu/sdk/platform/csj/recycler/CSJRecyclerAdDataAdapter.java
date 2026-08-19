package com.meishu.sdk.platform.csj.recycler;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.recycler.DownloadStatusListener;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.ad.recycler.d;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.platform.ms.recycler.MsCustomVideo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class CSJRecyclerAdDataAdapter extends a implements RecyclerAdData {
    private final String TAG;
    private com.meishu.sdk.core.ad.recycler.a adListener;
    private CSJTTAdNativeWrapper adWrapper;
    private volatile boolean hasExposed;
    private TTFeedAd ttFeedAd;

    public CSJRecyclerAdDataAdapter(CSJTTAdNativeWrapper cSJTTAdNativeWrapper, TTFeedAd tTFeedAd) {
        super(cSJTTAdNativeWrapper, "CSJ");
        this.TAG = "CSJRecyclerAdDataAdapter";
        this.adWrapper = cSJTTAdNativeWrapper;
        this.adListener = cSJTTAdNativeWrapper.getAdListener();
        this.ttFeedAd = tTFeedAd;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, RecylcerAdInteractionListener recylcerAdInteractionListener) {
        try {
            CSJTTAdNativeWrapper cSJTTAdNativeWrapper = this.adWrapper;
            if (cSJTTAdNativeWrapper != null && cSJTTAdNativeWrapper.getSdkAdInfo() != null) {
                p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
            }
            ViewGroup[] viewGroupArrA = d.a(viewGroup, getClass(), TouchAdContainer.class);
            ViewGroup viewGroup2 = viewGroupArrA[1];
            if (viewGroup2 == null) {
                viewGroup2 = viewGroupArrA[0];
                ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
                if (viewGroup3 != null) {
                    int iIndexOfChild = viewGroup3.indexOfChild(viewGroup2);
                    ViewGroup.LayoutParams layoutParams = viewGroup2.getLayoutParams();
                    ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
                    viewGroup3.removeView(viewGroup2);
                    TouchAdContainer touchAdContainer = new TouchAdContainer(viewGroup2.getContext());
                    touchAdContainer.setTouchPositionListener(new TouchPositionListener(this));
                    touchAdContainer.addView(viewGroup2, layoutParams2);
                    touchAdContainer.setId(viewGroup2.getId());
                    if (AdSdk.adConfig().showFeedAdLogo()) {
                        try {
                            ImageView imageView = new ImageView(viewGroup2.getContext());
                            imageView.setAdjustViewBounds(true);
                            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, (int) ((viewGroup2.getContext().getResources().getDisplayMetrics().density * 14.0f) + 0.5f));
                            layoutParams3.gravity = 85;
                            imageView.setImageBitmap(this.ttFeedAd.getAdLogo());
                            touchAdContainer.addView(imageView, layoutParams3);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                    CSJTTAdNativeWrapper cSJTTAdNativeWrapper2 = this.adWrapper;
                    if (cSJTTAdNativeWrapper2 != null) {
                        p1.a(touchAdContainer, cSJTTAdNativeWrapper2.getAdLoader().getPosId(), this.adWrapper.getSdkAdInfo().getMsLoadedTime());
                    }
                    viewGroup3.addView(touchAdContainer, iIndexOfChild, layoutParams);
                    viewGroup2 = touchAdContainer;
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(viewGroup2);
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd != null) {
                tTFeedAd.registerViewForInteraction(viewGroup2, arrayList, list, new CSJAdInteractionListenerAdapter(this, recylcerAdInteractionListener, this.adWrapper));
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, final RecyclerAdMediaListener recyclerAdMediaListener) {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd != null) {
                tTFeedAd.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.meishu.sdk.platform.csj.recycler.CSJRecyclerAdDataAdapter.1
                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onProgressUpdate(long j2, long j3) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onProgressUpdate(j2, j3);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdComplete(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoCompleted();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdContinuePlay(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoResume();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdPaused(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoPause();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdStartPlay(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoStart();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoError(int i2, int i3) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoError();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoLoad(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoLoaded();
                        }
                    }
                });
                this.ttFeedAd.setVideoAdListener(new CSJVideoAdListenerImpl(recyclerAdMediaListener));
                viewGroup.removeAllViews();
                View adView = this.ttFeedAd.getAdView();
                if (adView != null && adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) adView.getParent()).removeView(adView);
                }
                viewGroup.addView(adView);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void destroy() {
        TTFeedAd tTFeedAd = this.ttFeedAd;
        if (tTFeedAd != null) {
            tTFeedAd.destroy();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getActionText() {
        return null;
    }

    public com.meishu.sdk.core.ad.recycler.a getAdListener() {
        return this.adListener;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getAdPatternType() {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd != null) {
                int imageMode = tTFeedAd.getImageMode();
                if (imageMode != 15) {
                    if (imageMode == 2) {
                        return 11;
                    }
                    if (imageMode == 3) {
                        return 12;
                    }
                    if (imageMode == 4) {
                        return 13;
                    }
                    if (imageMode != 5) {
                    }
                }
                return 2;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return 12;
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public View getAdView() {
        return null;
    }

    public CSJTTAdNativeWrapper getAdWrapper() {
        return this.adWrapper;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntro() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntroUrl() {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd == null || tTFeedAd.getComplianceInfo() == null) {
                return null;
            }
            return this.ttFeedAd.getComplianceInfo().getFunctionDescUrl();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
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
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd == null || tTFeedAd.getComplianceInfo() == null) {
                return null;
            }
            return this.ttFeedAd.getComplianceInfo().getPermissionUrl();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd == null || tTFeedAd.getComplianceInfo() == null) {
                return null;
            }
            return this.ttFeedAd.getComplianceInfo().getAppVersion();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getContent() {
        TTFeedAd tTFeedAd = this.ttFeedAd;
        return tTFeedAd != null ? tTFeedAd.getDescription() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public MsCustomVideo getCustomVideo() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDesc() {
        TTFeedAd tTFeedAd = this.ttFeedAd;
        return tTFeedAd != null ? tTFeedAd.getDescription() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDeveloper() {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd == null || tTFeedAd.getComplianceInfo() == null) {
                return null;
            }
            return this.ttFeedAd.getComplianceInfo().getDeveloperName();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public long getDuration() {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd != null) {
                return (long) tTFeedAd.getVideoDuration();
            }
            return 0L;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFrom() {
        return null;
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
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            return tTFeedAd != null ? tTFeedAd.getIcon().getImageUrl() : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String[] getImgUrls() {
        List<TTImage> imageList;
        String[] strArr = null;
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd != null && (imageList = tTFeedAd.getImageList()) != null) {
                strArr = new String[imageList.size()];
                Iterator<TTImage> it = imageList.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    int i3 = i2 + 1;
                    strArr[i2] = it.next().getImageUrl();
                    i2 = i3;
                }
            }
            return strArr;
        } catch (Throwable th) {
            th.printStackTrace();
            return strArr;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getInteractionType() {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd != null) {
                int interactionType = tTFeedAd.getInteractionType();
                if (interactionType != 2 && interactionType != 3 && interactionType == 4) {
                    return 1;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
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
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return "CSJ";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd == null || tTFeedAd.getComplianceInfo() == null) {
                return null;
            }
            return this.ttFeedAd.getComplianceInfo().getPrivacyUrl();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getTitle() {
        TTFeedAd tTFeedAd = this.ttFeedAd;
        return tTFeedAd != null ? tTFeedAd.getTitle() : "";
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

    public boolean isHasExposed() {
        return this.hasExposed;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public boolean isNativeExpress() {
        try {
            CSJTTAdNativeWrapper cSJTTAdNativeWrapper = this.adWrapper;
            if (cSJTTAdNativeWrapper != null) {
                int adPatternType = cSJTTAdNativeWrapper.getAdLoader().getAdPatternType();
                return adPatternType == 200000 ? 2 == this.adWrapper.getSdkAdInfo().getDrawing() : adPatternType == 100000;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
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

    public void setHasExposed(boolean z2) {
        this.hasExposed = z2;
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
    public void bindMediaView(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, int i2, int i3, final RecyclerAdMediaListener recyclerAdMediaListener) {
        try {
            TTFeedAd tTFeedAd = this.ttFeedAd;
            if (tTFeedAd != null) {
                tTFeedAd.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.meishu.sdk.platform.csj.recycler.CSJRecyclerAdDataAdapter.2
                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onProgressUpdate(long j2, long j3) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onProgressUpdate(j2, j3);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdComplete(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoCompleted();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdContinuePlay(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoResume();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdPaused(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoPause();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoAdStartPlay(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoStart();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoError(int i4, int i5) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoError();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                    public void onVideoLoad(TTFeedAd tTFeedAd2) {
                        RecyclerAdMediaListener recyclerAdMediaListener2 = recyclerAdMediaListener;
                        if (recyclerAdMediaListener2 != null) {
                            recyclerAdMediaListener2.onVideoLoaded();
                        }
                    }
                });
                this.ttFeedAd.setVideoAdListener(new CSJVideoAdListenerImpl(recyclerAdMediaListener));
                viewGroup.removeAllViews();
                View adView = this.ttFeedAd.getAdView();
                if (adView != null && adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) adView.getParent()).removeView(adView);
                }
                if (layoutParams != null) {
                    viewGroup.addView(adView, layoutParams);
                } else {
                    viewGroup.addView(adView);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
