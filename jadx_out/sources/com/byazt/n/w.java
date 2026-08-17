package com.byazt.n;

import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.y.zy;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements com.byazt.no.jx {
    @Override // com.byazt.no.jx
    public void hp(int i2, String str, JSONObject jSONObject) throws JSONException {
        com.byazt.zv.l lVarHp;
        DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(i2);
        if (downloadInfo == null || (lVarHp = com.byazt.w.a.hp().hp(downloadInfo)) == null) {
            return;
        }
        if ("install_view_result".equals(str)) {
            jSONObject = zy.hp(jSONObject);
            com.byazt.l.hp.hp(jSONObject, downloadInfo);
            zy.hp(jSONObject, "model_id", Long.valueOf(lVarHp.l()));
        }
        com.byazt.r.hp.hp().l(str, jSONObject, lVarHp);
    }

    @Override // com.byazt.no.jx
    public void l(int i2, String str, JSONObject jSONObject) {
        com.byazt.zv.l lVarHp;
        DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(i2);
        if (downloadInfo == null || (lVarHp = com.byazt.w.a.hp().hp(downloadInfo)) == null) {
            return;
        }
        com.byazt.r.hp.hp().hp(str, jSONObject, lVarHp);
    }
}
