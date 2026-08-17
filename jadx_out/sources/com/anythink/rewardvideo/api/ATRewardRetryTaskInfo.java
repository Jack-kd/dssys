package com.anythink.rewardvideo.api;

import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* loaded from: classes2.dex */
public class ATRewardRetryTaskInfo implements Serializable {
    public static final int CONVERT_TYPE_ACTIVATION_RETENTION = 6006101;
    public static final int CONVERT_TYPE_ECOMMERCE_ORDER = 6006103;
    public static final int CONVERT_TYPE_PAYMENT = 6006102;
    private static final long serialVersionUID = 1;
    private String adDescription;
    private String adSource;
    private String appIconUrl;
    private String appName;
    private int convertType;
    private long creativeId;
    private String firmId;
    private List<String> imageUrlArray;
    private int interactionType;
    private int materialType;
    private String productName;
    private String requestId;
    private String videoCoverImageUrl;
    private String videoUrl;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConvertType {
    }

    public String getAdDescription() {
        return this.adDescription;
    }

    public String getAdSource() {
        return this.adSource;
    }

    public String getAppIconUrl() {
        return this.appIconUrl;
    }

    public String getAppName() {
        return this.appName;
    }

    public int getConvertType() {
        return this.convertType;
    }

    public long getCreativeId() {
        return this.creativeId;
    }

    public String getFirmId() {
        return this.firmId;
    }

    public List<String> getImageUrlArray() {
        return this.imageUrlArray;
    }

    public int getInteractionType() {
        return this.interactionType;
    }

    public int getMaterialType() {
        return this.materialType;
    }

    public String getProductName() {
        return this.productName;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public String getVideoCoverImageUrl() {
        return this.videoCoverImageUrl;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public void setAdDescription(String str) {
        this.adDescription = str;
    }

    public void setAdSource(String str) {
        this.adSource = str;
    }

    public void setAppIconUrl(String str) {
        this.appIconUrl = str;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setConvertType(int i2) {
        this.convertType = i2;
    }

    public void setCreativeId(long j2) {
        this.creativeId = j2;
    }

    public void setFirmId(String str) {
        this.firmId = str;
    }

    public void setImageUrlArray(List<String> list) {
        this.imageUrlArray = list;
    }

    public void setInteractionType(int i2) {
        this.interactionType = i2;
    }

    public void setMaterialType(int i2) {
        this.materialType = i2;
    }

    public void setProductName(String str) {
        this.productName = str;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setVideoCoverImageUrl(String str) {
        this.videoCoverImageUrl = str;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public String toString() {
        return "ATRewardRetryTaskInfo{requestId='" + this.requestId + "', adDescription='" + this.adDescription + "', productName='" + this.productName + "', adSource='" + this.adSource + "', imageUrlArray=" + this.imageUrlArray + ", videoUrl='" + this.videoUrl + "', videoCoverImageUrl='" + this.videoCoverImageUrl + "', materialType=" + this.materialType + ", appIconUrl='" + this.appIconUrl + "', appName='" + this.appName + "', interactionType=" + this.interactionType + ", convertType=" + this.convertType + ", creativeId=" + this.creativeId + ", firmId=" + this.firmId + '}';
    }
}
