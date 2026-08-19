package com.byazt.n;

import android.content.pm.PackageInfo;
import com.byazt.fn.zy;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, 34})
/* loaded from: classes3.dex */
public class l implements zy {
    @Override // com.byazt.fn.zy
    public void hp(DownloadInfo downloadInfo) throws BaseException {
        PackageInfo packageInfoHp = com.byazt.ni.jx.hp(jl.getContext(), downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
        if (packageInfoHp != null) {
            downloadInfo.setAppVersionCode(packageInfoHp.versionCode);
        }
    }

    @Override // com.byazt.fn.zy
    public boolean l(DownloadInfo downloadInfo) {
        return downloadInfo != null && com.byazt.y.w.l() && downloadInfo.getPackageInfo() == null;
    }
}
