package com.kwad.sdk.core.response.model;

import com.ksad.json.annotation.KsJson;
import java.io.Serializable;

@KsJson
/* loaded from: classes4.dex */
public class AdVideoPreCacheConfig extends com.kwad.sdk.core.response.a.a implements Serializable {
    public static final int DEFAULT_PRE_CACHE_SIZE = 800;
    private static final long serialVersionUID = -3793189825357939577L;
    public int adVideoPreCacheSize;
    public boolean continueLoadingAll;

    public AdVideoPreCacheConfig(int i2, boolean z2) {
        this.adVideoPreCacheSize = i2;
        this.continueLoadingAll = z2;
    }

    public int getAdVideoPreCacheSize() {
        return this.adVideoPreCacheSize;
    }

    public boolean isContinueLoadingAll() {
        return this.continueLoadingAll;
    }

    public void setAdVideoPreCacheSize(int i2) {
        this.adVideoPreCacheSize = i2;
    }

    public void setContinueLoadingAll(boolean z2) {
        this.continueLoadingAll = z2;
    }

    public AdVideoPreCacheConfig() {
        this.adVideoPreCacheSize = 800;
    }
}
