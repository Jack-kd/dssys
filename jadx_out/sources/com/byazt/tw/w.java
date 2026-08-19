package com.byazt.tw;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.f.s;
import com.byazt.pg.k;
import com.byazt.um.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 593, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements l {

    /* renamed from: n, reason: collision with root package name */
    public static final AtomicInteger f26073n = new AtomicInteger();

    /* renamed from: a, reason: collision with root package name */
    public int f26074a;

    /* renamed from: b, reason: collision with root package name */
    public int f26075b;
    public String cx;
    public JSONObject di;

    /* renamed from: e, reason: collision with root package name */
    public double f26076e;
    public String eb;
    public String ec;
    public double gu;
    public StringBuilder hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26077j;
    public long jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public long f26078k;

    /* renamed from: l, reason: collision with root package name */
    public JSONArray f26079l;
    public int ns;

    /* renamed from: q, reason: collision with root package name */
    public String f26080q;

    /* renamed from: s, reason: collision with root package name */
    public StringBuilder f26081s;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public int f26082u;

    /* renamed from: v, reason: collision with root package name */
    public int f26083v;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public String f26084w;
    public int xs;
    public long zy;

    @com.byazt.kj.hp(hp = {0, 1, 593, 8})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public long f26085a;

        /* renamed from: e, reason: collision with root package name */
        public double f26086e;
        public int eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f26087j;
        public JSONObject jl;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f26088l;

        /* renamed from: s, reason: collision with root package name */
        public int f26090s;

        /* renamed from: w, reason: collision with root package name */
        public int f26091w;

        /* renamed from: q, reason: collision with root package name */
        public int f26089q = -1;
        public String gu = "";

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp j(String str) {
            this.f26087j = str;
            return this;
        }

        public hp jx(String str) {
            this.f26088l = str;
            return this;
        }

        public hp l(String str) {
            this.jx = str;
            return this;
        }

        public hp hp(double d2) {
            this.f26086e = d2;
            return this;
        }

        public hp j(int i2) {
            this.f26089q = i2;
            return this;
        }

        public hp jx(int i2) {
            this.f26090s = i2;
            return this;
        }

        public hp l(int i2) {
            this.eb = i2;
            return this;
        }

        public hp hp(int i2) {
            this.f26091w = i2;
            return this;
        }

        public hp hp(long j2) {
            this.f26085a = j2;
            return this;
        }

        public hp hp(JSONObject jSONObject) {
            this.jl = jSONObject;
            return this;
        }

        public w hp() {
            return new w(this);
        }
    }

    @Override // com.byazt.tw.l
    public void hp(int i2, int i3, String str) {
        this.xs = i2;
        this.sz = i3;
        this.ec = str;
    }

    public String jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return "unknown";
        }
        str.getClass();
        switch (str) {
            case "0501":
                return "created";
            case "0502":
                return "bindview";
            case "0503":
                return "initialized";
            case "0504":
                return "prepared";
            case "0505":
                return "started";
            case "0506":
                return "played";
            case "0507":
                return "paused";
            case "0508":
                return "stopped";
            case "0509":
                return "completed";
            case "0510":
                return "error";
            default:
                return "unknown";
        }
    }

    @Override // com.byazt.tw.l
    public void l(String str) {
        int iIndexOf = this.f26081s.indexOf(str);
        if (TextUtils.isEmpty(this.f26081s)) {
            this.f26081s.append(str);
        } else if (iIndexOf == -1) {
            StringBuilder sb = this.f26081s;
            sb.append(",");
            sb.append(str);
        }
    }

    private w() {
        this.hp = new StringBuilder();
        this.f26079l = new JSONArray();
        this.xs = -8888;
        this.vv = false;
        this.sz = -8888;
        this.ns = 0;
        this.f26075b = -1;
        this.ns = f26073n.addAndGet(1);
    }

    @Override // com.byazt.tw.l
    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rit", this.f26084w);
            jSONObject.put("cid", this.f26077j);
            jSONObject.put("adtype", this.f26074a);
            jSONObject.put("req_id", this.jx);
            jSONObject.put("duration", this.eb);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject l() throws JSONException {
        JSONObject jSONObject = this.di;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("session_id", this.f26081s.toString());
            jSONObject.put("node_line", this.hp.toString());
            jSONObject.put("node_line_detail", this.f26079l.toString());
            jSONObject.put(s.a.f3400b, this.f26080q);
            jSONObject.put("video_duration", this.f26076e);
            jSONObject.put("video_size", this.gu);
            jSONObject.put("start_duration", this.zy - this.jl);
            jSONObject.put("play_duration", SystemClock.elapsedRealtime() - this.jl);
            jSONObject.put("play_cache_size", this.f26078k);
            jSONObject.put("play_type", this.f26083v);
            jSONObject.put("player_type", this.f26082u);
            jSONObject.put("video_index", this.ns);
            jSONObject.put("is_audio", this.vv ? 1 : 0);
            jSONObject.put("dynamic_join_type", this.f26075b);
            int i2 = this.xs;
            if (i2 != -8888) {
                jSONObject.put("error_code", i2);
            }
            jSONObject.put("error_msg", this.ec);
            int i3 = this.sz;
            if (i3 != -8888) {
                jSONObject.put("extra_error_code", i3);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @Override // com.byazt.tw.l
    public void hp(String str) throws JSONException {
        this.hp.append(str);
        String strJx = jx(str);
        JSONObject jSONObject = new JSONObject();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (TextUtils.equals("0505", str)) {
            this.jl = jElapsedRealtime;
        } else if (TextUtils.equals("0506", str)) {
            this.zy = jElapsedRealtime;
        }
        try {
            jSONObject.putOpt("type", strJx);
            jSONObject.putOpt("ts", Long.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
        }
        this.f26079l.put(jSONObject);
    }

    private w(hp hpVar) {
        this.hp = new StringBuilder();
        this.f26079l = new JSONArray();
        this.xs = -8888;
        this.vv = false;
        this.sz = -8888;
        this.ns = 0;
        this.f26075b = -1;
        this.jx = hpVar.f26088l;
        this.f26077j = hpVar.jx;
        this.f26084w = hpVar.f26087j;
        this.f26074a = hpVar.f26091w;
        this.f26083v = hpVar.f26090s;
        this.f26075b = hpVar.f26089q;
        this.f26078k = hpVar.f26085a;
        this.f26082u = hpVar.eb;
        this.f26076e = hpVar.f26086e;
        this.cx = hpVar.hp;
        this.di = hpVar.jl;
        String str = hpVar.gu;
        this.f26081s = new StringBuilder(TextUtils.isEmpty(str) ? "" : str);
        this.ns = f26073n.addAndGet(1);
    }

    @Override // com.byazt.tw.l
    public void hp(long j2, zy zyVar) throws JSONException {
        k kVar = (k) com.byazt.ym.j.getService(NotificationCompat.CATEGORY_EVENT);
        if (kVar == null || zyVar == null) {
            return;
        }
        this.gu = zyVar.getVideoSize();
        this.vv = zyVar.isAudio();
        this.eb = String.valueOf(j2);
        this.f26080q = zyVar.getUrl();
        kVar.onStatsEvent(this.cx, hp(), l());
    }
}
