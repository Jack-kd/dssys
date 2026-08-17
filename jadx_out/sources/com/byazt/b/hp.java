package com.byazt.b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.v.DownloadShortInfo;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;

@com.byazt.kj.hp(hp = {0, 1, 157, 28})
/* loaded from: classes2.dex */
public class hp implements DownloadStatusChangeListener {
    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadActive(DownloadShortInfo downloadShortInfo, int i2) {
    }

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadFailed(DownloadShortInfo downloadShortInfo) {
    }

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadFinished(DownloadShortInfo downloadShortInfo) {
    }

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadPaused(DownloadShortInfo downloadShortInfo, int i2) {
    }

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadStart(@NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController) {
    }

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onIdle() {
    }

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onInstalled(DownloadShortInfo downloadShortInfo) {
    }
}
