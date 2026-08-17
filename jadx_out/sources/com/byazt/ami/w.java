package com.byazt.ami;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.dnb.zy;
import com.byazt.jz.s;
import com.byazt.lf.k;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1332, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    private static Function<SparseArray<Object>, Object> a(String str) {
        com.byazt.vbz.jx dexPluginStrategy = ((com.byazt.vbz.hp) com.byazt.ym.j.getService("adapter_dex")).getDexPluginStrategy(str);
        if (dexPluginStrategy != null && com.byazt.vbz.w.hp(str)) {
            return dexPluginStrategy.getManager();
        }
        return null;
    }

    public static Object hp(String str, String str2) {
        Map<String, Map<String, Object>> adnStatusMap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            com.byazt.vbz.hp hpVar = (com.byazt.vbz.hp) com.byazt.ym.j.getService("adapter_dex");
            if (hpVar != null && (adnStatusMap = hpVar.getAdnStatusMap()) != null && adnStatusMap.get(str) != null) {
                return adnStatusMap.get(str).get(str2);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static void j(String str) {
        if (w(str)) {
            hp(((com.byazt.vbz.hp) com.byazt.ym.j.getService("adapter_dex")).getDexPluginStrategy(str));
        }
    }

    public static Function<SparseArray<Object>, Object> jx(String str) {
        com.byazt.vbz.jx dexPluginStrategy = ((com.byazt.vbz.hp) com.byazt.ym.j.getService("adapter_dex")).getDexPluginStrategy(str);
        if (dexPluginStrategy != null) {
            return dexPluginStrategy.getInitBridge();
        }
        return null;
    }

    public static boolean w(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.getClass();
        switch (str) {
        }
        return false;
    }

    public static Function<SparseArray<Object>, Object> l(String str) {
        Function<SparseArray<Object>, Object> functionA = a(str);
        if (functionA == null) {
            return null;
        }
        try {
            return (Function) functionA.apply(com.byazt.wi.j.hp().hp(10000).hp(Function.class).l());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean jx() {
        boolean z2;
        try {
        } catch (Throwable unused) {
            z2 = false;
        }
        if (!com.byazt.vbz.w.l()) {
            com.byazt.vbz.w.hp("dex_status", 3);
            return false;
        }
        if (!s.u().r()) {
            com.byazt.vbz.w.hp("dex_status", 3);
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        zy.hp();
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        long jCurrentTimeMillis3 = System.currentTimeMillis();
        if (!zy.s("com.byted.mixed")) {
            com.byazt.vbz.w.hp("dex_status", 3);
            return false;
        }
        boolean zA = zy.a("com.byted.mixed");
        try {
            k.hp().hp(jCurrentTimeMillis2, System.currentTimeMillis() - jCurrentTimeMillis3, 1, 1);
            com.byazt.vbz.w.hp("dex_status", zA ? 2 : 3);
            return zA;
        } catch (Throwable unused2) {
            z2 = zA;
            try {
                k.hp().hp(0L, 0L, -1, 1);
                return false;
            } finally {
                com.byazt.vbz.w.hp("dex_status", z2 ? 2 : 3);
            }
        }
    }

    public static void hp(Map<String, Object> map) {
        com.byazt.vbz.hp hpVar;
        Set<String> adnKeySet;
        if (map == null || (adnKeySet = (hpVar = (com.byazt.vbz.hp) com.byazt.ym.j.getService("adapter_dex")).getAdnKeySet()) == null) {
            return;
        }
        Iterator<String> it = adnKeySet.iterator();
        while (it.hasNext()) {
            com.byazt.vbz.jx dexPluginStrategy = hpVar.getDexPluginStrategy(it.next());
            if (dexPluginStrategy != null && !TextUtils.isEmpty(dexPluginStrategy.getUnSupportVersion())) {
                map.put("unsupported_" + dexPluginStrategy.getAdnName() + "_version", dexPluginStrategy.getUnSupportVersion());
                dexPluginStrategy.saveUnSupportVersion(null);
            }
        }
    }

    public static boolean hp(String str) {
        return (str == null || a(str) == null) ? false : true;
    }

    private static Function<SparseArray<Object>, Object> hp(String str, int i2) {
        Function<SparseArray<Object>, Object> functionA = a(str);
        if (functionA == null) {
            return null;
        }
        try {
            return (Function) functionA.apply(com.byazt.wi.j.hp().hp(i2).hp(Function.class).l());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Function<SparseArray<Object>, Object> hp(String str, int i2, int i3) {
        try {
            switch (i2) {
                case 1:
                    return hp(str, 20001);
                case 2:
                    return hp(str, 20004);
                case 3:
                    return hp(str, 20007);
                case 4:
                case 6:
                default:
                    return null;
                case 5:
                    if (i3 == 4) {
                        return hp(str, 20005);
                    }
                    if (i3 == 3) {
                        return hp(str, 20001);
                    }
                    if (i3 == 5) {
                        return hp(str, 20002);
                    }
                    return hp(str, 20005);
                case 7:
                    return hp(str, 20006);
                case 8:
                    return hp(str, 20003);
                case 9:
                    return hp(str, 20002);
                case 10:
                    if (i3 == 1) {
                        return hp(str, 20004);
                    }
                    if (i3 == 2) {
                        return hp(str, 20003);
                    }
                    return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void hp() {
        if (s.u().r() && com.byazt.vbz.w.w() == 1) {
            ((r) com.byazt.ym.j.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.ami.w.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.vbz.hp hpVar;
                    String strHp;
                    com.byazt.vbz.jx dexPluginStrategy;
                    boolean z2;
                    try {
                        if (!w.jx() || (hpVar = (com.byazt.vbz.hp) com.byazt.ym.j.getService("adapter_dex")) == null) {
                            return;
                        }
                        Iterator<Map.Entry<String, com.byazt.tgw.hp>> it = com.byazt.dl.jx.hp().jx().entrySet().iterator();
                        while (it.hasNext()) {
                            com.byazt.tgw.hp value = it.next().getValue();
                            if (value != null && !value.w() && ((dexPluginStrategy = hpVar.getDexPluginStrategy((strHp = value.hp()))) == null || !TextUtils.isEmpty(dexPluginStrategy.getAdnVersion()))) {
                                if (!hpVar.getAndUpdateInitStatus(strHp) && com.byazt.vbz.w.hp(strHp)) {
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    w.j(strHp);
                                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                                    if (dexPluginStrategy == null || dexPluginStrategy.getInitBridge() == null) {
                                        z2 = false;
                                    } else {
                                        com.byazt.vop.hp hpVar2 = new com.byazt.vop.hp(value);
                                        hpVar2.jx = true;
                                        hpVar2.j();
                                        z2 = true;
                                    }
                                    k.hp().hp(0L, jCurrentTimeMillis2, z2 ? 1 : -1, 2);
                                }
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public static void hp(final Runnable runnable) {
        if (com.byazt.vbz.w.w() == 2) {
            com.byazt.dnb.s.w(new Runnable() { // from class: com.byazt.ami.w.2
                @Override // java.lang.Runnable
                public void run() {
                    w.jx();
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private static void hp(com.byazt.vbz.jx jxVar) {
        JSONObject jSONObjectOptJSONObject;
        Class<?> cls;
        try {
            if (com.byazt.vbz.w.jx() && jxVar != null && jxVar.getInitBridge() == null) {
                String adnName = jxVar.getAdnName();
                if (TextUtils.isEmpty(adnName)) {
                    return;
                }
                String className = jxVar.getClassName();
                if (TextUtils.isEmpty(className)) {
                    return;
                }
                String adnVersionListKey = jxVar.getAdnVersionListKey();
                if (TextUtils.isEmpty(adnVersionListKey)) {
                    return;
                }
                String adnVersion = jxVar.getAdnVersion();
                if (TextUtils.isEmpty(adnVersion)) {
                    com.byazt.vbz.w.hp(adnName, "dex_status", 100);
                    return;
                }
                JSONObject jSONObjectEb = zy.eb("com.byted.mixed");
                if (jSONObjectEb != null) {
                    if (jSONObjectEb.has("adn_version") && (jSONObjectOptJSONObject = jSONObjectEb.optJSONObject("adn_version")) != null && jSONObjectOptJSONObject.has(adnVersionListKey)) {
                        JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray(adnVersionListKey);
                        if (jSONArray.length() > 0) {
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                if (TextUtils.equals(jSONArray.getString(i2), adnVersion)) {
                                    if (jSONObjectEb.has(className)) {
                                        String strOptString = jSONObjectEb.optString(className);
                                        if (TextUtils.isEmpty(strOptString)) {
                                            return;
                                        }
                                        try {
                                            if (com.byazt.vbz.w.jx()) {
                                                cls = zy.q("com.byted.mixed").loadClass(strOptString);
                                            } else {
                                                cls = Class.forName(strOptString);
                                            }
                                            Object objNewInstance = cls.newInstance();
                                            if (objNewInstance instanceof Function) {
                                                jxVar.saveManager((Function) objNewInstance);
                                                com.byazt.vbz.w.hp(adnName, "dex_status", 500);
                                                return;
                                            }
                                            return;
                                        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
                                            com.byazt.vbz.w.hp(adnName, "dex_status", MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL);
                                            return;
                                        }
                                    }
                                    return;
                                }
                            }
                            com.byazt.vbz.w.hp(adnName, "dex_status", 300);
                            jxVar.saveUnSupportVersion(adnVersion);
                            return;
                        }
                        return;
                    }
                    return;
                }
                com.byazt.vbz.w.hp(adnName, "dex_status", 200);
            }
        } catch (Throwable unused2) {
        }
    }
}
