package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends hp {
    public String jl;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18949k;
    public String zy;

    public w(String str, boolean z2, String str2) {
        this.zy = str;
        this.f18949k = z2;
        this.jl = str2;
        this.f18927e = 0;
    }

    @Override // com.byazt.cn.hp
    public List<String> hp() {
        List<String> listHp = super.hp();
        ArrayList arrayList = new ArrayList(listHp.size());
        arrayList.addAll(listHp);
        arrayList.addAll(Arrays.asList(NotificationCompat.CATEGORY_EVENT, "varchar", "params", "varchar", "is_bav", "integer"));
        return arrayList;
    }

    @Override // com.byazt.cn.hp
    @NonNull
    public String j() {
        return "eventv3";
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.zy);
        if (this.f18949k) {
            jSONObject.put("is_bav", 1);
        }
        if (!TextUtils.isEmpty(this.jl)) {
            jSONObject.put("params", new JSONObject(this.jl));
        }
        jSONObject.put("datetime", this.gu);
        if (!TextUtils.isEmpty(this.f18931s)) {
            jSONObject.put("ab_sdk_version", this.f18931s);
        }
        return jSONObject;
    }

    @Override // com.byazt.cn.hp
    public String q() {
        return this.jl;
    }

    @Override // com.byazt.cn.hp
    public String s() {
        return this.zy;
    }

    @Override // com.byazt.cn.hp
    public int hp(@NonNull Cursor cursor) {
        int iHp = super.hp(cursor);
        this.zy = cursor.getString(iHp);
        int i2 = iHp + 2;
        this.jl = cursor.getString(iHp + 1);
        int i3 = iHp + 3;
        this.f18949k = cursor.getInt(i2) == 1;
        return i3;
    }

    public w(String str, boolean z2, String str2, int i2) {
        this.zy = str;
        this.f18949k = z2;
        this.jl = str2;
        this.f18927e = i2;
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull ContentValues contentValues) {
        super.hp(contentValues);
        contentValues.put(NotificationCompat.CATEGORY_EVENT, this.zy);
        contentValues.put("params", this.jl);
        contentValues.put("is_bav", Integer.valueOf(this.f18949k ? 1 : 0));
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.zy);
        jSONObject.put("params", this.jl);
        jSONObject.put("is_bav", this.f18949k);
    }

    @Override // com.byazt.cn.hp
    public hp l(@NonNull JSONObject jSONObject) {
        super.l(jSONObject);
        this.zy = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null);
        this.jl = jSONObject.optString("params", null);
        this.f18949k = jSONObject.optBoolean("is_bav", false);
        return this;
    }
}
