package com.byazt.l;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.byazt.ei.hp;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.byazt.y.gu;
import com.byazt.y.zy;
import com.byazt.yy.DownloadModel;
import com.sigmob.sdk.base.mta.PointCategory;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 34, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.f.q {
    public static String hp = "jx";

    /* renamed from: l, reason: collision with root package name */
    public Handler f22349l = new Handler(Looper.getMainLooper());

    @Override // com.byazt.f.q
    public void hp(DownloadInfo downloadInfo, BaseException baseException, int i2) {
        BaseException baseException2;
        final DownloadModel downloadModelHp;
        if (downloadInfo == null) {
            return;
        }
        if (i2 == -1 && baseException != null) {
            JSONObject jSONObject = new JSONObject();
            com.byazt.y.a.jx(downloadInfo, jSONObject);
            hp.hp(jSONObject, downloadInfo);
            gu.hp(PointCategory.DOWNLOAD_FAILED, jSONObject.toString());
        }
        com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
        if (lVarHp == null) {
            return;
        }
        try {
            if (i2 != -1) {
                if (i2 == -3) {
                    hp.hp(downloadInfo, lVarHp);
                    return;
                }
                if (i2 == 2001) {
                    hp.hp().hp(downloadInfo, lVarHp, 2001);
                    return;
                } else {
                    if (i2 == 11) {
                        hp.hp().hp(downloadInfo, lVarHp, 2000);
                        if (lVarHp.rz()) {
                            return;
                        }
                        hp(downloadInfo, lVarHp);
                        return;
                    }
                    return;
                }
            }
            if (baseException != null) {
                if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("toast_without_network", 0) == 1 && baseException.getErrorCode() == 1049) {
                    this.f22349l.post(new Runnable() { // from class: com.byazt.l.jx.1
                        @Override // java.lang.Runnable
                        public void run() {
                            jl.jx().hp(5, jl.getContext(), null, "无网络，请检查网络设置", null, 0);
                        }
                    });
                }
                if (com.byazt.xq.a.s(baseException)) {
                    if (jl.zy() != null) {
                        jl.zy();
                        lVarHp.l();
                    }
                    com.byazt.r.hp.hp().hp("download_failed_for_space", lVarHp);
                    if (!lVarHp.f()) {
                        com.byazt.r.hp.hp().hp("download_can_restart", lVarHp);
                        hp(downloadInfo);
                    }
                    if ((jl.zy() == null || !jl.zy().jx()) && (downloadModelHp = com.byazt.w.a.hp().hp(lVarHp.l())) != null && downloadModelHp.isShowToast()) {
                        final com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
                        if (hpVarHp.hp("show_no_enough_space_toast", 0) == 1) {
                            this.f22349l.post(new Runnable() { // from class: com.byazt.l.jx.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    jl.jx().hp(2, jl.getContext(), downloadModelHp, hpVarHp.hp("no_enough_space_toast_text", "您的存储空间不足，请清理后再试"), null, 0);
                                }
                            });
                        }
                    }
                }
                baseException2 = new BaseException(baseException.getErrorCode(), zy.hp(baseException.getMessage(), jl.q().optInt("exception_msg_length", 500)));
            } else {
                baseException2 = null;
            }
            com.byazt.r.hp.hp().l(downloadInfo, baseException2);
            s.hp().hp(downloadInfo, baseException, "");
        } catch (Exception e2) {
            jl.sz().hp(e2, "onAppDownloadMonitorSend");
        }
    }

    private void hp(final DownloadInfo downloadInfo, final com.byazt.zv.l lVar) {
        final long jHp = zy.hp(Environment.getDataDirectory(), -1L);
        long jMin = Math.min(524288000L, zy.hp(Environment.getDataDirectory()) / 10);
        final long totalBytes = downloadInfo.getTotalBytes();
        final double d2 = (totalBytes * 2.5d) + jMin;
        if (jHp > -1 && totalBytes > -1) {
            double d3 = jHp;
            if (d3 < d2 && d2 - d3 > com.byazt.t.j.l()) {
                com.byazt.t.j.hp(downloadInfo.getId());
            }
        }
        com.byazt.ei.hp.hp().hp(new hp.InterfaceC0218hp() { // from class: com.byazt.l.jx.3
            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void jx() {
            }

            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void l() {
                if (zy.l(lVar)) {
                    com.byazt.ei.hp.hp().l(this);
                    return;
                }
                long j2 = jHp;
                if (j2 <= -1 || totalBytes <= -1 || j2 >= d2) {
                    return;
                }
                com.byazt.r.hp.hp().hp("clean_space_install", com.byazt.t.j.hp("install_no_enough_space"), lVar);
                if (com.byazt.t.j.hp(downloadInfo, ((long) d2) - jHp)) {
                    com.byazt.ei.hp.hp().l(this);
                    lVar.eb(true);
                }
            }
        });
    }

    private void hp(@NonNull DownloadInfo downloadInfo) {
        if (com.byazt.y.w.a(downloadInfo.getId())) {
            w.hp().l(new com.byazt.k.l(downloadInfo));
        }
    }
}
