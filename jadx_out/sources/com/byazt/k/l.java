package com.byazt.k;

import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.w.a;
import com.byazt.w.q;
import com.byazt.y.zy;
import com.byazt.yk.Downloader;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 42, 34})
/* loaded from: classes2.dex */
public class l implements Runnable {
    public DownloadInfo hp;

    public l(DownloadInfo downloadInfo) {
        this.hp = downloadInfo;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        final com.byazt.zv.l lVarHp;
        if (this.hp == null || (lVarHp = a.hp().hp(this.hp)) == null) {
            return;
        }
        com.byazt.r.hp.hp().hp("cleanspace_task", lVarHp);
        long jLongValue = Double.valueOf((com.byazt.y.w.hp(this.hp.getId()) + 1.0d) * this.hp.getTotalBytes()).longValue() - this.hp.getCurBytes();
        long jL = zy.l(0L);
        if (jl.zy() != null) {
            jl.zy();
        }
        jx.hp();
        jx.l();
        if (com.byazt.y.w.eb(lVarHp.ec())) {
            jx.hp(jl.getContext());
        }
        long jL2 = zy.l(0L);
        if (jL2 >= jLongValue) {
            lVarHp.jl("1");
            q.hp().hp(lVarHp);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("quite_clean_size", Long.valueOf(jL2 - jL));
            } catch (JSONException unused) {
            }
            com.byazt.r.hp.hp().hp("cleanspace_download_after_quite_clean", jSONObject, lVarHp);
            Downloader.getInstance(jl.getContext()).restart(this.hp.getId());
            return;
        }
        if (jl.zy() == null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.putOpt("show_dialog_result", 3);
            } catch (JSONException unused2) {
            }
            com.byazt.r.hp.hp().hp("cleanspace_window_show", jSONObject2, lVarHp);
        } else {
            lVarHp.j(false);
            j.hp().hp(lVarHp.hp(), new w() { // from class: com.byazt.k.l.1
            });
            if (jl.zy().hp(this.hp.getId(), this.hp.getUrl(), true, jLongValue)) {
                lVarHp.w(true);
            }
        }
    }
}
