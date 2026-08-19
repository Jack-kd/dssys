package com.byazt.jz;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.rz.PluginConstants;
import com.byazt.ub.w;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 54})
/* loaded from: classes.dex */
public class a {
    public volatile String hp;

    /* renamed from: j, reason: collision with root package name */
    public hp.l f21799j;
    public AtomicBoolean jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21800l;

    @com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static final class hp {
        public static final a hp = new a();
    }

    private void s() {
        final boolean zEb = s.u().eb();
        boolean zS = s.u().s();
        com.byazt.ub.hp.hp(zEb && !zS);
        final boolean zE = s.u().e();
        com.byazt.ub.hp.hp(new com.byazt.ub.w() { // from class: com.byazt.jz.a.3
            @Override // com.byazt.ub.w
            public void hp(w.hp hpVar) {
                if (hpVar != null) {
                    com.byazt.zn.cx.hp(hpVar.hp);
                }
                if (zE || !zEb || a.this.jx.get()) {
                    return;
                }
                a.this.hp(new com.byazt.tn.j(hpVar));
            }
        });
        if (zS) {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jz.a.4
                @Override // java.lang.Runnable
                public void run() {
                    a.this.hp(new com.byazt.tn.j(com.byazt.zn.cx.jx(((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getOAID(false))));
                }
            });
        } else {
            if (zE || !zEb) {
                return;
            }
            com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.jz.a.5
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.jx.get()) {
                        return;
                    }
                    a.this.hp(new com.byazt.tn.j("timeout"));
                }
            }, 3000L);
        }
    }

    public String a() {
        return "164362";
    }

    public String eb() {
        return "unionser_slardar_applog";
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String j() {
        if (TextUtils.isEmpty(this.f21800l)) {
            this.f21800l = com.byazt.ub.hp.gu();
        }
        return this.f21800l;
    }

    public String jx() {
        if (TextUtils.isEmpty(this.hp)) {
            this.hp = com.byazt.ub.hp.q();
            com.byazt.oz.jx.jx(16, this.hp);
            com.byazt.lca.j.hp().e(this.hp == null ? "" : this.hp);
        }
        return this.hp;
    }

    public void l() {
        com.byazt.ub.hp.hp(s.u().eb());
        com.byazt.ub.hp.hp();
    }

    public String w() {
        return (String) com.byazt.ub.hp.hp("sdk_version_name", "");
    }

    private a() throws JSONException {
        this.hp = null;
        this.f21800l = null;
        this.jx = new AtomicBoolean(false);
        hp(sz.getContext());
    }

    private void hp(Context context) throws JSONException {
        com.byazt.sii.eb ebVarXs = s.u().xs();
        com.byazt.ub.s sVar = new com.byazt.ub.s("164362", "unionser_slardar_applog");
        boolean z2 = ebVarXs.canRead(0) && ebVarXs.canRead(3);
        sVar.j(z2);
        if (!z2) {
            sVar.l(ebVarXs.getDevImei());
        }
        sVar.jx(ebVarXs.canRead(2));
        sVar.w(ebVarXs.isCanUseAndroidId());
        if (d.s()) {
            sVar.hp(ebVarXs.getAndroidId());
        }
        sVar.a(!com.byazt.wu.hp.l());
        sVar.hp(new com.byazt.ub.eb() { // from class: com.byazt.jz.a.1
            @Override // com.byazt.ub.eb
            public String hp(Context context2) {
                return com.byazt.ymw.sz.l(context2);
            }

            @Override // com.byazt.ub.eb
            public Looper j() {
                return com.byazt.ymw.e.hp().getLooper();
            }

            @Override // com.byazt.ub.eb
            public Looper jx() {
                return com.byazt.ymw.e.hp().getLooper();
            }

            @Override // com.byazt.ub.eb
            public boolean l() {
                return com.byazt.zn.zy.hp();
            }

            @Override // com.byazt.ub.eb
            public boolean hp() {
                return sz.l().hd();
            }

            @Override // com.byazt.ub.eb
            public String hp(String str) {
                return com.byazt.zn.di.hp(str);
            }

            @Override // com.byazt.ub.eb
            public JSONObject hp(JSONObject jSONObject) throws JSONException {
                if (jSONObject != null) {
                    JSONArray jSONArrayHp = com.byazt.zn.ec.hp(com.byazt.el.hp.w());
                    try {
                        if (jSONArrayHp.length() != 0) {
                            jSONObject.put("ipv6_list", jSONArrayHp);
                        }
                    } catch (Exception unused) {
                    }
                }
                return jSONObject;
            }

            @Override // com.byazt.ub.eb
            public void hp(String[] strArr, int[] iArr, boolean z3) {
                com.byazt.xy.hp.hp().hp(iArr);
            }

            @Override // com.byazt.ub.eb
            public void hp(JSONObject jSONObject, JSONObject jSONObject2) {
                com.byazt.lf.k.hp().hp(jSONObject, jSONObject2);
            }
        });
        sVar.l(sz.l().pu());
        sVar.hp(true);
        sVar.l(0);
        s();
        com.byazt.ub.hp.hp(context, sVar);
        HashMap map = new HashMap();
        String strNs = s.u().ns();
        map.put("host_appid", TextUtils.isEmpty(strNs) ? "164362" : strNs);
        map.put("is_plugin", Boolean.valueOf(d.hp()));
        map.put("sdk_version", "7.6.4.3");
        map.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
        map.put("sdk_api_version", d.f21860w);
        map.put("channel", d.a());
        if (sz.l().hq()) {
            map.put("use_apm_sdk", "1");
        }
        com.byazt.ub.hp.hp((HashMap<String, Object>) map);
        this.f21799j = new hp.l() { // from class: com.byazt.jz.a.2
            @Override // com.byazt.zn.hp.l
            public void onAppBackground() {
                com.byazt.ub.hp.k();
            }

            @Override // com.byazt.zn.hp.l
            public void onAppExit() {
            }

            @Override // com.byazt.zn.hp.l
            public void onAppForeground() {
                com.byazt.ub.hp.v();
            }

            @Override // com.byazt.zn.hp.l
            public void onAppStart() {
            }
        };
        com.byazt.zn.hp hpVarJx = s.u().jx();
        if (hpVarJx != null) {
            hpVarJx.hp(this.f21799j);
        }
    }

    public static void l(String str, JSONObject jSONObject) {
        com.byazt.ub.hp.hp(str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.tn.j jVar) {
        this.jx.set(true);
        com.byazt.zn.cx.hp(jVar);
    }

    public static a hp() {
        return hp.hp;
    }

    public void hp(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        com.byazt.ub.hp.l(str, jSONObject);
    }
}
