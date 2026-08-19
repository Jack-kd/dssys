package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.cl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1402})
/* loaded from: classes3.dex */
public class hd {

    /* renamed from: q, reason: collision with root package name */
    public static JSONObject f27284q;

    /* renamed from: a, reason: collision with root package name */
    public tw f27285a;
    public jd eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27286j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27287l;

    /* renamed from: s, reason: collision with root package name */
    public JSONObject f27288s;

    /* renamed from: w, reason: collision with root package name */
    public int f27289w;

    public hd(JSONObject jSONObject, String str, f fVar) {
        this.hp = 2;
        this.f27287l = 0;
        this.jx = 1;
        this.f27286j = 0;
        this.f27289w = 100;
        if (jSONObject == null) {
            return;
        }
        this.hp = jSONObject.optInt("render_control", fVar != null ? fVar.eb : 1);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("render");
        if (jSONObjectOptJSONObject != null) {
            this.f27287l = jSONObjectOptJSONObject.optInt("render_sequence", 0);
            this.jx = jSONObjectOptJSONObject.optInt("backup_render_control", 1);
            this.f27286j = jSONObjectOptJSONObject.optInt("render_thread", 0);
            this.f27289w = jSONObjectOptJSONObject.optInt("reserve_time", 100);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("tpl_info");
        if (jSONObjectOptJSONObject2 != null) {
            tw twVar = new tw();
            twVar.l(jSONObjectOptJSONObject2.optString("id"));
            twVar.jx(jSONObjectOptJSONObject2.optString(TKDownloadReason.KSAD_TK_MD5));
            twVar.j(jSONObjectOptJSONObject2.optString("url"));
            twVar.w(jSONObjectOptJSONObject2.optString("data"));
            twVar.a(jSONObjectOptJSONObject2.optString("diff_data"));
            twVar.eb(jSONObjectOptJSONObject2.optString("dynamic_creative"));
            twVar.hp(jSONObjectOptJSONObject2.optString(cl.f49059n));
            twVar.s(jSONObjectOptJSONObject2.optString("material_type"));
            twVar.q(jSONObjectOptJSONObject2.optString("ugen_url"));
            twVar.e(jSONObjectOptJSONObject2.optString("ugen_md5"));
            twVar.jl(jSONObjectOptJSONObject2.optString("express_gesture_priority"));
            twVar.gu(jSONObjectOptJSONObject2.optString("engine_version"));
            this.f27285a = twVar;
            com.byazt.gr.j jVarHp = hp(str);
            if (jVarHp != null) {
                com.byazt.ir.l.hp(jVarHp);
            }
            com.byazt.la.e.hp(twVar.q(), twVar.e(), (com.byazt.la.jx) null);
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("tpl_info_v3");
        if (jSONObjectOptJSONObject3 != null) {
            jd jdVarHp = jd.hp(jSONObjectOptJSONObject3);
            this.eb = jdVarHp;
            com.byazt.ca.l.hp().hp(jdVarHp, str, "ad");
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("dynamic_creative");
        if (jSONObjectOptJSONObject4 != null) {
            this.f27288s = jSONObjectOptJSONObject4;
        }
    }

    public static tw a(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return null;
        }
        return hdVarK.f27285a;
    }

    public static boolean e(mp mpVar) {
        return mpVar != null && l(mpVar) == 7;
    }

    public static jd eb(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return null;
        }
        return hdVarK.eb;
    }

    public static boolean gu(mp mpVar) {
        return mpVar != null && l(mpVar) == 3;
    }

    public static void hp(mp mpVar, int i2) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return;
        }
        hdVarK.hp = i2;
    }

    public static int j(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return 0;
        }
        return hdVarK.f27286j;
    }

    public static boolean jl(mp mpVar) {
        return mpVar != null && l(mpVar) == 10;
    }

    public static int jx(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return 1;
        }
        return hdVarK.jx;
    }

    private static hd k(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.c();
    }

    public static void l(com.byazt.ctq.w wVar) {
        try {
            f27284q = new JSONObject(wVar.getString("dark_mode_config", ""));
        } catch (Exception unused) {
        }
    }

    public static com.byazt.gr.j q(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return null;
        }
        return hdVarK.hp(String.valueOf(com.byazt.zn.ky.zy(mpVar)));
    }

    public static boolean s(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return false;
        }
        tw twVar = hdVarK.f27285a;
        if (twVar != null) {
            return !TextUtils.isEmpty(twVar.gu());
        }
        int i2 = hdVarK.f27287l;
        return i2 == 9 || i2 == 10;
    }

    public static int w(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return 100;
        }
        return hdVarK.f27289w;
    }

    public static JSONObject zy(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return null;
        }
        return hdVarK.f27288s;
    }

    public void l(JSONObject jSONObject) {
        try {
            jSONObject.put("render_control", this.hp);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("render_sequence", this.f27287l);
            jSONObject2.put("backup_render_control", this.jx);
            jSONObject2.put("render_thread", this.f27286j);
            jSONObject2.put("reserve_time", this.f27289w);
            jSONObject.put("render", jSONObject2);
            if (this.f27285a != null) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("id", this.f27285a.l());
                jSONObject3.put(TKDownloadReason.KSAD_TK_MD5, this.f27285a.jx());
                jSONObject3.put("url", this.f27285a.j());
                jSONObject3.put("data", this.f27285a.w());
                jSONObject3.put("diff_data", this.f27285a.a());
                jSONObject3.put(cl.f49059n, this.f27285a.hp());
                jSONObject3.put("dynamic_creative", this.f27285a.eb());
                jSONObject3.put("material_type", this.f27285a.s());
                jSONObject3.put("ugen_url", this.f27285a.q());
                jSONObject3.put("ugen_md5", this.f27285a.e());
                jSONObject3.put("engine_version", this.f27285a.gu());
                jSONObject3.put("express_gesture_priority", this.f27285a.jl());
                jSONObject.put("tpl_info", jSONObject3);
            }
            jSONObject.put("dynamic_creative", this.f27288s);
            jd jdVar = this.eb;
            if (jdVar != null) {
                jSONObject.put("tpl_info_v3", jdVar.q());
            }
        } catch (JSONException unused) {
        }
    }

    public static void hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
                if (jSONObjectOptJSONObject != null) {
                    f27284q = jSONObjectOptJSONObject.optJSONObject("dark_mode_config");
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void hp(com.byazt.ctq.w wVar) {
        try {
            wVar.put("dark_mode_config", f27284q.toString());
        } catch (Exception unused) {
        }
    }

    public static JSONObject hp() {
        return f27284q;
    }

    private com.byazt.gr.j hp(String str) {
        tw twVar = this.f27285a;
        if (twVar == null) {
            return null;
        }
        String strL = twVar.l();
        String strJ = this.f27285a.j();
        String strJx = this.f27285a.jx();
        String strW = this.f27285a.w();
        return com.byazt.gr.j.hp().hp(strL).l(strJx).jx(strJ).j(strW).w(this.f27285a.hp()).a(String.valueOf(str));
    }

    public static int hp(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return 2;
        }
        return hdVarK.hp;
    }

    public static boolean hp(int i2) {
        JSONObject jSONObject = f27284q;
        if (jSONObject == null) {
            return i2 == 1 || i2 == 5 || i2 == 8;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("support_slot_type");
            if (jSONArrayOptJSONArray == null) {
                return i2 == 1 || i2 == 5 || i2 == 8;
            }
            int length = jSONArrayOptJSONArray.length();
            if (length == 0) {
                return i2 == 1 || i2 == 5 || i2 == 8;
            }
            for (int i3 = 0; i3 < length; i3++) {
                if (i2 == jSONArrayOptJSONArray.optInt(i3)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return i2 == 1 || i2 == 5 || i2 == 8;
        }
    }

    public static double hp(mp mpVar, double d2) {
        JSONObject jSONObject;
        double d3;
        hd hdVarK = k(mpVar);
        if (hdVarK == null || hdVarK.hp != 2) {
            return 0.0d;
        }
        int i2 = hdVarK.f27287l;
        if ((i2 != 10 && i2 != 9) || (jSONObject = hdVarK.f27288s) == null) {
            return 0.0d;
        }
        try {
            int iOptInt = jSONObject.optInt("layout_type");
            if (iOptInt <= 0) {
                return 0.0d;
            }
            switch (iOptInt) {
                case 1:
                case 2:
                    d3 = 0.8999999761581421d;
                    break;
                case 3:
                    d3 = 1.0d;
                    break;
                case 4:
                    d3 = 0.5d;
                    break;
                case 5:
                case 6:
                    d3 = 2.4000000953674316d;
                    break;
                case 7:
                    d3 = 2.0d;
                    break;
                default:
                    return 0.0d;
            }
            return d2 / d3;
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    public static int l(mp mpVar) {
        hd hdVarK = k(mpVar);
        if (hdVarK == null) {
            return 0;
        }
        return hdVarK.f27287l;
    }
}
