package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, 45})
/* loaded from: classes2.dex */
public class e extends hp {
    public long jl;

    /* renamed from: k, reason: collision with root package name */
    public String f18920k;

    /* renamed from: v, reason: collision with root package name */
    public int f18921v = 0;
    public long zy;

    @Override // com.byazt.cn.hp
    public List<String> hp() {
        return null;
    }

    @Override // com.byazt.cn.hp
    @NonNull
    public String j() {
        return "terminate";
    }

    @Override // com.byazt.cn.hp
    public JSONObject l() throws JSONException {
        a aVar;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f18929l);
        jSONObject.put("tea_event_index", this.jx);
        jSONObject.put("session_id", this.f18928j);
        jSONObject.put("stop_timestamp", this.zy / 1000);
        jSONObject.put("duration", this.jl / 1000);
        jSONObject.put("datetime", this.gu);
        long j2 = this.f18932w;
        if (j2 > 0) {
            jSONObject.put("user_id", j2);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.f18926a) ? JSONObject.NULL : this.f18926a);
        if (!TextUtils.isEmpty(this.eb)) {
            jSONObject.put("ssid", this.eb);
        }
        if (!TextUtils.isEmpty(this.f18931s)) {
            jSONObject.put("ab_sdk_version", this.f18931s);
        }
        if (!TextUtils.isEmpty(this.f18920k)) {
            jSONObject.put("uuid_changed", true);
            if (!TextUtils.equals(this.f18920k, this.f18928j)) {
                jSONObject.put("original_session_id", this.f18920k);
            }
        }
        if (this.f18921v == 0 && (aVar = (a) l.f18937l.get("launch")) != null && !aVar.sz) {
            this.f18921v = 6;
        }
        jSONObject.put("launch_from", this.f18921v);
        return jSONObject;
    }

    @Override // com.byazt.cn.hp
    public String s() {
        return String.valueOf(this.jl);
    }

    @Override // com.byazt.cn.hp
    public int hp(@NonNull Cursor cursor) {
        com.byazt.gt.e.l((Throwable) null);
        return 0;
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull ContentValues contentValues) {
        com.byazt.gt.e.l((Throwable) null);
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull JSONObject jSONObject) {
        com.byazt.gt.e.l((Throwable) null);
    }

    @Override // com.byazt.cn.hp
    public hp l(@NonNull JSONObject jSONObject) {
        com.byazt.gt.e.l((Throwable) null);
        return this;
    }
}
