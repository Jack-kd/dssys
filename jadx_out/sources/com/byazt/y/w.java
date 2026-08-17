package com.byazt.y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static boolean a(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("clean_space_switch", 0) == 1;
    }

    public static boolean eb(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("clean_app_cache_dir", 0) == 1;
    }

    @Nullable
    public static JSONObject hp() {
        return com.byazt.t.jl.q().optJSONObject("ad");
    }

    public static boolean j(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("clean_fetch_apk_switch", 0L) == 1;
    }

    public static int jx(@NonNull DownloadModel downloadModel) {
        return hp(l(downloadModel));
    }

    @NonNull
    public static com.byazt.jb.hp l(DownloadModel downloadModel) {
        return com.byazt.jb.hp.hp(hp(downloadModel));
    }

    public static boolean w(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("clean_space_before_download_switch", 0L) == 1;
    }

    public static int a(com.byazt.zv.l lVar) {
        return hp((com.byazt.zv.hp) lVar).hp("app_install_keep_receiver_time_s", 60);
    }

    public static long eb(com.byazt.zv.l lVar) {
        return hp((com.byazt.zv.hp) lVar).hp("ttdownloader_app_install_detect_sum_timestamp", 600000L);
    }

    public static JSONObject hp(DownloadModel downloadModel) {
        if (downloadModel == null) {
            return null;
        }
        return downloadModel.isAd() ? zy.hp(com.byazt.t.jl.q(), downloadModel.getDownloadSettings()) : downloadModel.getDownloadSettings();
    }

    public static long j() {
        long jOptLong = com.byazt.t.jl.q().optLong("start_install_interval");
        return jOptLong == 0 ? PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS : jOptLong;
    }

    public static boolean l(com.byazt.zv.hp hpVar) {
        return hp(hpVar).hp("pause_reserve_on_wifi", 0) == 1 && hpVar.xs();
    }

    public static long w() {
        long jOptLong = com.byazt.t.jl.q().optLong("next_install_min_interval");
        if (jOptLong == 0) {
            return 10000L;
        }
        return jOptLong;
    }

    public static boolean j(com.byazt.zv.l lVar) {
        return com.byazt.t.jl.q().optInt("market_install_finish_opt_broadcast", 0) == 1 || hp((com.byazt.zv.hp) lVar).hp("market_install_finish_opt_broadcast", 0) == 1;
    }

    public static boolean jx(com.byazt.zv.hp hpVar) {
        return hp(hpVar).hp("cancel_pause_optimise_wifi_retain_switch", 0) == 1 && hpVar.xs();
    }

    public static boolean w(com.byazt.zv.l lVar) {
        return com.byazt.t.jl.q().optInt("market_install_finish_opt_polling_thread", 0) == 1 || hp((com.byazt.zv.hp) lVar).hp("market_install_finish_opt_polling_thread", 0) == 1;
    }

    public static long l(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("storage_min_size", 0L);
    }

    @NonNull
    public static com.byazt.jb.hp hp(com.byazt.zv.hp hpVar) {
        if (hpVar == null) {
            return com.byazt.jb.hp.jx();
        }
        if (hpVar.ec() != 0) {
            return com.byazt.jb.hp.hp(hpVar.ec());
        }
        if (hpVar.jx()) {
            return com.byazt.jb.hp.hp(hp());
        }
        if (hpVar.vv() != null) {
            return com.byazt.jb.hp.hp(hpVar.vv());
        }
        return com.byazt.jb.hp.jx();
    }

    public static long jx(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("clean_fetch_apk_head_time_out", 800L);
    }

    public static boolean l(com.byazt.jb.hp hpVar) {
        return hpVar != null && hpVar.hp("kllk_need_rename_apk", 0) == 1;
    }

    public static boolean jx() {
        return com.byazt.t.jl.q().optInt("is_enable_start_install_again") == 1;
    }

    public static boolean l() {
        return com.byazt.jb.hp.jx().hp("fix_notification_anr");
    }

    public static boolean jx(com.byazt.zv.l lVar) {
        return com.byazt.t.jl.q().optInt("market_install_finish_opt_switch", 0) == 1 || hp((com.byazt.zv.hp) lVar).hp("market_install_finish_opt_switch", 0) == 1;
    }

    public static int l(com.byazt.zv.l lVar) {
        return hp((com.byazt.zv.hp) lVar).hp("ttdownloader_app_install_detect_interval_ms", 20000);
    }

    public static int hp(@NonNull com.byazt.jb.hp hpVar) {
        return hpVar.hp("external_storage_permission_path_type", 0);
    }

    public static double hp(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("clean_min_install_size", 0.0d);
    }

    public static int hp(com.byazt.zv.l lVar) {
        return hp((com.byazt.zv.hp) lVar).hp("ttdownloader_app_install_detect_count", 15);
    }
}
