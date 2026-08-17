package com.byazt.n;

import android.content.Context;
import androidx.core.view.PointerIconCompat;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, 54})
/* loaded from: classes3.dex */
public class a implements com.byazt.f.w {
    public Context hp;

    public a(Context context) {
        this.hp = context.getApplicationContext();
    }

    @Override // com.byazt.f.w
    public void hp(Context context, String str) {
        com.byazt.l.hp.hp().hp(str);
    }

    @Override // com.byazt.f.w
    public void hp(int i2, int i3, String str, int i4, long j2) {
        DownloadInfo downloadInfo;
        com.byazt.zv.l lVarHp;
        Context context = this.hp;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2)) == null || downloadInfo.getStatus() == 0 || (lVarHp = com.byazt.w.a.hp().hp(downloadInfo)) == null) {
            return;
        }
        if (i3 == 1) {
            com.byazt.l.hp.hp(downloadInfo, lVarHp);
            if (AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType())) {
                com.byazt.t.hp.hp().hp(downloadInfo, lVarHp.l(), lVarHp.jl(), lVarHp.w(), downloadInfo.getTitle(), lVarHp.j(), downloadInfo.getTargetFilePath());
                return;
            }
            return;
        }
        if (i3 == 3) {
            com.byazt.r.hp.hp().hp("download_notification", "download_notification_install", com.byazt.l.hp.l(new JSONObject(), downloadInfo), lVarHp);
            return;
        }
        if (i3 == 5) {
            com.byazt.r.hp.hp().hp("download_notification", "download_notification_pause", lVarHp);
        } else if (i3 == 6) {
            com.byazt.r.hp.hp().hp("download_notification", "download_notification_continue", lVarHp);
        } else {
            if (i3 != 7) {
                return;
            }
            com.byazt.r.hp.hp().hp("download_notification", "download_notification_click", lVarHp);
        }
    }

    @Override // com.byazt.f.w
    public boolean hp(int i2, boolean z2) {
        if (jl.v() != null) {
            return jl.v().hp(z2);
        }
        return false;
    }

    @Override // com.byazt.f.w
    public void hp(DownloadInfo downloadInfo) throws JSONException {
        if (downloadInfo == null) {
            return;
        }
        com.byazt.l.s.hp().hp(downloadInfo);
        if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("report_download_cancel", 1) == 1) {
            com.byazt.r.hp.hp().hp(downloadInfo, new BaseException(PointerIconCompat.TYPE_NO_DROP, ""));
        } else {
            com.byazt.r.hp.hp().l(downloadInfo, new BaseException(PointerIconCompat.TYPE_NO_DROP, ""));
        }
    }

    @Override // com.byazt.f.w
    public void hp(int i2, int i3, String str, String str2, String str3) {
        DownloadInfo downloadInfo;
        Context context = this.hp;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2)) == null || downloadInfo.getStatus() != -3) {
            return;
        }
        downloadInfo.setPackageName(str2);
        com.byazt.t.l.hp().hp(this.hp, downloadInfo);
    }

    @Override // com.byazt.f.w
    public boolean hp() {
        return com.byazt.t.l.hp().l();
    }
}
