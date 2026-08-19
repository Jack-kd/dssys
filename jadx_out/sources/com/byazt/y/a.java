package com.byazt.y;

import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.ni.a;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 54})
/* loaded from: classes3.dex */
public class a {
    public static void hp(DownloadInfo downloadInfo, JSONObject jSONObject) {
        try {
            jx(downloadInfo, jSONObject);
            com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
            if (lVarHp == null) {
                return;
            }
            jSONObject.put("is_update_download", lVarHp.zx() ? 1 : 2);
            hp(lVarHp, jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void jx(DownloadInfo downloadInfo, JSONObject jSONObject) {
        if (downloadInfo != null) {
            try {
                jSONObject.putOpt("total_bytes", Long.valueOf(downloadInfo.getTotalBytes()));
                jSONObject.putOpt("cur_bytes", Long.valueOf(downloadInfo.getCurBytes()));
                jSONObject.putOpt("chunk_count", Integer.valueOf(downloadInfo.getChunkCount()));
                jSONObject.putOpt("app_name", downloadInfo.getTitle());
                jSONObject.putOpt("network_quality", downloadInfo.getNetworkQuality());
                jSONObject.putOpt("save_path", downloadInfo.getSavePath());
                jSONObject.putOpt("file_name", downloadInfo.getName());
                jSONObject.putOpt("download_status", Integer.valueOf(downloadInfo.getRealStatus()));
                com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo.getId());
                if (lVarHp != null) {
                    jSONObject.putOpt("click_download_time", Long.valueOf(lVarHp.nd()));
                    jSONObject.putOpt("click_download_size", Long.valueOf(lVarHp.hd()));
                }
            } catch (Exception unused) {
                return;
            }
        }
        jSONObject.putOpt("permission_notification", Integer.valueOf(com.byazt.bu.j.hp() ? 1 : 2));
        jSONObject.putOpt("network_available", Integer.valueOf(com.byazt.xq.a.jx(com.byazt.t.jl.getContext()) ? 1 : 2));
        jSONObject.putOpt("network_is_wifi", Integer.valueOf(com.byazt.xq.a.l(com.byazt.t.jl.getContext()) ? 1 : 2));
    }

    public static void l(DownloadInfo downloadInfo, JSONObject jSONObject) {
        com.byazt.zv.l lVarHp;
        if (jSONObject == null || (lVarHp = com.byazt.w.a.hp().hp(downloadInfo)) == null) {
            return;
        }
        try {
            jx(downloadInfo, jSONObject);
            jSONObject.putOpt("time_after_click", Long.valueOf(System.currentTimeMillis() - lVarHp.nd()));
            jSONObject.putOpt("click_download_size", Long.valueOf(lVarHp.hd()));
            jSONObject.putOpt("download_length", Long.valueOf(downloadInfo.getCurBytes()));
            jSONObject.putOpt("download_apk_size", Long.valueOf(downloadInfo.getTotalBytes()));
            lVarHp.d();
            com.byazt.w.q.hp().hp(lVarHp);
            jSONObject.put("click_pause_times", lVarHp.o());
            long totalBytes = downloadInfo.getTotalBytes();
            long curBytes = downloadInfo.getCurBytes();
            jSONObject.put("download_percent", (curBytes < 0 || totalBytes <= 0) ? 0.0d : curBytes / totalBytes);
            jSONObject.put("download_status", downloadInfo.getRealStatus());
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jR = lVarHp.r();
            if (jR > 0) {
                jSONObject.put("time_from_start_download", jCurrentTimeMillis - jR);
            }
            long jWv = lVarHp.wv();
            if (jWv > 0) {
                jSONObject.put("time_from_download_resume", jCurrentTimeMillis - jWv);
            }
            jSONObject.putOpt("fail_status", Integer.valueOf(lVarHp.nu()));
            jSONObject.putOpt("fail_msg", lVarHp.dy());
            jSONObject.put("download_failed_times", lVarHp.b());
            jSONObject.put("can_show_notification", com.byazt.bu.j.hp() ? 1 : 2);
            jSONObject.put("first_speed_time", downloadInfo.getFirstSpeedTime());
            jSONObject.put("all_connect_time", downloadInfo.getAllConnectTime());
            jSONObject.put("download_prepare_time", downloadInfo.getDownloadPrepareTime());
            jSONObject.put("download_time", downloadInfo.getRealDownloadTime() + downloadInfo.getAllConnectTime() + downloadInfo.getDownloadPrepareTime());
        } catch (Throwable unused) {
        }
    }

    public static void hp(com.byazt.zv.l lVar, JSONObject jSONObject) {
        if (jSONObject == null || lVar == null) {
            return;
        }
        try {
            jSONObject.put("is_patch_apply_handled", lVar.vq() ? 1 : 0);
            jSONObject.put("origin_mime_type", lVar.y());
        } catch (Throwable unused) {
        }
    }

    public static void hp(JSONObject jSONObject, int i2) {
        if (jSONObject == null) {
            return;
        }
        JSONArray jSONArrayW = com.byazt.jb.hp.hp(i2).w("ah_report_config");
        if (jSONArrayW != null) {
            for (int i3 = 0; i3 < jSONArrayW.length(); i3++) {
                try {
                    String string = jSONArrayW.getString(i3);
                    a.hp hpVarHp = com.byazt.wm.hp.hp(string);
                    if (hpVarHp != null) {
                        jSONObject.put(string.replaceAll("\\.", "_"), hpVarHp.a() + "_" + hpVarHp.eb());
                    }
                } catch (Throwable unused) {
                }
            }
        }
        try {
            jSONObject.put("is_unknown_source_enabled", com.byazt.ni.l.hp(com.byazt.yk.jx.mp()) ? 1 : 2);
        } catch (Throwable unused2) {
        }
    }

    public static JSONObject hp(@NonNull JSONObject jSONObject, com.byazt.zv.hp hpVar) throws JSONException {
        zy.hp(jSONObject, AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, zy.hp(hpVar.a(), "open_url_not_exist"));
        return jSONObject;
    }

    public static void hp(@NonNull JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.putOpt("harmony_api_version", com.byazt.wm.j.hp());
            jSONObject.putOpt("harmony_release_type", com.byazt.wm.j.jx());
            jSONObject.putOpt("harmony_build_version", com.byazt.wm.j.j());
            jSONObject.putOpt("pure_mode", Integer.valueOf(com.byazt.wm.j.hp(com.byazt.t.jl.getContext()) ? 1 : 2));
            jSONObject.putOpt("pure_mode_enable", Integer.valueOf(com.byazt.wm.j.w() ? 1 : 2));
            jSONObject.putOpt("harmony_version", com.byazt.wm.j.l());
            jSONObject.putOpt("pure_enhanced_mode", Integer.valueOf(com.byazt.wm.j.l(com.byazt.t.jl.getContext()) ? 1 : 2));
            jSONObject.putOpt("pure_enhanced_mode_enable", Integer.valueOf(com.byazt.wm.j.a() ? 1 : 2));
        } catch (Exception unused) {
        }
    }

    public static JSONObject l(@NonNull JSONObject jSONObject, com.byazt.zv.hp hpVar) throws JSONException {
        zy.hp(jSONObject, com.byazt.wm.w.e().replaceAll("\\.", "_") + " versionCode", Integer.valueOf(zy.l(com.byazt.t.jl.getContext(), com.byazt.wm.w.e())));
        zy.hp(jSONObject, com.byazt.wm.w.e().replaceAll("\\.", "_") + " versionName", zy.jx(com.byazt.t.jl.getContext(), com.byazt.wm.w.e()));
        return jSONObject;
    }
}
