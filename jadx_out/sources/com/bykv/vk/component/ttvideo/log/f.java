package com.bykv.vk.component.ttvideo.log;

import android.text.TextUtils;
import com.kuaishou.weapon.p0.t;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public long f28805a = -2147483648L;

    /* renamed from: b, reason: collision with root package name */
    public long f28806b = -2147483648L;

    /* renamed from: c, reason: collision with root package name */
    public long f28807c = -2147483648L;

    /* renamed from: d, reason: collision with root package name */
    public long f28808d = -2147483648L;

    /* renamed from: e, reason: collision with root package name */
    public long f28809e = -2147483648L;

    /* renamed from: f, reason: collision with root package name */
    public long f28810f = -2147483648L;

    /* renamed from: g, reason: collision with root package name */
    public int f28811g = Integer.MIN_VALUE;

    /* renamed from: h, reason: collision with root package name */
    public int f28812h = Integer.MIN_VALUE;

    /* renamed from: i, reason: collision with root package name */
    public int f28813i = Integer.MIN_VALUE;

    /* renamed from: j, reason: collision with root package name */
    public int f28814j = Integer.MIN_VALUE;

    /* renamed from: k, reason: collision with root package name */
    public String f28815k = "";

    /* renamed from: l, reason: collision with root package name */
    public String f28816l = "";

    /* renamed from: m, reason: collision with root package name */
    public int f28817m = Integer.MIN_VALUE;

    /* renamed from: n, reason: collision with root package name */
    public String f28818n = "";

    /* renamed from: o, reason: collision with root package name */
    public String f28819o = "";

    /* renamed from: p, reason: collision with root package name */
    public String f28820p = "";

    public JSONObject a(c cVar) {
        if (cVar == null) {
            return null;
        }
        HashMap map = new HashMap();
        a(map, "player_sessionid", this.f28818n);
        a(map, "log_type", "video_playq");
        a(map, "sdk_version", cVar.f28782e);
        a(map, "sv", cVar.f28781d);
        a(map, t.f31282x, cVar.f28780c);
        a(map, "pt", this.f28807c);
        a(map, "vt", this.f28808d);
        a(map, "et", this.f28809e);
        a(map, "lt", this.f28810f);
        a((Map) map, "bc", this.f28811g);
        a((Map) map, "br", this.f28812h);
        a((Map) map, "vd", cVar.f28785h);
        a(map, "initial_url", this.f28815k);
        a(map, "init_audio_url", this.f28816l);
        a((Map) map, "watch_dur", this.f28817m);
        a((Map) map, "errt", this.f28813i);
        a((Map) map, "errc", this.f28814j);
        a(map, "ps_t", this.f28805a);
        a(map, "pt_new", this.f28806b);
        a(map, "play_log_id", this.f28819o);
        a(map, "last_sessionid", this.f28820p);
        return new JSONObject(map);
    }

    public static void a(Map map, String str, int i2) {
        if (i2 != Integer.MIN_VALUE) {
            map.put(str, Integer.valueOf(i2));
        }
    }

    public static void a(Map map, String str, long j2) {
        if (j2 != -2147483648L) {
            map.put(str, Long.valueOf(j2));
        }
    }

    public static void a(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }
}
