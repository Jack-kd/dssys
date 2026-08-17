package com.byazt.gg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 748, 54})
/* loaded from: classes2.dex */
public class a {
    public hp hp;

    /* renamed from: l, reason: collision with root package name */
    public List<hp> f20417l;
    public boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public int f20416j = 0;

    @com.byazt.kj.hp(hp = {0, 1, 748, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public Map<String, Object> f20418a;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f20419j;
        public String jx = "global";

        /* renamed from: l, reason: collision with root package name */
        public String f20420l;

        /* renamed from: w, reason: collision with root package name */
        public Map<String, Object> f20421w;

        public String hp() {
            return this.jx;
        }

        public String j() {
            return this.hp;
        }

        public Map<String, Object> jx() {
            return this.f20421w;
        }

        public String l() {
            return this.f20419j;
        }

        public String toString() {
            return "Action{scheme='" + this.jx + "', name='" + this.f20419j + "', params=" + this.f20421w + ", host='" + this.f20420l + "', origin='" + this.hp + "', extra=" + this.f20418a + '}';
        }

        public String w() {
            return this.f20420l;
        }

        public void hp(String str) {
            this.jx = str;
        }

        public void j(String str) {
            this.f20420l = str;
        }

        public void jx(String str) {
            this.hp = str;
        }

        public void l(String str) {
            this.f20419j = str;
        }

        public void hp(Map<String, Object> map) {
            this.f20421w = map;
        }
    }

    public hp hp() {
        return this.hp;
    }

    public int j() {
        return this.f20416j;
    }

    public boolean jx() {
        return this.jx;
    }

    public List<hp> l() {
        return this.f20417l;
    }

    public static a hp(JSONObject jSONObject, JSONObject jSONObject2) {
        hp hpVarHp;
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        Object objOpt = jSONObject.opt("on");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("handlers");
        hp hpVarHp2 = objOpt instanceof String ? jl.hp((String) objOpt, jSONObject2) : objOpt instanceof JSONObject ? jl.hp((JSONObject) objOpt, jSONObject2) : null;
        if (hpVarHp2 != null) {
            aVar.hp = hpVarHp2;
        }
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            Object objOpt2 = jSONArrayOptJSONArray.opt(i2);
            if (objOpt2 instanceof String) {
                hp hpVarHp3 = jl.hp((String) objOpt2, jSONObject2);
                if (hpVarHp3 != null) {
                    arrayList.add(hpVarHp3);
                }
            } else if ((objOpt2 instanceof JSONObject) && (hpVarHp = jl.hp((JSONObject) objOpt2, jSONObject2)) != null) {
                arrayList.add(hpVarHp);
            }
        }
        aVar.f20417l = arrayList;
        if (jSONObject.has("delay")) {
            aVar.f20416j = com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("delay"), jSONObject2), 0);
        }
        if (jSONObject.has("disable")) {
            aVar.jx = com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("disable"), jSONObject2), false);
        }
        return aVar;
    }
}
