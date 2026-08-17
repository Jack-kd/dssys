package com.byazt.d;

import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.y.zy;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 670, 30})
/* loaded from: classes2.dex */
public class jx implements eb {
    public static com.byazt.m.j hp;

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.m.jx f19066l;

    public static com.byazt.m.jx l() {
        return f19066l;
    }

    public static com.byazt.m.j hp() {
        return hp;
    }

    public static void hp(com.byazt.m.jx jxVar) {
        f19066l = jxVar;
    }

    @Override // com.byazt.d.eb
    public boolean hp(final com.byazt.zv.l lVar, int i2, final s sVar, final com.byazt.m.jx jxVar) {
        DownloadInfo downloadInfoL;
        String str;
        if (lVar == null || !hp(lVar)) {
            return false;
        }
        if (!TextUtils.isEmpty(lVar.nr())) {
            downloadInfoL = com.byazt.l.e.hp(com.byazt.t.jl.getContext()).hp(lVar.nr(), null, true);
        } else {
            downloadInfoL = com.byazt.l.e.hp(com.byazt.t.jl.getContext()).l(lVar.hp());
        }
        if (downloadInfoL == null) {
            return false;
        }
        long curBytes = downloadInfoL.getCurBytes();
        long totalBytes = downloadInfoL.getTotalBytes();
        if (curBytes < 0 || totalBytes <= 0) {
            return false;
        }
        final int iHp = com.byazt.t.e.hp(downloadInfoL.getId(), (int) ((100 * curBytes) / totalBytes));
        final int i3 = (int) (curBytes / 1048576);
        boolean z2 = iHp > hp(lVar.ec());
        hp = new com.byazt.m.j() { // from class: com.byazt.d.jx.1
            @Override // com.byazt.m.j
            public void hp() throws JSONException {
                com.byazt.m.j unused = jx.hp = null;
                jx.this.hp(iHp, i3, i3, lVar, "download_percent_cancel", "confirm");
            }

            @Override // com.byazt.m.j
            public void l() throws JSONException {
                com.byazt.m.j unused = jx.hp = null;
                jx.this.hp(iHp, i3, i3, lVar, "download_percent_cancel", "cancel");
                sVar.hp(lVar);
            }
        };
        String strHp = zy.hp(com.byazt.t.e.hp(lVar.ec(), curBytes, totalBytes));
        if (z2) {
            str = String.format("该任务已下载%s，仅需%s即可下载完成，是否继续？", strHp, zy.hp(totalBytes - curBytes));
        } else {
            str = String.format("该任务已下载%s，即将下载完成，是否继续下载？", strHp);
        }
        String str2 = str;
        if (jxVar != null) {
            hp(new com.byazt.m.jx() { // from class: com.byazt.d.jx.2
                @Override // com.byazt.m.jx
                public void delete() throws JSONException {
                    com.byazt.m.j unused = jx.hp = null;
                    jx.this.hp(iHp, i3, i3, lVar, "download_percent_cancel", "delete");
                    jxVar.delete();
                }
            });
        }
        TTDelegateActivity.l(lVar, str2, "继续", "暂停", "删除");
        return true;
    }

    private int hp(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("cancel_pause_optimise_download_percent_value", 50);
    }

    private boolean hp(com.byazt.zv.hp hpVar) {
        return com.byazt.y.w.hp(hpVar).hp("cancel_pause_optimise_download_percent_retain_switch", 0) == 1 && hpVar.xs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3, int i4, com.byazt.zv.l lVar, String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("pause_optimise_type", str);
            jSONObject.putOpt("pause_optimise_action", str2);
            jSONObject.putOpt("download_percent", Integer.valueOf(i2));
            jSONObject.putOpt("download_current_bytes", Integer.valueOf(i3));
            jSONObject.putOpt("download_total_bytes", Integer.valueOf(i4));
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("pause_cancel_optimise", jSONObject, lVar);
    }
}
