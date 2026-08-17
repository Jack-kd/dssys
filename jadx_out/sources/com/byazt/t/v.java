package com.byazt.t;

import com.byazt.au.vv;
import com.byazt.fu.DownloadInfo;
import com.byazt.yk.Downloader;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {
    public static com.byazt.m.j hp;

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.m.jx f25662l;

    public static boolean hp(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 7 || i2 == 8;
    }

    public static com.byazt.m.jx l() {
        return f25662l;
    }

    public static com.byazt.m.j hp() {
        return hp;
    }

    public static void hp(com.byazt.m.j jVar) {
        hp = jVar;
    }

    public static void hp(com.byazt.m.jx jxVar) {
        f25662l = jxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static boolean hp(final com.byazt.zv.l lVar, DownloadInfo downloadInfo, int i2, final com.byazt.d.s sVar, final boolean z2, final com.byazt.m.jx jxVar) throws JSONException {
        ?? L2;
        if (lVar == null) {
            com.byazt.u.jx.hp().hp("tryReverseWifi nativeModel null");
            return false;
        }
        if (downloadInfo == null) {
            com.byazt.u.jx.hp().hp("tryReverseWifi info null");
            return false;
        }
        final int id = downloadInfo.getId();
        if (z2) {
            L2 = com.byazt.y.w.jx((com.byazt.zv.hp) lVar);
        } else {
            L2 = com.byazt.y.w.l((com.byazt.zv.hp) lVar);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("switch_status", Integer.valueOf((int) L2));
        } catch (Exception unused) {
        }
        if (z2) {
            com.byazt.r.hp.hp().hp("cancel_pause_reserve_wifi_switch_status", jSONObject, lVar);
        } else {
            com.byazt.r.hp.hp().hp("pause_reserve_wifi_switch_status", jSONObject, lVar);
        }
        if (L2 == 0 || !hp(i2) || com.byazt.xq.a.l(jl.getContext())) {
            return false;
        }
        if (!z2 && downloadInfo.hasPauseReservedOnWifi()) {
            return false;
        }
        hp(new com.byazt.m.j() { // from class: com.byazt.t.v.1
            @Override // com.byazt.m.j
            public void hp() throws JSONException {
                v.hp((com.byazt.m.j) null);
                DownloadInfo downloadInfo2 = Downloader.getInstance(jl.getContext()).getDownloadInfo(id);
                if (downloadInfo2 != null) {
                    downloadInfo2.startPauseReserveOnWifi();
                    vv.hp().hp(downloadInfo2);
                    if (z2) {
                        com.byazt.r.hp.hp().hp("cancel_pause_reserve_wifi_confirm", lVar);
                    } else {
                        com.byazt.r.hp.hp().l("pause_reserve_wifi_confirm", lVar);
                    }
                }
                sVar.hp(lVar);
            }

            @Override // com.byazt.m.j
            public void l() throws JSONException {
                v.hp((com.byazt.m.j) null);
                DownloadInfo downloadInfo2 = Downloader.getInstance(jl.getContext()).getDownloadInfo(id);
                if (downloadInfo2 != null) {
                    downloadInfo2.stopPauseReserveOnWifi();
                }
                if (z2) {
                    com.byazt.r.hp.hp().hp("cancel_pause_reserve_wifi_cancel", lVar);
                } else {
                    com.byazt.r.hp.hp().l("pause_reserve_wifi_cancel", lVar);
                }
                sVar.hp(lVar);
            }
        });
        if (z2 && jxVar != null) {
            hp(new com.byazt.m.jx() { // from class: com.byazt.t.v.2
                @Override // com.byazt.m.jx
                public void delete() {
                    com.byazt.r.hp.hp().hp("cancel_pause_reserve_wifi_delete", lVar);
                    jxVar.delete();
                }
            });
        }
        if (z2) {
            TTDelegateActivity.hp(lVar, "删除");
            return true;
        }
        TTDelegateActivity.l(lVar);
        return true;
    }
}
