package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, 38})
/* loaded from: classes2.dex */
public class j extends hp {

    @NonNull
    public String jl;

    @NonNull
    public String zy;

    public j(@NonNull String str, @NonNull JSONObject jSONObject) {
        this.zy = str;
        this.jl = jSONObject.toString();
        this.f18927e = 0;
    }

    @Override // com.byazt.cn.hp
    public List<String> hp() {
        List<String> listHp = super.hp();
        ArrayList arrayList = new ArrayList(listHp.size());
        arrayList.addAll(listHp);
        arrayList.addAll(Arrays.asList("params", "varchar", "log_type", "varchar"));
        return arrayList;
    }

    @Override // com.byazt.cn.hp
    @NonNull
    public String j() {
        return "event_misc";
    }

    @Override // com.byazt.cn.hp
    public JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f18929l);
        jSONObject.put("tea_event_index", this.jx);
        jSONObject.put("session_id", this.f18928j);
        long j2 = this.f18932w;
        if (j2 > 0) {
            jSONObject.put("user_id", j2);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.f18926a) ? JSONObject.NULL : this.f18926a);
        if (!TextUtils.isEmpty(this.eb)) {
            jSONObject.put("ssid", this.eb);
        }
        jSONObject.put("log_type", this.zy);
        try {
            JSONObject jSONObject2 = new JSONObject(this.jl);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject2.get(next);
                if (jSONObject.opt(next) != null) {
                    com.byazt.gt.e.l("misc事件存在重复的key", null);
                }
                jSONObject.put(next, obj);
            }
            return jSONObject;
        } catch (Exception e2) {
            com.byazt.gt.e.jx("解析 event misc 失败", e2);
            return jSONObject;
        }
    }

    @Override // com.byazt.cn.hp
    public String q() {
        return this.jl;
    }

    @Override // com.byazt.cn.hp
    public String s() {
        return "param:" + this.jl + " logType:" + this.zy;
    }

    @Override // com.byazt.cn.hp
    public int hp(@NonNull Cursor cursor) {
        int iHp = super.hp(cursor);
        int i2 = iHp + 1;
        this.jl = cursor.getString(iHp);
        int i3 = iHp + 2;
        this.zy = cursor.getString(i2);
        return i3;
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull ContentValues contentValues) {
        super.hp(contentValues);
        contentValues.put("params", this.jl);
        contentValues.put("log_type", this.zy);
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
        jSONObject.put("params", this.jl);
        jSONObject.put("log_type", this.zy);
    }

    @Override // com.byazt.cn.hp
    public hp l(@NonNull JSONObject jSONObject) {
        super.l(jSONObject);
        this.jl = jSONObject.optString("params", null);
        this.zy = jSONObject.optString("log_type", null);
        return this;
    }
}
