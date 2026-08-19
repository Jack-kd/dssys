package com.byazt.l;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;
import com.anythink.core.common.d.i;
import com.anythink.core.common.f.n;
import com.byazt.ei.hp;
import com.byazt.fn.dy;
import com.byazt.fu.DownloadInfo;
import com.byazt.ni.l;
import com.byazt.oy.DownloadStatus;
import com.byazt.rx.BaseConstants;
import com.byazt.t.gu;
import com.byazt.t.jl;
import com.byazt.w.j;
import com.byazt.y.zy;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.kwad.library.solder.lib.ext.PluginError;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.sigmob.sdk.base.common.C1244a;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 34, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.me.hp, l.jx, dy, hp.InterfaceC0218hp {
    public static String hp = "hp";

    /* renamed from: j, reason: collision with root package name */
    public static volatile hp f22338j;
    public l jx;

    /* renamed from: l, reason: collision with root package name */
    public long f22339l;

    @com.byazt.kj.hp(hp = {0, 1, 34, 170})
    @WorkerThread
    /* renamed from: com.byazt.l.hp$hp, reason: collision with other inner class name */
    public class RunnableC0302hp implements Runnable {

        /* renamed from: l, reason: collision with root package name */
        public final int f22344l;

        public RunnableC0302hp(int i2) {
            this.f22344l = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.byazt.w.a.hp().l();
                ConcurrentHashMap<Long, com.byazt.zv.l> concurrentHashMapJx = com.byazt.w.a.hp().jx();
                if (concurrentHashMapJx == null || concurrentHashMapJx.isEmpty()) {
                    return;
                }
                hp.this.hp(concurrentHashMapJx, this.f22344l);
            } catch (Exception unused) {
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 34, 255})
    public static class l implements Runnable {
        public long hp;

        /* renamed from: j, reason: collision with root package name */
        public int f22345j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public int f22346l;

        /* renamed from: w, reason: collision with root package name */
        public long f22347w;

        /* JADX INFO: Access modifiers changed from: private */
        public void l() {
            this.f22347w = System.currentTimeMillis();
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (hp()) {
                    hp.hp().hp(this.hp, this.f22346l);
                }
            } catch (Throwable unused) {
            }
        }

        private l(long j2, int i2, long j3, int i3) {
            this.hp = j2;
            this.f22346l = i2;
            this.jx = j3;
            this.f22345j = i3;
        }

        public boolean hp() throws JSONException {
            DownloadInfo downloadInfo;
            com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(this.hp);
            if (lVarJ == null || zy.l(lVarJ) || lVarJ.jx.get() || (downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(lVarJ.ec())) == null) {
                return false;
            }
            long jAs = lVarJ.as();
            long jHp = zy.hp(Environment.getDataDirectory());
            long jMin = Math.min(524288000L, jHp / 10);
            long totalBytes = downloadInfo.getTotalBytes();
            double d2 = totalBytes;
            boolean z2 = jAs <= -1 || totalBytes <= -1 || ((double) jAs) >= ((double) jMin) + (2.5d * d2);
            boolean zHp = com.byazt.ni.l.hp(jl.getContext());
            JSONObject jSONObject = new JSONObject();
            int iHp = hp(z2, lVarJ, downloadInfo, zHp, jSONObject);
            this.f22345j = iHp;
            try {
                jSONObject.putOpt("fail_status", Integer.valueOf(iHp));
                jSONObject.putOpt("available_space", Long.valueOf(jAs / 1048576));
                jSONObject.putOpt("total_space", Long.valueOf(jHp / 1048576));
                if (totalBytes > 0) {
                    jSONObject.putOpt(NativeUnifiedADAppInfoImpl.Keys.PACKAGE_SIZE, Long.valueOf(totalBytes / 1048576));
                }
                jSONObject.putOpt("space_enough", Integer.valueOf(z2 ? 1 : 2));
                if (jAs > 0 && totalBytes > 0) {
                    jSONObject.put("available_space_ratio", jAs / d2);
                }
                jSONObject.putOpt("permission_unknown_source_install", Integer.valueOf(zHp ? 1 : 2));
                jSONObject.put("is_update_download", lVarJ.zx() ? 1 : 2);
            } catch (Exception unused) {
            }
            com.byazt.r.hp.hp().l("install_failed", jSONObject, lVarJ);
            return true;
        }

        private int hp(boolean z2, com.byazt.zv.l lVar, DownloadInfo downloadInfo, boolean z3, JSONObject jSONObject) {
            com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
            int i2 = 1;
            if (hpVarHp.hp("install_failed_check_ttmd5", 1) == 1) {
                int iCheckMd5Status = downloadInfo.checkMd5Status();
                try {
                    jSONObject.put("ttmd5_status", iCheckMd5Status);
                } catch (Throwable unused) {
                }
                if (!com.byazt.xq.a.hp(iCheckMd5Status)) {
                    return PluginError.ERROR_UPD_CAPACITY;
                }
            }
            int i3 = this.f22345j;
            if (i3 != 2000) {
                return i3;
            }
            if (hpVarHp.hp("install_failed_check_signature", 1) == 1 && zy.w(jl.getContext(), lVar.w())) {
                if (!zy.hp(zy.q(jl.getContext(), downloadInfo.getTargetFilePath()), zy.s(jl.getContext(), lVar.w()))) {
                    return PluginError.ERROR_UPD_REQUEST;
                }
            }
            if (!z2) {
                return 2002;
            }
            long j2 = this.f22347w;
            long j3 = this.jx;
            if (j2 <= j3) {
                return 2000;
            }
            try {
                jSONObject.put("install_time", j2 - j3);
                if (lVar.hq() <= this.jx) {
                    i2 = 0;
                }
                jSONObject.put("install_again", i2);
            } catch (Throwable unused2) {
            }
            if (z3) {
                return PluginError.ERROR_UPD_EXTRACT;
            }
            return 2003;
        }
    }

    private hp() {
        com.byazt.ni.l.hp(this);
        com.byazt.ei.hp.hp().hp(this);
    }

    public static String jx(@NonNull DownloadInfo downloadInfo, @NonNull com.byazt.zv.l lVar) throws JSONException {
        File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
        String str = null;
        if (file.exists()) {
            try {
                PackageInfo packageArchiveInfo = jl.getContext().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), com.byazt.ni.jx.hp());
                if (packageArchiveInfo != null) {
                    str = packageArchiveInfo.packageName;
                }
            } catch (Exception unused) {
            }
        }
        if (TextUtils.isEmpty(str) || str.equals(downloadInfo.getPackageName())) {
            return downloadInfo.getPackageName();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("real_package_name", str);
            jSONObject.put("input_package_name", downloadInfo.getPackageName());
        } catch (JSONException unused2) {
        }
        com.byazt.r.hp.hp().hp(com.byazt.ih.l.AD_TAG_FEED, "package_name_error", jSONObject, lVar);
        return str;
    }

    public static JSONObject l(JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (jSONObject != null && downloadInfo != null && com.byazt.jb.hp.hp(downloadInfo.getId()).hp("download_event_opt", 1) != 0) {
            try {
                long jL = zy.l(0L);
                double d2 = jL;
                jSONObject.put("available_space", d2 / 1048576.0d);
                long totalBytes = downloadInfo.getTotalBytes();
                double d3 = totalBytes;
                jSONObject.put("apk_size", d3 / 1048576.0d);
                if (jL > 0 && totalBytes > 0) {
                    jSONObject.put("available_space_ratio", d2 / d3);
                }
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }

    public synchronized void j() {
        l lVar = this.jx;
        if (lVar != null) {
            lVar.l();
            this.jx = null;
        }
    }

    public static hp hp() {
        if (f22338j == null) {
            synchronized (hp.class) {
                try {
                    if (f22338j == null) {
                        f22338j = new hp();
                    }
                } finally {
                }
            }
        }
        return f22338j;
    }

    @WorkerThread
    public static synchronized void hp(DownloadInfo downloadInfo, com.byazt.zv.l lVar) {
        if (downloadInfo == null) {
            com.byazt.u.jx.hp().hp("onDownloadFinish info null");
            return;
        }
        if (lVar == null) {
            com.byazt.u.jx.hp().hp("onDownloadFinish nativeModel null");
            return;
        }
        if (lVar.lv() != 1) {
            return;
        }
        com.byazt.n.s.hp().j(lVar);
        String strJx = jx(downloadInfo, lVar);
        com.byazt.w.a.hp().l(downloadInfo.getUrl(), strJx);
        Map<Long, com.byazt.zv.l> mapHp = com.byazt.w.a.hp().hp(downloadInfo.getUrl(), strJx);
        lVar.a(System.currentTimeMillis());
        lVar.w(2);
        lVar.l(strJx);
        mapHp.put(Long.valueOf(lVar.l()), lVar);
        com.byazt.w.q.hp().hp(mapHp.values());
        hp(lVar);
        gu.hp().l(lVar.n(), downloadInfo);
        lVar.jl(System.currentTimeMillis());
        s.hp().hp(downloadInfo, strJx);
        if (AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType())) {
            if (com.byazt.y.w.hp((com.byazt.zv.hp) lVar).hp("enable_app_install_receiver", 1) != 1 && jl.q().optInt("enable_app_install_receiver", 1) != 1) {
                com.byazt.t.zy.hp().hp(lVar);
            }
            hp().l(downloadInfo, lVar);
            if (lVar.ms()) {
                com.byazt.m.hp.hp().hp(downloadInfo.getId(), lVar.l(), lVar.jl(), strJx, downloadInfo.getTitle(), lVar.j(), downloadInfo.getTargetFilePath());
            }
            lVar.l();
            lVar.j();
        }
    }

    public void l(DownloadInfo downloadInfo, final com.byazt.zv.l lVar) {
        if (downloadInfo == null || lVar == null || com.byazt.jb.hp.hp(downloadInfo.getId()).hp("install_finish_check_ttmd5", 1) == 0) {
            return;
        }
        final String targetFilePath = downloadInfo.getTargetFilePath();
        if (TextUtils.isEmpty(targetFilePath)) {
            return;
        }
        w.hp().l(new Runnable() { // from class: com.byazt.l.hp.3
            @Override // java.lang.Runnable
            public void run() {
                String strHp = com.byazt.y.hp.hp(targetFilePath);
                if (TextUtils.isEmpty(strHp)) {
                    return;
                }
                com.byazt.ym.a.getKVStore(jl.getContext(), "sp_ttdownloader_md5", 0).edit().putString(String.valueOf(lVar.l()), strHp).apply();
            }
        });
    }

    @Override // com.byazt.ei.hp.InterfaceC0218hp
    public void jx() {
        com.byazt.nu.hp.l(hp, "onAppBackground()");
        hp(6);
    }

    @Override // com.byazt.ei.hp.InterfaceC0218hp
    public void l() {
        com.byazt.nu.hp.l(hp, "onAppForeground()");
        j();
        hp(5);
    }

    private int l(com.byazt.zv.l lVar) {
        int realStatus;
        double dHp = com.byazt.jb.hp.hp(lVar.ec()).hp("download_failed_finally_hours", 48.0d);
        if (dHp <= 0.0d) {
            return -1;
        }
        if (System.currentTimeMillis() - lVar.r() < dHp * 60.0d * 60.0d * 1000.0d) {
            return 1;
        }
        if (lVar.f28617j.get()) {
            return 0;
        }
        DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(lVar.ec());
        if (downloadInfo == null || (realStatus = downloadInfo.getRealStatus()) == -3 || realStatus == -4) {
            return -1;
        }
        if (!DownloadStatus.isDownloading(realStatus) && lVar.f28617j.compareAndSet(false, true)) {
            try {
                JSONObject jSONObject = new JSONObject();
                hp(jSONObject, downloadInfo);
                jSONObject.putOpt("download_status", Integer.valueOf(realStatus));
                jSONObject.putOpt("fail_status", Integer.valueOf(lVar.nu()));
                jSONObject.putOpt("fail_msg", lVar.dy());
                jSONObject.put("download_failed_times", lVar.b());
                if (downloadInfo.getTotalBytes() > 0) {
                    jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
                }
                jSONObject.put("is_update_download", lVar.zx() ? 1 : 2);
                com.byazt.r.hp.hp().hp(lVar.e(), "download_failed_finally", jSONObject, lVar);
                com.byazt.w.q.hp().hp(lVar);
                return 0;
            } catch (Throwable unused) {
            }
        }
        return 1;
    }

    private JSONObject l(@NonNull DownloadInfo downloadInfo, com.byazt.ni.hp hpVar) {
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
        if (lVarHp == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        hpVar.hp(jSONObject);
        try {
            jSONObject.put("download_id", downloadInfo.getId());
            jSONObject.put("name", downloadInfo.getName());
        } catch (Throwable unused) {
        }
        com.byazt.y.a.hp(jSONObject, downloadInfo.getId());
        com.byazt.r.hp.hp().hp(com.byazt.ih.l.AD_TAG_FEED, "ah_result", jSONObject, lVarHp);
        return jSONObject;
    }

    @WorkerThread
    public synchronized void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!zy.l()) {
            final com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(str);
            if (lVarHp == null) {
                com.byazt.w.j.hp().hp(str);
                return;
            }
            com.byazt.t.w wVarHp = s.hp().hp(lVarHp.hp());
            if (wVarHp != null) {
                wVarHp.a();
            }
            if (lVarHp.jx.get()) {
                return;
            }
            if (com.byazt.jb.hp.hp(lVarHp.ec()).l("notification_opt_2") == 1) {
                com.byazt.li.l.hp().a(lVarHp.ec());
            }
            new com.byazt.j.l().hp(lVarHp, new com.byazt.j.eb() { // from class: com.byazt.l.hp.1
                @Override // com.byazt.j.eb
                public void hp(boolean z2) {
                    com.byazt.nu.hp.l(hp.hp, "appBackForeground->".concat(String.valueOf(z2)));
                    if (!z2) {
                        if (com.byazt.j.hp.hp(str, lVarHp) || lVarHp.xh() != 4) {
                            return;
                        }
                        com.byazt.m.hp.hp().hp(lVarHp);
                        return;
                    }
                    if (!(com.byazt.j.a.jx(lVarHp) ? com.byazt.j.hp.hp(str, lVarHp) : false) && com.byazt.j.a.j(lVarHp) && lVarHp.xh() == 4) {
                        com.byazt.m.hp.hp().hp(lVarHp);
                    }
                }
            }, com.byazt.y.w.hp((com.byazt.zv.hp) lVarHp).hp("try_applink_delay_after_installed", 0));
            com.byazt.n.s.hp().a(lVarHp);
            hp(str, lVarHp);
            com.byazt.m.hp.hp().l(str);
            DownloadInfo downloadInfoHp = hp((List<DownloadInfo>) Downloader.getInstance(jl.getContext()).getSuccessedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK), str);
            if (downloadInfoHp != null) {
                if (com.byazt.jb.hp.hp(downloadInfoHp.getId()).l("no_hide_notification") != 1) {
                    com.byazt.li.l.hp().hp(downloadInfoHp.getId());
                }
                s.hp().l(downloadInfoHp, str);
                com.byazt.k.j.hp(downloadInfoHp);
                return;
            }
            s.hp().l(null, str);
            return;
        }
        throw new RuntimeException("handleAppInstalled in main thread.");
    }

    public void hp(DownloadInfo downloadInfo, com.byazt.zv.l lVar, int i2) {
        long jMax;
        if (downloadInfo == null || lVar == null) {
            return;
        }
        j();
        long jCurrentTimeMillis = System.currentTimeMillis();
        lVar.l(jCurrentTimeMillis);
        lVar.eb(zy.hp(Environment.getDataDirectory(), -1L));
        if (i2 != 2000) {
            jMax = 2000;
        } else {
            long jHp = com.byazt.jb.hp.hp(downloadInfo.getId()).hp("check_install_failed_delay_time", i.l.f2678c);
            if (jHp < 0) {
                return;
            } else {
                jMax = Math.max(jHp, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
            }
        }
        long j2 = jMax;
        l lVar2 = new l(lVar.l(), downloadInfo.getId(), jCurrentTimeMillis, i2);
        w.hp().hp(lVar2, j2);
        this.jx = lVar2;
        com.byazt.w.q.hp().hp(lVar);
    }

    public void hp(final long j2, int i2) {
        long jHp = com.byazt.jb.hp.hp(i2).hp("check_install_finish_hijack_delay_time", PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        if (jHp < 0) {
            return;
        }
        w.hp().hp(new Runnable() { // from class: com.byazt.l.hp.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                hp.hp().hp(j2);
            }
        }, Math.max(jHp, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS));
    }

    public void hp(long j2) throws JSONException {
        j.hp hpVarHp;
        int iIntValue;
        try {
            com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(j2);
            if (lVarJ != null && !zy.l(lVarJ) && !lVarJ.jx.get()) {
                Pair<j.hp, Integer> pairL = com.byazt.w.j.hp().l(lVarJ);
                if (pairL != null) {
                    hpVarHp = (j.hp) pairL.first;
                    iIntValue = ((Integer) pairL.second).intValue();
                } else {
                    hpVarHp = com.byazt.w.j.hp().hp(lVarJ);
                    iIntValue = -1;
                }
                if (hpVarHp == null) {
                    return;
                }
                com.byazt.w.j.hp().l(hpVarHp.hp);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("installed_app_name", hpVarHp.f26855j);
                jSONObject.put("installed_pkg_name", hpVarHp.hp);
                if (iIntValue != -1) {
                    jSONObject.put("error_code", iIntValue);
                    com.byazt.y.a.hp(jSONObject, lVarJ.ec());
                    com.byazt.r.hp.hp().l("install_finish_hijack", jSONObject, lVarJ);
                    return;
                }
                com.byazt.r.hp.hp().l("install_finish_may_hijack", jSONObject, lVarJ);
            }
        } catch (Throwable th) {
            com.byazt.u.jx.hp().hp(th, "trySendInstallFinishHijack");
        }
    }

    public void hp(String str, com.byazt.zv.l lVar) {
        if (lVar != null && zy.l(lVar) && lVar.jx.compareAndSet(false, true)) {
            int i2 = 4;
            if (lVar.xh() == 4) {
                com.byazt.b.e eVarNs = jl.ns();
                if (eVarNs != null) {
                    eVarNs.hp(lVar.n());
                }
            } else {
                i2 = 3;
            }
            com.byazt.r.hp.hp().hp(lVar.e(), C1244a.f35654F, hp(lVar, str, i2), lVar);
            com.byazt.w.q.hp().hp(lVar);
        }
    }

    private static DownloadInfo hp(List<DownloadInfo> list, String str) {
        if (list != null && !list.isEmpty() && !TextUtils.isEmpty(str)) {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null) {
                    if (!str.equals(downloadInfo.getPackageName())) {
                        if (zy.hp(jl.getContext(), downloadInfo.getTargetFilePath(), str)) {
                        }
                    }
                    return downloadInfo;
                }
            }
        }
        return null;
    }

    public static JSONObject hp(JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (jSONObject != null && downloadInfo != null) {
            int i2 = 1;
            if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("download_event_opt", 1) != 0) {
                try {
                    jSONObject.put("download_id", downloadInfo.getId());
                    jSONObject.put("name", downloadInfo.getName());
                    jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
                    jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
                    jSONObject.put("network_quality", downloadInfo.getNetworkQuality());
                    jSONObject.put("current_network_quality", com.byazt.ip.gu.hp().l().name());
                    jSONObject.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
                    jSONObject.put("need_https_degrade", downloadInfo.isNeedHttpsToHttpRetry() ? 1 : 0);
                    jSONObject.put("https_degrade_retry_used", downloadInfo.isHttpsToHttpRetryUsed() ? 1 : 0);
                    jSONObject.put("chunk_count", downloadInfo.getChunkCount());
                    jSONObject.put(n.b.f3359h, downloadInfo.getRetryCount());
                    jSONObject.put("cur_retry_time", downloadInfo.getCurRetryTime());
                    jSONObject.put("need_retry_delay", downloadInfo.isNeedRetryDelay() ? 1 : 0);
                    jSONObject.put("backup_url_used", downloadInfo.isBackUpUrlUsed() ? 1 : 0);
                    jSONObject.put("head_connection_error_msg", downloadInfo.getHeadConnectionException() != null ? downloadInfo.getHeadConnectionException() : "");
                    jSONObject.put("need_independent_process", downloadInfo.isNeedIndependentProcess() ? 1 : 0);
                    jSONObject.put("total_retry_count", downloadInfo.getTotalRetryCount());
                    jSONObject.put("cur_retry_time_in_total", downloadInfo.getCurRetryTimeInTotal());
                    jSONObject.put("real_download_time", downloadInfo.getRealDownloadTime());
                    jSONObject.put("first_speed_time", downloadInfo.getFirstSpeedTime());
                    jSONObject.put("all_connect_time", downloadInfo.getAllConnectTime());
                    jSONObject.put("download_prepare_time", downloadInfo.getDownloadPrepareTime());
                    jSONObject.put("download_time", downloadInfo.getRealDownloadTime() + downloadInfo.getAllConnectTime() + downloadInfo.getDownloadPrepareTime());
                    jSONObject.put("chunk_downgrade_retry_used", downloadInfo.isChunkDowngradeRetryUsed() ? 1 : 0);
                    jSONObject.put("need_chunk_downgrade_retry", downloadInfo.isNeedChunkDowngradeRetry() ? 1 : 0);
                    jSONObject.put("failed_resume_count", downloadInfo.getFailedResumeCount());
                    jSONObject.put("preconnect_level", downloadInfo.getPreconnectLevel());
                    jSONObject.put(TKDownloadReason.KSAD_TK_MD5, downloadInfo.getMd5());
                    jSONObject.put("expect_file_length", downloadInfo.getExpectFileLength());
                    jSONObject.put("retry_schedule_count", downloadInfo.getRetryScheduleCount());
                    jSONObject.put("rw_concurrent", downloadInfo.isRwConcurrent() ? 1 : 0);
                    double curBytes = downloadInfo.getCurBytes() / 1048576.0d;
                    double realDownloadTime = downloadInfo.getRealDownloadTime() / 1000.0d;
                    if (curBytes > 0.0d && realDownloadTime > 0.0d) {
                        double d2 = curBytes / realDownloadTime;
                        try {
                            jSONObject.put("download_speed", d2);
                        } catch (Exception unused) {
                        }
                        com.byazt.nu.hp.l(hp, "download speed : " + d2 + "MB/s");
                    }
                    try {
                        jSONObject.put("is_download_service_foreground", Downloader.getInstance(jl.getContext()).isDownloadServiceForeground(downloadInfo.getId()) ? 1 : 0);
                    } catch (Exception unused2) {
                    }
                    if (downloadInfo.getBackUpUrls() != null) {
                        jSONObject.put("backup_url_count", downloadInfo.getBackUpUrls().size());
                        jSONObject.put("cur_backup_url_index", downloadInfo.getCurBackUpUrlIndex());
                    }
                    jSONObject.put("clear_space_restart_times", com.byazt.k.j.hp().l(downloadInfo.getUrl()));
                    jSONObject.put("mime_type", downloadInfo.getMimeType());
                    if (!com.byazt.xq.a.jx(jl.getContext())) {
                        i2 = 2;
                    }
                    jSONObject.put("network_available", i2);
                    jSONObject.put("status_code", downloadInfo.getHttpStatusCode());
                    l(jSONObject, downloadInfo);
                } catch (Throwable unused3) {
                }
            }
        }
        return jSONObject;
    }

    private static void hp(com.byazt.zv.l lVar) throws JSONException {
        if (lVar == null) {
            return;
        }
        String strM = TextUtils.isEmpty(lVar.m()) ? "" : lVar.m();
        DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(lVar.ec());
        lVar.jl("");
        com.byazt.w.q.hp().hp(lVar);
        JSONObject jSONObjectHp = hp(new JSONObject(), downloadInfo);
        try {
            jSONObjectHp.putOpt("finish_reason", strM);
            jSONObjectHp.putOpt("finish_from_reserve_wifi", Integer.valueOf(downloadInfo.isDownloadFromReserveWifi() ? 1 : 0));
        } catch (JSONException unused) {
        }
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
        com.byazt.y.a.hp(jSONObjectHp, downloadInfo.getId());
        try {
            jSONObjectHp.put("download_failed_times", lVarHp.b());
            jSONObjectHp.put("can_show_notification", com.byazt.bu.j.hp() ? 1 : 2);
            if (downloadInfo.getExpectFileLength() > 0 && downloadInfo.getTotalBytes() > 0) {
                jSONObjectHp.put("file_length_gap", downloadInfo.getExpectFileLength() - downloadInfo.getTotalBytes());
            }
            jSONObjectHp.put("ttmd5_status", downloadInfo.getTTMd5CheckStatus());
            jSONObjectHp.put("has_send_download_failed_finally", lVarHp.f28617j.get() ? 1 : 2);
            jSONObjectHp.put("is_update_download", lVarHp.zx() ? 1 : 2);
            com.byazt.y.a.hp(lVarHp, jSONObjectHp);
        } catch (Throwable unused2) {
        }
        com.byazt.r.hp.hp().l(C1244a.f35652D, jSONObjectHp, lVar);
    }

    private int hp(com.byazt.zv.l lVar, DownloadInfo downloadInfo, String str, JSONObject jSONObject) throws PackageManager.NameNotFoundException {
        int iL = com.byazt.ni.jx.l(jl.getContext(), downloadInfo);
        int iL2 = zy.l(jl.getContext(), str);
        if (iL > 0 && iL2 > 0 && iL != iL2) {
            return iL2 > iL ? 3011 : 3010;
        }
        if (com.byazt.jb.hp.hp(lVar.ec()).hp("install_finish_check_ttmd5", 1) != 1) {
            return 3001;
        }
        String string = com.byazt.ym.a.getKVStore(jl.getContext(), "sp_ttdownloader_md5", 0).getString(String.valueOf(lVar.l()), null);
        if (TextUtils.isEmpty(string) && downloadInfo != null) {
            string = com.byazt.y.hp.hp(downloadInfo.getTargetFilePath());
        }
        int iHp = com.byazt.y.hp.hp(string, com.byazt.y.hp.l(str));
        try {
            jSONObject.put("ttmd5_status", iHp);
        } catch (Throwable unused) {
        }
        if (iHp == 0) {
            return 3000;
        }
        return iHp == 1 ? 3002 : 3001;
    }

    @Override // com.byazt.me.hp
    public void hp(int i2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f22339l < i.l.f2678c) {
            return;
        }
        w.hp().hp(new RunnableC0302hp(i2), this.f22339l > 0 ? 2000L : 8000L);
        this.f22339l = jCurrentTimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void hp(@NonNull ConcurrentHashMap<Long, com.byazt.zv.l> concurrentHashMap, int i2) {
        ArrayList arrayList = new ArrayList();
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (com.byazt.zv.l lVar : concurrentHashMap.values()) {
            if (lVar.jx.get()) {
                if (jCurrentTimeMillis - lVar.r() >= com.byazt.jb.hp.hp(lVar.ec()).hp("start_event_expire_hours", 168) * BaseConstants.Time.HOUR) {
                    arrayList.add(Long.valueOf(lVar.l()));
                }
            } else if (lVar.lv() == 1) {
                if (l(lVar) <= 0 && jCurrentTimeMillis - lVar.r() >= com.byazt.jb.hp.hp(lVar.ec()).hp("start_event_expire_hours", 168) * BaseConstants.Time.HOUR) {
                    arrayList.add(Long.valueOf(lVar.l()));
                }
            } else if (lVar.lv() == 2) {
                if (!lVar.ea()) {
                    if (zy.l(lVar)) {
                        if (lVar.xh() == 4) {
                            i2 = lVar.xh();
                            com.byazt.b.e eVarNs = jl.ns();
                            if (eVarNs != null) {
                                eVarNs.hp(lVar.n());
                            }
                        }
                        lVar.e(false);
                        com.byazt.r.hp.hp().hp(hp(lVar, lVar.w(), i2), lVar);
                        arrayList.add(Long.valueOf(lVar.l()));
                        com.byazt.k.j.hp(lVar);
                    } else if (lVar.ea() && lVar.xh() == 4 && i2 == 1 && !zy.l(lVar)) {
                        com.byazt.y.jl.hp().hp(hp, "trySendAndRefreshAdEvent", "命中兜底逻辑,尝试对广播监听执行冷启兜底逻辑");
                        q.hp().hp(lVar);
                    } else if (jCurrentTimeMillis - lVar.r() >= com.byazt.jb.hp.hp(lVar.ec()).hp("finish_event_expire_hours", 168) * BaseConstants.Time.HOUR) {
                        arrayList.add(Long.valueOf(lVar.l()));
                    } else if (TextUtils.isEmpty(lVar.w())) {
                        arrayList.add(Long.valueOf(lVar.l()));
                    }
                }
            } else {
                arrayList.add(Long.valueOf(lVar.l()));
            }
        }
        com.byazt.w.a.hp().hp(arrayList);
    }

    @Override // com.byazt.ni.l.jx
    public void hp(DownloadInfo downloadInfo, com.byazt.ni.hp hpVar) {
        JSONObject jSONObjectL;
        if (downloadInfo == null || hpVar == null) {
            return;
        }
        JSONArray jSONArrayW = com.byazt.jb.hp.hp(downloadInfo.getId()).w("ah_report_config");
        if (hpVar.f23588l != 0) {
            downloadInfo.getTempCacheData().remove("intent");
        }
        if (jSONArrayW == null || (jSONObjectL = l(downloadInfo, hpVar)) == null) {
            return;
        }
        downloadInfo.getTempCacheData().put("ah_ext_json", jSONObjectL);
    }

    @Override // com.byazt.fn.dy
    public void hp(@Nullable final DownloadInfo downloadInfo, @Nullable String str) throws JSONException {
        if (downloadInfo == null) {
            com.byazt.u.jx.hp().hp("info is null");
        } else if ((com.byazt.jb.hp.hp(downloadInfo).l("check_applink_mode") & 2) != 0) {
            final JSONObject jSONObject = (JSONObject) downloadInfo.getTempCacheData().get("ah_ext_json");
            com.byazt.j.w.hp().l(new com.byazt.j.j() { // from class: com.byazt.l.hp.4
                @Override // com.byazt.j.j
                public void hp(boolean z2) throws JSONException {
                    if (!z2) {
                        Intent intent = (Intent) downloadInfo.getTempCacheData().get("intent");
                        if (intent != null) {
                            downloadInfo.getTempCacheData().remove("intent");
                            com.byazt.ni.jx.hp(jl.getContext(), intent);
                            zy.hp(jSONObject, LiveConfigKey.BACKUP, (Object) 1);
                        } else {
                            zy.hp(jSONObject, LiveConfigKey.BACKUP, (Object) 2);
                        }
                    }
                    com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
                    if (lVarHp != null) {
                        com.byazt.r.hp.hp().hp(z2 ? "installer_delay_success" : "installer_delay_failed", jSONObject, lVarHp);
                    } else {
                        com.byazt.u.jx.hp().l("ah nativeModel=null");
                    }
                    if (z2) {
                        jl.n().hp(jl.getContext(), null, null, null, null, 1);
                    }
                }
            });
        }
    }

    private JSONObject hp(com.byazt.zv.l lVar, String str, int i2) {
        com.byazt.ni.hp hpVarHp;
        JSONObject jSONObject = new JSONObject();
        try {
            DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(lVar.ec());
            jSONObject.putOpt(com.umeng.ccg.a.f49756j, Integer.valueOf(i2));
            com.byazt.y.a.hp(jSONObject, lVar.ec());
            com.byazt.y.a.hp(lVar, jSONObject);
            jSONObject.put("is_update_download", lVar.zx() ? 1 : 2);
            jSONObject.put("install_after_back_app", lVar.qu() ? 1 : 2);
            jSONObject.putOpt("clean_space_install_params", lVar.yr() ? "1" : "2");
            if (downloadInfo != null) {
                hp(jSONObject, downloadInfo);
                try {
                    jSONObject.put("uninstall_resume_count", downloadInfo.getUninstallResumeCount());
                    if (lVar.hq() > 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - lVar.hq();
                        jSONObject.put("install_time", jCurrentTimeMillis);
                        if (jCurrentTimeMillis > com.byazt.jb.hp.hp(downloadInfo.getId()).hp("check_install_finish_expired_duration", 86400000L)) {
                            jSONObject.put("install_expired", 1);
                        } else {
                            jSONObject.put("install_expired", 0);
                        }
                    }
                } catch (Throwable unused) {
                }
                String strHp = com.byazt.xq.a.hp(downloadInfo.getTempCacheData().get("ah_attempt"), (String) null);
                if (!TextUtils.isEmpty(strHp) && (hpVarHp = com.byazt.ni.hp.hp(strHp)) != null) {
                    hpVarHp.hp(jSONObject);
                }
            }
            int iHp = hp(lVar, downloadInfo, str, jSONObject);
            jSONObject.put("fail_status", iHp);
            if (iHp == 3000) {
                jSONObject.put("hijack", 2);
            } else if (iHp == 3001) {
                jSONObject.put("hijack", 0);
            } else {
                jSONObject.put("hijack", 1);
            }
        } catch (Throwable unused2) {
        }
        return jSONObject;
    }

    public void hp(DownloadInfo downloadInfo, long j2, long j3, long j4, long j5, long j6, boolean z2) throws JSONException {
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
        if (lVarHp == null) {
            com.byazt.u.jx.hp().hp("trySendClearSpaceEvent nativeModel null");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("space_before", Double.valueOf(j2 / 1048576.0d));
            jSONObject.putOpt("space_cleaned", Double.valueOf((j3 - j2) / 1048576.0d));
            jSONObject.putOpt("clean_up_time_cost", Long.valueOf(j5));
            jSONObject.putOpt("is_download_restarted", Integer.valueOf(z2 ? 1 : 0));
            jSONObject.putOpt("byte_required", Long.valueOf(j4));
            jSONObject.putOpt("byte_required_after", Double.valueOf((j4 - j3) / 1048576.0d));
            jSONObject.putOpt("clear_sleep_time", Long.valueOf(j6));
            com.byazt.y.a.jx(downloadInfo, jSONObject);
            com.byazt.r.hp.hp().hp("cleanup", jSONObject, lVarHp);
        } catch (Exception unused) {
        }
    }
}
