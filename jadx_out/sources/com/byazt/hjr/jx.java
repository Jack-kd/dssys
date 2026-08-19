package com.byazt.hjr;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.common.f.n;
import com.baidu.mobads.sdk.internal.cb;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1246, 30})
/* loaded from: classes2.dex */
public class jx implements l {
    public final Context hp;
    public com.byazt.jw.w jx;

    /* renamed from: l, reason: collision with root package name */
    public final w f20705l;

    @com.byazt.kj.hp(hp = {0, 1, 1246, 219})
    @SuppressLint({"StaticFieldLeak"})
    public class hp extends com.byazt.ykv.l {

        /* renamed from: j, reason: collision with root package name */
        public final Map<String, String> f20707j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final j f20708l;

        private String jx(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            if (str.contains("{TS}") || str.contains("__TS__")) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                str = str.replace("{TS}", String.valueOf(jCurrentTimeMillis)).replace("__TS__", String.valueOf(jCurrentTimeMillis));
            }
            return ((str.contains("{UID}") || str.contains("__UID__")) && !TextUtils.isEmpty(this.jx)) ? str.replace("{UID}", this.jx).replace("__UID__", this.jx) : str;
        }

        public boolean hp(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.startsWith("http://") || str.startsWith("https://");
        }

        public String l(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                return str.replace("[ss_random]", String.valueOf(jx.l().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
            } catch (Exception unused) {
                return str;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.byazt.jw.j jVarJ = jx.this.jx.j();
            if (jVarJ == null || jx.this.jx.getContext() == null || !jVarJ.j()) {
                return;
            }
            if (!hp(this.f20708l.jx())) {
                j jVar = this.f20708l;
                hp(null, jVarJ, jVar, jVar.jx(), "not http url");
                return;
            }
            if (this.f20708l.w() == 0) {
                jx.this.f20705l.delete(this.f20708l);
                j jVar2 = this.f20708l;
                hp(null, jVarJ, jVar2, jVar2.jx(), "retry max");
                return;
            }
            try {
                if (this.f20708l.w() == 5) {
                    jx.this.f20705l.insert(this.f20708l);
                }
                if (!jVarJ.hp(jx.this.getContext())) {
                    j jVar3 = this.f20708l;
                    hp(null, jVarJ, jVar3, jVar3.jx(), "no net");
                    return;
                }
                System.currentTimeMillis();
                String strJx = this.f20708l.jx();
                if (jVarJ.e() == 0) {
                    strJx = jx(this.f20708l.jx());
                    if (this.f20708l.j()) {
                        strJx = l(strJx);
                    }
                }
                String str = strJx;
                com.byazt.lpy.l lVarEb = jVarJ.eb();
                com.byazt.lpy.w wVarHp = null;
                if (lVarEb == null) {
                    hp(null, this.f20708l, str, "no executor");
                    return;
                }
                lVarEb.hp("User-Agent", jVarJ.w());
                lVarEb.hp("csj_client_source_from", "1");
                if (this.f20707j != null) {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, String> entry : this.f20707j.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                    lVarEb.hp("csj_extra_info", jSONObject.toString());
                }
                lVarEb.hp(str);
                try {
                    wVarHp = lVarEb.hp();
                } catch (Throwable unused) {
                }
                if (wVarHp == null || !wVarHp.hp()) {
                    if (wVarHp != null && wVarHp.jx() == 8848) {
                        wVarHp.j();
                        jx.this.f20705l.delete(this.f20708l);
                    }
                    com.byazt.jw.w unused2 = jx.this.jx;
                    this.f20708l.hp(r0.w() - 1);
                    if (this.f20708l.w() == 0) {
                        jx.this.f20705l.delete(this.f20708l);
                        com.byazt.jw.w unused3 = jx.this.jx;
                    } else {
                        jx.this.f20705l.update(this.f20708l);
                    }
                    if (wVarHp != null) {
                        wVarHp.j();
                        System.currentTimeMillis();
                    } else {
                        System.currentTimeMillis();
                    }
                } else {
                    jx.this.f20705l.delete(this.f20708l);
                    com.byazt.jw.w unused4 = jx.this.jx;
                    System.currentTimeMillis();
                }
                hp(wVarHp, jVarJ, this.f20708l, str, null);
            } catch (Throwable unused5) {
            }
        }

        private hp(j jVar, String str, Map<String, String> map) {
            super("AdsStats");
            this.f20708l = jVar;
            this.jx = str;
            this.f20707j = map;
        }

        private void hp(com.byazt.lpy.w wVar, com.byazt.jw.j jVar, j jVar2, String str, String str2) {
            try {
                jVar.hp(this.f20708l.hp(), hp(wVar, jVar2, str, str2));
            } catch (Exception unused) {
            }
        }

        private JSONObject hp(com.byazt.lpy.w wVar, j jVar, String str, String str2) throws JSONException {
            JSONObject jSONObject = new JSONObject();
            if (jVar != null) {
                try {
                    jSONObject.put(n.b.f3359h, 5 - jVar.w());
                    JSONObject jSONObjectHp = jVar.hp();
                    if (jSONObjectHp != null) {
                        jSONObject.put("track_type", jSONObjectHp.optString("track_type", ""));
                    }
                    jSONObject.put("url", str);
                    jSONObject.put("current", System.currentTimeMillis());
                    jSONObject.put("error_msg", str2);
                    if (wVar != null) {
                        jSONObject.put("http_code", wVar.jx());
                        String strL = wVar.l();
                        if (!TextUtils.isEmpty(strL)) {
                            if (strL.length() > 5000) {
                                strL = strL.substring(0, 5000);
                            }
                            jSONObject.put("http_response", strL);
                        }
                        jSONObject.put(cb.f11292o, wVar.hp() ? 1 : 0);
                    }
                } catch (JSONException unused) {
                }
            }
            return jSONObject;
        }
    }

    public jx(w wVar, com.byazt.jw.w wVar2) {
        this.hp = wVar2.getContext();
        this.f20705l = wVar;
        this.jx = wVar2;
    }

    public Context getContext() {
        Context context = this.hp;
        return context == null ? this.jx.getContext() : context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Random l() {
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }

    @Override // com.byazt.hjr.l
    public void hp(String str, List<String> list, boolean z2, Map<String, String> map, JSONObject jSONObject) {
        com.byazt.jw.j jVarJ = this.jx.j();
        if (jVarJ == null || this.jx.getContext() == null || jVarJ.s() == null || !jVarJ.j() || list == null || list.size() == 0) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jVarJ.s().execute(new hp(new j(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), it.next(), z2, 5, jSONObject, 1), str, map));
        }
    }

    @Override // com.byazt.hjr.l
    public void hp(final String str) {
        com.byazt.jw.j jVarJ = this.jx.j();
        if (jVarJ == null || this.jx.getContext() == null || !jVarJ.j()) {
            return;
        }
        com.byazt.ykv.l lVar = new com.byazt.ykv.l("trackFailedUrls") { // from class: com.byazt.hjr.jx.1
            @Override // java.lang.Runnable
            public void run() {
                jx.this.hp(jx.this.f20705l.hp(), str);
            }
        };
        lVar.hp(1);
        if (jVarJ.s() != null) {
            jVarJ.s().execute(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(List<j> list, String str) {
        String str2;
        if (list == null || list.size() == 0) {
            return;
        }
        com.byazt.jw.j jVarJ = this.jx.j();
        for (j jVar : list) {
            if (jVarJ == null || jVarJ.s() == null) {
                str2 = str;
            } else {
                str2 = str;
                jVarJ.s().execute(new hp(jVar, str2, null));
            }
            str = str2;
        }
    }
}
