package com.byazt.bu;

import android.content.Context;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE, 34})
/* loaded from: classes2.dex */
public class l extends com.byazt.fn.j {

    /* renamed from: a, reason: collision with root package name */
    public String f18685a;
    public com.byazt.li.hp eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public String f18686j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f18687l;

    /* renamed from: w, reason: collision with root package name */
    public String f18688w;

    public l(Context context, int i2, String str, String str2, String str3, String str4) {
        if (context != null) {
            this.hp = context.getApplicationContext();
        } else {
            this.hp = com.byazt.yk.jx.mp();
        }
        this.f18687l = i2;
        this.jx = str;
        this.f18686j = str2;
        this.f18688w = str3;
        this.f18685a = str4;
    }

    @Override // com.byazt.fn.j
    public com.byazt.li.hp hp() {
        Context context;
        com.byazt.li.hp hpVar = this.eb;
        return (hpVar != null || (context = this.hp) == null) ? hpVar : new hp(context, this.f18687l, this.jx, this.f18686j, this.f18688w, this.f18685a);
    }

    @Override // com.byazt.fn.j, com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (downloadInfo == null || this.hp == null || !downloadInfo.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onFailed(downloadInfo, baseException);
    }

    @Override // com.byazt.fn.j, com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPause(downloadInfo);
    }

    @Override // com.byazt.fn.j, com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPrepare(downloadInfo);
    }

    @Override // com.byazt.fn.j, com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onProgress(downloadInfo);
    }

    @Override // com.byazt.fn.j, com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onStart(downloadInfo);
    }

    @Override // com.byazt.fn.j, com.byazt.fn.AbsDownloadListener, com.byazt.fn.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (downloadInfo == null || this.hp == null) {
            return;
        }
        if (downloadInfo.canShowNotification() && (!downloadInfo.isAutoInstallWithoutNotification() || !downloadInfo.isAutoInstall())) {
            super.onSuccessed(downloadInfo);
        }
        if (downloadInfo.isAutoInstall()) {
            com.byazt.wm.l.hp(downloadInfo);
        }
    }

    public l(com.byazt.li.hp hpVar) {
        this.hp = com.byazt.yk.jx.mp();
        this.eb = hpVar;
    }
}
