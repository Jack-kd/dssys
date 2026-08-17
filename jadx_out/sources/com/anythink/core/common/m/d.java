package com.anythink.core.common.m;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import com.anythink.core.e.b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    private final com.anythink.core.common.h.t f5689a;

    /* renamed from: b, reason: collision with root package name */
    private long f5690b;

    /* renamed from: c, reason: collision with root package name */
    private long f5691c;

    public d(com.anythink.core.common.h.t tVar) {
        this.f5689a = tVar;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.m();
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
        com.anythink.core.common.h.t tVar = this.f5689a;
        return tVar != null ? tVar.b() : "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return com.anythink.core.common.d.s.b().g();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        com.anythink.core.common.h.t tVar = this.f5689a;
        return tVar != null ? tVar.c() : "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return Collections.EMPTY_MAP;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() {
        Object obj;
        JSONObject jSONObjectI = super.i();
        try {
            com.anythink.core.common.h.t tVar = this.f5689a;
            jSONObjectI.put("app_id", tVar != null ? tVar.b() : "");
            jSONObjectI.put("nw_ver", com.anythink.core.common.v.l.h());
            String strD = com.anythink.core.common.d.s.b().D();
            if (!TextUtils.isEmpty(strD)) {
                jSONObjectI.put("sy_id", strD);
            }
            String strE = com.anythink.core.common.d.s.b().E();
            if (TextUtils.isEmpty(strE)) {
                com.anythink.core.common.d.s.b().k(com.anythink.core.common.d.s.b().C());
                jSONObjectI.put("bk_id", com.anythink.core.common.d.s.b().C());
            } else {
                jSONObjectI.put("bk_id", strE);
            }
            JSONObject jSONObjectA = f.a();
            if (jSONObjectA != null) {
                jSONObjectI.put("custom", jSONObjectA);
            }
            jSONObjectI.put("deny", com.anythink.core.common.v.l.m(com.anythink.core.common.d.s.b().g()));
            if (com.anythink.core.common.d.s.b().A()) {
                jSONObjectI.put("is_test", 1);
            }
            try {
                JSONObject jSONObject = new JSONObject();
                com.anythink.core.common.j.a.a().a(jSONObject);
                if (jSONObject.length() > 0) {
                    jSONObjectI.put(f.bj, jSONObject.toString());
                }
            } catch (Throwable unused) {
            }
            jSONObjectI.putOpt(f.bk, 1);
            jSONObjectI.put(f.bB, com.anythink.core.common.d.s.b().F());
            Pair<Integer, List<String>> pairI = com.anythink.core.common.d.s.b().I();
            if (pairI != null && (obj = pairI.first) != null) {
                jSONObjectI.put(f.bC, ((Integer) obj).intValue());
            }
        } catch (Throwable unused2) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() {
        try {
            HashMap map = new HashMap();
            String strA = com.anythink.core.common.v.j.a(i().toString());
            String strA2 = com.anythink.core.common.v.j.a(j().toString());
            map.put(f.f5766P, q());
            map.put("p", strA);
            map.put(f.f5774X, strA2);
            com.anythink.core.common.h.t tVar = this.f5689a;
            byte[] bArrA = tVar != null ? tVar.a() : null;
            if (bArrA != null && bArrA.length > 0) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("enc_d", new String(bArrA));
                map.put("p3", com.anythink.core.common.v.j.a(jSONObject.toString()));
            }
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
            map.put(f.f5775Y, com.anythink.core.common.v.n.c(g() + sb.toString()));
            return new JSONObject(map).toString();
        } catch (Throwable unused) {
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
    public final List<String> r() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.ab.f2544a);
        return arrayList;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        String platformCode = adError.getPlatformCode();
        String platformMSG = adError.getPlatformMSG();
        com.anythink.core.common.i.a();
        com.anythink.core.common.u.f.a(b.a.f8698A, platformCode, platformMSG, com.anythink.core.common.i.m(), "", "", "", (ATAdRequest) null);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        com.anythink.core.common.u.f.a(b.a.f8698A, (String) null, this.f5690b, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.f5691c, (ATAdRequest) null);
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, s sVar) {
        this.f5690b = System.currentTimeMillis();
        this.f5691c = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }
}
