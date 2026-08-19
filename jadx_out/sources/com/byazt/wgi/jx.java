package com.byazt.wgi;

import android.text.TextUtils;
import com.anythink.core.common.f.a;
import com.byazt.rx.BaseConstants;
import com.byazt.tgw.e;
import com.kuaishou.weapon.p0.bg;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1410, 30})
/* loaded from: classes3.dex */
public class jx {
    private static boolean hp(int i2) {
        return i2 == 0 || i2 == 1 || i2 == 2;
    }

    public static void jx(String str, String str2, String str3) {
        if (com.byazt.di.l.l().zx() != null) {
            com.byazt.hf.jx.hp().insert(str, str2, str3, "fill");
        }
    }

    private static boolean l(int i2) {
        return i2 == 3 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7 || i2 == 8 || i2 == 9;
    }

    public static void hp(String str, String str2, String str3) {
        if (com.byazt.di.l.l().zx() != null) {
            com.byazt.hf.jx.hp().insert(str, str2, str3, "show");
        }
    }

    public static void l(String str, String str2, String str3) {
        if (com.byazt.di.l.l().zx() != null) {
            com.byazt.hf.jx.hp().insert(str, str2, str3, "send");
        }
    }

    public static void hp(String str, int i2) {
        if (com.byazt.di.l.l().zx() == null || TextUtils.isEmpty(str)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - (i2 * BaseConstants.Time.HOUR);
        com.byazt.aw.l.l("TMe", "---预缓存优化删除存储的过期数据 primeRit = " + str + " startTime = " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(jCurrentTimeMillis)));
        com.byazt.hf.jx.hp().hp(str, jCurrentTimeMillis);
    }

    public static com.byazt.tgw.l hp(com.byazt.iqm.l lVar, com.byazt.tgw.l lVar2) throws JSONException {
        l lVar3;
        com.byazt.tgw.l lVar4;
        com.byazt.tgw.l lVar5;
        List<e> list;
        l lVar6;
        com.byazt.tgw.l lVar7 = lVar2;
        l lVarZx = com.byazt.di.l.l().zx();
        com.byazt.aw.l.l("TMe", "----预缓存优化判断是否可以发起预缓存开始");
        HashMap map = null;
        if (lVar == null) {
            return null;
        }
        com.byazt.aw.l.l("TMe", "待检测的 behaviorState = " + lVar.s());
        int iHp = hp(lVar7, lVarZx, lVar.s());
        HashSet hashSet = new HashSet();
        if (iHp == 200) {
            List<e> listRz = lVar7.rz();
            HashSet<String> hashSet2 = new HashSet();
            for (e eVar : listRz) {
                com.byazt.aw.l.l("TMe", "adnName = " + eVar.xs() + " adnrit = " + eVar.vv());
                hashSet2.add(eVar.xs());
            }
            LinkedList linkedList = new LinkedList();
            HashMap map2 = new HashMap();
            for (e eVar2 : listRz) {
                if (eVar2 != null) {
                    hp hpVar = (hp) map2.get(eVar2.xs());
                    if (hpVar == null) {
                        String strXs = eVar2.xs();
                        String strKy = lVar7.ky();
                        int iY = lVar7.y();
                        double dHp = lVarZx.hp(strXs, strKy);
                        double dL = lVarZx.l(strXs, strKy);
                        list = listRz;
                        if (dHp == 0.0d && dL == 0.0d) {
                            com.byazt.aw.l.l("TMe", "没有配置规则，直接添加到adn list中 adnName = " + eVar2.xs() + " adnRit " + eVar2.vv());
                            linkedList.add(eVar2);
                            listRz = list;
                        } else {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            lVar6 = lVarZx;
                            List<com.byazt.hf.l> listQuery = com.byazt.hf.jx.hp().query(strXs, strKy, jCurrentTimeMillis - (iY * BaseConstants.Time.HOUR), jCurrentTimeMillis);
                            if (listQuery != null && listQuery.size() != 0) {
                                int i2 = 0;
                                int i3 = 0;
                                int i4 = 0;
                                for (com.byazt.hf.l lVar8 : listQuery) {
                                    if (TextUtils.equals(lVar8.hp(), "send")) {
                                        i4++;
                                    } else if (TextUtils.equals(lVar8.hp(), "fill")) {
                                        i2++;
                                    } else if (TextUtils.equals(lVar8.hp(), "show")) {
                                        i3++;
                                    }
                                }
                                hp hpVar2 = new hp(i2 != 0 ? i3 / i2 : 0.0d, i4 != 0 ? i2 / i4 : 0.0d, dHp, dL, lVar6.hp(), lVar6.a());
                                hpVar2.l(i2);
                                hpVar2.hp(i4);
                                hpVar2.jx(i3);
                                map2.put(eVar2.xs(), hpVar2);
                                hpVar = hpVar2;
                            } else {
                                com.byazt.aw.l.l("TMe", "数据库里没有查询到数据，直接添加到adn list中 adnName = " + eVar2.xs() + " adnRit " + eVar2.vv());
                                linkedList.add(eVar2);
                            }
                        }
                    } else {
                        list = listRz;
                        lVar6 = lVarZx;
                    }
                    if (hpVar != null) {
                        hpVar.hp(eVar2.xs());
                        hpVar.l(eVar2.vv());
                        com.byazt.aw.l.l("TMe", "compareData ".concat(String.valueOf(hpVar)));
                    }
                    if (hpVar != null && hpVar.hp()) {
                        linkedList.add(eVar2);
                    }
                } else {
                    list = listRz;
                    lVar6 = lVarZx;
                }
                lVar7 = lVar2;
                listRz = list;
                lVarZx = lVar6;
            }
            List<e> list2 = listRz;
            lVar3 = lVarZx;
            com.byazt.aw.l.l("TMe", "筛选掉代码位 后留下的代码位 ------- ");
            HashSet hashSet3 = new HashSet();
            for (e eVar3 : linkedList) {
                com.byazt.aw.l.l("TMe", "adnName = " + eVar3.xs() + " adnrit = " + eVar3.vv());
                hashSet3.add(eVar3.xs());
            }
            for (String str : hashSet2) {
                if (!hashSet3.contains(str)) {
                    hashSet.add(str);
                }
            }
            iHp = list2.size() == linkedList.size() ? 11 : 10;
            com.byazt.tgw.l lVarClone = lVar2.clone();
            lVarClone.hp(linkedList);
            if (lVarClone.k()) {
                lVarClone.l(linkedList);
            } else {
                lVarClone.hp(linkedList);
            }
            lVar4 = lVarClone;
            map = map2;
        } else {
            lVar3 = lVarZx;
            lVar4 = null;
        }
        int i5 = iHp;
        if (lVar4 == null) {
            hp(lVar, lVar2, lVar3, i5, hashSet, map);
            lVar5 = lVar4;
        } else {
            lVar5 = lVar4;
            hp(lVar, lVar5, lVar3, i5, hashSet, map);
        }
        if (lVar2 != null) {
            hp(lVar.sz(), lVar2.y());
        }
        return lVar5;
    }

    private static int hp(com.byazt.tgw.l lVar, l lVar2, int i2) {
        if (!com.byazt.di.l.l().nd()) {
            return 0;
        }
        if (lVar2 == null || lVar2.w() == null) {
            return 1;
        }
        if (!lVar2.hp(i2)) {
            return 2;
        }
        if (lVar2.l() == 0) {
            return 3;
        }
        if (lVar2.hp() == 0) {
            return 4;
        }
        if (!lVar2.eb()) {
            return 5;
        }
        if (lVar == null || !lVar2.hp(lVar.ky())) {
            return 6;
        }
        if (lVar.y() == 0) {
            return 7;
        }
        if (hp(lVar, lVar2)) {
            return hp(lVar) ? 9 : 200;
        }
        return 8;
    }

    private static boolean hp(com.byazt.tgw.l lVar, l lVar2) {
        if (lVar == null || lVar.rz() == null || lVar2 == null) {
            return false;
        }
        for (e eVar : lVar.rz()) {
            double dHp = lVar2.hp(eVar.xs(), lVar.ky());
            double dL = lVar2.l(eVar.xs(), lVar.ky());
            if (dHp != 0.0d || dL != 0.0d) {
                return true;
            }
        }
        return false;
    }

    private static boolean hp(com.byazt.tgw.l lVar) {
        if (lVar == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<com.byazt.hf.l> listQuery = com.byazt.hf.jx.hp().query("", lVar.ky(), jCurrentTimeMillis - (lVar.y() * bg.f30873s), jCurrentTimeMillis);
        return listQuery == null || listQuery.isEmpty();
    }

    private static void hp(com.byazt.iqm.l lVar, com.byazt.tgw.l lVar2, l lVar3, int i2, Set<String> set, Map<String, hp> map) throws JSONException {
        if (lVar.q() != null) {
            com.byazt.aw.l.l("TMe", "预缓存优化存在埋点数据 无需重新存储");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("result", i2);
            if (hp(i2)) {
                lVar.hp(jSONObject);
                return;
            }
            jSONObject.put("perform", hp(i2, lVar3, map));
            if (l(i2)) {
                lVar.hp(jSONObject);
                return;
            }
            jSONObject.put("behavior_state", hp(lVar3));
            jSONObject.put("condition", lVar3.l());
            if (lVar2 != null) {
                try {
                    jSONObject.put("behavior_ttl", lVar2.y());
                } catch (JSONException unused) {
                }
            }
            if (set != null && set.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject.put("filtered_adn", jSONArray);
            }
            lVar.hp(jSONObject);
        } catch (JSONException unused2) {
        }
    }

    private static JSONArray hp(l lVar) {
        List<Integer> list;
        JSONArray jSONArray = new JSONArray();
        if (lVar != null && (list = lVar.hp) != null) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        }
        return jSONArray;
    }

    private static JSONObject hp(int i2, l lVar, Map<String, hp> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(a.C0051a.f3218o, lVar.jx());
        jSONObject.put("rule_timestamp", lVar.j());
        if (!l(i2)) {
            jSONObject.put("condition", lVar.hp());
            jSONObject.put("rule_inuse", (i2 == 10 || i2 == 11) ? 1 : 0);
            if (map != null) {
                try {
                    DecimalFormat decimalFormat = new DecimalFormat("#0.000");
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    for (Map.Entry<String, hp> entry : map.entrySet()) {
                        hp value = entry.getValue();
                        if (value != null) {
                            jSONObject3.put(entry.getKey(), decimalFormat.format(value.l()));
                            jSONObject4.put(entry.getKey(), decimalFormat.format(value.jx()));
                        }
                    }
                    jSONObject2.put("ssr", jSONObject3);
                    jSONObject2.put("srr", jSONObject4);
                    jSONObject.put("res", jSONObject2);
                } catch (JSONException unused) {
                }
            }
        }
        return jSONObject;
    }
}
