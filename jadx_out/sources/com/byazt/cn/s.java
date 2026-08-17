package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.byazt.cn.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bz;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends hp {

    /* renamed from: b, reason: collision with root package name */
    public JSONObject f18944b;
    public e cx;
    public a ec;
    public byte[] jl;

    /* renamed from: k, reason: collision with root package name */
    public int f18945k;

    /* renamed from: n, reason: collision with root package name */
    public long f18946n;
    public JSONArray ns;
    public JSONArray sz;

    /* renamed from: u, reason: collision with root package name */
    public long f18947u;

    /* renamed from: v, reason: collision with root package name */
    public JSONArray f18948v;
    public long vv;
    public JSONArray xs;
    public int zy;

    public byte[] e() throws IOException {
        this.jl = null;
        try {
            byte[] bArrHp = com.byazt.gt.j.hp(a().toString());
            this.jl = bArrHp;
            return bArrHp;
        } catch (OutOfMemoryError e2) {
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            while (true) {
                l.C0204l[] c0204lArr = l.jx;
                if (i2 >= c0204lArr.length) {
                    throw new RuntimeException(sb.toString(), e2);
                }
                l.C0204l c0204l = c0204lArr[i2];
                if (c0204l != null) {
                    sb.append(c0204l.toString());
                    sb.append(";");
                }
                i2++;
            }
        }
    }

    public void hp(JSONObject jSONObject, a aVar, e eVar, JSONArray jSONArray, JSONArray[] jSONArrayArr, long[] jArr, int i2) {
        hp(0L);
        this.f18944b = jSONObject;
        this.ec = aVar;
        this.cx = eVar;
        this.ns = jSONArray;
        this.f18948v = jSONArrayArr[0];
        this.f18947u = jArr[0];
        this.xs = jSONArrayArr[1];
        this.vv = jArr[1];
        this.sz = jSONArrayArr[2];
        this.f18946n = jArr[2];
        this.f18927e = i2;
    }

    @Override // com.byazt.cn.hp
    @NonNull
    public String j() {
        return "pack";
    }

    @Override // com.byazt.cn.hp
    public JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", this.f18944b);
        jSONObject.put("time_sync", com.byazt.et.hp.hp);
        jSONObject.put("local_time", System.currentTimeMillis() / 1000);
        if (this.ec != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.ec.a());
            jSONObject.put("launch", jSONArray);
        }
        e eVar = this.cx;
        int i2 = 0;
        if (eVar != null) {
            JSONObject jSONObjectA = eVar.a();
            JSONArray jSONArray2 = this.ns;
            int length = jSONArray2 != null ? jSONArray2.length() : 0;
            JSONArray jSONArray3 = new JSONArray();
            int i3 = 0;
            long j2 = 0;
            while (i3 < length) {
                JSONArray jSONArray4 = new JSONArray();
                JSONObject jSONObject2 = new JSONObject(this.ns.optString(i3));
                JSONObject jSONObject3 = new JSONObject(jSONObject2.optString("params"));
                jSONArray4.put(i2, jSONObject3.optString("page_key", ""));
                jSONArray4.put(1, (jSONObject3.optInt("duration", i2) + 999) / 1000);
                jSONArray3.put(jSONArray4);
                int i4 = length;
                long jOptLong = jSONObject2.optLong("local_time_ms", 0L);
                if (jOptLong > j2) {
                    jSONObjectA.put("$page_title", jSONObject3.optString(ArticleInfo.PAGE_TITLE, ""));
                    jSONObjectA.put("$page_key", jSONObject3.optString("page_key", ""));
                    j2 = jOptLong;
                }
                i3++;
                length = i4;
                i2 = 0;
            }
            if (length > 0) {
                jSONObjectA.put("activites", jSONArray3);
            }
            JSONArray jSONArray5 = new JSONArray();
            jSONArray5.put(jSONObjectA);
            jSONObject.put("terminate", jSONArray5);
        }
        JSONArray jSONArray6 = this.f18948v;
        int length2 = jSONArray6 != null ? jSONArray6.length() : 0;
        if (length2 > 0) {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f18948v);
        }
        JSONArray jSONArray7 = this.ns;
        int length3 = jSONArray7 != null ? jSONArray7.length() : 0;
        JSONArray jSONArray8 = this.xs;
        int length4 = jSONArray8 != null ? jSONArray8.length() : 0;
        if (length4 > 0) {
            jSONObject.put("event_v3", this.xs);
        }
        JSONArray jSONArray9 = this.sz;
        int length5 = jSONArray9 != null ? jSONArray9.length() : 0;
        if (length5 > 0) {
            jSONObject.put("log_data", this.sz);
        }
        StringBuilder sb = new StringBuilder("pack {");
        sb.append("ts:");
        sb.append(this.f18929l);
        sb.append(", la:");
        Object obj = this.ec;
        if (obj == null) {
            obj = "0";
        }
        sb.append(obj);
        sb.append(", te:");
        e eVar2 = this.cx;
        sb.append(eVar2 != null ? eVar2 : "0");
        sb.append(", p:");
        sb.append(length3);
        sb.append(", v1:");
        sb.append(length2);
        sb.append(", v3:");
        sb.append(length4);
        sb.append(", m:");
        sb.append(length5);
        com.byazt.gt.e.hp(sb.toString());
        return jSONObject;
    }

    @Override // com.byazt.cn.hp
    public String s() {
        return String.valueOf(this.hp);
    }

    @Override // com.byazt.cn.hp
    public List<String> hp() {
        return Arrays.asList(bz.f48985d, "integer primary key autoincrement", "local_time_ms", "integer", "_data", "blob", "_fail", "integer", "event_type", "integer");
    }

    @Override // com.byazt.cn.hp
    public int hp(@NonNull Cursor cursor) {
        this.hp = cursor.getLong(0);
        this.f18929l = cursor.getLong(1);
        this.jl = cursor.getBlob(2);
        this.zy = cursor.getInt(3);
        this.f18927e = cursor.getInt(4);
        this.f18928j = "";
        this.f18944b = null;
        this.ec = null;
        this.cx = null;
        this.ns = null;
        this.f18948v = null;
        this.xs = null;
        this.sz = null;
        return 5;
    }

    @Override // com.byazt.cn.hp
    public void hp(@NonNull ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f18929l));
        contentValues.put("_data", e());
        contentValues.put("event_type", Integer.valueOf(this.f18927e));
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
