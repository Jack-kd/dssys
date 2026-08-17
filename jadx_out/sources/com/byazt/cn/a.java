package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.api.ArticleInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, 54})
/* loaded from: classes2.dex */
public class a extends hp {
    public boolean ec;
    public int jl;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18917k;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public int f18918u;

    /* renamed from: v, reason: collision with root package name */
    public String f18919v;
    public String vv;
    public String xs;
    public String zy;

    public a(boolean z2) {
        this.sz = z2;
    }

    @Override // com.byazt.cn.hp
    public List<String> hp() {
        List<String> listHp = super.hp();
        ArrayList arrayList = new ArrayList(listHp.size());
        arrayList.addAll(listHp);
        arrayList.addAll(Arrays.asList("ver_name", "varchar", "ver_code", "integer", "last_session", "varchar", "is_first_time", "integer", ArticleInfo.PAGE_TITLE, "varchar", "page_key", "varchar", "resume_from_background", "integer"));
        return arrayList;
    }

    @Override // com.byazt.cn.hp
    @NonNull
    public String j() {
        return "launch";
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
        boolean z2 = this.f18917k;
        if (z2) {
            jSONObject.put("is_background", z2);
        }
        jSONObject.put("datetime", this.gu);
        if (!TextUtils.isEmpty(this.f18931s)) {
            jSONObject.put("ab_sdk_version", this.f18931s);
        }
        if (!TextUtils.isEmpty(this.f18919v)) {
            jSONObject.put("uuid_changed", true);
            jSONObject.put("original_session_id", this.f18919v);
        }
        if (this.f18918u == 1) {
            jSONObject.put("$is_first_time", "true");
        }
        jSONObject.put("$resume_from_background", !this.sz);
        jSONObject.put("is_background", !this.sz);
        return jSONObject;
    }

    @Override // com.byazt.cn.hp
    public String s() {
        return this.f18917k ? "bg" : "fg";
    }

    @Override // com.byazt.cn.hp
    public int hp(@NonNull Cursor cursor) {
        int iHp = super.hp(cursor);
        this.zy = cursor.getString(iHp);
        this.jl = cursor.getInt(iHp + 1);
        this.f18919v = cursor.getString(iHp + 2);
        this.f18918u = cursor.getInt(iHp + 3);
        this.xs = cursor.getString(iHp + 4);
        int i2 = iHp + 6;
        this.vv = cursor.getString(iHp + 5);
        int i3 = iHp + 7;
        this.ec = cursor.getInt(i2) == 0;
        return i3;
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull ContentValues contentValues) {
        super.hp(contentValues);
        contentValues.put("ver_name", this.zy);
        contentValues.put("ver_code", Integer.valueOf(this.jl));
        contentValues.put("last_session", this.f18919v);
        contentValues.put("is_first_time", Integer.valueOf(this.f18918u));
        contentValues.put(ArticleInfo.PAGE_TITLE, this.xs);
        contentValues.put("page_key", this.vv);
        contentValues.put("resume_from_background", Integer.valueOf(this.ec ? 1 : 0));
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull JSONObject jSONObject) {
        com.byazt.gt.e.l((Throwable) null);
    }

    @Override // com.byazt.cn.hp
    public hp l(@NonNull JSONObject jSONObject) {
        com.byazt.gt.e.l((Throwable) null);
        return null;
    }
}
