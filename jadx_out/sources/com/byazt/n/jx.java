package com.byazt.n;

import com.byazt.b.k;
import com.byazt.fn.zy;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, 30})
/* loaded from: classes3.dex */
public class jx implements zy {
    @Override // com.byazt.fn.zy
    public void hp(DownloadInfo downloadInfo) throws BaseException {
        k kVarGu = jl.gu();
        if (downloadInfo == null || kVarGu == null) {
            return;
        }
        File fileHp = hp(downloadInfo.getPackageName(), downloadInfo.getTargetFilePath());
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
        if (lVarHp != null) {
            com.byazt.y.zy.hp(lVarHp.eb());
        }
        downloadInfo.setMimeType(AdBaseConstants.MIME_APK);
        downloadInfo.setName(fileHp.getName());
        downloadInfo.setMd5(null);
    }

    @Override // com.byazt.fn.zy
    public boolean l(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            return com.byazt.pp.l.hp(com.byazt.jb.hp.hp(downloadInfo.getId()), downloadInfo.getMimeType());
        }
        return false;
    }

    private File hp(String str, String str2) {
        File file = new File(str2);
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            str = name.substring(0, iLastIndexOf);
        }
        return new File(file.getParent(), str + ".apk");
    }
}
