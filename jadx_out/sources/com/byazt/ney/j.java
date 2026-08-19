package com.byazt.ney;

import android.text.TextUtils;
import com.byazt.tgw.e;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1539, 38})
/* loaded from: classes3.dex */
public class j {
    public static final Map<String, com.byazt.tgw.l> hp = new ConcurrentHashMap();

    public static void hp(int i2, String str, int i3, double d2) {
        com.byazt.tgw.l lVarHp;
        com.byazt.tgw.j jVarW;
        if (com.byazt.di.l.l().qu() && (lVarHp = com.byazt.di.l.l().hp(str, i3, 101)) != null) {
            if (lVarHp.q() == 1 && i2 == 1) {
                w.j().hp(i3, d2);
                return;
            }
            if (lVarHp.q() != 2 || (jVarW = com.byazt.di.l.l().w(str)) == null) {
                return;
            }
            if (i2 == 2 && jVarW.jx() == 2) {
                l.j().hp(str, 2, d2);
            } else {
                if (i2 != 1 || jVarW.jx() == 2) {
                    return;
                }
                l.j().hp(str, jVarW.jx(), d2);
            }
        }
    }

    public static void hp(com.byazt.tgw.l lVar, double d2, String str, int i2) {
        if (!com.byazt.di.l.l().qu() || lVar == null) {
            return;
        }
        if (lVar.q() == 2) {
            hp(2, str, i2, d2);
        } else if (lVar.q() == 3 || lVar.q() == 4) {
            l.j().hp(lVar.ky(), "_last_load_cpm_", lVar.r(), d2);
        }
    }

    public static void hp(String str, String str2, int i2, JSONObject jSONObject) {
        com.byazt.tgw.l lVarHp;
        if (com.byazt.di.l.l().qu() && (lVarHp = com.byazt.dl.j.hp().hp(str, i2, 101)) != null) {
            if ("mediation_request".equals(str2)) {
                if (lVarHp.q() == 1) {
                    w.j().hp(String.valueOf(i2), jSONObject, lVarHp.s());
                    return;
                } else {
                    if (lVarHp.q() == 2) {
                        l.j().hp(String.valueOf(i2), jSONObject, lVarHp.s());
                        return;
                    }
                    return;
                }
            }
            if (lVarHp.q() != 2 || "sdk_init".equals(str2) || "sdk_init_end".equals(str2) || "get_config_start".equals(str2) || "get_config_final".equals(str2)) {
                return;
            }
            l.j().jx(String.valueOf(i2), jSONObject, lVarHp.s());
        }
    }

    public static com.byazt.tgw.l hp(com.byazt.tgw.l lVar, int i2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (lVar != null && com.byazt.di.l.l().qu()) {
            if (i2 == 101) {
                return hp.get(lVar.ky());
            }
            if (i2 == 100 && (lVar.q() == 2 || lVar.q() == 3 || lVar.q() == 4)) {
                List<e> listHp = jx.hp(lVar, lVar.ky());
                Object obj = lVar.s().get("rule_in_use");
                int iIntValue = obj != null ? ((Integer) obj).intValue() : -1;
                lVar.s().put("cost_time", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                if (listHp == null || iIntValue == 0) {
                    return lVar;
                }
                com.byazt.tgw.l lVarEc = lVar.clone();
                if (lVarEc.k()) {
                    lVarEc.l(listHp);
                } else {
                    lVarEc.hp(listHp);
                }
                Object obj2 = lVarEc.s().get("max_ecpm");
                Object obj3 = lVarEc.s().get("min_ecpm");
                if (obj2 != null) {
                    lVarEc.j(((Double) obj2).doubleValue());
                }
                if (obj3 != null) {
                    lVarEc.w(((Double) obj3).doubleValue());
                }
                hp.put(lVar.ky(), lVarEc);
                lVarEc.s().put("cost_time", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                return lVarEc;
            }
        }
        return null;
    }

    public static int hp(String str, int i2, Map<String, Object> map) {
        com.byazt.tgw.j jVarW;
        int iHp;
        if (!TextUtils.isEmpty(str) && i2 == 1 && (jVarW = com.byazt.di.l.l().w(str)) != null) {
            int iJx = jVarW.jx();
            String strJ = jVarW.j();
            if (iJx > 0 && !TextUtils.isEmpty(strJ)) {
                double dHp = l.j().hp(3, str, iJx);
                List<com.byazt.tgw.jx> listA = com.byazt.di.l.l().a(String.valueOf(i2));
                if (listA == null || listA.size() <= 0) {
                    iHp = 0;
                    if (iHp < 10000 && iHp <= 180000) {
                        return iHp;
                    }
                } else {
                    for (com.byazt.tgw.jx jxVar : listA) {
                        if (dHp > jxVar.a() && dHp <= jxVar.w()) {
                            iHp = jVarW.hp(String.valueOf(jxVar.jx()));
                            map.put("refresh_time", Integer.valueOf(iHp));
                            break;
                        }
                    }
                    iHp = 0;
                    if (iHp < 10000) {
                    }
                }
            }
        }
        return 0;
    }

    public static void hp(int i2, String str, JSONObject jSONObject) throws JSONException {
        com.byazt.tgw.j jVarW;
        if (com.byazt.di.l.l().qu() && i2 == 2 && (jVarW = com.byazt.di.l.l().w(str)) != null) {
            try {
                jSONObject.putOpt("dynamic_rule_id", jVarW.j());
            } catch (JSONException unused) {
            }
        }
    }

    public static void hp(List<com.byazt.rt.jx> list, com.byazt.tgw.l lVar) {
        Object obj;
        if (!com.byazt.di.l.l().qu() || list == null || lVar == null) {
            return;
        }
        for (com.byazt.rt.jx jxVar : list) {
            if (jxVar != null) {
                if (lVar.q() == 1) {
                    jxVar.getMediaExtraInfo().put(MediationConstant.KEY_GM_USB, w.jx(lVar.xh()));
                } else if (lVar.q() == 2 && (obj = lVar.s().get("user_label_value")) != null) {
                    jxVar.getMediaExtraInfo().put(MediationConstant.KEY_GM_USB, ((com.byazt.tgw.jx) obj).hp());
                }
            }
        }
    }

    public static void hp(boolean z2, com.byazt.lsx.j jVar, JSONObject jSONObject, Map<String, Object> map) {
        if (jVar == null || !com.byazt.di.l.l().qu()) {
            return;
        }
        w.j().hp(z2, jVar, jSONObject, map);
    }

    public static void hp(int i2, List<e> list, Map<String, Object> map) {
        if (list == null || list.size() == 0) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        for (e eVar : list) {
            if (eVar != null && eVar.ec() == 0) {
                jSONArray.put(eVar.vv());
            }
        }
        if (map != null) {
            map.put("rit_ids", jSONArray);
        }
    }
}
