package com.fl.saas.adx.base.interfaces;

import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public interface AdMaterial {

    public static class AdMaterialData {
        private static AdMaterialData emptyData;
        private int advId;
        private String advVer;
        private String data;

        public AdMaterialData(int i2, String str, String str2) {
            this.advId = i2;
            this.data = str2;
            this.advVer = str;
        }

        public static AdMaterialData create(int i2, String str, String str2) {
            return new AdMaterialData(i2, str, str2);
        }

        public static AdMaterialData createEmpty(int i2) {
            if (emptyData == null) {
                emptyData = create(i2, "", "");
            }
            return emptyData;
        }

        public int getAdvId() {
            return this.advId;
        }

        public String getAdvVer() {
            return this.advVer;
        }

        public String getData() {
            return this.data;
        }
    }

    @Nullable
    AdMaterialData getAdMaterialData();
}
