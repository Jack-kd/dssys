package com.byazt.lca;

import android.text.TextUtils;
import com.byazt.uid.eb;
import com.byazt.ymw.u;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 957, 34})
/* loaded from: classes3.dex */
public class l {
    public static volatile l hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile com.byazt.ctq.jx f22440l = com.byazt.ry.j.hp(com.byazt.el.hp.j(), "sp_dynamic_tmpl_config");
    public volatile com.byazt.ctq.jx jx = com.byazt.ry.j.hp(com.byazt.el.hp.j(), "sp_dynamic_tmpl_config_v3");

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void delete(String str, String str2, boolean z2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String strL = l(str, null, z2);
            if (TextUtils.isEmpty(strL)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(strL);
            if (jSONArray.length() > 0) {
                int i2 = 0;
                while (true) {
                    if (i2 >= jSONArray.length()) {
                        i2 = -1;
                        break;
                    }
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null && str2.equals(jSONObjectOptJSONObject.getString("id"))) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 != -1) {
                    jSONArray.remove(i2);
                    hp(str, jSONArray.toString(), z2);
                }
            }
        } catch (Exception unused) {
        }
    }

    public JSONArray l(final String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!jx.hp().hp(i2)) {
            return hp(str);
        }
        try {
            final String strL = l(str, null, true);
            com.byazt.uid.w.l(new eb("tmpl_updatetime") { // from class: com.byazt.lca.l.2
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    boolean z2;
                    try {
                        Set<com.byazt.ca.hp> setHp = com.byazt.ca.l.hp().hp(str);
                        JSONArray jSONArray = new JSONArray();
                        if (setHp == null || setHp.size() <= 0) {
                            z2 = false;
                        } else {
                            for (com.byazt.ca.hp hpVar : setHp) {
                                if (hpVar != null) {
                                    JSONObject jSONObject = new JSONObject();
                                    String[] strArrSplit = hpVar.hp().split("_");
                                    if (strArrSplit.length == 2) {
                                        jSONObject.put("id", strArrSplit[1]);
                                        jSONObject.put(TKDownloadReason.KSAD_TK_MD5, hpVar.l());
                                        jSONArray.put(jSONObject);
                                    }
                                }
                            }
                            z2 = true;
                        }
                        if (!(strL == null && z2) && jSONArray.toString().equals(strL)) {
                            return;
                        }
                        l.this.hp(str, jSONArray.toString(), true);
                    } catch (Exception unused) {
                    }
                }
            });
            if (TextUtils.isEmpty(strL)) {
                return null;
            }
            return new JSONArray(strL);
        } catch (Exception unused) {
            return null;
        }
    }

    public void update(String str, com.byazt.gr.jx jxVar, boolean z2) throws JSONException {
        if (jxVar == null || jxVar.l() == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String strL = l(str, null, z2);
            JSONArray jSONArray = strL == null ? new JSONArray() : new JSONArray(strL);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", jxVar.l());
            jSONObject.put(TKDownloadReason.KSAD_TK_MD5, jxVar.jx());
            jSONArray.put(jSONObject);
            hp(str, jSONArray.toString(), z2);
        } catch (Exception unused) {
        }
    }

    public void hp(String str, String str2) {
        delete(str, str2, false);
    }

    public void hp(String str, com.byazt.gr.jx jxVar) {
        update(str, jxVar, false);
    }

    public String l(String str, String str2, boolean z2) {
        com.byazt.ctq.jx jxVar;
        try {
            if (z2) {
                jxVar = this.jx;
            } else {
                jxVar = this.f22440l;
            }
            return jxVar.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public JSONArray hp(final String str, int i2) {
        try {
            final String strL = l(str, null, false);
            com.byazt.uid.w.l(new eb("tmpl_updatetime") { // from class: com.byazt.lca.l.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    boolean z2;
                    try {
                        Set<com.byazt.gr.l> setHp = com.byazt.ir.l.hp(str, false);
                        JSONArray jSONArray = new JSONArray();
                        if (setHp == null || setHp.size() <= 0) {
                            z2 = false;
                        } else {
                            for (com.byazt.gr.l lVar : setHp) {
                                if (lVar != null) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("id", lVar.l());
                                    jSONObject.put(TKDownloadReason.KSAD_TK_MD5, lVar.jx());
                                    jSONArray.put(jSONObject);
                                }
                            }
                            z2 = true;
                        }
                        if (!(strL == null && z2) && jSONArray.toString().equals(strL)) {
                            return;
                        }
                        l.this.hp(str, jSONArray.toString(), false);
                    } catch (Exception unused) {
                    }
                }
            });
            if (TextUtils.isEmpty(strL)) {
                return null;
            }
            return new JSONArray(strL);
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONArray hp(String str) throws JSONException {
        try {
            Set<com.byazt.ca.hp> setHp = com.byazt.ca.l.hp().hp(str);
            if (setHp != null && setHp.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                for (com.byazt.ca.hp hpVar : setHp) {
                    if (hpVar != null) {
                        JSONObject jSONObject = new JSONObject();
                        String[] strArrSplit = hpVar.hp().split("_");
                        if (strArrSplit.length == 2) {
                            jSONObject.put("id", strArrSplit[1]);
                            jSONObject.put(TKDownloadReason.KSAD_TK_MD5, hpVar.l());
                            jSONArray.put(jSONObject);
                        }
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e2) {
            u.hp("BidOptTmplManager", "getUgenParentTplIds: ", e2);
            return null;
        }
    }

    public void hp(String str, String str2, boolean z2) {
        com.byazt.ctq.jx jxVar;
        try {
            if (z2) {
                jxVar = this.jx;
            } else {
                jxVar = this.f22440l;
            }
            jxVar.put(str, str2);
        } catch (Throwable unused) {
        }
    }
}
