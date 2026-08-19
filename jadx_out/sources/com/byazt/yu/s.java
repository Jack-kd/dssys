package com.byazt.yu;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public volatile JSONObject f28306a;
    public volatile JSONObject eb;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public final SharedPreferences f28307j;
    public final SharedPreferences jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ub.s f28308l;

    /* renamed from: w, reason: collision with root package name */
    public final SharedPreferences f28309w;

    public s(Context context, com.byazt.ub.s sVar) {
        this.hp = context;
        this.f28308l = sVar;
        this.f28309w = com.byazt.rz.l.l(context, "embed_applog_stats", 0);
        this.jx = com.byazt.rz.l.l(context, "embed_header_custom", 0);
        this.f28307j = com.byazt.rz.l.l(context, "embed_last_sp_session", 0);
    }

    public boolean a() {
        return this.f28308l.l();
    }

    public String as() {
        return this.f28308l.ud() == null ? "" : this.f28308l.ud();
    }

    public long b() {
        return this.f28309w.getLong("batch_event_interval", WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
    }

    public long cx() {
        return this.f28309w.getLong("session_interval", WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
    }

    @Nullable
    public String d() {
        return this.f28309w.getString("user_agent", null);
    }

    public String di() {
        return null;
    }

    public String dy() {
        return this.f28308l.jl();
    }

    public String e() {
        return this.f28308l.jx();
    }

    public JSONObject eb() {
        return this.eb;
    }

    public String ec() {
        return !TextUtils.isEmpty(this.f28308l.ec()) ? this.f28308l.ec() : this.jx.getString("ab_version", null);
    }

    public com.byazt.ub.s f() {
        return this.f28308l;
    }

    public String gu() {
        return this.f28308l.j();
    }

    public boolean hp(ArrayList<com.byazt.cn.hp> arrayList) {
        return true;
    }

    public int hq() {
        return this.f28308l.k();
    }

    public int j() {
        return this.f28307j.getInt("session_order", 0);
    }

    public String jl() {
        return this.f28308l.w();
    }

    public String jx() {
        return this.f28307j.getString("session_last_day", "");
    }

    public String k() {
        return this.jx.getString("header_custom_info", null);
    }

    public boolean kg() {
        return this.f28308l.di();
    }

    public String ky() {
        return this.f28308l.n();
    }

    public String l() {
        return this.f28308l.eb();
    }

    public String lv() {
        return this.f28308l.zy();
    }

    public String m() {
        return this.f28308l.wv();
    }

    public boolean mp() {
        return this.f28308l.o();
    }

    public String ms() {
        return this.f28308l.hq() == null ? "" : this.f28308l.hq();
    }

    public boolean n() {
        return this.f28309w.getBoolean("bav_ab_config", false);
    }

    public boolean ns() {
        return this.f28309w.getBoolean("bav_log_collect", false);
    }

    public int nu() {
        return this.f28308l.u();
    }

    public String o() {
        return this.f28308l.hp();
    }

    public String pu() {
        return this.f28308l.sz();
    }

    public int q() {
        return this.f28309w.getInt("bav_monitor_rate", 0);
    }

    public String r() {
        return this.f28308l.vv();
    }

    public long s() {
        return this.f28309w.getLong("app_log_last_config_time", 0L);
    }

    public JSONObject sz() {
        JSONObject jSONObject = this.f28306a;
        if (jSONObject != null) {
            return jSONObject;
        }
        synchronized (this) {
            try {
                if (n()) {
                    jSONObject = new JSONObject(this.jx.getString("ab_configure", ""));
                }
            } catch (JSONException unused) {
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            this.f28306a = jSONObject;
        }
        return jSONObject;
    }

    public String u() {
        return this.jx.getString("user_unique_id", null);
    }

    public int ud() {
        return this.f28308l.v();
    }

    public String v() {
        return this.jx.getString("ab_sdk_version", "");
    }

    public long vv() {
        return this.f28309w.getLong("abtest_fetch_interval", 0L);
    }

    public SharedPreferences w() {
        return this.f28309w;
    }

    public String wv() {
        return this.f28308l.gu();
    }

    public String xh() {
        return this.f28308l.ns();
    }

    public boolean xs() {
        if (this.f28308l.s() == 0) {
            String strHp = com.byazt.gt.zy.hp(this.hp);
            if (TextUtils.isEmpty(strHp)) {
                this.f28308l.hp(0);
            } else {
                this.f28308l.hp(strHp.contains(":") ? 2 : 1);
            }
        }
        return this.f28308l.s() == 1;
    }

    public CharSequence yr() {
        return this.f28308l.cx();
    }

    public String zy() {
        return this.f28308l.a();
    }

    public static String hp() {
        return "embed_applog_stats";
    }

    public void jx(JSONObject jSONObject) {
        com.byazt.gt.e.hp("setAbConfig, " + jSONObject.toString(), null);
        this.jx.edit().putString("ab_configure", jSONObject.toString()).apply();
        this.f28306a = null;
    }

    public void l(JSONObject jSONObject) {
        this.jx.edit().putString("header_custom_info", jSONObject != null ? jSONObject.toString() : "").apply();
    }

    public void hp(String str, int i2) {
        this.f28307j.edit().putString("session_last_day", str).putInt("session_order", i2).apply();
    }

    public void hp(JSONObject jSONObject) {
        if (com.byazt.gt.e.f20599l) {
            com.byazt.gt.e.hp("setConfig, " + jSONObject.toString(), null);
        }
        this.eb = jSONObject;
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.f28309w.edit();
        long jOptInt = jSONObject.optInt("session_interval", 0);
        if (jOptInt > 0 && jOptInt <= 604800) {
            editorEdit.putLong("session_interval", jOptInt * 1000);
        } else {
            editorEdit.remove("session_interval");
        }
        long jOptInt2 = jSONObject.optInt("batch_event_interval", 0);
        if (jOptInt2 > 0 && jOptInt2 <= 604800) {
            editorEdit.putLong("batch_event_interval", jOptInt2 * 1000);
        } else {
            editorEdit.remove("batch_event_interval");
        }
        int iOptInt = jSONObject.optInt("send_launch_timely", 0);
        if (iOptInt > 0 && iOptInt <= 604800) {
            editorEdit.putInt("send_launch_timely", iOptInt);
        } else {
            editorEdit.remove("send_launch_timely");
        }
        long jOptInt3 = jSONObject.optInt("abtest_fetch_interval", 0);
        if (jOptInt3 > 20 && jOptInt3 <= 604800) {
            editorEdit.putLong("abtest_fetch_interval", jOptInt3 * 1000);
        } else {
            editorEdit.remove("abtest_fetch_interval");
        }
        boolean zOptBoolean = jSONObject.optBoolean("bav_log_collect", true);
        if (zOptBoolean) {
            editorEdit.putBoolean("bav_log_collect", true);
        } else {
            editorEdit.remove("bav_log_collect");
        }
        com.byazt.gt.e.hp = zOptBoolean;
        if (jSONObject.optBoolean("bav_ab_config", false)) {
            editorEdit.putBoolean("bav_ab_config", true);
        } else {
            editorEdit.remove("bav_ab_config");
        }
        int iOptInt2 = jSONObject.optInt("bav_monitor_rate", 0);
        if (iOptInt2 > 0 && iOptInt2 <= 100) {
            editorEdit.putInt("bav_monitor_rate", iOptInt2);
            com.byazt.gt.eb.hp(true);
        } else {
            editorEdit.remove("bav_monitor_rate");
            com.byazt.gt.eb.hp(false);
        }
        editorEdit.putLong("app_log_last_config_time", jCurrentTimeMillis);
        editorEdit.apply();
    }
}
