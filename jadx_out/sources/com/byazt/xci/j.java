package com.byazt.xci;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.byazt.kc.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public String f27295a;

    /* renamed from: e, reason: collision with root package name */
    public String f27296e;
    public String eb;
    public JSONArray gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public List<hp> f27297j;
    public String jl;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27298l;

    /* renamed from: q, reason: collision with root package name */
    public String f27299q;

    /* renamed from: s, reason: collision with root package name */
    public float f27300s;

    /* renamed from: w, reason: collision with root package name */
    public String f27301w;
    public JSONObject zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public final String hp;

        /* renamed from: l, reason: collision with root package name */
        public final String f27302l;

        public hp(JSONObject jSONObject) {
            this.hp = jSONObject.optString("permission_name");
            this.f27302l = jSONObject.optString("permission_desc");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject hp() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("permission_desc", this.f27302l);
            } catch (JSONException unused) {
            }
            try {
                jSONObject.put("permission_name", this.hp);
            } catch (JSONException unused2) {
            }
            return jSONObject;
        }
    }

    public j(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AbsServerManager.PACKAGE_QUERY_BINDER);
            this.hp = jSONObjectOptJSONObject.optString("app_name");
            this.f27298l = jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
            this.jx = jSONObjectOptJSONObject.optString("developer_name");
            this.f27297j = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("permissions");
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    this.f27297j.add(new hp(jSONArrayOptJSONArray.optJSONObject(i2)));
                }
            }
            this.f27301w = jSONObjectOptJSONObject.optString("policy_url");
            String strOptString = jSONObjectOptJSONObject.optString(AbsServerManager.PACKAGE_QUERY_BINDER);
            this.f27295a = strOptString;
            if (TextUtils.isEmpty(strOptString)) {
                this.f27295a = jSONObjectOptJSONObject.optString("package_name");
            }
            this.eb = jSONObjectOptJSONObject.optString(g.a.f3279p);
            this.f27299q = jSONObjectOptJSONObject.optString("desc_url");
            this.f27296e = jSONObjectOptJSONObject.optString("reg_number");
            this.jl = jSONObjectOptJSONObject.optString("reg_url");
            this.zy = jSONObjectOptJSONObject.optJSONObject("reg_info");
        } catch (Throwable unused) {
        }
    }

    public String a() {
        return this.jl;
    }

    public boolean eb() {
        List<hp> list;
        return (TextUtils.isEmpty(this.hp) || TextUtils.isEmpty(this.f27298l) || TextUtils.isEmpty(jx()) || (list = this.f27297j) == null || list.size() == 0 || TextUtils.isEmpty(this.f27301w) || TextUtils.isEmpty(this.f27299q)) ? false : true;
    }

    public String hp() {
        return this.hp;
    }

    public String j() {
        return this.eb;
    }

    public String jx() {
        return this.jx;
    }

    public String l() {
        return this.f27298l;
    }

    public String s() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", this.hp);
        } catch (JSONException unused) {
        }
        try {
            jSONObject.put("app_version", this.f27298l);
        } catch (JSONException unused2) {
        }
        try {
            jSONObject.put("developer_name", this.jx);
        } catch (JSONException unused3) {
        }
        try {
            jSONObject.put("package_name", this.f27295a);
        } catch (JSONException unused4) {
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<hp> it = this.f27297j.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().hp());
        }
        try {
            jSONObject.put("permissions", jSONArray);
        } catch (JSONException unused5) {
        }
        try {
            jSONObject.put("privacy_policy_url", this.f27301w);
        } catch (JSONException unused6) {
        }
        try {
            jSONObject.put("score", this.f27300s);
        } catch (JSONException unused7) {
        }
        try {
            jSONObject.put("creative_tags", this.gu);
        } catch (JSONException unused8) {
        }
        try {
            jSONObject.put("desc_url", this.f27299q);
        } catch (JSONException unused9) {
        }
        try {
            jSONObject.put("reg_number", this.f27296e);
        } catch (JSONException unused10) {
        }
        try {
            jSONObject.put(g.a.f3279p, this.eb);
        } catch (JSONException unused11) {
        }
        try {
            jSONObject.put("reg_url", this.jl);
        } catch (JSONException unused12) {
        }
        try {
            jSONObject.put("reg_info", this.zy);
        } catch (JSONException unused13) {
        }
        return jSONObject.toString();
    }

    public String w() {
        return this.f27299q;
    }

    public void hp(float f2) {
        this.f27300s = f2;
    }

    public void hp(JSONArray jSONArray) {
        this.gu = jSONArray;
    }
}
