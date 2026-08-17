package com.byazt.mey;

import android.text.TextUtils;
import com.byazt.tgw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.t;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 589, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static final Map<String, hp> hp = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, 589, 8})
    public static class hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public Set<String> f22963j;
        public Set<String> jx;

        /* renamed from: l, reason: collision with root package name */
        public int f22964l;

        /* renamed from: w, reason: collision with root package name */
        public int f22965w;
    }

    public static void hp(JSONArray jSONArray) {
        int iOptInt;
        if (jSONArray == null || jSONArray.length() <= 0) {
            hp.clear();
            return;
        }
        hp.clear();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("id");
                if (!TextUtils.isEmpty(strOptString)) {
                    hp hpVar = new hp();
                    int iOptInt2 = jSONObjectOptJSONObject.optInt(bv.aI);
                    hpVar.hp = strOptString;
                    hpVar.f22964l = iOptInt2;
                    if (iOptInt2 == 1) {
                        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("a");
                        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                            hpVar.f22963j = new HashSet();
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                hpVar.f22963j.add(jSONArrayOptJSONArray.optString(i3));
                            }
                            hp.put(strOptString, hpVar);
                        }
                    } else if (iOptInt2 == 2) {
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(t.f31269k);
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                            hpVar.jx = new HashSet();
                            for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                                hpVar.jx.add(jSONArrayOptJSONArray2.optString(i4));
                            }
                            hp.put(strOptString, hpVar);
                        }
                    } else if ((iOptInt2 == 3 || iOptInt2 == 4) && (iOptInt = jSONObjectOptJSONObject.optInt("c", -1)) != -1) {
                        hpVar.f22965w = iOptInt;
                        hp.put(strOptString, hpVar);
                    }
                }
            }
        }
    }

    private static String l(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        str.getClass();
        switch (str) {
            case "pangle":
                return "376434";
            case "sigmob":
                return "476747";
            case "ks":
                return "575683";
            case "gdt":
                return "384735";
            case "baidu":
                return "476385";
            case "unity":
                return "846469";
            case "mintegral":
                return "765380";
            default:
                return str;
        }
    }

    public static hp hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return hp.get(str);
    }

    private static boolean hp(hp hpVar, double d2, String str, String str2) {
        if (!hp.isEmpty() && hpVar != null) {
            int i2 = hpVar.f22964l;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4 && d2 > 0.0d && d2 <= hpVar.f22965w) {
                            return true;
                        }
                    } else if (d2 > 0.0d && d2 >= hpVar.f22965w) {
                        return true;
                    }
                } else if (hpVar.jx.contains(str2)) {
                    return true;
                }
            } else if (hpVar.f22963j.contains(l(str))) {
                return true;
            }
        }
        return false;
    }

    public static hp hp(com.byazt.iqm.l lVar, e eVar) {
        if (hp.isEmpty()) {
            return null;
        }
        Map<String, Object> mapR = lVar.r();
        Object obj = mapR.get("on_shield");
        Object obj2 = mapR.get("id_list");
        if ((obj instanceof Integer) && (obj2 instanceof List) && eVar != null && ((Integer) obj).intValue() == 1) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            try {
                Iterator it = ((List) obj2).iterator();
                boolean z2 = false;
                boolean z3 = false;
                while (it.hasNext()) {
                    hp hpVarHp = hp((String) it.next());
                    if (hpVarHp != null) {
                        int i3 = hpVarHp.f22964l;
                        if (i3 == 3) {
                            if (!z2) {
                                arrayList.add(hpVarHp);
                                z2 = true;
                            }
                        } else if (i3 != 4) {
                            arrayList.add(hpVarHp);
                        } else if (!z3) {
                            arrayList.add(hpVarHp);
                            z3 = true;
                        }
                    }
                }
                Collections.sort(arrayList, new Comparator<hp>() { // from class: com.byazt.mey.w.1
                    @Override // java.util.Comparator
                    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                    public int compare(hp hpVar, hp hpVar2) {
                        return hpVar.f22964l - hpVar2.f22964l;
                    }
                });
            } catch (Throwable unused) {
            }
            if (!arrayList.isEmpty()) {
                hp(arrayList);
                int size = arrayList.size();
                while (i2 < size) {
                    Object obj3 = arrayList.get(i2);
                    i2++;
                    hp hpVar = (hp) obj3;
                    if (hp(hpVar, eVar.b(), eVar.xs(), eVar.vv())) {
                        return hpVar;
                    }
                }
            }
        }
        return null;
    }

    private static void hp(List<hp> list) {
        if (list.size() >= 2) {
            int size = list.size();
            int i2 = size - 1;
            if (list.get(i2).f22964l != 4) {
                return;
            }
            int i3 = size - 2;
            if (list.get(i3).f22964l == 3 && list.get(i3).f22965w <= list.get(i2).f22965w) {
                list.remove(list.size() - 1);
                list.remove(list.size() - 1);
            }
        }
    }
}
