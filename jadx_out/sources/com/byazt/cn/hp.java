package com.byazt.cn;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.umeng.analytics.pro.bz;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 473, 28})
/* loaded from: classes2.dex */
public abstract class hp implements Cloneable {
    public static final SimpleDateFormat jl = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    /* renamed from: a, reason: collision with root package name */
    public String f18926a;

    /* renamed from: e, reason: collision with root package name */
    public int f18927e;
    public String eb;
    public String gu;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public String f18928j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f18929l;

    /* renamed from: q, reason: collision with root package name */
    public int f18930q;

    /* renamed from: s, reason: collision with root package name */
    public String f18931s;

    /* renamed from: w, reason: collision with root package name */
    public long f18932w;

    public hp() {
        hp(0L);
    }

    public static String l(long j2) {
        return jl.format(new Date(j2));
    }

    @NonNull
    public final JSONObject a() {
        try {
            this.gu = l(this.f18929l);
            return l();
        } catch (JSONException e2) {
            com.byazt.gt.e.l(e2);
            return null;
        }
    }

    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public hp clone() {
        try {
            return (hp) super.clone();
        } catch (CloneNotSupportedException e2) {
            com.byazt.gt.e.l(e2);
            return null;
        }
    }

    public void hp(long j2) {
        if (j2 == 0) {
            j2 = System.currentTimeMillis();
        }
        this.f18929l = j2;
    }

    @NonNull
    public abstract String j();

    public final String jx() {
        List<String> listHp = hp();
        if (listHp == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("create table if not exists ");
        sb.append(j());
        sb.append("(");
        for (int i2 = 0; i2 < listHp.size(); i2 += 2) {
            sb.append(listHp.get(i2));
            sb.append(" ");
            sb.append(listHp.get(i2 + 1));
            sb.append(",");
        }
        sb.delete(sb.length() - 1, sb.length());
        sb.append(")");
        return sb.toString();
    }

    public abstract JSONObject l() throws JSONException;

    public String q() {
        return null;
    }

    public String s() {
        return "sid:" + this.f18928j;
    }

    @NonNull
    public String toString() {
        String strJ = j();
        if (!getClass().getSimpleName().equalsIgnoreCase(strJ)) {
            strJ = strJ + ", " + getClass().getSimpleName();
        }
        String strSubstring = this.f18928j;
        String str = "-";
        if (strSubstring != null) {
            int iIndexOf = strSubstring.indexOf("-");
            if (iIndexOf >= 0) {
                strSubstring = strSubstring.substring(0, iIndexOf);
            }
            str = strSubstring;
        }
        return "{" + strJ + ", " + s() + ", " + str + ", " + this.f18929l + "}";
    }

    @NonNull
    public final JSONObject w() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("k_cls", j());
            hp(jSONObject);
            return jSONObject;
        } catch (JSONException e2) {
            com.byazt.gt.e.l(e2);
            return jSONObject;
        }
    }

    public hp l(@NonNull JSONObject jSONObject) {
        this.f18929l = jSONObject.optLong("local_time_ms", 0L);
        this.hp = 0L;
        this.jx = 0L;
        this.f18930q = 0;
        this.f18932w = 0L;
        this.f18928j = null;
        this.f18926a = null;
        this.eb = null;
        this.f18931s = null;
        return this;
    }

    public List<String> hp() {
        return Arrays.asList(bz.f48985d, "integer primary key autoincrement", "local_time_ms", "integer", "tea_event_index", "integer", "nt", "integer", "user_id", "integer", "session_id", "varchar", "user_unique_id", "varchar", "ssid", "varchar", "ab_sdk_version", "varchar", "event_type", "integer");
    }

    public int hp(@NonNull Cursor cursor) {
        this.hp = cursor.getLong(0);
        this.f18929l = cursor.getLong(1);
        this.jx = cursor.getLong(2);
        this.f18930q = cursor.getInt(3);
        this.f18932w = cursor.getLong(4);
        this.f18928j = cursor.getString(5);
        this.f18926a = cursor.getString(6);
        this.eb = cursor.getString(7);
        this.f18931s = cursor.getString(8);
        this.f18927e = cursor.getInt(9);
        return 10;
    }

    public final ContentValues l(@Nullable ContentValues contentValues) {
        if (contentValues == null) {
            contentValues = new ContentValues();
        } else {
            contentValues.clear();
        }
        hp(contentValues);
        return contentValues;
    }

    public void hp(@NonNull ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f18929l));
        contentValues.put("tea_event_index", Long.valueOf(this.jx));
        contentValues.put("nt", Integer.valueOf(this.f18930q));
        contentValues.put("user_id", Long.valueOf(this.f18932w));
        contentValues.put("session_id", this.f18928j);
        contentValues.put("user_unique_id", this.f18926a);
        contentValues.put("ssid", this.eb);
        contentValues.put("ab_sdk_version", this.f18931s);
        contentValues.put("event_type", Integer.valueOf(this.f18927e));
    }

    public void hp(@NonNull JSONObject jSONObject) throws JSONException {
        jSONObject.put("local_time_ms", this.f18929l);
    }

    public static hp hp(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return l.f18937l.get(jSONObject.optString("k_cls", "")).clone().l(jSONObject);
        } catch (Throwable th) {
            com.byazt.gt.e.l(th);
            return null;
        }
    }
}
