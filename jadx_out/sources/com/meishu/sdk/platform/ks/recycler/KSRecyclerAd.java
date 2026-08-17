package com.meishu.sdk.platform.ks.recycler;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsNativeAd;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.recycler.DownloadStatusListener;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.ad.recycler.d;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.platform.ms.recycler.MsCustomVideo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class KSRecyclerAd extends a implements RecyclerAdData {
    private static final String TAG = "KSRecyclerAd";
    private KSRecyclerAdWrapper adWrapper;
    private KsNativeAd ksNativeAd;
    private RecyclerAdMediaListener nativeRecyclerAdMediaListener;
    private boolean showed;
    private View videoView;

    public KSRecyclerAd(KsNativeAd ksNativeAd, KSRecyclerAdWrapper kSRecyclerAdWrapper) {
        super(kSRecyclerAdWrapper, "KS");
        this.showed = false;
        this.ksNativeAd = ksNativeAd;
        this.adWrapper = kSRecyclerAdWrapper;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, final RecylcerAdInteractionListener recylcerAdInteractionListener) {
        try {
            try {
                list = new ArrayList(list);
            } catch (Exception unused) {
            }
            KSRecyclerAdWrapper kSRecyclerAdWrapper = this.adWrapper;
            if (kSRecyclerAdWrapper != null && kSRecyclerAdWrapper.getSdkAdInfo() != null) {
                p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
            }
            ViewGroup[] viewGroupArrA = d.a(viewGroup, getClass(), TouchAdContainer.class);
            ViewGroup viewGroup2 = viewGroupArrA[1];
            if (viewGroup2 == null) {
                ViewGroup viewGroup3 = viewGroupArrA[0];
                ViewGroup viewGroup4 = (ViewGroup) viewGroup3.getParent();
                if (viewGroup4 == null) {
                    viewGroup2 = viewGroup3;
                } else {
                    int iIndexOfChild = viewGroup4.indexOfChild(viewGroup3);
                    ViewGroup.LayoutParams layoutParams = viewGroup3.getLayoutParams();
                    ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
                    viewGroup4.removeView(viewGroup3);
                    TouchAdContainer touchAdContainer = new TouchAdContainer(viewGroup3.getContext());
                    touchAdContainer.setTouchPositionListener(new TouchPositionListener(this));
                    touchAdContainer.addView(viewGroup3, layoutParams2);
                    touchAdContainer.setId(viewGroup3.getId());
                    viewGroup4.addView(touchAdContainer, iIndexOfChild, layoutParams);
                    viewGroup2 = touchAdContainer;
                }
                KSRecyclerAdWrapper kSRecyclerAdWrapper2 = this.adWrapper;
                if (kSRecyclerAdWrapper2 != null) {
                    p1.a(viewGroup2, kSRecyclerAdWrapper2.getAdLoader().getPosId(), this.adWrapper.getSdkAdInfo().getMsLoadedTime());
                }
            }
            if (this.ksNativeAd != null) {
                try {
                    if (getAdPatternType() == 2) {
                        this.ksNativeAd.setVideoPlayListener(new KsNativeAd.VideoPlayListener() { // from class: com.meishu.sdk.platform.ks.recycler.KSRecyclerAd.1
                            @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                            public void onVideoPlayComplete() {
                                KSRecyclerAd.this.ksNativeAd.reportAdVideoPlayEnd();
                                if (KSRecyclerAd.this.nativeRecyclerAdMediaListener != null) {
                                    KSRecyclerAd.this.nativeRecyclerAdMediaListener.onVideoCompleted();
                                }
                            }

                            @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                            public void onVideoPlayError(int i2, int i3) {
                                LogUtil.e(KSRecyclerAd.TAG, "onVideoPlayError " + i2 + " " + i3);
                                if (KSRecyclerAd.this.nativeRecyclerAdMediaListener != null) {
                                    KSRecyclerAd.this.nativeRecyclerAdMediaListener.onVideoError();
                                }
                            }

                            @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                            public void onVideoPlayPause() {
                                if (KSRecyclerAd.this.nativeRecyclerAdMediaListener != null) {
                                    KSRecyclerAd.this.nativeRecyclerAdMediaListener.onVideoPause();
                                }
                            }

                            @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                            public void onVideoPlayReady() {
                                if (KSRecyclerAd.this.nativeRecyclerAdMediaListener != null) {
                                    KSRecyclerAd.this.nativeRecyclerAdMediaListener.onVideoLoaded();
                                }
                            }

                            @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                            public void onVideoPlayResume() {
                                if (KSRecyclerAd.this.nativeRecyclerAdMediaListener != null) {
                                    KSRecyclerAd.this.nativeRecyclerAdMediaListener.onVideoResume();
                                }
                            }

                            @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                            public void onVideoPlayStart() {
                                KSRecyclerAd.this.ksNativeAd.reportAdVideoPlayStart();
                                if (KSRecyclerAd.this.nativeRecyclerAdMediaListener != null) {
                                    KSRecyclerAd.this.nativeRecyclerAdMediaListener.onVideoStart();
                                }
                            }
                        });
                        View videoView = this.ksNativeAd.getVideoView(context, new KsAdVideoPlayConfig.Builder().videoSoundEnable(false).build());
                        this.videoView = videoView;
                        if (videoView != null) {
                            list.add(videoView);
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                this.ksNativeAd.registerViewForInteraction(viewGroup2, list, new KsNativeAd.AdInteractionListener() { // from class: com.meishu.sdk.platform.ks.recycler.KSRecyclerAd.2
                    @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                    public boolean handleDownloadDialog(DialogInterface.OnClickListener onClickListener) {
                        return false;
                    }

                    @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                    public void onAdClicked(View view, KsNativeAd ksNativeAd) {
                        LogUtil.d(KSRecyclerAd.TAG, "send onAdClicked");
                        if (KSRecyclerAd.this.adWrapper != null && KSRecyclerAd.this.adWrapper.getSdkAdInfo() != null) {
                            com.meishu.sdk.core.loader.a.a(KSRecyclerAd.this.adWrapper.getContext(), f.a(KSRecyclerAd.this.adWrapper.getSdkAdInfo().getClk(), KSRecyclerAd.this));
                            KSRecyclerAd.this.adWrapper.getSdkAdInfo().getMsLoadedTime();
                            KSRecyclerAd.this.adWrapper.getAdLoader().getPosId();
                        }
                        RecylcerAdInteractionListener recylcerAdInteractionListener2 = recylcerAdInteractionListener;
                        if (recylcerAdInteractionListener2 != null) {
                            recylcerAdInteractionListener2.onAdClicked();
                        }
                    }

                    @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                    public void onAdShow(KsNativeAd ksNativeAd) {
                        if (KSRecyclerAd.this.showed) {
                            return;
                        }
                        if (KSRecyclerAd.this.adWrapper != null && KSRecyclerAd.this.adWrapper.getLoaderListener() != null) {
                            KSRecyclerAd.this.adWrapper.getLoaderListener().onAdExposure();
                        }
                        RecylcerAdInteractionListener recylcerAdInteractionListener2 = recylcerAdInteractionListener;
                        if (recylcerAdInteractionListener2 != null) {
                            recylcerAdInteractionListener2.onAdExposure();
                        }
                        KSRecyclerAd.this.showed = true;
                    }

                    @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                    public void onDownloadTipsDialogDismiss() {
                    }

                    @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                    public void onDownloadTipsDialogShow() {
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener) {
        int iIntValue;
        try {
            if (this.ksNativeAd == null) {
                return;
            }
            this.nativeRecyclerAdMediaListener = recyclerAdMediaListener;
            if (this.videoView != null) {
                viewGroup.removeAllViews();
                float f2 = viewGroup.getResources().getDisplayMetrics().density;
                int i2 = viewGroup.getLayoutParams().height;
                KSRecyclerAdWrapper kSRecyclerAdWrapper = this.adWrapper;
                if (kSRecyclerAdWrapper != null) {
                    if (kSRecyclerAdWrapper.getAdLoader().getAccept_ad_height().intValue() != 0) {
                        iIntValue = this.adWrapper.getAdLoader().getAccept_ad_height().intValue();
                    } else if (viewGroup.getLayoutParams().height != -2) {
                        iIntValue = viewGroup.getLayoutParams().height;
                    } else {
                        i2 = (int) (f2 * 200.0f);
                    }
                    i2 = iIntValue;
                }
                viewGroup.addView(this.videoView, -1, i2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void destroy() {
        this.ksNativeAd = null;
        this.adWrapper = null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getActionText() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getAdPatternType() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        if (ksNativeAd == null) {
            return 12;
        }
        int materialType = ksNativeAd.getMaterialType();
        if (materialType != 1) {
            return materialType != 3 ? 12 : 13;
        }
        return 2;
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
        KsNativeAd ksNativeAd = this.ksNativeAd;
        return ksNativeAd != null ? ksNativeAd.getAppName() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public List<MeishuAdInfo.PermissionBean> getAppPermissionList() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppPremissionUrl() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        if (ksNativeAd != null) {
            return ksNativeAd.getPermissionInfoUrl();
        }
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        if (this.ksNativeAd == null) {
            return null;
        }
        return ((this.ksNativeAd.getAppPackageSize() / 1024) * 1024) + "Mb";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        if (ksNativeAd != null) {
            return ksNativeAd.getAppVersion();
        }
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getContent() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        return ksNativeAd != null ? ksNativeAd.getAdDescription() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public MsCustomVideo getCustomVideo() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDesc() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        return ksNativeAd != null ? ksNativeAd.getAdDescription() : "";
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
        return "KS";
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
        KsNativeAd ksNativeAd = this.ksNativeAd;
        return ksNativeAd != null ? ksNativeAd.getAppName() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getIconUrl() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        return ksNativeAd != null ? ksNativeAd.getAppIconUrl() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String[] getImgUrls() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        if (ksNativeAd == null) {
            return null;
        }
        if (ksNativeAd.getImageList() == null || this.ksNativeAd.getImageList().isEmpty()) {
            return new String[0];
        }
        String[] strArr = new String[this.ksNativeAd.getImageList().size()];
        for (int i2 = 0; i2 < this.ksNativeAd.getImageList().size(); i2++) {
            strArr[i2] = this.ksNativeAd.getImageList().get(i2).getImageUrl();
        }
        return strArr;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getInteractionType() {
        try {
            return this.ksNativeAd.getInteractionType() == 1 ? 1 : 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
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
        if (this.ksNativeAd == null) {
            return null;
        }
        return this.ksNativeAd.getECPM() + "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return "KS";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        if (ksNativeAd != null) {
            return ksNativeAd.getAppPrivacyUrl();
        }
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getTitle() {
        KsNativeAd ksNativeAd = this.ksNativeAd;
        return ksNativeAd != null ? ksNativeAd.getAppName() : "";
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
        KsNativeAd ksNativeAd = this.ksNativeAd;
        if (ksNativeAd != null) {
            return ksNativeAd.getVideoWidth();
        }
        return 0;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public boolean isNativeExpress() {
        KSRecyclerAdWrapper kSRecyclerAdWrapper = this.adWrapper;
        if (kSRecyclerAdWrapper != null) {
            int adPatternType = kSRecyclerAdWrapper.getAdLoader().getAdPatternType();
            if (adPatternType == 200000) {
                return 2 == this.adWrapper.getSdkAdInfo().getDrawing();
            }
            if (adPatternType == 100000) {
                return true;
            }
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
    public void bindMediaView(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, int i2, int i3, RecyclerAdMediaListener recyclerAdMediaListener) {
        int iIntValue;
        try {
            if (this.ksNativeAd == null) {
                return;
            }
            this.nativeRecyclerAdMediaListener = recyclerAdMediaListener;
            if (this.videoView != null) {
                viewGroup.removeAllViews();
                float f2 = viewGroup.getResources().getDisplayMetrics().density;
                int i4 = viewGroup.getLayoutParams().height;
                KSRecyclerAdWrapper kSRecyclerAdWrapper = this.adWrapper;
                if (kSRecyclerAdWrapper != null) {
                    if (kSRecyclerAdWrapper.getAdLoader().getAccept_ad_height().intValue() == 0) {
                        if (viewGroup.getLayoutParams().height != -2) {
                            iIntValue = viewGroup.getLayoutParams().height;
                        } else {
                            i4 = (int) (f2 * 200.0f);
                        }
                    } else {
                        iIntValue = this.adWrapper.getAdLoader().getAccept_ad_height().intValue();
                    }
                    i4 = iIntValue;
                }
                if (layoutParams == null) {
                    viewGroup.addView(this.videoView, -1, i4);
                } else {
                    viewGroup.addView(this.videoView, layoutParams);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
