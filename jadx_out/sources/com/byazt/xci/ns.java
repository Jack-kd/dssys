package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 166})
/* loaded from: classes3.dex */
public class ns {
    public Map<String, hp> hp = new HashMap();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_FALLBACK_THRESHLOD})
    public static class hp {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public String f27401j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f27402l;

        public hp(JSONObject jSONObject) {
            try {
                this.hp = jSONObject.optInt("type");
                this.f27402l = jSONObject.optString("url");
                this.jx = jSONObject.optString("pid");
                this.f27401j = jSONObject.optString("ecom_live_params");
            } catch (Exception unused) {
            }
        }

        public JSONObject hp() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("type", this.hp);
                jSONObject.put("url", this.f27402l);
                jSONObject.put("pid", this.jx);
                jSONObject.put("ecom_live_params", this.f27401j);
                return jSONObject;
            } catch (JSONException e2) {
                throw new RuntimeException(e2);
            }
        }

        public boolean l() {
            return 3 == this.hp ? !TextUtils.isEmpty(this.f27401j) : !TextUtils.isEmpty(this.f27402l);
        }
    }

    public ns(JSONObject jSONObject, boolean z2) {
        if (z2) {
            try {
                jSONObject = jSONObject.optJSONObject("sub_convert_link");
            } catch (Exception unused) {
                return;
            }
        }
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                hp hpVar = new hp(jSONObject.optJSONObject(next));
                if (hpVar.l()) {
                    this.hp.put(next, hpVar);
                }
            }
        }
    }

    public static JSONObject j(ns nsVar, String str) {
        hp hpVar;
        if (nsVar == null || (hpVar = nsVar.hp.get(str)) == null) {
            return null;
        }
        return hpVar.hp();
    }

    public static String jx(ns nsVar, String str) {
        hp hpVar;
        return (nsVar == null || (hpVar = nsVar.hp.get(str)) == null) ? "" : hpVar.f27402l;
    }

    public static int l(ns nsVar, String str) {
        hp hpVar;
        if (nsVar == null || (hpVar = nsVar.hp.get(str)) == null) {
            return 0;
        }
        return hpVar.hp;
    }

    public static String w(ns nsVar, String str) {
        hp hpVar;
        return (nsVar == null || (hpVar = nsVar.hp.get(str)) == null) ? "" : hpVar.f27401j;
    }

    public void hp(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, hp> entry : this.hp.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue().hp());
            }
            jSONObject.put("sub_convert_link", jSONObject2);
        } catch (Exception unused) {
        }
    }

    private static ns hp(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.zy();
    }

    public static boolean hp(ns nsVar, String str) {
        return (nsVar == null || !nsVar.hp.containsKey(str) || TextUtils.isEmpty(jx(nsVar, str))) ? false : true;
    }

    public static String hp(mp mpVar, String str) {
        hp hpVar;
        ns nsVarHp = hp(mpVar);
        if (nsVarHp == null || (hpVar = nsVarHp.hp.get(str)) == null) {
            return "";
        }
        return hpVar.jx;
    }
}
