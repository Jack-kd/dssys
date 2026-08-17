package com.byazt.hk;

import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes2.dex */
public final class ec {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f20713a;
    public final Long eb;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final Long f20714j;
    public final Boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f20715l;

    /* renamed from: w, reason: collision with root package name */
    public final Long f20716w;

    public ec(String str, String str2, Boolean bool, Long l2, Long l3, Integer num, Long l4) {
        this.hp = str;
        this.f20715l = str2;
        this.jx = bool;
        this.f20714j = l2;
        this.f20716w = l3;
        this.f20713a = num;
        this.eb = l4;
    }

    @NonNull
    public Map<String, String> hp() {
        HashMap map = new HashMap();
        u.hp(map, "id", this.hp);
        u.hp(map, "req_id", this.f20715l);
        u.hp(map, "is_track_limited", String.valueOf(this.jx));
        u.hp(map, "take_ms", String.valueOf(this.f20714j));
        u.hp(map, "time", String.valueOf(this.f20716w));
        u.hp(map, "query_times", String.valueOf(this.f20713a));
        u.hp(map, "hw_id_version_code", String.valueOf(this.eb));
        return map;
    }

    @NonNull
    public JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        u.hp(jSONObject, "id", this.hp);
        u.hp(jSONObject, "req_id", this.f20715l);
        u.hp(jSONObject, "is_track_limited", this.jx);
        u.hp(jSONObject, "take_ms", this.f20714j);
        u.hp(jSONObject, "time", this.f20716w);
        u.hp(jSONObject, "query_times", this.f20713a);
        u.hp(jSONObject, "hw_id_version_code", this.eb);
        return jSONObject;
    }

    public String toString() {
        return l().toString();
    }

    @Nullable
    @AnyThread
    public static ec hp(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new ec(jSONObject.optString("id", null), jSONObject.optString("req_id", null), jSONObject.has("is_track_limited") ? Boolean.valueOf(jSONObject.optBoolean("is_track_limited")) : null, jSONObject.has("take_ms") ? Long.valueOf(jSONObject.optLong("take_ms", -1L)) : null, jSONObject.has("time") ? Long.valueOf(jSONObject.optLong("time", -1L)) : null, jSONObject.has("query_times") ? Integer.valueOf(jSONObject.optInt("query_times", -1)) : null, jSONObject.has("hw_id_version_code") ? Long.valueOf(jSONObject.optLong("hw_id_version_code", -1L)) : null);
        } catch (JSONException e2) {
            com.byazt.gt.e.hp(e2);
            return null;
        }
    }
}
