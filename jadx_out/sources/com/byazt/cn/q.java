package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.api.ArticleInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, 150})
/* loaded from: classes2.dex */
public class q extends hp {
    public int ec;
    public long jl;

    /* renamed from: k, reason: collision with root package name */
    public String f18941k;
    public String sz;

    /* renamed from: u, reason: collision with root package name */
    public String f18942u;

    /* renamed from: v, reason: collision with root package name */
    public String f18943v;
    public String vv;
    public String xs;
    public String zy;

    private JSONObject jl() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("page_key", this.f18941k);
        jSONObject.put("refer_page_key", this.zy);
        jSONObject.put("is_back", this.ec);
        jSONObject.put("duration", this.jl);
        jSONObject.put(ArticleInfo.PAGE_TITLE, this.f18943v);
        jSONObject.put("refer_page_title", this.f18942u);
        jSONObject.put("page_path", this.xs);
        jSONObject.put("referrer_page_path", this.vv);
        return jSONObject;
    }

    public boolean e() {
        return this.jl == -1;
    }

    public boolean gu() {
        return this.f18941k.contains(":");
    }

    @Override // com.byazt.cn.hp
    public List<String> hp() {
        List<String> listHp = super.hp();
        ArrayList arrayList = new ArrayList(listHp.size());
        arrayList.addAll(listHp);
        arrayList.addAll(Arrays.asList("page_key", "varchar", "refer_page_key", "varchar", "duration", "integer", "is_back", "integer", "last_session", "varchar", ArticleInfo.PAGE_TITLE, "varchar", "refer_page_title", "varchar", "page_path", "varchar", "referrer_page_path", "varchar"));
        return arrayList;
    }

    @Override // com.byazt.cn.hp
    @NonNull
    public String j() {
        return "page";
    }

    @Override // com.byazt.cn.hp
    public hp l(@NonNull JSONObject jSONObject) {
        super.l(jSONObject);
        this.f18941k = jSONObject.optString("page_key", null);
        this.zy = jSONObject.optString("refer_page_key", null);
        this.jl = jSONObject.optLong("duration", 0L);
        this.ec = jSONObject.optInt("is_back", 0);
        this.f18943v = jSONObject.optString(ArticleInfo.PAGE_TITLE, null);
        this.f18942u = jSONObject.optString("refer_page_title", null);
        this.xs = jSONObject.optString("page_path", null);
        this.vv = jSONObject.optString("referrer_page_path", null);
        return this;
    }

    @Override // com.byazt.cn.hp
    public String s() {
        return this.f18941k + ", " + this.jl;
    }

    @Override // com.byazt.cn.hp
    public int hp(@NonNull Cursor cursor) {
        int iHp = super.hp(cursor);
        this.f18941k = cursor.getString(iHp);
        this.zy = cursor.getString(iHp + 1);
        this.jl = cursor.getLong(iHp + 2);
        this.ec = cursor.getInt(iHp + 3);
        this.sz = cursor.getString(iHp + 4);
        this.f18943v = cursor.getString(iHp + 5);
        this.f18942u = cursor.getString(iHp + 6);
        int i2 = iHp + 8;
        this.xs = cursor.getString(iHp + 7);
        int i3 = iHp + 9;
        this.vv = cursor.getString(i2);
        return i3;
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, "bav2b_page");
        jSONObject.put("is_bav", 1);
        jSONObject.put("params", jl());
        jSONObject.put("datetime", this.gu);
        return jSONObject;
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull ContentValues contentValues) {
        super.hp(contentValues);
        contentValues.put("page_key", this.f18941k);
        contentValues.put("refer_page_key", this.zy);
        contentValues.put("duration", Long.valueOf(this.jl));
        contentValues.put("is_back", Integer.valueOf(this.ec));
        contentValues.put("last_session", this.sz);
        contentValues.put(ArticleInfo.PAGE_TITLE, this.f18943v);
        contentValues.put("refer_page_title", this.f18942u);
        contentValues.put("page_path", this.xs);
        contentValues.put("referrer_page_path", this.vv);
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
        jSONObject.put("page_key", this.f18941k);
        jSONObject.put("refer_page_key", this.zy);
        jSONObject.put("duration", this.jl);
        jSONObject.put("is_back", this.ec);
        jSONObject.put(ArticleInfo.PAGE_TITLE, this.f18943v);
        jSONObject.put("refer_page_title", this.f18942u);
        jSONObject.put("page_path", this.xs);
        jSONObject.put("referrer_page_path", this.vv);
    }
}
