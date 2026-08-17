package com.sigmob.windad.natives;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.sigmob.sdk.base.models.SigImage;
import com.sigmob.sdk.base.models.WindAdMetaData;
import com.sigmob.windad.WindAdError;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public interface WindNativeAdData {

    public interface DislikeInteractionCallback {
        void onCancel();

        void onSelected(int i2, String str, boolean z2);

        void onShow();
    }

    public interface NativeADMediaListener {
        void onVideoCompleted();

        void onVideoError(WindAdError windAdError);

        void onVideoLoad();

        void onVideoPause();

        void onVideoResume();

        void onVideoStart();
    }

    void bindImageViews(List<ImageView> list, int i2);

    void bindMediaView(ViewGroup viewGroup, NativeADMediaListener nativeADMediaListener);

    void bindMediaViewWithoutAppInfo(ViewGroup viewGroup, NativeADMediaListener nativeADMediaListener);

    void bindViewForInteraction(View view, List<View> list, List<View> list2, View view2, NativeADEventListener nativeADEventListener);

    void destroy();

    AdAppInfo getAdAppInfo();

    Bitmap getAdLogo();

    int getAdPatternType();

    View getAdView();

    String getCTAText();

    String getCurrency();

    String getDesc();

    String getEcpm();

    String getIconUrl();

    List<SigImage> getImageList();

    int getInteractionType();

    Map<String, String> getSaasOptions();

    String getTitle();

    String getVideoCoverImageUrl();

    int getVideoCurrentPosition();

    int getVideoDuration();

    int getVideoHeight();

    int getVideoProgress();

    int getVideoWidth();

    WindAdMetaData getWindAdMetaData();

    void pauseVideo();

    void resumeVideo();

    void setDislikeInteractionCallback(Activity activity, DislikeInteractionCallback dislikeInteractionCallback);

    void setVideoMute(boolean z2);

    void startVideo();

    void stopVideo();
}
