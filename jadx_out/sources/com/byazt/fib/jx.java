package com.byazt.fib;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.jz.d;
import com.byazt.jz.lv;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.byazt.xci.ns;
import com.byazt.xci.xh;
import com.byazt.xci.xs;
import com.byazt.ymw.l;
import com.byazt.yrp.gu;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.byazt.zn.ms;
import com.byazt.zn.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 30})
/* loaded from: classes2.dex */
public class jx implements com.byazt.qu.hp {

    /* renamed from: e, reason: collision with root package name */
    public final gu f19764e;
    public com.byazt.gog.jx eb;
    public final Map<String, Object> gu;
    public com.byazt.qu.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public xs f19765j;
    public boolean jl;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public String f19766l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.tm.l f19767q;

    /* renamed from: s, reason: collision with root package name */
    public String f19768s;
    public final boolean zy;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19769w = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f19763a = false;

    public jx(com.byazt.qu.hp hpVar, gu guVar, String str, xs xsVar, Context context, Map<String, Object> map, boolean z2) {
        this.hp = hpVar;
        this.f19764e = guVar;
        this.f19766l = str;
        this.jx = context;
        this.f19765j = xsVar;
        this.gu = map;
        this.zy = z2;
    }

    public void jx(boolean z2) {
        this.jl = z2;
    }

    public void l(boolean z2) {
        this.f19763a = z2;
    }

    private boolean jx(Map<String, Object> map) throws JSONException {
        Boolean boolValueOf;
        JSONObject jSONObject = new JSONObject();
        try {
            gu guVar = this.f19764e;
            try {
                if (!(guVar instanceof com.byazt.yrp.a)) {
                    jSONObject.putOpt("uchain", Boolean.TRUE);
                    jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                    jSONObject.putOpt("req_id", this.f19764e.ns());
                    boolValueOf = Boolean.valueOf(this.f19764e.s_());
                } else {
                    int iS = ((com.byazt.yrp.a) guVar).s();
                    if (iS == 4) {
                        com.byazt.qu.hp hpVar = this.hp;
                        return hpVar != null && hpVar.hp(map);
                    }
                    if (iS == 1) {
                        jSONObject.putOpt("uchain", Boolean.TRUE);
                        jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                        jSONObject.putOpt("req_id", this.f19764e.ns());
                        boolValueOf = Boolean.valueOf(this.f19764e.s_());
                    } else {
                        String strJx = ((com.byazt.yrp.a) this.f19764e).jx();
                        Boolean boolHp = hp(map, strJx, jSONObject);
                        try {
                            if (!TextUtils.isEmpty(this.f19768s)) {
                                jSONObject.putOpt("dpa_sub", Boolean.TRUE);
                                jSONObject.putOpt("tag", this.f19768s);
                            }
                            jSONObject.putOpt("convert_type", Integer.valueOf(iS));
                            jSONObject.putOpt("dpl_result", boolHp);
                            jSONObject.putOpt("url", strJx);
                        } catch (Exception unused) {
                        }
                        if (boolHp != null && !this.f19763a) {
                            boolean zBooleanValue = boolHp.booleanValue();
                            try {
                                jSONObject.putOpt("uchain", Boolean.TRUE);
                                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                                jSONObject.putOpt("req_id", this.f19764e.ns());
                                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f19764e.s_()));
                            } catch (Exception unused2) {
                            }
                            k.hp().hp("open_detail_page", "native", 0, jSONObject);
                            return zBooleanValue;
                        }
                        if (this.f19763a && boolHp != null && !boolHp.booleanValue()) {
                            jSONObject.putOpt("uchain", Boolean.TRUE);
                            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                            jSONObject.putOpt("req_id", this.f19764e.ns());
                            boolValueOf = Boolean.valueOf(this.f19764e.s_());
                        } else {
                            jSONObject.putOpt("uchain", Boolean.TRUE);
                            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                            jSONObject.putOpt("req_id", this.f19764e.ns());
                            boolValueOf = Boolean.valueOf(this.f19764e.s_());
                        }
                    }
                }
                jSONObject.putOpt("web_meta", boolValueOf);
            } catch (Exception unused3) {
            }
            k.hp().hp("open_detail_page", "native", 0, jSONObject);
            return false;
        } finally {
            try {
                jSONObject.putOpt("uchain", Boolean.TRUE);
                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                jSONObject.putOpt("req_id", this.f19764e.ns());
                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f19764e.s_()));
            } catch (Exception unused4) {
            }
            k.hp().hp("open_detail_page", "native", 0, jSONObject);
        }
    }

    private boolean l() {
        gu guVar = this.f19764e;
        if (!(guVar instanceof mp)) {
            return false;
        }
        String strJx = ns.jx(guVar.zy(), this.f19768s);
        mp mpVar = (mp) this.f19764e;
        Context context = this.jx;
        String str = this.f19766l;
        com.byazt.qn.hp hpVar = new com.byazt.qn.hp(mpVar, context, str, ky.j(str), new HashMap(), null, null);
        hpVar.hp(strJx);
        hpVar.hp(this.f19767q);
        return hpVar.hp(new HashMap());
    }

    @Override // com.byazt.qu.hp
    public boolean hp(Map<String, Object> map) {
        if (this.zy) {
            return jx(map);
        }
        return l(map);
    }

    public void hp(com.byazt.tm.l lVar) {
        this.f19767q = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final Intent intent, final boolean z2) {
        String strJx;
        String strConcat;
        gu guVar = this.f19764e;
        if (guVar == null || this.jx == null || intent == null) {
            return;
        }
        if (guVar.v() != null) {
            strJx = this.f19764e.v().jx();
        } else {
            strJx = "";
        }
        String str = strJx;
        if (TextUtils.isEmpty(str)) {
            strConcat = "是否立即打开应用";
        } else {
            strConcat = "是否立即打开".concat(String.valueOf(str));
        }
        String str2 = strConcat;
        com.byazt.zn.w.hp(this.jx, this.f19764e.j(), str, str2, "立即打开", "退出", new w.hp() { // from class: com.byazt.fib.jx.3
            @Override // com.byazt.zn.w.hp
            public void hp() {
                HashMap map = new HashMap();
                map.put(n.f36449l, "DeepLinkConverter");
                com.byazt.jdb.j.hp(jx.this.jx(), jx.this.f19766l, (Map<String, Object>) map, false);
                com.byazt.ymw.l.hp(jx.this.jx, intent, new l.hp() { // from class: com.byazt.fib.jx.3.1
                    @Override // com.byazt.ymw.l.hp
                    public void hp() throws JSONException {
                        com.byazt.jdb.j.hp(jx.this.jx(), jx.this.f19766l, (Throwable) null, false, true);
                        com.byazt.jdb.s.hp().hp(jx.this.jx(), jx.this.f19766l, false, z2, null);
                    }

                    @Override // com.byazt.ymw.l.hp
                    public void hp(Throwable th) throws JSONException {
                        com.byazt.jdb.j.hp(jx.this.jx(), jx.this.f19766l, th, false, false);
                    }
                }, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
            }
        });
    }

    public void hp(boolean z2) {
        this.f19769w = z2;
    }

    public void hp(com.byazt.gog.jx jxVar) {
        this.eb = jxVar;
    }

    public void hp(String str) {
        this.f19768s = str;
    }

    private xs hp() {
        xs xsVar = this.f19765j;
        return xsVar == null ? new xs() : xsVar;
    }

    public Boolean hp(Map<String, Object> map, String str, JSONObject jSONObject) throws JSONException {
        String strL = l(str);
        if (TextUtils.isEmpty(strL)) {
            com.byazt.rj.jx.hp(this.gu, com.byazt.ex.w.f19549j);
            return null;
        }
        xs.hp((String) null);
        Uri uri = Uri.parse(strL);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        HashMap map2 = new HashMap();
        map2.put(n.f36449l, "DeepLinkConverter");
        map2.put(NativeModel.JSON_KEY_SCHEME, ky.hp(strL));
        com.byazt.jdb.j.hp(jx(), this.f19766l, map2, this.f19769w);
        boolean zO = ky.o();
        try {
            jSONObject.putOpt("is_lp", Boolean.valueOf(this.f19769w));
            jSONObject.putOpt("can_qry_pkg", Boolean.valueOf(zO));
        } catch (Exception unused) {
        }
        if (zO) {
            boolean zHp = ky.hp(intent);
            boolean zWi = sz.l().wi();
            try {
                jSONObject.putOpt("installed", Boolean.valueOf(zHp));
                jSONObject.putOpt("ignore", Boolean.valueOf(zWi));
            } catch (Exception unused2) {
            }
            if (!zHp && !zWi) {
                hp(map, true, (Throwable) new RuntimeException("not installed"));
                hp(1);
                return null;
            }
            return hp(map, intent, true, jSONObject);
        }
        try {
            jSONObject.putOpt("installed_douyin", Boolean.valueOf(com.byazt.zls.hp.hp(strL)));
            String strWv = ky.wv(jx());
            if (strWv != null && strWv.length() > 0) {
                jSONObject.putOpt("installed_other", Boolean.valueOf(ky.jx(strWv)));
            }
            jSONObject.putOpt("pkg", strWv);
        } catch (Throwable unused3) {
        }
        return hp(map, intent, false, jSONObject);
    }

    private String l(String str) {
        gu guVar;
        xh xhVarSz;
        if (!TextUtils.isEmpty(str) && (guVar = this.f19764e) != null && !guVar.z_() && (xhVarSz = this.f19764e.sz()) != null) {
            try {
                String strJx = xhVarSz.jx();
                String strJ = xhVarSz.j();
                Map<String, String> mapHp = ms.hp(str);
                mapHp.put("live_short_touch_params", strJx);
                mapHp.put("extra_pangle_scheme_params", strJ);
                String strHp = ms.hp(str, mapHp);
                com.byazt.jz.l.hp().put("is_reward_deep_link_to_live", true);
                return strHp;
            } catch (Exception unused) {
            }
        }
        return str;
    }

    private boolean l(Map<String, Object> map) throws JSONException {
        Object objValueOf;
        JSONObject jSONObject = new JSONObject();
        try {
            Boolean boolHp = hp(jSONObject);
            try {
                if (boolHp != null && boolHp.booleanValue()) {
                    try {
                        jSONObject.putOpt("dpa_sub", Boolean.TRUE);
                    } catch (Exception unused) {
                    }
                    jSONObject.putOpt("uchain", Boolean.TRUE);
                    jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                    jSONObject.putOpt("req_id", this.f19764e.ns());
                    objValueOf = Boolean.valueOf(this.f19764e.s_());
                } else {
                    xs xsVarHp = hp();
                    if (xsVarHp == null) {
                        xsVarHp = this.f19764e.k();
                    }
                    if (xsVarHp != null && !TextUtils.isEmpty(xsVarHp.l())) {
                        String strL = xsVarHp.l();
                        Boolean boolHp2 = hp(map, strL, jSONObject);
                        try {
                            jSONObject.putOpt("dpl_result", boolHp2);
                            jSONObject.putOpt("url", strL);
                        } catch (Exception unused2) {
                        }
                        if ((boolHp2 == null || !boolHp2.booleanValue()) && xsVarHp.w() == 1) {
                            com.byazt.jdb.j.s(jx(), this.f19766l, "open_fallback_url", null);
                        }
                        if (boolHp2 != null && !this.f19763a) {
                            return boolHp2.booleanValue();
                        }
                        if (this.f19763a && (boolHp2 == null || !boolHp2.booleanValue())) {
                            try {
                                jSONObject.putOpt("uchain", Boolean.TRUE);
                                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                                jSONObject.putOpt("req_id", this.f19764e.ns());
                                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f19764e.s_()));
                            } catch (Exception unused3) {
                            }
                            k.hp().hp("open_detail_page", "native", 0, jSONObject);
                            com.byazt.qu.hp hpVar = this.hp;
                            return hpVar != null && hpVar.hp(map);
                        }
                        try {
                            jSONObject.putOpt("uchain", Boolean.TRUE);
                            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                            jSONObject.putOpt("req_id", this.f19764e.ns());
                            jSONObject.putOpt("web_meta", Boolean.valueOf(this.f19764e.s_()));
                        } catch (Exception unused4) {
                        }
                        k.hp().hp("open_detail_page", "native", 0, jSONObject);
                        return false;
                    }
                    try {
                        jSONObject.putOpt("dpl_null", Boolean.TRUE);
                    } catch (Exception unused5) {
                    }
                    com.byazt.qu.hp hpVar2 = this.hp;
                    z = hpVar2 != null && hpVar2.hp(map);
                    jSONObject.putOpt("uchain", Boolean.TRUE);
                    jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                    jSONObject.putOpt("req_id", this.f19764e.ns());
                    objValueOf = Boolean.valueOf(this.f19764e.s_());
                }
                jSONObject.putOpt("web_meta", objValueOf);
            } catch (Exception unused6) {
            }
            k.hp().hp("open_detail_page", "native", 0, jSONObject);
            return z;
        } finally {
            try {
                jSONObject.putOpt("uchain", Boolean.TRUE);
                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f19764e.w()));
                jSONObject.putOpt("req_id", this.f19764e.ns());
                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f19764e.s_()));
            } catch (Exception unused7) {
            }
            k.hp().hp("open_detail_page", "native", 0, jSONObject);
        }
    }

    private Boolean hp(JSONObject jSONObject) throws JSONException {
        Boolean boolValueOf;
        try {
            jSONObject.putOpt("tag", this.f19768s);
        } catch (JSONException unused) {
        }
        if (TextUtils.isEmpty(this.f19768s) || !ns.hp(this.f19764e.zy(), this.f19768s)) {
            return null;
        }
        int iL = ns.l(this.f19764e.zy(), this.f19768s);
        if (iL != 1) {
            boolValueOf = hp(new HashMap(), ns.jx(this.f19764e.zy(), this.f19768s), jSONObject);
        } else {
            boolValueOf = Boolean.valueOf(l());
        }
        try {
            jSONObject.putOpt("convert_type", Integer.valueOf(iL));
            jSONObject.putOpt("dpl_result", boolValueOf);
        } catch (JSONException unused2) {
        }
        return boolValueOf;
    }

    private Boolean hp(final Map<String, Object> map, Intent intent, final boolean z2, JSONObject jSONObject) {
        ky.jx(intent);
        final boolean zL = com.byazt.rj.jx.l(map);
        hp(intent, zL);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        com.byazt.ymw.l.hp(this.jx, intent, new l.hp() { // from class: com.byazt.fib.jx.1
            @Override // com.byazt.ymw.l.hp
            public void hp() throws JSONException {
                atomicBoolean.set(true);
                com.byazt.jdb.j.hp(jx.this.jx(), jx.this.f19766l, (Throwable) null, jx.this.f19769w, true);
                com.byazt.jdb.s.hp().hp(jx.this.jx(), jx.this.f19766l, jx.this.f19769w, zL, null);
                jx.this.hp(0);
            }

            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) throws JSONException {
                atomicBoolean.set(false);
                jx.this.hp((Map<String, Object>) map, z2, th);
                jx.this.hp(3);
                com.byazt.rj.jx.hp((Map<String, Object>) jx.this.gu, com.byazt.ex.w.f19548a);
            }
        }, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
        return Boolean.valueOf(atomicBoolean.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public mp jx() {
        return com.byazt.rj.jx.hp(this.f19764e, this.gu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2) {
        if (jx() == null || jx().qd() != 1) {
            return;
        }
        com.byazt.jdb.j.hp(jx(), this.f19766l, 1, 1, i2, d.s());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Map<String, Object> map, boolean z2, Throwable th) throws JSONException {
        if (this.f19763a && !z2) {
            com.byazt.jdb.j.jx(jx(), this.f19766l, "open_fallback_download");
        }
        com.byazt.jdb.j.hp(jx(), this.f19766l, th, this.f19769w, false);
    }

    public void hp(final Intent intent, final boolean z2) {
        final com.byazt.zn.hp hpVarJx;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        gu guVar = this.f19764e;
        if (guVar == null || intent == null || this.jx == null) {
            return;
        }
        xs xsVarK = guVar.k();
        if (xsVarK != null && xsVarK.jx() == 2 && !xsVarK.hp() && com.byazt.jz.l.hp().get("dpl_reject_by_dialog", false)) {
            lv.hp(jx(), this.f19766l, z2);
        } else if (this.f19764e.xs() && (hpVarJx = com.byazt.jz.s.u().jx()) != null) {
            hpVarJx.hp(new hp.jx() { // from class: com.byazt.fib.jx.2
                @Override // com.byazt.zn.hp.jx, com.byazt.zn.hp.InterfaceC0436hp
                public void hp() {
                    if (System.currentTimeMillis() - jCurrentTimeMillis <= 3000) {
                        jx.this.l(intent, z2);
                    }
                    com.byazt.zn.hp hpVar = hpVarJx;
                    if (hpVar != null) {
                        hpVar.jx();
                    }
                }
            });
        }
    }
}
