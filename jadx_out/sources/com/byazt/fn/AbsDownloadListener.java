package com.byazt.fn;

import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;

@com.byazt.kj.hp(hp = {0, 1, 588, 1994})
/* loaded from: classes2.dex */
public abstract class AbsDownloadListener implements IDownloadListener {
    public static final String TAG = "AbsDownloadListener";

    @Override // com.byazt.fn.IDownloadListener
    public void onCanceled(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onCanceled -- " + downloadInfo.getName());
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, String.format("onFailed on %s because of : %s", downloadInfo.getName(), baseException != null ? baseException.getErrorMessage() : "unkown"));
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onFirstStart(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onFirstStart -- " + downloadInfo.getName());
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onFirstSuccess(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onFirstSuccess -- " + downloadInfo.getName());
    }

    public void onIntercept(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onIntercept -- " + downloadInfo.getName());
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onPause -- " + downloadInfo.getName());
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onPrepare -- " + downloadInfo.getName());
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null || downloadInfo.getTotalBytes() == 0) {
            return;
        }
        com.byazt.nu.hp.l(TAG, String.format("onProgress %s %.2f%%", downloadInfo.getName(), Float.valueOf((downloadInfo.getCurBytes() / downloadInfo.getTotalBytes()) * 100.0f)));
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onRetry(DownloadInfo downloadInfo, BaseException baseException) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, String.format("onRetry on %s because of : %s", downloadInfo.getName(), baseException != null ? baseException.getErrorMessage() : "unkown"));
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onRetryDelay(DownloadInfo downloadInfo, BaseException baseException) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, String.format("onRetryDelay on %s because of : %s", downloadInfo.getName(), baseException != null ? baseException.getErrorMessage() : "unkown"));
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onStart -- " + downloadInfo.getName());
    }

    @Override // com.byazt.fn.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (!com.byazt.nu.hp.hp() || downloadInfo == null) {
            return;
        }
        com.byazt.nu.hp.l(TAG, " onSuccessed -- " + downloadInfo.getName() + " " + downloadInfo.isSuccessByCache());
    }
}
