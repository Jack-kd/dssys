package com.byazt.d;

import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 670, 54})
/* loaded from: classes2.dex */
public class a implements q {
    public static com.byazt.m.j hp;

    public static com.byazt.m.j hp() {
        return hp;
    }

    @Override // com.byazt.d.q
    public boolean hp(final com.byazt.zv.l lVar, int i2, final s sVar) {
        DownloadInfo downloadInfoL;
        int iHp;
        if (lVar == null || lVar.pc() || !hp(lVar)) {
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
        if (curBytes <= 0 || totalBytes <= 0 || (iHp = com.byazt.t.e.hp(downloadInfoL.getId(), (int) ((curBytes * 100) / totalBytes))) <= hp(lVar.ec())) {
            return false;
        }
        hp = new com.byazt.m.j() { // from class: com.byazt.d.a.1
            @Override // com.byazt.m.j
            public void hp() throws JSONException {
                com.byazt.m.j unused = a.hp = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "download_percent");
                    jSONObject.putOpt("pause_optimise_action", "confirm");
                } catch (JSONException unused2) {
                }
                com.byazt.r.hp.hp().hp("pause_optimise", jSONObject, lVar);
            }

            @Override // com.byazt.m.j
            public void l() throws JSONException {
                com.byazt.m.j unused = a.hp = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "download_percent");
                    jSONObject.putOpt("pause_optimise_action", "cancel");
                } catch (JSONException unused2) {
                }
                com.byazt.r.hp.hp().hp("pause_optimise", jSONObject, lVar);
                sVar.hp(lVar);
            }
        };
        TTDelegateActivity.l(lVar, String.format("已下载%s%%，即将下载完成，是否继续下载？", Integer.valueOf(iHp)), "继续", "暂停");
        lVar.v(true);
        return true;
    }

    private int hp(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("pause_optimise_download_percent", 50);
    }

    private boolean hp(com.byazt.zv.hp hpVar) {
        return com.byazt.y.w.hp(hpVar).hp("pause_optimise_download_percent_switch", 0) == 1 && hpVar.xs();
    }
}
