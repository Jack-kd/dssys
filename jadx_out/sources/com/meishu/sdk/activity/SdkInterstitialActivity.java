package com.meishu.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.byazt.rx.BaseConstants;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsImage;
import com.kwad.sdk.api.KsNativeAd;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.IAd;
import com.meishu.sdk.core.bquery.d;
import com.meishu.sdk.core.bquery.i;
import com.meishu.sdk.core.bquery.j;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.safe.SafeActivity;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.core.utils.DownloadDialogBean;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.f0;
import com.meishu.sdk.core.utils.h;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.j0;
import com.meishu.sdk.core.utils.y;
import com.meishu.sdk.core.view.DownloadView;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.core.view.gif.GifImageView;
import com.meishu.sdk.meishu_ad.interstitial.c;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.nativ.e;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.ms.splash.ShakeResult;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.util.AdError;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class SdkInterstitialActivity extends SafeActivity {
    private static final String TAG = "SdkInterstitialActivity";
    private static com.meishu.sdk.meishu_ad.interstitial.a adListener;
    private static BasePlatformLoader adWrapper;
    private static IAd msAd;
    private static Object sdkAd;
    private int act_type = 2;
    private ImageView adLogo;
    private LinearLayout adLogoLL;
    private TextView btn;
    private TextView cid;
    private ImageView closeImage;
    private TextView desc;
    private DownloadDialogBean downloadBean;
    private ImageView imageBg;
    private GifImageView imageView;
    private boolean isClickToClose;
    private boolean isDownloadType;
    private boolean isShake;
    private boolean isVideoAutoPlay;
    private int layout_height;
    private int layout_type;
    private int layout_width;
    private ImageView logo;
    private RelativeLayout mediaContainer;
    private RelativeLayout rl_container;
    private RelativeLayout rootView;
    private int shakeId;
    private boolean showed;
    private GifImageView startActionShakeImage;
    private TextView title;
    private TouchAdContainer touchAdContainer;
    private View view;

    /* renamed from: com.meishu.sdk.activity.SdkInterstitialActivity$7, reason: invalid class name */
    public class AnonymousClass7 implements j<File> {
        public final /* synthetic */ com.meishu.sdk.meishu_ad.interstitial.b val$adSlot;
        public final /* synthetic */ c val$sdkAd;

        public AnonymousClass7(c cVar, com.meishu.sdk.meishu_ad.interstitial.b bVar) {
            this.val$sdkAd = cVar;
            this.val$adSlot = bVar;
        }

        @Override // com.meishu.sdk.core.bquery.j
        public void onFail(int i2, String str) {
        }

        @Override // com.meishu.sdk.core.bquery.j
        public void onSuccess(String str, File file) {
            try {
                if (file.length() >= j0.a()) {
                    return;
                }
                this.val$sdkAd.f32255i = System.currentTimeMillis();
                DisplayMetrics displayMetrics = SdkInterstitialActivity.this.getResources().getDisplayMetrics();
                float f2 = displayMetrics.widthPixels;
                float f3 = displayMetrics.density;
                int i2 = (int) (f2 - (70.0f * f3));
                int i3 = (int) (f3 * 200.0f);
                try {
                    if (SdkInterstitialActivity.this.layout_type == 2) {
                        i3 = (int) (((displayMetrics.widthPixels * 0.86d) * SdkInterstitialActivity.this.layout_height) / SdkInterstitialActivity.this.layout_width);
                        i2 = (int) (displayMetrics.widthPixels * 0.86d);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                final NormalMediaView normalMediaView = new NormalMediaView(SdkInterstitialActivity.this);
                normalMediaView.setContainerWidth(i2);
                normalMediaView.setContainerHeight(i3);
                normalMediaView.setPlayOnce(true);
                normalMediaView.g();
                normalMediaView.setUseTransform(false);
                normalMediaView.setFromLogoVisibility(8);
                normalMediaView.setFromLogo(null);
                normalMediaView.setNativeAdMediaListener(new e() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.7.1
                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onProgressUpdate(long j2, long j3) {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoComplete() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoError() {
                        LogUtil.d(SdkInterstitialActivity.TAG, "onVideoError");
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoLoaded() {
                        LogUtil.e(SdkInterstitialActivity.TAG, "onADLoaded");
                        AnonymousClass7.this.val$sdkAd.f32255i = System.currentTimeMillis();
                        normalMediaView.post(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.7.1.1
                            @Override // com.meishu.sdk.core.safe.l
                            public void safeRun() {
                                SdkInterstitialActivity.this.showed = true;
                                AnonymousClass7.this.val$sdkAd.d();
                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                SdkInterstitialActivity.this.startShake(anonymousClass7.val$adSlot);
                            }
                        });
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoMute() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoOneHalf() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoOneQuarter() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoPause() {
                    }

                    public void onVideoReplay() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoResume() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoStart() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoThreeQuarter() {
                    }

                    @Override // com.meishu.sdk.meishu_ad.nativ.e
                    public void onVideoUnmute() {
                    }
                });
                SdkInterstitialActivity.this.mediaContainer.removeAllViews();
                normalMediaView.setVideoPath(file.getAbsolutePath());
                if (this.val$adSlot.getScale_type() == 9) {
                    normalMediaView.setDisplayMode(2);
                    SdkInterstitialActivity.this.mediaContainer.addView(normalMediaView, -1, -1);
                } else {
                    normalMediaView.setDisplayMode(1);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(13, -1);
                    SdkInterstitialActivity.this.mediaContainer.addView(normalMediaView, layoutParams);
                }
                SdkInterstitialActivity.this.imageBg.setVisibility(0);
                ExecutorService executorService = h0.f31906a;
                h0.b.f31910a.a(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.7.2
                    @Override // com.meishu.sdk.core.safe.l
                    public void safeRun() {
                        try {
                            final Bitmap videoThumb = normalMediaView.getVideoThumb();
                            if (videoThumb != null) {
                                SdkHandler.getInstance().runOnUiThread(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.7.2.1
                                    @Override // com.meishu.sdk.core.safe.l
                                    public void safeRun() {
                                        try {
                                            Bitmap bitmap = videoThumb;
                                            if (bitmap != null) {
                                                Bitmap.Config config = bitmap.getConfig();
                                                Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
                                                Bitmap bitmapCopy = config == config2 ? videoThumb : videoThumb.copy(config2, true);
                                                if (bitmapCopy != null) {
                                                    SdkInterstitialActivity.this.getApplicationContext();
                                                    Bitmap bitmapA = f0.a(bitmapCopy, 25);
                                                    if (bitmapA != null) {
                                                        SdkInterstitialActivity.this.imageBg.setImageBitmap(bitmapA);
                                                    }
                                                }
                                            }
                                        } catch (Throwable th) {
                                            th.printStackTrace();
                                        }
                                    }
                                });
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
                normalMediaView.start();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void fullHeightImage(Bitmap bitmap, ImageView imageView, int i2, int i3, int i4) {
        int i5;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = (i3 * 1.0f) / height;
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        bitmapCreateBitmap.getHeight();
        int width2 = bitmapCreateBitmap.getWidth();
        if (width2 < i2) {
            imageView.setScaleType(ImageView.ScaleType.CENTER);
        } else {
            if (i4 == 6 || i4 == 2 || i4 == 1) {
                i5 = (width2 - i2) / 2;
            } else {
                i5 = 0;
                if (i4 != 7 && i4 == 8) {
                    i5 = width2 - i2;
                }
            }
            imageView.setScaleType(ImageView.ScaleType.MATRIX);
            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, i5, 0, i2, i3, (Matrix) null, false);
        }
        imageView.setImageBitmap(bitmapCreateBitmap);
    }

    private void fullWidthImage(Bitmap bitmap, GifImageView gifImageView, int i2, int i3, int i4) {
        int i5;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = (i2 * 1.0f) / width;
        ImageView.ScaleType scaleType = ImageView.ScaleType.MATRIX;
        gifImageView.setScaleType(scaleType);
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        int height2 = bitmapCreateBitmap.getHeight();
        bitmapCreateBitmap.getWidth();
        if (height2 < i3) {
            gifImageView.setScaleType(ImageView.ScaleType.CENTER);
        } else {
            if (i4 == 3 || i4 == 2 || i4 == 1) {
                i5 = (height2 - i3) / 2;
            } else {
                i5 = 0;
                if (i4 != 4 && i4 == 5) {
                    i5 = height2 - i3;
                }
            }
            gifImageView.setScaleType(scaleType);
            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, i5, i2, i3, (Matrix) null, false);
        }
        gifImageView.setImageBitmap(bitmapCreateBitmap);
    }

    private String getBDImageUrl(NativeResponse nativeResponse) {
        try {
            String imageUrl = nativeResponse.getImageUrl();
            if (!TextUtils.isEmpty(imageUrl)) {
                return imageUrl;
            }
            List<String> multiPicUrls = nativeResponse.getMultiPicUrls();
            if (multiPicUrls == null || multiPicUrls.size() <= 0) {
                return "";
            }
            String str = multiPicUrls.get(0);
            return !TextUtils.isEmpty(str) ? str : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private byte[] getImageBytes(Context context, int i2) throws Resources.NotFoundException, IOException {
        try {
            InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i3 = inputStreamOpenRawResource.read(bArr);
                if (-1 == i3) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String getImageUrl(NativeUnifiedADData nativeUnifiedADData) {
        try {
            return !TextUtils.isEmpty(nativeUnifiedADData.getImgUrl()) ? nativeUnifiedADData.getImgUrl() : (nativeUnifiedADData.getImgList() == null || nativeUnifiedADData.getImgList().size() <= 0) ? "" : nativeUnifiedADData.getImgList().get(0);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private void handleBdAd() {
        final NativeResponse nativeResponse = (NativeResponse) sdkAd;
        if (nativeResponse.getAdActionType() == 2) {
            this.isDownloadType = true;
        }
        DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
        this.downloadBean = downloadDialogBean;
        downloadDialogBean.setApp_name(nativeResponse.getBrandName());
        this.downloadBean.setApp_ver(nativeResponse.getAppVersion());
        this.downloadBean.setApp_size(((nativeResponse.getAppSize() / 1024) * 1024) + "MB");
        this.downloadBean.setDeveloper(nativeResponse.getPublisher());
        this.downloadBean.setApp_permission_url(nativeResponse.getAppPermissionLink());
        this.downloadBean.setApp_private_agreement(nativeResponse.getAppPrivacyLink());
        this.downloadBean.setApp_intro(nativeResponse.getDesc());
        this.title.setText(nativeResponse.getTitle());
        this.desc.setText(nativeResponse.getDesc());
        i iVar = new i((Activity) this);
        if (!TextUtils.isEmpty(nativeResponse.getBaiduLogoUrl())) {
            iVar.f31521d = this.adLogo;
            iVar.a(nativeResponse.getBaiduLogoUrl(), false);
        }
        if (!TextUtils.isEmpty(nativeResponse.getIconUrl())) {
            iVar.f31521d = this.logo;
            iVar.a(nativeResponse.getIconUrl(), false);
        }
        if (nativeResponse.getAdActionType() != 2) {
            this.btn.setText("点击查看详情");
        } else {
            this.btn.setText("点击下载");
        }
        try {
            if (nativeResponse.getMaterialType().equals(NativeResponse.MaterialType.VIDEO)) {
                ExecutorService executorService = h0.f31906a;
                h0.b.f31910a.a(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.12
                    @Override // com.meishu.sdk.core.safe.l
                    public void safeRun() {
                        try {
                            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                            mediaMetadataRetriever.setDataSource(nativeResponse.getVideoUrl());
                            final Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
                            if (frameAtTime != null) {
                                SdkHandler.getInstance().runOnUiThread(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.12.1
                                    @Override // com.meishu.sdk.core.safe.l
                                    public void safeRun() {
                                        SdkInterstitialActivity.this.imageView.setImageBitmap(frameAtTime);
                                    }
                                });
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            } else {
                String bDImageUrl = getBDImageUrl(nativeResponse);
                iVar.f31521d = this.imageView;
                iVar.a(bDImageUrl, false);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.rl_container);
        nativeResponse.registerViewForInteraction(this.rl_container, arrayList, null, new NativeResponse.AdInteractionListener() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.13
            @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
            public void adActReward(int i2) {
            }

            @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
            public void adActRewardSuccess() {
            }

            @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
            public void onADExposed() {
                try {
                    if (SdkInterstitialActivity.this.showed) {
                        return;
                    }
                    if (SdkInterstitialActivity.adWrapper.getLoaderListener() != null) {
                        SdkInterstitialActivity.adWrapper.getLoaderListener().onAdExposure();
                    }
                    if (SdkInterstitialActivity.msAd != null && SdkInterstitialActivity.msAd.getInteractionListener() != null) {
                        SdkInterstitialActivity.msAd.getInteractionListener().onAdExposure();
                    }
                    SdkInterstitialActivity.this.showed = true;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
            public void onADExposureFailed(int i2) {
            }

            @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
            public void onADStatusChanged() {
            }

            @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
            public void onAdClick() {
                try {
                    LogUtil.d(SdkInterstitialActivity.TAG, "send onAdClicked");
                    if (SdkInterstitialActivity.adWrapper != null && SdkInterstitialActivity.adWrapper.getSdkAdInfo() != null && SdkInterstitialActivity.msAd != null) {
                        a0.a(SdkInterstitialActivity.adWrapper.getContext(), f.a(SdkInterstitialActivity.adWrapper.getSdkAdInfo().getClk(), SdkInterstitialActivity.msAd), new com.meishu.sdk.core.utils.i());
                        SdkInterstitialActivity.adWrapper.getSdkAdInfo().getMsLoadedTime();
                        SdkInterstitialActivity.adWrapper.getAdLoader().getPosId();
                    }
                    if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                        return;
                    }
                    SdkInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
            public void onAdUnionClick() {
            }
        });
    }

    private void handleButton() {
        try {
            int i2 = this.act_type;
            if ((i2 & 4) != 4 && (i2 & 64) != 64) {
                if (!h.e(i2)) {
                    if (this.isDownloadType) {
                        this.btn.setText("点击下载三方应用");
                        return;
                    } else {
                        this.btn.setText("点击查看详情");
                        return;
                    }
                }
                showShakeInButton();
                if (this.isDownloadType) {
                    this.btn.setText("扭一扭或点击下载三方应用");
                    return;
                } else {
                    this.btn.setText("扭一扭或点击查看详情");
                    return;
                }
            }
            showShakeInButton();
            if (this.isDownloadType) {
                this.btn.setText("摇一摇或点击下载三方应用");
            } else {
                this.btn.setText("摇一摇或点击查看详情");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void handleGDTAd() {
        NativeUnifiedADData nativeUnifiedADData = (NativeUnifiedADData) sdkAd;
        NativeUnifiedADAppMiitInfo appMiitInfo = nativeUnifiedADData.getAppMiitInfo();
        if (nativeUnifiedADData.isAppAd()) {
            this.isDownloadType = true;
        }
        if (appMiitInfo != null) {
            DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
            this.downloadBean = downloadDialogBean;
            downloadDialogBean.setApp_name(appMiitInfo.getAppName());
            this.downloadBean.setApp_ver(appMiitInfo.getVersionName());
            this.downloadBean.setApp_size(((appMiitInfo.getPackageSizeBytes() / 1024) * 1024) + "MB");
            this.downloadBean.setDeveloper(appMiitInfo.getAuthorName());
            this.downloadBean.setApp_permission_url(appMiitInfo.getPermissionsUrl());
            this.downloadBean.setApp_private_agreement(appMiitInfo.getPrivacyAgreement());
        }
        nativeUnifiedADData.getPictureWidth();
        nativeUnifiedADData.getPictureHeight();
        this.title.setText(nativeUnifiedADData.getTitle());
        this.desc.setText(nativeUnifiedADData.getDesc());
        float f2 = getResources().getDisplayMetrics().density;
        new ArrayList().add(this.mediaContainer);
        i iVar = new i((Activity) this);
        if (!TextUtils.isEmpty(nativeUnifiedADData.getIconUrl())) {
            iVar.f31521d = this.logo;
            iVar.a(nativeUnifiedADData.getIconUrl(), false);
        }
        if (nativeUnifiedADData.isAppAd()) {
            this.btn.setText("点击下载");
        } else {
            this.btn.setText("点击查看详情");
        }
        this.adLogo.setImageResource(R.drawable.ms_gdt_logo);
        NativeAdContainer nativeAdContainer = new NativeAdContainer(this);
        ViewGroup viewGroup = (ViewGroup) this.rl_container.getParent();
        if (viewGroup != null) {
            ViewGroup.LayoutParams layoutParams = this.rl_container.getLayoutParams();
            viewGroup.removeView(this.rl_container);
            nativeAdContainer.addView(this.rl_container, new ViewGroup.LayoutParams(-1, -2));
            viewGroup.addView(nativeAdContainer, layoutParams);
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(0, 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.rl_container);
        arrayList.add(this.btn);
        nativeUnifiedADData.setNativeAdEventListener(new NativeADEventListener() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.9
            @Override // com.qq.e.ads.nativ.NativeADEventListener
            public void onADClicked() {
                try {
                    if (SdkInterstitialActivity.adWrapper != null && SdkInterstitialActivity.adWrapper.getSdkAdInfo() != null && SdkInterstitialActivity.msAd != null) {
                        LogUtil.d(SdkInterstitialActivity.TAG, "send onADClicked");
                        a0.a(SdkInterstitialActivity.this.getApplicationContext(), f.a(SdkInterstitialActivity.adWrapper.getSdkAdInfo().getClk(), SdkInterstitialActivity.msAd), new com.meishu.sdk.core.utils.i());
                        SdkInterstitialActivity.adWrapper.getSdkAdInfo().getMsLoadedTime();
                        SdkInterstitialActivity.adWrapper.getAdLoader().getPosId();
                    }
                    if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                        return;
                    }
                    SdkInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADEventListener
            public void onADError(AdError adError) {
            }

            @Override // com.qq.e.ads.nativ.NativeADEventListener
            public void onADExposed() {
                try {
                    if (SdkInterstitialActivity.adWrapper == null || SdkInterstitialActivity.adWrapper.getLoaderListener() == null || SdkInterstitialActivity.this.showed) {
                        return;
                    }
                    SdkInterstitialActivity.this.showed = true;
                    SdkInterstitialActivity.adWrapper.getLoaderListener().onAdExposure();
                    if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                        return;
                    }
                    SdkInterstitialActivity.msAd.getInteractionListener().onAdExposure();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADEventListener
            public void onADStatusChanged() {
            }
        });
        nativeUnifiedADData.bindAdToView(this, nativeAdContainer, layoutParams2, arrayList);
        if (nativeUnifiedADData.getAdPatternType() != 2) {
            String imageUrl = getImageUrl(nativeUnifiedADData);
            if (TextUtils.isEmpty(imageUrl)) {
                return;
            }
            iVar.f31521d = this.imageView;
            iVar.a(imageUrl, false);
            return;
        }
        this.mediaContainer.removeAllViews();
        MediaView mediaView = new MediaView(this);
        ViewGroup.LayoutParams layoutParams3 = mediaView.getLayoutParams();
        if (layoutParams3 == null) {
            layoutParams3 = new ViewGroup.LayoutParams(-1, -2);
        }
        layoutParams3.width = -1;
        layoutParams3.height = -2;
        this.mediaContainer.addView(mediaView, layoutParams3);
        VideoOption.Builder builder = new VideoOption.Builder();
        builder.setAutoPlayPolicy(this.isVideoAutoPlay ? 1 : 2);
        builder.setAutoPlayMuted(true);
        builder.setNeedCoverImage(true);
        builder.setNeedProgressBar(true);
        builder.setEnableDetailPage(true);
        builder.setEnableUserControl(false);
        nativeUnifiedADData.bindMediaView(mediaView, builder.build(), new NativeADMediaListener() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.10
            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoClicked() {
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoCompleted() {
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoError(AdError adError) {
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
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoStop() {
            }
        });
    }

    private void handleKsAd() {
        KsNativeAd ksNativeAd = (KsNativeAd) sdkAd;
        if (ksNativeAd.getInteractionType() == 1) {
            this.isDownloadType = true;
        }
        DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
        this.downloadBean = downloadDialogBean;
        downloadDialogBean.setApp_name(ksNativeAd.getAppName());
        this.downloadBean.setApp_ver(ksNativeAd.getAppVersion());
        this.downloadBean.setApp_size(((ksNativeAd.getAppPackageSize() / 1024) * 1024) + "MB");
        this.downloadBean.setDeveloper(ksNativeAd.getCorporationName());
        this.downloadBean.setApp_permission_url(ksNativeAd.getPermissionInfoUrl());
        this.downloadBean.setApp_private_agreement(ksNativeAd.getAppPrivacyUrl());
        this.downloadBean.setApp_intro(ksNativeAd.getAdDescription());
        this.title.setVisibility(8);
        this.desc.setText(ksNativeAd.getAdDescription());
        i iVar = new i((Activity) this);
        iVar.f31521d = this.logo;
        int i2 = 0;
        iVar.a(ksNativeAd.getAppIconUrl(), false);
        iVar.f31521d = this.adLogo;
        iVar.c(R.drawable.ms_ksad_sdk_logo);
        if (ksNativeAd.getInteractionType() == 1) {
            this.btn.setText("点击下载");
        } else {
            this.btn.setText("点击查看详情");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.rl_container);
        arrayList.add(this.btn);
        ksNativeAd.registerViewForInteraction(this.rl_container, arrayList, new KsNativeAd.AdInteractionListener() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.11
            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public boolean handleDownloadDialog(DialogInterface.OnClickListener onClickListener) {
                return false;
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public void onAdClicked(View view, KsNativeAd ksNativeAd2) {
                try {
                    LogUtil.d(SdkInterstitialActivity.TAG, "send onAdClicked");
                    if (SdkInterstitialActivity.adWrapper != null && SdkInterstitialActivity.adWrapper.getSdkAdInfo() != null && SdkInterstitialActivity.msAd != null) {
                        a0.a(SdkInterstitialActivity.adWrapper.getContext(), f.a(SdkInterstitialActivity.adWrapper.getSdkAdInfo().getClk(), SdkInterstitialActivity.msAd), new com.meishu.sdk.core.utils.i());
                        SdkInterstitialActivity.adWrapper.getSdkAdInfo().getMsLoadedTime();
                        SdkInterstitialActivity.adWrapper.getAdLoader().getPosId();
                    }
                    if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                        return;
                    }
                    SdkInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public void onAdShow(KsNativeAd ksNativeAd2) {
                try {
                    if (SdkInterstitialActivity.this.showed) {
                        return;
                    }
                    if (SdkInterstitialActivity.adWrapper.getLoaderListener() != null) {
                        SdkInterstitialActivity.adWrapper.getLoaderListener().onAdExposure();
                    }
                    if (SdkInterstitialActivity.msAd != null && SdkInterstitialActivity.msAd.getInteractionListener() != null) {
                        SdkInterstitialActivity.msAd.getInteractionListener().onAdExposure();
                    }
                    SdkInterstitialActivity.this.showed = true;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public void onDownloadTipsDialogDismiss() {
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public void onDownloadTipsDialogShow() {
            }
        });
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f2 = displayMetrics.density;
        float f3 = displayMetrics.widthPixels;
        int i3 = (int) (f3 - (70.0f * f2));
        if (this.layout_type == 2) {
            i3 = (int) (f3 - (f2 * 84.0f));
        }
        if (ksNativeAd.getMaterialType() == 1) {
            View videoView = ksNativeAd.getVideoView(this, new KsAdVideoPlayConfig.Builder().videoSoundEnable(false).build());
            if (videoView != null) {
                this.mediaContainer.removeAllViews();
                int videoWidth = ksNativeAd.getVideoWidth();
                int videoHeight = ksNativeAd.getVideoHeight();
                if (videoWidth > 0 && videoHeight > 0) {
                    i2 = (videoHeight * i3) / videoWidth;
                }
                this.mediaContainer.addView(videoView, -1, i2);
                return;
            }
            return;
        }
        List<KsImage> imageList = ksNativeAd.getImageList();
        if (imageList == null || imageList.size() <= 0) {
            return;
        }
        KsImage ksImage = imageList.get(0);
        int width = ksImage.getWidth();
        int height = ksImage.getHeight();
        String imageUrl = imageList.get(0).getImageUrl();
        iVar.f31521d = this.imageView;
        iVar.a(imageUrl, false);
        if (width > 0 && height > 0) {
            i2 = (height * i3) / width;
        }
        ViewGroup.LayoutParams layoutParams = this.imageView.getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = -1;
        this.imageView.setLayoutParams(layoutParams);
    }

    private void handleMsAd() throws Resources.NotFoundException {
        ShakeUtil.getInstance().e();
        final c cVar = (c) sdkAd;
        final com.meishu.sdk.meishu_ad.interstitial.b bVarC = cVar.a();
        int act_type = bVarC.getAct_type();
        if ((act_type & 1) != 1 && (act_type & 2) != 2) {
            bVarC.setAct_type(act_type | 1);
        }
        AdType adType = AdType.INTERSTITIAL;
        adType.value();
        h.a();
        int iA = h.a(bVarC.getAct_type(), adType.value());
        bVarC.setAct_type(iA);
        this.act_type = iA;
        if (cVar.getInteractionType() == 1) {
            this.isDownloadType = true;
        }
        this.downloadBean = DownloadView.toBean(bVarC);
        i iVar = new i((Activity) this);
        if (this.layout_type == 1) {
            if (TextUtils.isEmpty(bVarC.f32245a)) {
                this.title.setText("");
                this.title.setVisibility(8);
            } else {
                this.title.setVisibility(0);
                this.title.setText(bVarC.f32245a);
            }
            if (TextUtils.isEmpty(bVarC.getDesc())) {
                this.desc.setVisibility(8);
                this.desc.setText("");
            } else {
                this.desc.setVisibility(0);
                this.desc.setText(bVarC.getDesc());
            }
        }
        if (this.logo != null) {
            if (TextUtils.isEmpty(bVarC.getIconUrl())) {
                iVar.f31521d = this.logo;
                iVar.d(8);
            } else {
                iVar.f31521d = this.logo;
                iVar.d(0);
                iVar.f31521d = this.logo;
                iVar.a(bVarC.getIconUrl(), false);
            }
        }
        this.adLogoLL.setBackground(getResources().getDrawable(R.drawable.ms_black_oval_gray));
        if (TextUtils.isEmpty(bVarC.getFromLogo())) {
            iVar.f31521d = this.adLogo;
            Drawable drawable = getResources().getDrawable(R.drawable.ms_ad);
            View view = iVar.f31521d;
            if (view instanceof ImageView) {
                ((ImageView) view).setImageDrawable(drawable);
            }
        } else {
            iVar.f31521d = this.adLogo;
            iVar.a(bVarC.getFromLogo(), false);
        }
        if (!TextUtils.isEmpty(bVarC.getCid())) {
            this.cid.setText(bVarC.getCid());
        }
        StringBuilder sbA = a.a("adSlot.getAdPatternType()=");
        sbA.append(bVarC.getAdPatternType());
        LogUtil.d(TAG, sbA.toString());
        if (cVar.f32253g == 0) {
            cVar.f32253g = System.currentTimeMillis();
        }
        if (bVarC.getAdPatternType() == 2) {
            loadNativeVideo(iVar, bVarC, cVar);
        } else {
            com.meishu.sdk.core.cache.a.a(bVarC.getImageUrls()[0], new y() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.3
                @Override // com.meishu.sdk.core.utils.y
                public void onFailure(@NotNull IOException iOException) {
                    if (SdkInterstitialActivity.adListener != null) {
                        ((com.meishu.sdk.platform.ms.interstitial.a) SdkInterstitialActivity.adListener).onAdRenderFail("图片加载失败", -1);
                    }
                }

                @Override // com.meishu.sdk.core.utils.y
                public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
                    byte[] responseBody;
                    try {
                        if (!httpResponse.isSuccessful() || (responseBody = httpResponse.getResponseBody()) == null || responseBody.length <= 0) {
                            return;
                        }
                        if (!SdkInterstitialActivity.this.isGif(responseBody)) {
                            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                            if (bitmapDecodeByteArray != null) {
                                SdkInterstitialActivity.this.setImageShowType(bVarC.getScale_type(), bitmapDecodeByteArray, SdkInterstitialActivity.this.imageView);
                            } else if (SdkInterstitialActivity.adListener != null) {
                                ((com.meishu.sdk.platform.ms.interstitial.a) SdkInterstitialActivity.adListener).onAdRenderFail("bitmap加载失败", ErrorCodeUtil.RES_LOAD_ERROR.intValue());
                            }
                            try {
                                Bitmap bitmapDecodeByteArray2 = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                                if (bitmapDecodeByteArray2 != null) {
                                    SdkInterstitialActivity.this.getApplicationContext();
                                    SdkInterstitialActivity.this.imageBg.setImageBitmap(f0.a(bitmapDecodeByteArray2, 25));
                                }
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        } else if (SdkInterstitialActivity.this.imageView != null) {
                            SdkInterstitialActivity.this.imageView.setBytes(responseBody);
                            SdkInterstitialActivity.this.imageView.startAnimation();
                        }
                        cVar.f32255i = System.currentTimeMillis();
                        SdkInterstitialActivity.this.view.post(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.3.1
                            @Override // com.meishu.sdk.core.safe.l
                            public void safeRun() {
                                SdkInterstitialActivity.this.showed = true;
                                cVar.d();
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                SdkInterstitialActivity.this.startShake(bVarC);
                            }
                        });
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
            }, true);
        }
        cVar.setAdView(this.rootView);
        if ((bVarC.getAct_type() & 1) == 1) {
            this.rl_container.setOnClickListener(new o() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.4
                @Override // com.meishu.sdk.core.safe.o
                public void safeOnClick(View view2) {
                    if (SdkInterstitialActivity.this.showed) {
                        if (SdkInterstitialActivity.msAd != null && SdkInterstitialActivity.msAd.getInteractionListener() != null && bVarC.getCbc() == 0) {
                            SdkInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                        }
                        bVarC.setClkActType(1);
                        try {
                            if (SdkInterstitialActivity.this.isClickToClose) {
                                cVar.a().setAdClosed(true);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        f.a((com.meishu.sdk.platform.ms.c) cVar, true);
                        if (SdkInterstitialActivity.this.isClickToClose) {
                            SdkInterstitialActivity.this.finish();
                            if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                                return;
                            }
                            SdkInterstitialActivity.msAd.getInteractionListener().onAdClosed();
                        }
                    }
                }
            });
        } else if ((bVarC.getAct_type() & 2) == 2) {
            this.btn.setOnClickListener(new o() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.5
                @Override // com.meishu.sdk.core.safe.o
                public void safeOnClick(View view2) {
                    if (SdkInterstitialActivity.this.showed) {
                        if (SdkInterstitialActivity.msAd != null && SdkInterstitialActivity.msAd.getInteractionListener() != null && bVarC.getCbc() == 0) {
                            SdkInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                        }
                        bVarC.setClkActType(2);
                        f.a((com.meishu.sdk.platform.ms.c) cVar, true);
                        if (SdkInterstitialActivity.this.isClickToClose) {
                            SdkInterstitialActivity.this.finish();
                            if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                                return;
                            }
                            SdkInterstitialActivity.msAd.getInteractionListener().onAdClosed();
                        }
                    }
                }
            });
        }
    }

    private void handleSdk() {
        Object obj = sdkAd;
        if (obj != null) {
            try {
                if (obj instanceof NativeUnifiedADData) {
                    handleGDTAd();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                if (sdkAd instanceof KsNativeAd) {
                    handleKsAd();
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                if (sdkAd instanceof c) {
                    handleMsAd();
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                if (sdkAd instanceof NativeResponse) {
                    handleBdAd();
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            handleButton();
            handleDownloadView();
        }
    }

    private void initView() {
        TouchAdContainer touchAdContainer;
        try {
            this.touchAdContainer = (TouchAdContainer) findViewById(R.id.ms_activity_sdk_interstitial_touchAdContainer);
            this.startActionShakeImage = (GifImageView) findViewById(R.id.ms_action_shakeImage);
            this.mediaContainer = (RelativeLayout) findViewById(R.id.ms_activity_sdk_interstitial_mediaContainer);
            this.imageView = (GifImageView) findViewById(R.id.ms_activity_sdk_interstitial_imageview);
            this.imageBg = (ImageView) findViewById(R.id.ms_activity_sdk_interstitial_imageBg);
            this.closeImage = (ImageView) findViewById(R.id.ms_activity_sdk_interstitial_cacel);
            this.adLogo = (ImageView) findViewById(R.id.ms_activity_sdk_interstitial_adLogo);
            this.cid = (TextView) findViewById(R.id.ms_layout_native_interstitial_cid);
            this.rl_container = (RelativeLayout) findViewById(R.id.ms_activity_sdk_interstitial_rl_container);
            this.adLogoLL = (LinearLayout) findViewById(R.id.ms_activity_sdk_interstitial_adLogoLL);
            this.logo = (ImageView) findViewById(R.id.ms_activity_sdk_interstitial_logo);
            this.title = (TextView) findViewById(R.id.ms_activity_sdk_interstitial_title);
            this.desc = (TextView) findViewById(R.id.ms_activity_sdk_interstitial_desc);
            this.btn = (TextView) findViewById(R.id.ms_activity_sdk_interstitial_btn);
            IAd iAd = msAd;
            if (iAd != null && (touchAdContainer = this.touchAdContainer) != null) {
                touchAdContainer.setTouchPositionListener(new TouchPositionListener(iAd));
            }
            this.closeImage.setOnClickListener(new o() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.1
                @Override // com.meishu.sdk.core.safe.o
                public void safeOnClick(View view) {
                    SdkInterstitialActivity.this.finish();
                    if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                        return;
                    }
                    SdkInterstitialActivity.msAd.getInteractionListener().onAdClosed();
                }
            });
            this.adLogoLL.post(new Runnable() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        SdkInterstitialActivity sdkInterstitialActivity = SdkInterstitialActivity.this;
                        int navigationBarHeight = sdkInterstitialActivity.getNavigationBarHeight(sdkInterstitialActivity);
                        if (navigationBarHeight > 0) {
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) SdkInterstitialActivity.this.adLogoLL.getLayoutParams();
                            layoutParams.bottomMargin = navigationBarHeight + 15;
                            SdkInterstitialActivity.this.adLogoLL.setLayoutParams(layoutParams);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (this.layout_type == 2) {
                DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                if (this.layout_width > 0 && this.layout_height > 0) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.touchAdContainer.getLayoutParams();
                    double d2 = displayMetrics.widthPixels * 0.86d;
                    layoutParams.width = (int) d2;
                    layoutParams.height = (int) ((d2 * this.layout_height) / this.layout_width);
                    int i2 = (int) (displayMetrics.heightPixels * 0.07d);
                    layoutParams.topMargin = i2;
                    layoutParams.bottomMargin = i2;
                    this.touchAdContainer.setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            handleSdk();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGif(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        return new BigInteger(1, bArr2).toString(16).startsWith("47494638");
    }

    private void loadNativeVideo(i iVar, com.meishu.sdk.meishu_ad.interstitial.b bVar, c cVar) {
        String str = bVar.getImageUrls()[0];
        AnonymousClass7 anonymousClass7 = new AnonymousClass7(cVar, bVar);
        iVar.getClass();
        iVar.a(str, BaseConstants.Time.DAY, true, new d(iVar, anonymousClass7));
    }

    public static void setAdListener(com.meishu.sdk.meishu_ad.interstitial.a aVar) {
        try {
            adListener = aVar;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void setAdWrapper(BasePlatformLoader basePlatformLoader) {
        adWrapper = basePlatformLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.widget.ImageView, androidx.appcompat.widget.AppCompatImageView] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setImageShowType(int r11, android.graphics.Bitmap r12, com.meishu.sdk.core.view.gif.GifImageView r13) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.activity.SdkInterstitialActivity.setImageShowType(int, android.graphics.Bitmap, com.meishu.sdk.core.view.gif.GifImageView):void");
    }

    public static void setMsAd(IAd iAd) {
        msAd = iAd;
    }

    public static void setSdkAd(Object obj) {
        sdkAd = obj;
    }

    private void showShakeInButton() throws Resources.NotFoundException {
        Drawable drawable = getResources().getDrawable(R.drawable.ms_shake_angle);
        drawable.setBounds(0, 0, 100, 100);
        this.btn.setPadding(20, 0, 60, 0);
        this.btn.setCompoundDrawables(drawable, null, null, null);
    }

    private void showStartShakeImage() throws Resources.NotFoundException, IOException {
        this.startActionShakeImage.setVisibility(0);
        byte[] imageBytes = getImageBytes(this, R.raw.ms_new_shake);
        if (imageBytes != null && imageBytes.length > 0) {
            this.startActionShakeImage.setBytes(imageBytes, 1);
            this.startActionShakeImage.startAnimation();
        }
        new Handler().postDelayed(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.6
            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                SdkInterstitialActivity.this.startActionShakeImage.clear();
                SdkInterstitialActivity.this.startActionShakeImage.setVisibility(8);
            }
        }, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startShake(final com.meishu.sdk.meishu_ad.interstitial.b bVar) {
        this.rootView.post(new l() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.8
            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    if (h.c(bVar.getAct_type())) {
                        SdkInterstitialActivity.this.isShake = true;
                        int power_index = bVar.getPower_index();
                        int power_index2 = bVar.getPower_index2();
                        SdkInterstitialActivity.this.shakeId = ShakeUtil.getInstance().b();
                        int iB = h.b(bVar.getAct_type());
                        final long jCurrentTimeMillis = System.currentTimeMillis();
                        ShakeUtil.getInstance().a(bVar.getPosId(), bVar.getLoadedTime(), bVar.getDclk());
                        ShakeUtil.getInstance().a(power_index2, power_index, iB, bVar.getPower_delay(), bVar.getPower_count(), SdkInterstitialActivity.this.shakeId, bVar.getEcpm(), new ShakeUtil.c() { // from class: com.meishu.sdk.activity.SdkInterstitialActivity.8.1
                            @Override // com.meishu.sdk.platform.ms.splash.ShakeUtil.c
                            public void onShake(int i2, boolean z2, int i3, ShakeResult shakeResult) {
                                ShakeUtil.getInstance().a(SdkInterstitialActivity.this.shakeId);
                                if (SdkInterstitialActivity.msAd != null && SdkInterstitialActivity.msAd.getInteractionListener() != null && bVar.getCbc() == 0) {
                                    SdkInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                                }
                                if (shakeResult != null) {
                                    shakeResult.setTotalTurnTime(System.currentTimeMillis() - jCurrentTimeMillis);
                                }
                                c cVar = (c) SdkInterstitialActivity.sdkAd;
                                com.meishu.sdk.meishu_ad.interstitial.b bVarC = cVar.a();
                                bVarC.setClkActType(i2);
                                bVarC.setClkPower(i3);
                                bVarC.setShakeResult(shakeResult);
                                try {
                                    if (SdkInterstitialActivity.this.isClickToClose) {
                                        cVar.a().setAdClosed(true);
                                    }
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                                f.a(cVar, i3 >= 50);
                                if (SdkInterstitialActivity.this.isClickToClose) {
                                    SdkInterstitialActivity.this.finish();
                                    if (SdkInterstitialActivity.msAd == null || SdkInterstitialActivity.msAd.getInteractionListener() == null) {
                                        return;
                                    }
                                    SdkInterstitialActivity.msAd.getInteractionListener().onAdClosed();
                                }
                            }
                        });
                        ShakeUtil.getInstance().a(true);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public int getNavigationBarHeight(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public void handleDownloadView() {
        try {
            LogUtil.d(TAG, "handleDownloadView: interactionType=" + this.isDownloadType);
            if (this.isDownloadType) {
                TextView textView = (TextView) findViewById(R.id.ms_download_layer_textview);
                textView.setVisibility(0);
                DownloadView.bindClickableDownloadInfo(textView, this.downloadBean);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        initView();
        super.onConfigurationChanged(configuration);
    }

    @Override // com.meishu.sdk.core.safe.SafeActivity
    public void safeOnCreate(Bundle bundle) {
        super.safeOnCreate(bundle);
        setContentView(R.layout.ms_activity_sdk_interstitial);
        try {
            getWindow().getDecorView().setSystemUiVisibility(1792);
            getWindow().setNavigationBarColor(0);
            getWindow().setStatusBarColor(0);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        Intent intent = getIntent();
        this.isVideoAutoPlay = intent.getBooleanExtra("isVideoAutoPlay", true);
        this.isClickToClose = intent.getBooleanExtra("isClickToClose", false);
        this.act_type = intent.getIntExtra("act_type", 2);
        this.layout_type = intent.getIntExtra("layout_type", 1);
        this.layout_width = intent.getIntExtra("layout_width", 0);
        this.layout_height = intent.getIntExtra("layout_height", 0);
        this.rootView = (RelativeLayout) findViewById(R.id.ms_activity_sdk_interstitial_rootView);
        this.view = View.inflate(this, R.layout.ms_layout_sdk_interstitial_1, null);
        if (this.layout_type == 2) {
            this.view = View.inflate(this, R.layout.ms_layout_sdk_interstitial_2, null);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.rootView.addView(this.view, layoutParams);
        initView();
    }

    @Override // com.meishu.sdk.core.safe.SafeActivity
    public void safeOnDestroy() {
        super.safeOnDestroy();
        sdkAd = null;
        adWrapper = null;
        msAd = null;
        adListener = null;
        ShakeUtil.getInstance().a(this.shakeId);
    }

    @Override // com.meishu.sdk.core.safe.SafeActivity
    public void safeOnPause() {
        super.safeOnPause();
        if (this.isShake) {
            ShakeUtil.getInstance().e();
        }
    }

    @Override // com.meishu.sdk.core.safe.SafeActivity
    public void safeOnResume() {
        super.safeOnResume();
        if (this.isShake) {
            ShakeUtil.getInstance().f();
        }
    }
}
