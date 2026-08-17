package com.byazt.d;

import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.y.zy;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 670, 28})
/* loaded from: classes2.dex */
public class hp implements q {
    public static com.byazt.m.j hp;

    public static com.byazt.m.j hp() {
        return hp;
    }

    @Override // com.byazt.d.q
    public boolean hp(final com.byazt.zv.l lVar, int i2, final s sVar) {
        DownloadInfo downloadInfoL;
        if (lVar == null || lVar.an() || !hp(lVar)) {
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
        long jHp = com.byazt.t.e.hp(downloadInfoL.getId(), downloadInfoL.getCurBytes(), downloadInfoL.getTotalBytes());
        long totalBytes = downloadInfoL.getTotalBytes();
        if (jHp <= 0 || totalBytes <= 0 || totalBytes > hp(lVar.ec())) {
            return false;
        }
        hp = new com.byazt.m.j() { // from class: com.byazt.d.hp.1
            @Override // com.byazt.m.j
            public void hp() throws JSONException {
                com.byazt.m.j unused = hp.hp = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "apk_size");
                    jSONObject.putOpt("pause_optimise_action", "confirm");
                } catch (JSONException unused2) {
                }
                com.byazt.r.hp.hp().hp("pause_optimise", jSONObject, lVar);
            }

            @Override // com.byazt.m.j
            public void l() throws JSONException {
                com.byazt.m.j unused = hp.hp = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "apk_size");
                    jSONObject.putOpt("pause_optimise_action", "cancel");
                } catch (JSONException unused2) {
                }
                com.byazt.r.hp.hp().hp("pause_optimise", jSONObject, lVar);
                sVar.hp(lVar);
            }
        };
        TTDelegateActivity.hp(lVar, String.format("该下载任务仅需%s，即将下载完成，是否继续下载？", zy.hp(totalBytes - jHp)), "继续", "暂停");
        lVar.k(true);
        return true;
    }

    private int hp(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("pause_optimise_apk_size", 100) * 1048576;
    }

    private boolean hp(com.byazt.zv.hp hpVar) {
        return com.byazt.y.w.hp(hpVar).hp("pause_optimise_apk_size_switch", 0) == 1 && hpVar.xs();
    }
}
