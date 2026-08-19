package com.byazt.no;

import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.anythink.core.common.f.n;
import com.byazt.fn.b;
import com.byazt.fn.k;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import com.byazt.io.eb;
import com.byazt.ip.q;
import com.byazt.ip.w;
import com.byazt.oy.DownloadStatus;
import com.byazt.xq.a;
import com.byazt.yk.xs;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1629, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(DownloadTask downloadTask, BaseException baseException, int i2) {
        if (downloadTask == null) {
            return;
        }
        try {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo == null) {
                return;
            }
            b monitorDepend = downloadTask.getMonitorDepend();
            boolean zIsMonitorStatus = DownloadStatus.isMonitorStatus(i2);
            if (!zIsMonitorStatus && !(zIsMonitorStatus = hp(downloadInfo.getExtraMonitorStatus(), i2)) && monitorDepend != null && (monitorDepend instanceof com.byazt.fn.jx)) {
                zIsMonitorStatus = hp(((com.byazt.fn.jx) monitorDepend).hp(), i2);
            }
            if (zIsMonitorStatus) {
                try {
                    k depend = downloadTask.getDepend();
                    if (depend != null) {
                        depend.hp(downloadInfo, baseException, i2);
                    }
                } catch (Throwable unused) {
                }
                hp(monitorDepend, downloadInfo, baseException, i2);
                hp(com.byazt.yk.jx.eb(), downloadInfo, baseException, i2);
            }
        } catch (Throwable unused2) {
        }
    }

    private static boolean hp(int[] iArr, int i2) {
        if (iArr != null && iArr.length > 0) {
            for (int i3 : iArr) {
                if (i2 == i3) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void hp(b bVar, DownloadInfo downloadInfo, BaseException baseException, int i2) {
        if (bVar == null) {
            return;
        }
        try {
            String strL = bVar.l();
            if (TextUtils.isEmpty(strL)) {
                strL = "default";
            }
            JSONObject jSONObjectHp = hp(strL, downloadInfo, baseException, i2);
            if (jSONObjectHp == null) {
                jSONObjectHp = new JSONObject();
            }
            bVar.hp(jSONObjectHp);
        } catch (Throwable unused) {
        }
    }

    public static void hp(l lVar, DownloadInfo downloadInfo, BaseException baseException, int i2) {
        if (lVar == null || !downloadInfo.isNeedSDKMonitor() || TextUtils.isEmpty(downloadInfo.getMonitorScene())) {
            return;
        }
        try {
            JSONObject jSONObjectHp = hp(downloadInfo.getMonitorScene(), downloadInfo, baseException, i2);
            if (jSONObjectHp == null) {
                jSONObjectHp = new JSONObject();
            }
            if (i2 == -1) {
                jSONObjectHp.put("status", baseException.getErrorCode());
            } else {
                hp(i2, jSONObjectHp, downloadInfo);
            }
        } catch (Throwable unused) {
        }
    }

    private static void hp(int i2, JSONObject jSONObject, DownloadInfo downloadInfo) throws JSONException {
        String str;
        if (i2 == -5) {
            str = "download_uncomplete";
        } else if (i2 == -4) {
            str = "download_cancel";
        } else if (i2 == -3) {
            double downloadSpeed = downloadInfo.getDownloadSpeed();
            if (downloadSpeed >= 0.0d) {
                jSONObject.put("download_speed", downloadSpeed);
            }
            str = "download_success";
        } else if (i2 == -2) {
            str = "download_pause";
        } else if (i2 == 0) {
            str = "download_create";
        } else if (i2 == 2) {
            str = "download_start";
        } else if (i2 != 6) {
            str = "";
        } else {
            str = "download_first_start";
        }
        jSONObject.put("status", str);
    }

    public static String hp(String str) {
        try {
            if (TextUtils.isDigitsOnly(str)) {
                return String.valueOf(Long.valueOf(str).longValue() % 100);
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    private static JSONObject hp(String str, DownloadInfo downloadInfo, BaseException baseException, int i2) throws JSONException {
        int iJx;
        String strL;
        Object objHp;
        Object objHp2;
        Object objHp3;
        String lastPathSegment;
        String host;
        String path;
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                xs xsVarGu = com.byazt.yk.jx.gu();
                if (xsVarGu == null) {
                    iJx = 0;
                    strL = "";
                    objHp = strL;
                    objHp2 = objHp;
                } else {
                    strL = xsVarGu.l();
                    objHp = hp(strL);
                    objHp2 = xsVarGu.hp();
                    iJx = xsVarGu.jx();
                }
                if (baseException == null || !(baseException instanceof eb)) {
                    objHp3 = "";
                } else {
                    objHp3 = ((eb) baseException).hp();
                }
                jSONObject.put("event_page", str);
                jSONObject.put("app_id", objHp2);
                jSONObject.put("device_id", strL);
                jSONObject.put("device_id_postfix", objHp);
                jSONObject.put("update_version", iJx);
                jSONObject.put("download_status", i2);
                if (downloadInfo != null) {
                    jSONObject.put("setting_tag", com.byazt.jb.hp.hp(downloadInfo.getId()).jx("setting_tag"));
                    jSONObject.put("download_id", downloadInfo.getId());
                    jSONObject.put("name", downloadInfo.getName());
                    jSONObject.put("url", downloadInfo.getUrl());
                    jSONObject.put("save_path", downloadInfo.getSavePath());
                    jSONObject.put("download_time", downloadInfo.getDownloadTime());
                    jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
                    jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
                    jSONObject.put("network_quality", downloadInfo.getNetworkQuality());
                    jSONObject.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
                    jSONObject.put("need_https_degrade", downloadInfo.isNeedHttpsToHttpRetry() ? 1 : 0);
                    jSONObject.put("https_degrade_retry_used", downloadInfo.isHttpsToHttpRetryUsed() ? 1 : 0);
                    jSONObject.put(TKDownloadReason.KSAD_TK_MD5, downloadInfo.getMd5() == null ? "" : downloadInfo.getMd5());
                    jSONObject.put("chunk_count", downloadInfo.getChunkCount());
                    jSONObject.put("is_force", downloadInfo.isForce() ? 1 : 0);
                    jSONObject.put(n.b.f3359h, downloadInfo.getRetryCount());
                    jSONObject.put("cur_retry_time", downloadInfo.getCurRetryTime());
                    jSONObject.put("need_retry_delay", downloadInfo.isNeedRetryDelay() ? 1 : 0);
                    jSONObject.put("need_reuse_first_connection", downloadInfo.isNeedReuseFirstConnection() ? 1 : 0);
                    jSONObject.put("default_http_service_backup", downloadInfo.isNeedDefaultHttpServiceBackUp() ? 1 : 0);
                    jSONObject.put("retry_delay_status", downloadInfo.getRetryDelayStatus().ordinal());
                    jSONObject.put("backup_url_used", downloadInfo.isBackUpUrlUsed() ? 1 : 0);
                    jSONObject.put("download_byte_error_retry_status", downloadInfo.getByteInvalidRetryStatus().ordinal());
                    jSONObject.put("forbidden_handler_status", downloadInfo.getAsyncHandleStatus().ordinal());
                    jSONObject.put("need_independent_process", downloadInfo.isNeedIndependentProcess() ? 1 : 0);
                    jSONObject.put("head_connection_error_msg", downloadInfo.getHeadConnectionException() != null ? downloadInfo.getHeadConnectionException() : "");
                    jSONObject.put("extra", downloadInfo.getExtra() != null ? downloadInfo.getExtra() : "");
                    jSONObject.put("add_listener_to_same_task", downloadInfo.isAddListenerToSameTask() ? 1 : 0);
                    jSONObject.put("backup_url_count", downloadInfo.getBackUpUrls() != null ? downloadInfo.getBackUpUrls().size() : 0);
                    jSONObject.put("cur_backup_url_index", downloadInfo.getBackUpUrls() != null ? downloadInfo.getCurBackUpUrlIndex() : -1);
                    jSONObject.put("forbidden_urls", downloadInfo.getForbiddenBackupUrls() != null ? downloadInfo.getForbiddenBackupUrls().toString() : "");
                    jSONObject.put("task_id", TextUtils.isEmpty(downloadInfo.getTaskId()) ? "" : downloadInfo.getTaskId());
                    try {
                        String url = downloadInfo.getUrl();
                        if (TextUtils.isEmpty(url)) {
                            lastPathSegment = "";
                            host = lastPathSegment;
                            path = host;
                        } else {
                            Uri uri = Uri.parse(url);
                            host = uri.getHost();
                            path = uri.getPath();
                            lastPathSegment = uri.getLastPathSegment();
                            if (!TextUtils.isEmpty(path) && !TextUtils.isEmpty(lastPathSegment)) {
                                try {
                                    path = path.substring(0, path.length() - lastPathSegment.length());
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        jSONObject.put("url_host", host);
                        jSONObject.put("url_path", path);
                        jSONObject.put("url_last_path_segment", lastPathSegment);
                    } catch (Throwable unused2) {
                    }
                }
                jSONObject.put("error_code", baseException != null ? baseException.getErrorCode() : 0);
                jSONObject.put("error_msg", baseException != null ? baseException.getErrorMessage() : "");
                jSONObject.put("request_log", objHp3);
                return jSONObject;
            } catch (JSONException unused3) {
                return jSONObject;
            }
        } catch (JSONException unused4) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[PHI: r6
      0x0036: PHI (r6v8 int) = (r6v0 int), (r6v2 int) binds: [B:12:0x0025, B:15:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void hp(@androidx.annotation.Nullable com.byazt.ip.eb r11, java.lang.String r12, java.lang.String r13, long r14, java.lang.String r16, int r17, java.io.IOException r18, com.byazt.fu.DownloadInfo r19) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.no.hp.hp(com.byazt.ip.eb, java.lang.String, java.lang.String, long, java.lang.String, int, java.io.IOException, com.byazt.fu.DownloadInfo):void");
    }

    public static void hp(com.byazt.jb.hp hpVar, DownloadInfo downloadInfo, String str, q qVar, boolean z2, boolean z3, BaseException baseException, long j2, long j3, boolean z4, long j4, long j5, long j6, JSONObject jSONObject) {
        hp("download_io", hpVar.l("monitor_download_io"), hpVar, downloadInfo, str, null, null, qVar, z2, z3, baseException, j2, j3, z4, j4, j5, j6, null);
    }

    public static void hp(com.byazt.jb.hp hpVar, DownloadInfo downloadInfo, String str, String str2, String str3, boolean z2, q qVar, BaseException baseException, long j2, long j3) {
        hp("segment_io", hpVar.l("monitor_segment_io"), hpVar, downloadInfo, str, str2, str3, qVar, z2, false, baseException, j2, j3, false, -1L, -1L, -1L, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    private static void hp(String str, int i2, com.byazt.jb.hp hpVar, DownloadInfo downloadInfo, String str2, String str3, String str4, q qVar, boolean z2, boolean z3, BaseException baseException, long j2, long j3, boolean z4, long j4, long j5, long j6, JSONObject jSONObject) {
        String str5;
        int i3;
        int i4;
        if (i2 <= 0 || j3 <= 0) {
            return;
        }
        try {
            Uri uri = Uri.parse(str2);
            String host = uri.getHost();
            String path = uri.getPath();
            String lastPathSegment = uri.getLastPathSegment();
            int errorCode = 0;
            if (!TextUtils.isEmpty(path) && !TextUtils.isEmpty(lastPathSegment)) {
                try {
                    path = path.substring(0, path.length() - lastPathSegment.length());
                } catch (Throwable unused) {
                }
            }
            String errorMessage = null;
            if (z2) {
                errorCode = 1;
            } else if (z3) {
                errorCode = 2;
            } else if (baseException != null) {
                errorCode = !a.jx(com.byazt.yk.jx.mp()) ? 1049 : baseException.getErrorCode();
                errorMessage = baseException.getErrorMessage();
            }
            JSONObject jSONObject2 = new JSONObject();
            String strA = "";
            if (qVar != null) {
                i4 = !(qVar instanceof w) ? 1 : 0;
                String strHp = qVar.hp("X-Cache");
                int iContains = !TextUtils.isEmpty(strHp) ? strHp.toLowerCase().contains("hit") : -1;
                hpVar.hp("monitor_sla", 1);
                if (qVar instanceof com.byazt.ip.hp) {
                    strA = ((com.byazt.ip.hp) qVar).a();
                }
                i3 = iContains;
                str5 = errorMessage;
            } else {
                str5 = errorMessage;
                i3 = -1;
                i4 = -1;
            }
            double d2 = j2 / 1048576.0d;
            double d3 = j3;
            double nanos = d3 / TimeUnit.SECONDS.toNanos(1L);
            jSONObject2.put("setting_tag", hpVar.jx("setting_tag"));
            jSONObject2.put("url_host", host);
            jSONObject2.putOpt("host_ip", str3);
            jSONObject2.putOpt("host_real_ip", str4);
            jSONObject2.put("url_path", path);
            jSONObject2.put("url_last_path_segment", lastPathSegment);
            jSONObject2.put("net_lib", i4);
            jSONObject2.put("hit_cdn_cache", i3);
            jSONObject2.put("status_code", errorCode);
            jSONObject2.put("request_log", strA);
            if (str5 != null) {
                jSONObject2.put("error_msg", a.hp(str5, hpVar.hp("exception_msg_length", 500)));
            }
            jSONObject2.put("download_sec", nanos);
            jSONObject2.put("download_mb", d2);
            if (nanos > 0.0d) {
                jSONObject2.put("download_speed", d2 / nanos);
            }
            if (z4) {
                jSONObject2.put("rw_read_time", j4 / d3);
                jSONObject2.put("rw_write_time", j5 / d3);
                jSONObject2.put("rw_sync_time", j6 / d3);
            }
            jSONObject2.put(g.a.f3270g, downloadInfo.getPackageName());
            jSONObject2.put("name", downloadInfo.getTitle());
            if (i2 == 1 || i2 == 3) {
                com.byazt.yk.jx.eb();
            }
            if (i2 == 2 || i2 == 3) {
                com.byazt.yk.jx.f().hp(downloadInfo.getId(), str, jSONObject2);
            }
        } catch (Throwable unused2) {
        }
    }

    public static void hp(DownloadInfo downloadInfo, List<com.byazt.rc.q> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("segments", com.byazt.rc.q.hp(list));
            jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
            jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
            jx jxVarF = com.byazt.yk.jx.f();
            if (jxVarF != null) {
                jxVarF.hp(downloadInfo.getId(), "segments_error", jSONObject);
            }
        } catch (Throwable unused) {
        }
    }
}
