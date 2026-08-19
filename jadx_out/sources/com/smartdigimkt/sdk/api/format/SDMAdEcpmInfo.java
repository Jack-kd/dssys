package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.SDMAdConst;

/* loaded from: classes5.dex */
public interface SDMAdEcpmInfo {
    double getEcpm(SDMAdConst.CURRENCY currency);

    String getEncEcpmInfo(SDMAdConst.CURRENCY currency);

    int getSecretId();
}
