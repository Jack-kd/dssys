package com.byazt.n;

import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.byazt.y.zy;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static class hp {
        public static s hp = new s();
    }

    public void a(@NonNull com.byazt.zv.l lVar) {
        hp(lVar, com.byazt.jb.hp.hp(lVar.ec()).hp("noti_open_delay_secs", 5));
    }

    public void j(@NonNull com.byazt.zv.l lVar) {
        jx(lVar, com.byazt.jb.hp.hp(lVar.ec()).hp("noti_install_delay_secs", 5));
    }

    public void jx(@NonNull com.byazt.zv.l lVar) {
        jx(lVar, 5L);
    }

    public void l(com.byazt.zv.l lVar) {
        if (lVar == null) {
            return;
        }
        l(lVar, com.byazt.jb.hp.hp(lVar.ec()).hp("noti_continue_delay_secs", 5));
    }

    public void w(@NonNull com.byazt.zv.l lVar) {
        hp(lVar, 5L);
    }

    private s() {
    }

    public static s hp() {
        return hp.hp;
    }

    private void jx(@NonNull final com.byazt.zv.l lVar, long j2) {
        final int iEc = lVar.ec();
        if (com.byazt.jb.hp.hp(iEc).l("notification_opt_2") != 1) {
            return;
        }
        hp(iEc);
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.n.s.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(iEc);
                JSONObject jSONObject = new JSONObject();
                zy.hp(jSONObject, "ttdownloader_type", (Object) 2);
                com.byazt.y.a.jx(downloadInfo, jSONObject);
                if (zy.l(lVar)) {
                    zy.hp(jSONObject, "error_code", (Object) 1002);
                } else {
                    s.this.hp(iEc, lVar, jSONObject);
                }
                com.byazt.r.hp.hp().l("download_notification_try_show", jSONObject, lVar);
            }
        }, j2 * 1000);
    }

    private void l(@NonNull final com.byazt.zv.l lVar, long j2) {
        final int iEc = lVar.ec();
        if (com.byazt.jb.hp.hp(iEc).l("notification_opt_2") != 1) {
            return;
        }
        hp(iEc);
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.n.s.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(iEc);
                JSONObject jSONObject = new JSONObject();
                zy.hp(jSONObject, "ttdownloader_type", (Object) 1);
                com.byazt.y.a.jx(downloadInfo, jSONObject);
                if (downloadInfo == null || -2 != downloadInfo.getRealStatus() || downloadInfo.isPauseReserveOnWifi()) {
                    zy.hp(jSONObject, "error_code", (Object) 1001);
                } else {
                    s.this.hp(iEc, lVar, jSONObject);
                }
                com.byazt.r.hp.hp().l("download_notification_try_show", jSONObject, lVar);
            }
        }, j2 * 1000);
    }

    public void hp(com.byazt.zv.l lVar) {
        l(lVar, 5L);
    }

    public void hp(@NonNull final com.byazt.zv.l lVar, long j2) {
        final int iEc = lVar.ec();
        if (com.byazt.jb.hp.hp(iEc).l("notification_opt_2") != 1) {
            return;
        }
        hp(iEc);
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.n.s.3
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(iEc);
                JSONObject jSONObject = new JSONObject();
                zy.hp(jSONObject, "ttdownloader_type", (Object) 3);
                com.byazt.y.a.jx(downloadInfo, jSONObject);
                if (zy.jx(lVar.w())) {
                    zy.hp(jSONObject, "error_code", (Object) 1003);
                } else {
                    s.this.hp(iEc, lVar, jSONObject);
                }
                com.byazt.r.hp.hp().l("download_notification_try_show", jSONObject, lVar);
            }
        }, j2 * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, com.byazt.zv.l lVar, JSONObject jSONObject) throws JSONException {
        if (!com.byazt.bu.j.hp()) {
            zy.hp(jSONObject, "error_code", (Object) 1004);
            return;
        }
        DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(i2);
        if (downloadInfo == null) {
            zy.hp(jSONObject, "error_code", (Object) 1005);
            return;
        }
        if (com.byazt.li.l.hp().w(i2) != null) {
            com.byazt.li.l.hp().a(i2);
        }
        com.byazt.bu.hp hpVar = new com.byazt.bu.hp(jl.getContext(), i2, downloadInfo.getTitle(), downloadInfo.getSavePath(), downloadInfo.getName(), downloadInfo.getExtra());
        hpVar.hp(downloadInfo.getCurBytes());
        hpVar.l(downloadInfo.getTotalBytes());
        hpVar.hp(downloadInfo.getStatus(), null, false, false);
        com.byazt.li.l.hp().hp(hpVar);
        hpVar.hp((BaseException) null, false);
        com.byazt.r.hp.hp().l("download_notification_show", jSONObject, lVar);
    }

    public void hp(int i2) {
        DownloadInfo downloadInfo;
        if (com.byazt.bu.jx.hp().hp(i2) != null || (downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(i2)) == null) {
            return;
        }
        com.byazt.bu.jx.hp().hp(i2, downloadInfo.getIconUrl());
    }
}
