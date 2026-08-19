package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX})
/* loaded from: classes3.dex */
public class rz {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<bu> f27484a;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27485j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27486l;

    /* renamed from: w, reason: collision with root package name */
    public String f27487w;

    public rz(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        this.hp = 0;
        this.jx = "再看一个获取";
        this.f27485j = "更多奖励";
        this.f27484a = new ArrayList<>();
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("play_again")) == null) {
            return;
        }
        this.hp = jSONObjectOptJSONObject.optInt("again_type", 0);
        this.jx = jSONObjectOptJSONObject.optString("entrance_prefix", "再看一个获取");
        this.f27485j = jSONObjectOptJSONObject.optString("entrance_suffix", "更多奖励");
        this.f27486l = jSONObjectOptJSONObject.optString("pre_sessions");
        this.f27487w = jSONObjectOptJSONObject.optString("play_again_rit");
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("again_dialog_config");
        if (jSONArrayOptJSONArray != null) {
            this.f27484a = new ArrayList<>();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject2 != null) {
                    this.f27484a.add(new bu(jSONObjectOptJSONObject2));
                }
            }
        }
    }

    private static rz a(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.vr();
    }

    public static String j(mp mpVar) {
        rz rzVarA = a(mpVar);
        if (rzVarA == null) {
            return null;
        }
        return rzVarA.f27487w;
    }

    public static String jx(mp mpVar) {
        rz rzVarA = a(mpVar);
        if (rzVarA == null) {
            return null;
        }
        return rzVarA.f27486l;
    }

    public static boolean l(mp mpVar) {
        rz rzVarA = a(mpVar);
        if (rzVarA == null) {
            return false;
        }
        int i2 = rzVarA.hp;
        return (i2 == 1 || i2 == 3) && hp(mpVar);
    }

    public static ArrayList<bu> w(mp mpVar) {
        rz rzVarA = a(mpVar);
        return rzVarA != null ? rzVarA.f27484a : new ArrayList<>();
    }

    public void hp(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("again_type", this.hp);
        } catch (JSONException unused) {
        }
        try {
            jSONObject2.put("entrance_prefix", this.jx);
        } catch (JSONException unused2) {
        }
        try {
            jSONObject2.put("entrance_suffix", this.f27485j);
        } catch (JSONException unused3) {
        }
        try {
            jSONObject2.put("pre_sessions", this.f27486l);
        } catch (JSONException unused4) {
        }
        try {
            jSONObject2.put("play_again_rit", this.f27487w);
        } catch (JSONException unused5) {
        }
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList<bu> arrayList = this.f27484a;
            if (arrayList != null && arrayList.size() != 0) {
                ArrayList<bu> arrayList2 = this.f27484a;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    bu buVar = arrayList2.get(i2);
                    i2++;
                    jSONArray.put(buVar.hp());
                }
            }
            jSONObject2.put("again_dialog_config", jSONArray);
            try {
                jSONObject.put("play_again", jSONObject2);
            } catch (JSONException unused6) {
            }
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String l(String str) {
        return str + "custom_again";
    }

    public static boolean hp(mp mpVar) {
        rz rzVarA = a(mpVar);
        if (rzVarA == null || zx.hp(mpVar)) {
            return false;
        }
        int i2 = rzVarA.hp;
        return (i2 == 1 || i2 == 2 || i2 == 3) && !TextUtils.isEmpty(rzVarA.f27486l);
    }

    public static String hp(String str) {
        return str + "again";
    }

    public static String hp(mp mpVar, String str, String str2) {
        rz rzVarA = a(mpVar);
        if (rzVarA == null) {
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                return "再看一个获取更多奖励";
            }
            return "再看一个获取" + str2 + str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(TextUtils.isEmpty(rzVarA.jx) ? "再看一个获取" : rzVarA.jx);
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            sb.append(TextUtils.isEmpty(rzVarA.f27485j) ? "更多奖励" : rzVarA.f27485j);
        } else {
            sb.append(str2);
            sb.append(str);
        }
        return sb.toString();
    }
}
