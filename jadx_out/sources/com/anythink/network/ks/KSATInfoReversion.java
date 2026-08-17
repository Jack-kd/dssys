package com.anythink.network.ks;

import com.anythink.rewardvideo.api.ATRewardRetryTaskInfo;
import com.anythink.rewardvideo.api.ATRewardRetryTaskResult;
import com.kwad.sdk.api.model.KSAdInfoData;
import com.kwad.sdk.api.model.KSAdRewardRetryTaskResult;

/* loaded from: classes2.dex */
public class KSATInfoReversion {

    /* renamed from: a, reason: collision with root package name */
    private static final int f9817a = 180;

    /* renamed from: b, reason: collision with root package name */
    private static final int f9818b = 190;

    /* renamed from: c, reason: collision with root package name */
    private static final int f9819c = 394;

    public static ATRewardRetryTaskInfo convertFromKSAdInfoData(KSAdInfoData kSAdInfoData) {
        if (kSAdInfoData == null) {
            return null;
        }
        ATRewardRetryTaskInfo aTRewardRetryTaskInfo = new ATRewardRetryTaskInfo();
        aTRewardRetryTaskInfo.setRequestId(kSAdInfoData.getLlsid());
        aTRewardRetryTaskInfo.setAdDescription(kSAdInfoData.getAdDescription());
        aTRewardRetryTaskInfo.setProductName(kSAdInfoData.getProductName());
        aTRewardRetryTaskInfo.setAdSource(kSAdInfoData.getAdSource());
        aTRewardRetryTaskInfo.setImageUrlArray(kSAdInfoData.getImageUrlArray());
        aTRewardRetryTaskInfo.setVideoUrl(kSAdInfoData.getVideoUrl());
        aTRewardRetryTaskInfo.setVideoCoverImageUrl(kSAdInfoData.getVideoCoverImageUrl());
        aTRewardRetryTaskInfo.setMaterialType(kSAdInfoData.getMaterialType());
        aTRewardRetryTaskInfo.setAppIconUrl(kSAdInfoData.getAppIconUrl());
        aTRewardRetryTaskInfo.setAppName(kSAdInfoData.getAppName());
        aTRewardRetryTaskInfo.setInteractionType(kSAdInfoData.getInteractionType());
        aTRewardRetryTaskInfo.setConvertType(convertFromKSConvertType(kSAdInfoData.getConvertType()));
        aTRewardRetryTaskInfo.setCreativeId(kSAdInfoData.getCreativeId());
        aTRewardRetryTaskInfo.setFirmId(String.valueOf(28));
        return aTRewardRetryTaskInfo;
    }

    public static int convertFromKSConvertType(int i2) {
        return i2 != f9817a ? i2 != 190 ? i2 != 394 ? i2 : ATRewardRetryTaskInfo.CONVERT_TYPE_ECOMMERCE_ORDER : ATRewardRetryTaskInfo.CONVERT_TYPE_PAYMENT : ATRewardRetryTaskInfo.CONVERT_TYPE_ACTIVATION_RETENTION;
    }

    public static ATRewardRetryTaskResult convertFromKSResult(KSAdRewardRetryTaskResult kSAdRewardRetryTaskResult) {
        if (kSAdRewardRetryTaskResult == null) {
            return null;
        }
        ATRewardRetryTaskInfo aTRewardRetryTaskInfoConvertFromKSAdInfoData = convertFromKSAdInfoData(kSAdRewardRetryTaskResult.ksAdInfoData);
        ATRewardRetryTaskResult aTRewardRetryTaskResult = new ATRewardRetryTaskResult();
        aTRewardRetryTaskResult.setTaskInfo(aTRewardRetryTaskInfoConvertFromKSAdInfoData);
        aTRewardRetryTaskResult.setConversionStatus(kSAdRewardRetryTaskResult.conversionStatus);
        return aTRewardRetryTaskResult;
    }

    public static KSAdInfoData convertToKSAdInfoData(ATRewardRetryTaskInfo aTRewardRetryTaskInfo) {
        KSAdInfoData kSAdInfoDataObtain = KSAdInfoData.obtain();
        kSAdInfoDataObtain.setLlisd(aTRewardRetryTaskInfo.getRequestId());
        kSAdInfoDataObtain.setAdDescription(aTRewardRetryTaskInfo.getAdDescription());
        kSAdInfoDataObtain.setProductName(aTRewardRetryTaskInfo.getProductName());
        kSAdInfoDataObtain.setAdSource(aTRewardRetryTaskInfo.getAdSource());
        kSAdInfoDataObtain.setImageList(aTRewardRetryTaskInfo.getImageUrlArray());
        kSAdInfoDataObtain.setVideoUrl(aTRewardRetryTaskInfo.getVideoUrl());
        kSAdInfoDataObtain.setVideoCoverImageUrl(aTRewardRetryTaskInfo.getVideoCoverImageUrl());
        kSAdInfoDataObtain.setMaterialType(aTRewardRetryTaskInfo.getMaterialType());
        kSAdInfoDataObtain.setAppIconUrl(aTRewardRetryTaskInfo.getAppIconUrl());
        kSAdInfoDataObtain.setAppName(aTRewardRetryTaskInfo.getAppName());
        kSAdInfoDataObtain.setInteractionType(aTRewardRetryTaskInfo.getInteractionType());
        kSAdInfoDataObtain.setConvertType(convertToKSConvertType(aTRewardRetryTaskInfo.getConvertType()));
        kSAdInfoDataObtain.setCreativeId(aTRewardRetryTaskInfo.getCreativeId());
        return kSAdInfoDataObtain;
    }

    public static int convertToKSConvertType(int i2) {
        switch (i2) {
            case ATRewardRetryTaskInfo.CONVERT_TYPE_ACTIVATION_RETENTION /* 6006101 */:
                return f9817a;
            case ATRewardRetryTaskInfo.CONVERT_TYPE_PAYMENT /* 6006102 */:
                return 190;
            case ATRewardRetryTaskInfo.CONVERT_TYPE_ECOMMERCE_ORDER /* 6006103 */:
                return 394;
            default:
                return i2;
        }
    }
}
