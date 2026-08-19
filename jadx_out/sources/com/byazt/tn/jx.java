package com.byazt.tn;

import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.sii.eb;
import com.byazt.ymw.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 800, 30})
/* loaded from: classes3.dex */
public class jx {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile String f25894j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25895l;

    @com.byazt.kj.hp(hp = {0, 1, 800, 219})
    public static class hp {
        public static jx hp = new jx();
    }

    public static Map<String, Object> e() {
        eb ebVarXs;
        JSONObject jSONObjectJx;
        if (d.f21856j < 6408 || (ebVarXs = s.u().xs()) == null) {
            return null;
        }
        Map<String, Object> mapUserPrivacyConfig = ebVarXs.userPrivacyConfig();
        return ((mapUserPrivacyConfig == null || mapUserPrivacyConfig.isEmpty()) && s.u().f() && u.jx() && (jSONObjectJx = com.byazt.bo.hp.jx("compliance.json")) != null) ? hp(jSONObjectJx) : mapUserPrivacyConfig;
    }

    private String gu() {
        Map<String, Object> mapE = e();
        if (mapE == null) {
            return null;
        }
        Object obj = mapE.get("od");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public static jx hp() {
        return hp.hp;
    }

    private boolean jl() {
        String strNs = s.u().ns();
        if (TextUtils.isEmpty(strNs)) {
            return false;
        }
        strNs.getClass();
        switch (strNs) {
        }
        return false;
    }

    public boolean a() {
        return !TextUtils.equals(l(), "0");
    }

    public boolean eb() {
        if (jl()) {
            return hp(gu());
        }
        return true;
    }

    public String j() {
        Map<String, Object> mapE = e();
        if (mapE == null) {
            return null;
        }
        Object obj = mapE.get("blt");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public boolean jx() {
        if (!TextUtils.isEmpty(this.f25894j)) {
            return !TextUtils.equals("0", this.f25894j);
        }
        Map<String, Object> mapE = e();
        if (mapE != null) {
            Object obj = mapE.get("uip");
            if (obj instanceof String) {
                String str = (String) obj;
                this.f25894j = str;
                return !TextUtils.equals("0", str);
            }
        }
        this.f25894j = "1";
        return true;
    }

    public String l() {
        Map<String, Object> mapE;
        try {
            mapE = e();
        } catch (Exception unused) {
        }
        if (mapE == null) {
            jx(null);
            return null;
        }
        Object obj = mapE.get("motion_info");
        if (obj instanceof String) {
            if (TextUtils.equals("0", (String) obj)) {
                jx("0");
                return "0";
            }
            jx("1");
            return "1";
        }
        jx(null);
        return null;
    }

    public boolean q() {
        return l(j());
    }

    public boolean s() {
        if (sz.l().ms()) {
            return false;
        }
        Map<String, Object> mapE = e();
        if (mapE != null) {
            Object obj = mapE.get("mcod");
            if (obj instanceof String) {
                String str = (String) obj;
                this.jx = str;
                return !TextUtils.equals(str, "0");
            }
        }
        return true;
    }

    public void w() {
        if (jl()) {
            String strGu = gu();
            if (TextUtils.equals(strGu, this.f25895l)) {
                return;
            }
            com.byazt.yx.l.hp().hp("setOaidEnabled", hp(strGu));
            this.f25895l = strGu;
        }
    }

    private jx() {
    }

    public static HashMap<String, Object> hp(JSONObject jSONObject) {
        HashMap<String, Object> map = new HashMap<>();
        if (jSONObject == null) {
            return null;
        }
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.get(next));
            }
        } catch (Exception unused) {
        }
        return map;
    }

    private boolean hp(String str) {
        return !TextUtils.equals(str, "0");
    }

    private void jx(String str) {
        if (!TextUtils.equals(this.hp, str)) {
            com.byazt.yx.l.hp().hp("setSensorEnable", !TextUtils.equals(str, "0"));
        }
        this.hp = str;
    }

    private boolean l(String str) {
        return !TextUtils.equals(str, "0");
    }
}
