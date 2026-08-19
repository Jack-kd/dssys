package com.fl.saas.adx.base.base;

import android.content.Context;
import androidx.annotation.NonNull;
import com.fl.saas.C1188j;
import com.fl.saas.adx.base.bean.MaterialBean;

/* loaded from: classes3.dex */
public interface AdapterAPI {
    void clearCache();

    void destroy();

    @NonNull
    C1188j getAdSource();

    boolean isCache();

    void load();

    void reportRequestShow();

    AdapterAPI setAdSource(@NonNull C1188j c1188j);

    void setCache();

    AdapterAPI setContext(@NonNull Context context);

    void setHot(boolean z2);

    void setLinkId(String str);

    void setMaterial(MaterialBean materialBean);

    AdapterAPI setPlaceId(String str);

    void showAd();
}
