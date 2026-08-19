package com.byazt.nw;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 30})
/* loaded from: classes3.dex */
public class jx {
    public HashMap<String, Object> hp = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f23841l;

    public jx(JSONObject jSONObject) {
        this.f23841l = jSONObject;
    }

    public Object hp(String str) {
        if (this.hp.containsKey(str)) {
            return this.hp.get(str);
        }
        return null;
    }

    public boolean l(String str) {
        return this.hp.containsKey(str);
    }

    public void hp() {
        Iterator<String> itKeys = this.f23841l.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = this.f23841l.opt(next);
            int i2 = 0;
            if (TextUtils.equals("image", next)) {
                if (objOpt instanceof JSONArray) {
                    while (true) {
                        JSONArray jSONArray = (JSONArray) objOpt;
                        if (i2 < jSONArray.length()) {
                            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                            if (jSONObjectOptJSONObject != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    Object objOpt2 = jSONObjectOptJSONObject.opt(next2);
                                    this.hp.put(next + i.f2495E + i2 + i.f2495E + next2, objOpt2);
                                }
                            }
                            i2++;
                        }
                    }
                }
            } else if (TextUtils.equals("dynamic_creative", next)) {
                if (objOpt instanceof String) {
                    try {
                        JSONObject jSONObject = new JSONObject((String) objOpt);
                        Iterator<String> itKeys3 = jSONObject.keys();
                        while (itKeys3.hasNext()) {
                            String next3 = itKeys3.next();
                            Object objOpt3 = jSONObject.opt(next3);
                            if ((objOpt3 instanceof JSONArray) && !TextUtils.equals(next3, "short_phrase") && !TextUtils.equals(next3, "long_phrase")) {
                                for (int i3 = 0; i3 < ((JSONArray) objOpt3).length(); i3++) {
                                    this.hp.put(next + i.f2495E + next3 + i.f2495E + i3, ((JSONArray) objOpt3).opt(i3));
                                }
                            } else if ((objOpt3 instanceof JSONObject) && TextUtils.equals(next3, "coupon")) {
                                Iterator<String> itKeys4 = ((JSONObject) objOpt3).keys();
                                while (itKeys4.hasNext()) {
                                    String next4 = itKeys4.next();
                                    Object objOpt4 = ((JSONObject) objOpt3).opt(next4);
                                    this.hp.put(next + i.f2495E + next3 + i.f2495E + next4, objOpt4);
                                }
                            } else if ((objOpt3 instanceof JSONObject) && TextUtils.equals(next3, "live_room_data")) {
                                hp(next, next3, objOpt3);
                            } else {
                                this.hp.put(next + i.f2495E + next3, objOpt3);
                            }
                        }
                    } catch (JSONException unused) {
                    }
                }
            } else if (!(objOpt instanceof JSONObject)) {
                this.hp.put(next, objOpt);
                if (objOpt instanceof String) {
                    this.hp.put(next, objOpt);
                }
            } else if (objOpt != null) {
                JSONObject jSONObject2 = (JSONObject) objOpt;
                Iterator<String> itKeys5 = jSONObject2.keys();
                while (itKeys5.hasNext()) {
                    String next5 = itKeys5.next();
                    Object objOpt5 = jSONObject2.opt(next5);
                    this.hp.put(next + i.f2495E + next5, objOpt5);
                }
            }
        }
    }

    private void hp(String str, String str2, Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if ((objOpt instanceof JSONArray) && TextUtils.equals(next, "product_infos")) {
                int i2 = 0;
                while (true) {
                    JSONArray jSONArray = (JSONArray) objOpt;
                    if (i2 < jSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                        Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            Object objOpt2 = jSONObjectOptJSONObject.opt(next2);
                            this.hp.put(str + i.f2495E + str2 + i.f2495E + next + i.f2495E + i2 + i.f2495E + next2, objOpt2);
                        }
                        i2++;
                    }
                }
            } else {
                this.hp.put(str + i.f2495E + str2 + i.f2495E + next, objOpt);
            }
        }
    }
}
