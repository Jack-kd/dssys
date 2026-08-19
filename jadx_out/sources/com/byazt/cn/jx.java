package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.f.f;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, 30})
/* loaded from: classes2.dex */
public class jx extends hp {
    public String jl;

    /* renamed from: k, reason: collision with root package name */
    public String f18933k;

    /* renamed from: u, reason: collision with root package name */
    public long f18934u;

    /* renamed from: v, reason: collision with root package name */
    public String f18935v;
    public long xs;
    public String zy;

    @Override // com.byazt.cn.hp
    public List<String> hp() {
        List<String> listHp = super.hp();
        ArrayList arrayList = new ArrayList(listHp.size());
        arrayList.addAll(listHp);
        arrayList.addAll(Arrays.asList(PointParamKey.CATEGORY, "varchar", "tag", "varchar", f.a.f3244d, "integer", "ext_value", "integer", "params", "varchar", "label", "varchar"));
        return arrayList;
    }

    @Override // com.byazt.cn.hp
    @NonNull
    public String j() {
        return NotificationCompat.CATEGORY_EVENT;
    }

    @Override // com.byazt.cn.hp
    public hp l(@NonNull JSONObject jSONObject) {
        super.l(jSONObject);
        this.jx = jSONObject.optLong("tea_event_index", 0L);
        this.jl = jSONObject.optString(PointParamKey.CATEGORY, null);
        this.zy = jSONObject.optString("tag", null);
        this.f18934u = jSONObject.optLong(f.a.f3244d, 0L);
        this.xs = jSONObject.optLong("ext_value", 0L);
        this.f18935v = jSONObject.optString("params", null);
        this.f18933k = jSONObject.optString("label", null);
        return this;
    }

    @Override // com.byazt.cn.hp
    public String q() {
        return this.f18935v;
    }

    @Override // com.byazt.cn.hp
    public String s() {
        return this.zy + ", " + this.f18933k;
    }

    @Override // com.byazt.cn.hp
    public int hp(@NonNull Cursor cursor) {
        int iHp = super.hp(cursor);
        this.jl = cursor.getString(iHp);
        this.zy = cursor.getString(iHp + 1);
        this.f18934u = cursor.getLong(iHp + 2);
        this.xs = cursor.getLong(iHp + 3);
        int i2 = iHp + 5;
        this.f18935v = cursor.getString(iHp + 4);
        int i3 = iHp + 6;
        this.f18933k = cursor.getString(i2);
        return i3;
    }

    @Override // com.byazt.cn.hp
    public JSONObject l() throws JSONException {
        JSONObject jSONObject = !TextUtils.isEmpty(this.f18935v) ? new JSONObject(this.f18935v) : null;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
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
        jSONObject.put(PointParamKey.CATEGORY, this.jl);
        jSONObject.put("tag", this.zy);
        jSONObject.put(f.a.f3244d, this.f18934u);
        jSONObject.put("ext_value", this.xs);
        jSONObject.put("label", this.f18933k);
        jSONObject.put("datetime", this.gu);
        if (!TextUtils.isEmpty(this.f18931s)) {
            jSONObject.put("ab_sdk_version", this.f18931s);
        }
        return jSONObject;
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull ContentValues contentValues) {
        super.hp(contentValues);
        contentValues.put(PointParamKey.CATEGORY, this.jl);
        contentValues.put("tag", this.zy);
        contentValues.put(f.a.f3244d, Long.valueOf(this.f18934u));
        contentValues.put("ext_value", Long.valueOf(this.xs));
        contentValues.put("params", this.f18935v);
        contentValues.put("label", this.f18933k);
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
        jSONObject.put("tea_event_index", this.jx);
        jSONObject.put(PointParamKey.CATEGORY, this.jl);
        jSONObject.put("tag", this.zy);
        jSONObject.put(f.a.f3244d, this.f18934u);
        jSONObject.put("ext_value", this.xs);
        jSONObject.put("params", this.f18935v);
        jSONObject.put("label", this.f18933k);
    }
}
