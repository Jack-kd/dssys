package com.byazt.oa;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public final class s {
    public jl hp;

    private s(jl jlVar) {
        this.hp = jlVar;
    }

    public static s hp(jl jlVar) {
        return new s(jlVar);
    }

    public <T> T hp(String str, Type type) throws JSONException {
        hp(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.hp.hp(str, type);
    }

    public <T> String hp(T t2) {
        String string;
        if (t2 == null) {
            return "{}";
        }
        if (!(t2 instanceof JSONObject) && !(t2 instanceof JSONArray)) {
            string = this.hp.hp(t2);
        } else {
            string = t2.toString();
        }
        hp(string);
        return string;
    }

    private static void hp(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        q.hp(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(str)));
    }
}
