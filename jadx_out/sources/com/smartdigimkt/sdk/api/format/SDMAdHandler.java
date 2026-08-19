package com.smartdigimkt.sdk.api.format;

/* loaded from: classes5.dex */
public interface SDMAdHandler {
    SDMAd getSDMAd();

    void notifyLoss(SDMLossInfo sDMLossInfo);

    void notifyWin(SDMWinInfo sDMWinInfo);
}
