package com.byazt.t;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.yk.Downloader;
import com.byazt.yy.DownloadModel;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Calendar;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 311, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f25624a;
    public volatile boolean eb;
    public volatile DownloadInfo hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile DownloadInfo f25625j;
    public volatile DownloadInfo jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile DownloadInfo f25626l;

    /* renamed from: w, reason: collision with root package name */
    public volatile boolean f25627w;

    @com.byazt.kj.hp(hp = {0, 1, 311, 1132})
    public static class hp {
        public static gu hp = new gu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        if (this.f25627w) {
            return;
        }
        String strValueOf = String.valueOf(l());
        if (TextUtils.isEmpty(strValueOf)) {
            return;
        }
        SharedPreferences kVStore = com.byazt.ym.a.getKVStore(jl.getContext(), "sp_download_retain", 0);
        if (strValueOf.equals(kVStore.getString("unfinished_pushed_update_time", "0"))) {
            String string = kVStore.getString("unfinished_pushed_id", "0");
            if (string == null) {
                string = "0";
            }
            this.hp = Downloader.getInstance(jl.getContext()).getDownloadInfo(Integer.parseInt(string));
        }
        if (strValueOf.equals(kVStore.getString("uninstalled_pushed_update_time", "0"))) {
            String string2 = kVStore.getString("uninstalled_pushed_id", "0");
            if (string2 == null) {
                string2 = "0";
            }
            this.f25626l = Downloader.getInstance(jl.getContext()).getDownloadInfo(Integer.parseInt(string2));
        }
        if (strValueOf.equals(kVStore.getString("unfinished_pop_up_update_time", "0"))) {
            String string3 = kVStore.getString("unfinished_pop_up_id", "0");
            if (string3 == null) {
                string3 = "0";
            }
            this.jx = Downloader.getInstance(jl.getContext()).getDownloadInfo(Integer.parseInt(string3));
        }
        if (strValueOf.equals(kVStore.getString("uninstalled_pop_up_update_time", "0"))) {
            String string4 = kVStore.getString("uninstalled_pop_up_id", "0");
            this.f25625j = Downloader.getInstance(jl.getContext()).getDownloadInfo(Integer.parseInt(string4 != null ? string4 : "0"));
        }
        this.f25627w = true;
    }

    public void l(DownloadModel downloadModel, DownloadInfo downloadInfo) throws JSONException {
        if (hp(downloadInfo, downloadModel) && jl.ns() != null && jl.ns().l(downloadModel, downloadInfo)) {
            com.byazt.r.hp.hp().hp("download_uninstalled_push_retain", downloadModel.getId());
        }
    }

    private gu() {
        this.hp = null;
        this.f25626l = null;
        this.jx = null;
        this.f25625j = null;
        this.f25627w = false;
        this.f25624a = false;
        this.eb = false;
        com.byazt.l.w.hp().l(new Runnable() { // from class: com.byazt.t.gu.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                try {
                    gu.this.jx();
                } catch (Exception e2) {
                    com.byazt.u.jx.hp().hp(false, e2, "读取sp出错");
                }
            }
        });
    }

    public static gu hp() {
        return hp.hp;
    }

    public void hp(DownloadModel downloadModel, DownloadInfo downloadInfo) {
        if (hp(downloadInfo) && jl.ns() != null && jl.ns().hp(downloadModel, downloadInfo)) {
            com.byazt.r.hp.hp().hp("download_unfinished_push_retain", downloadModel.getId());
        }
    }

    public long l() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    private boolean hp(DownloadInfo downloadInfo) {
        return downloadInfo != null && downloadInfo.getStatus() == -2;
    }

    private boolean hp(DownloadInfo downloadInfo, DownloadModel downloadModel) {
        return (downloadInfo == null || downloadModel == null || com.byazt.y.zy.hp(downloadModel)) ? false : true;
    }
}
