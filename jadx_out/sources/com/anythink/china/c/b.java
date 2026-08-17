package com.anythink.china.c;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.china.b.a;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.core.common.i;
import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.l;
import com.anythink.core.common.v.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b extends AbstractC1114b {

    /* renamed from: l, reason: collision with root package name */
    private static final String f1434l = "b";

    /* renamed from: a, reason: collision with root package name */
    long f1435a;

    /* renamed from: b, reason: collision with root package name */
    long f1436b;

    /* renamed from: c, reason: collision with root package name */
    Map<String, String> f1437c;

    /* renamed from: m, reason: collision with root package name */
    private String f1438m;

    /* renamed from: n, reason: collision with root package name */
    private String f1439n;

    /* renamed from: o, reason: collision with root package name */
    private String f1440o;

    /* renamed from: p, reason: collision with root package name */
    private Context f1441p;

    public b(Context context, String str, String str2, Map<String, String> map) {
        this(context, str, str2, map, "");
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        i.a();
        return com.anythink.core.common.g.c.a().a(i.h() ? a.C0042a.f1414b : a.C0042a.f1413a, "");
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Accept-Encoding", "gzip");
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        try {
            return k().getBytes("utf-8");
        } catch (Exception unused) {
            return k().getBytes();
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return this.f1438m;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f1441p;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f1439n;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectI.put("app_id", this.f1438m);
            jSONObjectI.put("nw_ver", l.h());
            String strD = s.b().D();
            if (!TextUtils.isEmpty(strD)) {
                jSONObjectI.put("sy_id", strD);
            }
            String strE = s.b().E();
            if (TextUtils.isEmpty(strE)) {
                s.b().k(s.b().C());
                jSONObjectI.put("bk_id", s.b().C());
            } else {
                jSONObjectI.put("bk_id", strE);
            }
            JSONObject jSONObjectA = com.anythink.core.common.m.f.a();
            if (jSONObjectA != null) {
                jSONObjectI.put("custom", jSONObjectA);
            }
            jSONObjectI.put("deny", l.m(s.b().g()));
            if (s.b().A()) {
                jSONObjectI.put("is_test", 1);
            }
            Map<String, String> map = this.f1437c;
            if (map != null && !map.isEmpty()) {
                try {
                    jSONObjectI.put("cached", new JSONObject(this.f1437c));
                } catch (Throwable unused) {
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                com.anythink.core.common.j.a.a().a(jSONObject);
                if (jSONObject.length() > 0) {
                    jSONObjectI.put(com.anythink.core.common.m.f.bj, jSONObject.toString());
                }
            } catch (Throwable unused2) {
            }
            jSONObjectI.putOpt(com.anythink.core.common.m.f.bk, 1);
            if (!TextUtils.isEmpty(this.f1440o)) {
                jSONObjectI.put(com.anythink.core.common.m.f.bp, this.f1440o);
            }
        } catch (JSONException unused3) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject j() {
        return super.j();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() {
        try {
            HashMap map = new HashMap();
            String strA = j.a(i().toString());
            String strA2 = j.a(j().toString());
            String strA3 = j.a(f.a().a(f.a().b()));
            map.put(com.anythink.core.common.m.f.f5766P, q());
            map.put("p", strA);
            map.put(com.anythink.core.common.m.f.f5774X, strA2);
            map.put("p3", strA3);
            ArrayList arrayList = new ArrayList(map.size());
            arrayList.addAll(map.keySet());
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                String str = (String) obj;
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(str);
                sb.append("=");
                sb.append(map.get(str));
            }
            map.put(com.anythink.core.common.m.f.f5775Y, n.c(this.f1439n + sb.toString()));
            return new JSONObject(map).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean m() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int n() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_ABR_PROBE_COUNT;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a("get_plugin", this.f1438m);
    }

    private b(Context context, String str, String str2, Map<String, String> map, String str3) {
        this.f1438m = str;
        this.f1439n = str2;
        this.f1441p = context;
        this.f1437c = map;
        this.f1440o = str3;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, com.anythink.core.common.m.s sVar) {
        this.f1435a = System.currentTimeMillis();
        this.f1436b = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        com.anythink.core.common.u.f.a("hf", (String) null, this.f1435a, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.f1436b, (ATAdRequest) null);
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        com.anythink.core.common.u.f.a("hf", adError.getPlatformCode(), adError.getPlatformMSG(), b(), "", "", "", (ATAdRequest) null);
    }
}
