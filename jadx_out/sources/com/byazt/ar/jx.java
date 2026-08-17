package com.byazt.ar;

import android.view.View;
import com.anythink.core.common.m.f;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.xci.b;
import com.byazt.xci.d;
import com.byazt.xci.mp;
import com.byazt.xci.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 30})
/* loaded from: classes2.dex */
public class jx {
    private static boolean hp(int i2, int i3, int i4, int i5, float f2, float f3) {
        return f2 >= ((float) i2) && f2 <= ((float) (i4 + i2)) && f3 >= ((float) i3) && f3 <= ((float) (i5 + i3));
    }

    public static void l(mp mpVar, zy zyVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        hp(mpVar, zyVar, jSONObject);
        com.byazt.jdb.j.hp(mpVar, "easy_play_start_render", jSONObject);
    }

    public static void hp(mp mpVar, zy zyVar, JSONObject jSONObject) throws JSONException {
        if (mpVar == null || zyVar == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("style_id", zyVar.w());
            jSONObject.put("component_type", zyVar.hp());
            jSONObject.put("render_sequence", zyVar.jx());
            jSONObject.put("display_area", zyVar.j());
            if (zyVar.l()) {
                jSONObject.put("style_category", d.j(mpVar));
                jSONObject.put("exp_id", d.w(mpVar));
                jSONObject.put("group_id", d.a(mpVar));
            }
        } catch (Exception unused) {
        }
    }

    public static void l(mp mpVar, zy zyVar, boolean z2) throws JSONException {
        hp(mpVar, zyVar, z2, 0, (String) null);
    }

    public static void l(mp mpVar, zy zyVar, boolean z2, int i2, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(cb.f11292o, z2 ? 1 : 0);
            jSONObject.put("error_code", i2);
        } catch (Exception unused) {
        }
        hp(mpVar, zyVar, jSONObject);
        com.byazt.jdb.j.hp(mpVar, "easy_play_show", jSONObject);
    }

    public static void l(mp mpVar, zy zyVar, boolean z2, JSONObject jSONObject) {
        hp(mpVar, zyVar, z2, jSONObject, false);
    }

    public static void hp(mp mpVar, zy zyVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        hp(mpVar, zyVar, jSONObject);
        com.byazt.jdb.j.hp(mpVar, "easy_play_start_load", jSONObject);
    }

    public static void hp(mp mpVar, zy zyVar, boolean z2) throws JSONException {
        hp(mpVar, zyVar, z2, 0, (JSONObject) null);
    }

    public static void hp(mp mpVar, zy zyVar, boolean z2, int i2) throws JSONException {
        hp(mpVar, zyVar, z2, i2, (JSONObject) null);
    }

    public static void hp(mp mpVar, zy zyVar, boolean z2, int i2, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(cb.f11292o, z2 ? 1 : 0);
            jSONObject.put("error_code", i2);
        } catch (Exception unused) {
        }
        hp(mpVar, zyVar, jSONObject);
        com.byazt.jdb.j.hp(mpVar, "easy_play_load_result", jSONObject);
    }

    public static void hp(mp mpVar, zy zyVar, boolean z2, int i2, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(cb.f11292o, z2 ? 1 : 0);
            jSONObject.put("error_code", i2);
            if (str != null) {
                jSONObject.put("error_msg", str);
            }
        } catch (Exception unused) {
        }
        hp(mpVar, zyVar, jSONObject);
        com.byazt.jdb.j.hp(mpVar, "easy_play_render_result", jSONObject);
    }

    public static void hp(mp mpVar, zy zyVar, boolean z2, JSONObject jSONObject) throws JSONException {
        l(mpVar, zyVar, z2, 0, jSONObject);
    }

    public static void hp(mp mpVar, zy zyVar, boolean z2, JSONObject jSONObject, boolean z3) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = 2;
        try {
            jSONObject.put(f.ad, z2 ? 1 : 2);
            int iHp = zyVar.hp();
            if (iHp == 1 || iHp == 3) {
                if (!z3) {
                    i2 = 1;
                }
                jSONObject.put("click_type", i2);
            }
        } catch (Exception unused) {
        }
        hp(mpVar, zyVar, jSONObject);
        com.byazt.jdb.j.hp(mpVar, "easy_play_click", jSONObject);
    }

    public static boolean hp(View view, com.byazt.wkx.jx jxVar) {
        if (view != null) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            int width = view.getWidth();
            int height = view.getHeight();
            if (jxVar instanceof b) {
                b bVar = (b) jxVar;
                return hp(i2, i3, width, height, bVar.hp, bVar.f27199l);
            }
        }
        return false;
    }
}
