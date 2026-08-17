package com.byazt.qn;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.byazt.jz.d;
import com.byazt.lf.k;
import com.byazt.rj.jx;
import com.byazt.xci.mp;
import com.byazt.ymw.l;
import com.byazt.ymw.vv;
import com.byazt.yrp.s;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.C;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1458, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.qu.hp {

    /* renamed from: a, reason: collision with root package name */
    public final int f24977a;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, Object> f24978e;
    public String eb;
    public final s gu;

    /* renamed from: j, reason: collision with root package name */
    public boolean f24979j;
    public final JSONObject jl;

    /* renamed from: l, reason: collision with root package name */
    public final Context f24980l;

    /* renamed from: q, reason: collision with root package name */
    public Map<String, Object> f24981q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.tm.l f24982s;

    /* renamed from: w, reason: collision with root package name */
    public final String f24983w;
    public boolean hp = false;
    public final Map<String, Object> jx = new HashMap();

    public hp(s sVar, Context context, String str, int i2, Map<String, Object> map, Map<String, Object> map2, JSONObject jSONObject) {
        this.gu = sVar;
        this.f24980l = context;
        this.f24983w = str;
        this.f24977a = i2;
        this.f24981q = map;
        this.f24978e = map2;
        this.jl = jSONObject;
    }

    private boolean l(String str) {
        if (!vv.hp(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(str));
            if (!(this.f24980l instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.byazt.ymw.l.hp(this.f24980l, intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.qu.hp
    public boolean hp(Map<String, Object> map) {
        s sVar = this.gu;
        if (sVar != null) {
            return hp(com.byazt.rj.l.hp(this.hp, jx.hp(sVar, this.f24981q), this.f24979j, this.jx));
        }
        jx.hp(this.f24981q, com.byazt.ex.jx.f19545j);
        return false;
    }

    public void hp(com.byazt.tm.l lVar) {
        this.f24982s = lVar;
    }

    public boolean hp(Class cls) throws JSONException, NumberFormatException {
        this.hp = false;
        k.hp().hp("landing_page", "native", 0, hp());
        if (this.gu.q() == 2) {
            return l(this.gu.s());
        }
        com.byazt.tm.l lVar = this.f24982s;
        if (lVar != null && new l(lVar).hp(new HashMap())) {
            return true;
        }
        Intent intent = new Intent(this.f24980l, (Class<?>) cls);
        if (!(this.f24980l instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("is_outer_click", true);
        intent.putExtra("get_phone_num_status", this.gu.eb());
        hp(intent);
        com.byazt.ymw.l.hp(this.f24980l, intent, new l.hp() { // from class: com.byazt.qn.hp.1
            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) {
            }

            @Override // com.byazt.ymw.l.hp
            public void hp() {
                hp.this.f24981q.put("is_open_web_page", Boolean.TRUE);
            }
        });
        return true;
    }

    private JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(n.f36450m, this.gu.w_());
            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.gu.w()));
            jSONObject.putOpt("req_id", this.gu.ns());
            Boolean bool = Boolean.TRUE;
            jSONObject.putOpt("uchain", bool);
            jSONObject.putOpt("uchain_old", bool);
            jSONObject.putOpt("interaction_type", Integer.valueOf(this.gu.q()));
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public void hp(String str) {
        this.eb = str;
    }

    private void hp(Intent intent) throws NumberFormatException {
        if (this.gu == null) {
            return;
        }
        Map<String, Object> map = this.f24981q;
        if (map != null) {
            this.jx.putAll(map);
        }
        Map<String, Object> map2 = this.f24978e;
        if (map2 != null) {
            this.jx.putAll(map2);
        }
        this.jx.remove(g.f49337X);
        if (TextUtils.isEmpty(this.eb)) {
            this.eb = this.gu.s();
        }
        this.jx.put("url", this.eb);
        this.jx.put("gecko_id", this.gu.jx());
        this.jx.put("web_title", this.gu.v_());
        this.jx.put("sdk_version", Integer.valueOf(d.f21856j));
        this.jx.put("adid", this.gu.j());
        this.jx.put("log_extra", this.gu.w_());
        this.jx.put(g.a.f3279p, this.gu.l());
        this.jx.put("event_tag", this.f24983w);
        int i2 = this.f24977a;
        int i3 = -1;
        if (i2 != -1) {
            this.jx.put("landing_page_source", Integer.valueOf(i2));
        }
        this.jx.put("is_outer_click", Boolean.TRUE);
        s sVar = this.gu;
        if (sVar instanceof mp) {
            ky.hp(this.jx, (mp) sVar);
        } else {
            JSONObject jSONObject = this.jl;
            if (jSONObject != null) {
                ky.hp(this.jx, jSONObject, sVar.n());
            }
        }
        Object objRemove = this.jx.remove("landing_page_source");
        if (!(objRemove == null || TextUtils.isEmpty(objRemove.toString()))) {
            try {
                i3 = Integer.parseInt(objRemove.toString());
            } catch (Exception unused) {
            }
        }
        intent.putExtra("landing_page_source", i3);
        for (Map.Entry<String, Object> entry : this.jx.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && !"log_extra".equals(key)) {
                intent.putExtra(key, value.toString());
            }
        }
        intent.putExtra("web_dl_factors", jx.l(this.f24981q));
    }
}
