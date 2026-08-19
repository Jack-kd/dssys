package com.sigmob.sdk.base.models;

/* loaded from: classes4.dex */
public class WindAdMetaData {
    private String adId;

    private WindAdMetaData() {
    }

    public static WindAdMetaData create(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return null;
        }
        return new WindAdMetaData(baseAdUnit.getVid());
    }

    public String getAdId() {
        return this.adId;
    }

    private WindAdMetaData(String str) {
        this.adId = str;
    }
}
