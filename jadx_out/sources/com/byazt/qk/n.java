package com.byazt.qk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public class n {
    public Map<String, hp> hp;

    /* renamed from: l, reason: collision with root package name */
    public String f24869l;

    public n(String str) {
        this.f24869l = str;
    }

    public void hp(Map<String, hp> map) {
        this.hp = map;
    }

    public int l(String str) {
        int iHp = hp(false);
        Map<String, hp> map = this.hp;
        if (map != null && map.containsKey(str)) {
            hp hpVar = this.hp.get(str);
            iHp = hpVar != null ? iHp + hpVar.l() : iHp + 5000;
        }
        return iHp + 5000;
    }

    @NonNull
    public String toString() throws JSONException {
        if (this.hp == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, hp> entry : this.hp.entrySet()) {
            hp value = entry.getValue();
            JSONArray jSONArray = new JSONArray();
            if (value != null) {
                jSONArray.put(value.hp());
                jSONArray.put(value.l());
                try {
                    jSONObject.put(entry.getKey(), jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        return jSONObject.toString();
    }

    public int hp(String str) {
        int iHp = hp(true);
        Map<String, hp> map = this.hp;
        if (map != null && map.containsKey(str)) {
            hp hpVar = this.hp.get(str);
            iHp = hpVar != null ? iHp + hpVar.hp() : iHp + 5000;
        }
        return iHp + 5000;
    }

    @com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM})
    public static class hp {
        public int hp;

        /* renamed from: l, reason: collision with root package name */
        public int f24870l;

        public hp(int i2, int i3) {
            this.hp = i2;
            this.f24870l = i3;
        }

        public int hp() {
            return this.hp;
        }

        public int l() {
            return this.f24870l;
        }

        public hp() {
        }
    }

    private int hp(boolean z2) throws JSONException, NumberFormatException {
        float fNq;
        int iXn = 0;
        if (!com.byazt.jz.sz.l().ba()) {
            return 0;
        }
        double d2 = 0.0d;
        try {
            String strHp = com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", this.f24869l);
            if (!TextUtils.isEmpty(strHp)) {
                double d3 = Double.parseDouble(strHp);
                if (d3 >= 0.0d) {
                    try {
                        if (d3 < com.byazt.jz.sz.l().og()) {
                            iXn = com.byazt.jz.sz.l().xn();
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                d2 = d3;
            }
        } catch (NumberFormatException unused2) {
        }
        try {
            int i2 = Integer.parseInt(com.byazt.sf.hp.hp().hp("ugen_render", z2 ? "h5_render_success" : "native_render_success", this.f24869l));
            int i3 = Integer.parseInt(com.byazt.sf.hp.hp().hp("ugen_render", z2 ? "h5_render_fail" : "native_render_fail", this.f24869l));
            int i4 = i2 + i3;
            float f2 = i4 > 0 ? (i3 / i4) * 100.0f : 0.0f;
            if (z2) {
                fNq = com.byazt.jz.sz.l().hl();
            } else {
                fNq = com.byazt.jz.sz.l().nq();
            }
            if (f2 >= fNq) {
                iXn += com.byazt.jz.sz.l().xn();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isH5", z2);
            jSONObject.put("bytebenchScore", d2);
            jSONObject.put("successCount", i2);
            jSONObject.put("failCount", i3);
            jSONObject.put("errorRate", f2);
            jSONObject.put("result", iXn);
            com.byazt.lf.k.hp().s(jSONObject);
        } catch (NumberFormatException | JSONException unused3) {
        }
        return iXn;
    }

    public static n hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        n nVar = new n(str2);
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == 2) {
                    map.put(next, new hp(jSONArrayOptJSONArray.optInt(0), jSONArrayOptJSONArray.optInt(1)));
                }
            }
            nVar.hp(map);
        } catch (JSONException unused) {
        }
        return nVar;
    }
}
