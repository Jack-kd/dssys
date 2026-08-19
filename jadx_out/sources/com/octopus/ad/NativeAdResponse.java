package com.octopus.ad;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import com.octopus.ad.internal.video.VideoStateListener;
import com.octopus.ad.listener.OnCpaListener;
import com.octopus.ad.model.AdLogoInfo;
import com.octopus.ad.model.ComplianceInfo;
import com.octopus.ad.model.ShakeValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public interface NativeAdResponse {
    public static final int INTERACTION_TYPE_DOWNLOAD = 2;
    public static final int INTERACTION_TYPE_LANDING_PAGE = 4;
    public static final int INTERACTION_TYPE_MINI_PROGRAMS = 6;
    public static final int INTERACTION_TYPE_QUICK_APP = 3;

    public enum a {
        OCTOPUS
    }

    public enum b {
        CONTENT,
        APP_INSTALL
    }

    void addShakeView(ViewGroup viewGroup, int i2, float f2);

    void bindUnifiedView(ViewGroup viewGroup, List<View> list, NativeAdEventListener nativeAdEventListener);

    void bindUnifiedView(ViewGroup viewGroup, List<View> list, List<View> list2, NativeAdEventListener nativeAdEventListener);

    void bindView(ViewGroup viewGroup, NativeAdEventListener nativeAdEventListener);

    void destroy();

    String getAdvertiser();

    View getBlurView(Context context);

    String getButtonText();

    ComplianceInfo getComplianceInfo();

    View getComplianceView(Context context);

    View getComplianceView(Context context, int i2);

    String getCoveUrl();

    String getDescription();

    Bitmap getIcon();

    String getIconUrl();

    Bitmap getImage();

    String getImageUrl();

    ArrayList<String> getImageUrls();

    int getInteractionType();

    String getLandingPageUrl();

    Bitmap getLogo(Context context);

    AdLogoInfo getLogoInfo();

    String getLogoUrl();

    int getMaterialType();

    Map<String, Object> getMediaExtraInfo();

    b getNativeAdType();

    HashMap<String, Object> getNativeElements();

    List<? extends View> getNativeInfoListView();

    View getNativeView();

    a getNetworkIdentifier();

    int getPictureHeight();

    int getPictureWidth();

    int getPrice();

    ShakeValue getShakeValue();

    double getStarRating();

    String getStore();

    ArrayList<String> getTextList();

    Bitmap getTextLogo(Context context);

    AdLogoInfo getTextLogoInfo();

    String getTextLogoUrl();

    String getTitle();

    ArrayList<String> getVideoUrls();

    View getVideoView(Context context);

    boolean hasExpired();

    boolean isShakeAd();

    boolean isVideo();

    boolean isVideoMute();

    void setAdWidth(int i2);

    void setAutoFitWidth(boolean z2);

    void setIcon(Bitmap bitmap);

    void setImage(Bitmap bitmap);

    void setIsVideoMute(boolean z2);

    void setNativeAdEventListener(NativeAdEventListener nativeAdEventListener);

    void setNativeInfoListView(List<? extends View> list);

    void setOnCpaListener(OnCpaListener onCpaListener);

    void setOnSensorListener(OnSensorListener onSensorListener);

    void setVideoStateListener(VideoStateListener videoStateListener);

    void showCloseButton(boolean z2);

    void toggleVideoMute();

    void unregisterViews();
}
