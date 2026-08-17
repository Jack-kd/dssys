package com.byazt.kl;

import android.content.Context;
import com.byazt.uid.eb;
import com.byazt.ymw.e;
import com.byazt.ymw.sz;
import com.byazt.ymw.u;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 597, 28})
/* loaded from: classes.dex */
public class hp {
    public static volatile boolean hp = false;

    public static void jx(String str, String str2) {
        if (hp) {
            jx.jx(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        com.byazt.uid.w.l(new eb("fetch_lg_command") { // from class: com.byazt.kl.hp.2
            @Override // java.lang.Runnable
            public void run() {
                jx.l();
            }
        });
    }

    private static void hp(Context context, l lVar) throws JSONException {
        if (lVar != null && com.byazt.oz.l.hp == null && sz.hp(com.byazt.jz.sz.getContext()) && lVar.j()) {
            String path = com.byazt.ymw.eb.l(context, false, null).getPath();
            String string = com.byazt.rz.l.hp(context).toString();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("buffer_dir_path", path + "/aa");
                jSONObject.putOpt("log_dir_path", string + "/aa");
                Boolean bool = Boolean.TRUE;
                jSONObject.putOpt("compress", bool);
                jSONObject.putOpt("encrypt", bool);
                jSONObject.putOpt("level", Integer.valueOf(lVar.hp()));
                jSONObject.putOpt("log_file_exp_days", Integer.valueOf(lVar.l()));
                jSONObject.putOpt("max_dir_size", Integer.valueOf(lVar.jx() * 1048576));
                jSONObject.putOpt("per_size", 2097152);
                jSONObject.putOpt("offload_main_write", bool);
                if (!jx.hp(context, jSONObject)) {
                    u.l("ACL", "init failed");
                    return;
                }
                u.hp(new w());
                jx.hp(context, "3892", ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getDid());
                jx.hp("mon.zijieapi.com");
                hp = true;
                jx.jx();
            } catch (JSONException e2) {
                u.l("ACL", "init failed:" + e2.getMessage());
            }
        }
    }

    public static void l(String str, String str2) {
        if (hp) {
            jx.l(str, str2);
        }
    }

    public static void hp(l lVar) throws JSONException {
        if (!hp) {
            hp(com.byazt.jz.sz.getContext(), lVar);
        } else if (lVar != null && lVar.j()) {
            jx.hp(lVar.hp());
            e.hp().postDelayed(new Runnable() { // from class: com.byazt.kl.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    hp.l();
                }
            }, 5000L);
        } else {
            jx.hp();
        }
    }

    public static void hp(String str, String str2) {
        if (hp) {
            jx.hp(str, str2);
        }
    }

    public static void hp(String str, String str2, Throwable th) {
        if (hp) {
            jx.hp(str, str2, th);
        }
    }

    public static void hp(String str, Throwable th) {
        if (hp) {
            jx.hp(str, th);
        }
    }
}
