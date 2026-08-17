package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR})
/* loaded from: classes3.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    public boolean f27613a;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27614j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27615l;

    /* renamed from: w, reason: collision with root package name */
    public int f27616w;

    public y(JSONObject jSONObject) {
        this.f27613a = false;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("reward_live");
        if (jSONObjectOptJSONObject != null) {
            this.f27613a = true;
            l(jSONObjectOptJSONObject.optInt("reward_live_type", 1));
            jx(jSONObjectOptJSONObject.optInt("reward_live_style", 1));
            hp(jSONObjectOptJSONObject.optString("reward_live_text"));
            hp(jSONObjectOptJSONObject.optInt("reward_start_time", 5));
            j(jSONObjectOptJSONObject.optInt("reward_close_time", 10));
        }
    }

    public static String a(mp mpVar) {
        y yVarQ = q(mpVar);
        return yVarQ == null ? "去抖音观看直播\n可提前5s获得奖励哦" : yVarQ.jx;
    }

    public static int eb(mp mpVar) {
        y yVarQ = q(mpVar);
        if (yVarQ == null) {
            return 5;
        }
        return Math.max(yVarQ.f27614j, 0);
    }

    public static boolean j(mp mpVar) {
        int i2;
        y yVarQ = q(mpVar);
        return yVarQ != null && yVarQ.f27613a && com.byazt.yx.l.hp().hp(mpVar) && ((i2 = yVarQ.hp) == 3 || i2 == 4);
    }

    public static boolean jx(mp mpVar) {
        y yVarQ = q(mpVar);
        return yVarQ == null || !yVarQ.f27613a || yVarQ.hp == 1;
    }

    public static int l(mp mpVar) {
        y yVarQ = q(mpVar);
        if (yVarQ == null) {
            return 1;
        }
        return yVarQ.hp;
    }

    private static y q(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.mm();
    }

    public static int s(mp mpVar) {
        y yVarQ = q(mpVar);
        if (yVarQ == null) {
            return 10;
        }
        return Math.max(yVarQ.f27616w, 3);
    }

    public static int w(mp mpVar) {
        y yVarQ = q(mpVar);
        if (yVarQ == null) {
            return 1;
        }
        return yVarQ.f27615l;
    }

    public void hp(JSONObject jSONObject) {
        if (this.f27613a) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("reward_live_type", this.hp);
                jSONObject2.put("reward_live_style", this.f27615l);
                jSONObject2.put("reward_live_text", this.jx);
                jSONObject2.put("reward_start_time", this.f27614j);
                jSONObject2.put("reward_close_time", this.f27616w);
                jSONObject2.put("isValid", this.f27613a);
                jSONObject.put("reward_live", jSONObject2);
            } catch (JSONException unused) {
            }
        }
    }

    private void l(int i2) {
        if (i2 != 2 && i2 != 3 && i2 != 4 && i2 != 1) {
            i2 = 1;
        }
        this.hp = i2;
    }

    private void j(int i2) {
        if (i2 <= 3) {
            i2 = 3;
        }
        this.f27616w = i2;
    }

    private void jx(int i2) {
        if (i2 != 1 && i2 != 2 && i2 != 3) {
            i2 = 1;
        }
        this.f27615l = i2;
    }

    public static boolean hp(mp mpVar) {
        y yVarQ = q(mpVar);
        if (yVarQ == null) {
            return false;
        }
        return yVarQ.f27613a;
    }

    public boolean hp() {
        return this.f27613a;
    }

    private void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            if (this.f27615l == 3) {
                str = "5s后将为你自动打开抖音\n在抖音观看直播\n可提前5s获得奖励哦";
            } else {
                str = "去抖音观看直播\n可提前5s获得奖励哦";
            }
        }
        this.jx = str;
    }

    public void hp(int i2) {
        this.f27614j = i2;
    }
}
