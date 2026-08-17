package com.byazt.fn;

import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;

@com.byazt.kj.hp(hp = {0, 1, 588, 38})
/* loaded from: classes2.dex */
public abstract class j extends AbsDownloadListener implements ec {
    private void hp(int i2, DownloadInfo downloadInfo, BaseException baseException, boolean z2) {
        if (downloadInfo == null || !downloadInfo.canShowNotification() || i2 == 4) {
            return;
        }
        com.byazt.li.hp hpVarW = com.byazt.li.l.hp().w(downloadInfo.getId());
        if (hpVarW == null) {
            hpVarW = hp();
        }
        hpVarW.l(downloadInfo.getTotalBytes());
        if (i2 == -3) {
            hpVarW.hp(downloadInfo.getTotalBytes());
        } else {
            hpVarW.hp(downloadInfo.getCurBytes());
        }
        hpVarW.hp(i2, baseException, z2);
    }

    private void jx(DownloadInfo downloadInfo) {
        if (downloadInfo != null && downloadInfo.canShowNotification() && downloadInfo.getStatus() == 4) {
            com.byazt.li.hp hpVarW = com.byazt.li.l.hp().w(downloadInfo.getId());
            if (hpVarW == null) {
                hpVarW = hp();
            }
            hpVarW.hp(downloadInfo.getCurBytes(), downloadInfo.getTotalBytes());
        }
    }

    private void l(DownloadInfo downloadInfo) {
        if (downloadInfo == null || !downloadInfo.canShowNotification()) {
            return;
        }
        com.byazt.li.hp hpVarW = com.byazt.li.l.hp().w(downloadInfo.getId());
        if (hpVarW != null) {
            hpVarW.hp(downloadInfo);
        } else {
            com.byazt.li.l.hp().hp(hp());
        }
    }

    public abstract com.byazt.li.hp hp();

    @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        super.onFailed(downloadInfo, baseException);
        hp(-1, downloadInfo, baseException, false);
    }

    @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
        super.onPause(downloadInfo);
        hp(-2, downloadInfo, null, false);
    }

    @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
        super.onPrepare(downloadInfo);
        l(downloadInfo);
        hp(1, downloadInfo, null, true);
    }

    @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
        super.onProgress(downloadInfo);
        jx(downloadInfo);
    }

    @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        super.onStart(downloadInfo);
        hp(2, downloadInfo, null, false);
    }

    @Override // com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        super.onSuccessed(downloadInfo);
        hp(-3, downloadInfo, null, false);
    }

    @Override // com.byazt.fn.ec
    public void hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        hp(11, downloadInfo, null, true);
    }
}
