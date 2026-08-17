package com.byazt.n;

import androidx.annotation.WorkerThread;
import com.byazt.fn.gu;
import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.w.q;
import com.byazt.y.zy;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, 38})
/* loaded from: classes3.dex */
public class j implements com.byazt.f.s, gu {
    @Override // com.byazt.f.s
    public void hp(DownloadInfo downloadInfo, boolean z2) {
        if (downloadInfo == null) {
            return;
        }
        hp(downloadInfo, downloadInfo.getRealStatus(), z2);
    }

    @WorkerThread
    public void hp(DownloadInfo downloadInfo, int i2, boolean z2) {
        com.byazt.w.a.hp().l();
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
        if (lVarHp == null) {
            return;
        }
        try {
            if (z2) {
                lVarHp.jx(downloadInfo.getFailedResumeCount());
            } else if (lVarHp.ud() == -1) {
                return;
            } else {
                lVarHp.jx(-1);
            }
            q.hp().hp(lVarHp);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("download_id", downloadInfo.getId());
            jSONObject.put("name", downloadInfo.getName());
            jSONObject.put("url", downloadInfo.getUrl());
            jSONObject.put("download_time", downloadInfo.getDownloadTime());
            jSONObject.put("download_status", i2);
            jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
            jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
            jSONObject.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
            jSONObject.put("chunk_count", downloadInfo.getChunkCount());
            jSONObject.put("launch_resumed", z2 ? 1 : 2);
            jSONObject.put("failed_resume_count", downloadInfo.getFailedResumeCount());
            com.byazt.r.hp.hp().hp(com.byazt.ih.l.AD_TAG_FEED, "download_uncompleted", jSONObject, lVarHp);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.fn.gu
    public void hp() {
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.n.j.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                DownloadInfo downloadInfo;
                int spIntVal;
                com.byazt.w.a.hp().l();
                for (com.byazt.zv.l lVar : com.byazt.w.a.hp().jx().values()) {
                    int iEc = lVar.ec();
                    if (iEc != 0) {
                        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(iEc);
                        if (hpVarHp.l("notification_opt_2") == 1 && (downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(iEc)) != null) {
                            if (zy.l(lVar) && !zy.jx(lVar.w())) {
                                int spIntVal2 = downloadInfo.getSpIntVal("restart_notify_open_app_count");
                                if (spIntVal2 < hpVarHp.hp("noti_open_restart_times", 1)) {
                                    s.hp().w(lVar);
                                    downloadInfo.setSpValue("restart_notify_open_app_count", String.valueOf(spIntVal2 + 1));
                                }
                            } else if (downloadInfo.getRealStatus() == -2) {
                                int spIntVal3 = downloadInfo.getSpIntVal("restart_notify_continue_count");
                                if (spIntVal3 < hpVarHp.hp("noti_continue_restart_times", 1)) {
                                    s.hp().hp(lVar);
                                    downloadInfo.setSpValue("restart_notify_continue_count", String.valueOf(spIntVal3 + 1));
                                }
                            } else if (downloadInfo.getRealStatus() == -3 && com.byazt.xq.a.jx(downloadInfo) && !zy.l(lVar) && (spIntVal = downloadInfo.getSpIntVal("restart_notify_install_count")) < hpVarHp.hp("noti_install_restart_times", 1)) {
                                s.hp().jx(lVar);
                                downloadInfo.setSpValue("restart_notify_install_count", String.valueOf(spIntVal + 1));
                            }
                        }
                    }
                }
            }
        }, 5000L);
    }
}
