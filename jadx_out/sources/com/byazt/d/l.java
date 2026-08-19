package com.byazt.d;

import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.y.zy;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 670, 34})
/* loaded from: classes2.dex */
public class l implements eb {
    public static com.byazt.m.j hp;

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.m.jx f19075l;

    public static com.byazt.m.jx l() {
        return f19075l;
    }

    public static com.byazt.m.j hp() {
        return hp;
    }

    public static void hp(com.byazt.m.jx jxVar) {
        f19075l = jxVar;
    }

    @Override // com.byazt.d.eb
    public boolean hp(final com.byazt.zv.l lVar, int i2, final s sVar, final com.byazt.m.jx jxVar) {
        DownloadInfo downloadInfoL;
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
        long jHp = com.byazt.t.e.hp(downloadInfoL.getId(), downloadInfoL.getCurBytes(), downloadInfoL.getTotalBytes());
        long totalBytes = downloadInfoL.getTotalBytes();
        if (jHp < 0 || totalBytes <= 0 || totalBytes > hp(lVar.ec())) {
            return false;
        }
        final int i3 = (int) (jHp / 1048576);
        hp = new com.byazt.m.j() { // from class: com.byazt.d.l.1
            @Override // com.byazt.m.j
            public void hp() throws JSONException {
                com.byazt.m.j unused = l.hp = null;
                l.this.hp(i3, i3, lVar, "apk_size_cancel", "confirm");
            }

            @Override // com.byazt.m.j
            public void l() throws JSONException {
                com.byazt.m.j unused = l.hp = null;
                l.this.hp(i3, i3, lVar, "apk_size_cancel", "cancel");
                sVar.hp(lVar);
            }
        };
        String str = String.format("该下载任务仅需%s，即将下载完成，是否继续下载？", zy.hp(totalBytes - jHp));
        if (jxVar != null) {
            hp(new com.byazt.m.jx() { // from class: com.byazt.d.l.2
                @Override // com.byazt.m.jx
                public void delete() throws JSONException {
                    com.byazt.m.j unused = l.hp = null;
                    l.this.hp(i3, i3, lVar, "apk_size_cancel", "delete");
                    jxVar.delete();
                }
            });
        }
        TTDelegateActivity.hp(lVar, str, "继续", "暂停", "删除");
        return true;
    }

    private int hp(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("cancel_pause_optimise_apk_size", 100) * 1048576;
    }

    private boolean hp(com.byazt.zv.hp hpVar) {
        return com.byazt.y.w.hp(hpVar).hp("cancel_pause_optimise_apk_retain_switch", 0) == 1 && hpVar.xs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3, com.byazt.zv.l lVar, String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("pause_optimise_type", str);
            jSONObject.putOpt("pause_optimise_action", str2);
            jSONObject.putOpt("download_current_bytes", Integer.valueOf(i2));
            jSONObject.putOpt("download_total_bytes", Integer.valueOf(i3));
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("pause_cancel_optimise", jSONObject, lVar);
    }
}
