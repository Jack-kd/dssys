package com.byazt.fn;

import com.byazt.fu.DownloadInfo;

@com.byazt.kj.hp(hp = {0, 1, 588, 28})
/* loaded from: classes2.dex */
public abstract class hp extends AbsDownloadListener implements ec {
    public static final String hp = "hp";

    @Override // com.byazt.fn.ec
    public void hp(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(hp, " onWaitingDownloadCompleteHandler -- " + downloadInfo.getName());
    }
}
