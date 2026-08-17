package com.byazt.mdk;

import android.text.TextUtils;
import com.byazt.jw.a;
import com.byazt.jw.eb;
import com.byazt.jw.w;
import com.byazt.ymw.u;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 919, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final ConcurrentHashMap<String, l> hp = new ConcurrentHashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public static volatile List<com.byazt.jw.jx> f22952l = new ArrayList();
    public static ConcurrentHashMap<String, w> jx = new ConcurrentHashMap<>();

    public static eb hp(com.byazt.jw.hp hpVar) {
        if (hpVar == null || TextUtils.isEmpty(hpVar.w()) || hpVar.getContext() == null) {
            u.l("csj_log_error", "config or adLogFrom or context is null");
            return null;
        }
        ConcurrentHashMap<String, l> concurrentHashMap = hp;
        l lVar = concurrentHashMap.get(hpVar.w());
        if (lVar == null) {
            lVar = new l(hpVar);
        } else {
            lVar.l(hpVar);
        }
        concurrentHashMap.put(hpVar.w(), lVar);
        return lVar;
    }

    public static w j(String str) {
        w wVarL = jx.get(str);
        if (wVarL == null && (wVarL = l(str).l()) != null) {
            jx.put(str, wVarL);
        }
        return wVarL;
    }

    public static void jx(String str) {
        l(str).hp();
    }

    public static eb l(String str) {
        ConcurrentHashMap<String, l> concurrentHashMap = hp;
        l lVar = concurrentHashMap.get(str);
        if (lVar != null) {
            return lVar;
        }
        l lVar2 = new l();
        concurrentHashMap.put(str, lVar2);
        return lVar2;
    }

    public static void hp(a aVar, String str) {
        l(str).hp(aVar);
    }

    public static void hp(boolean z2, String str) {
        l(str).l(z2);
    }

    public static List<com.byazt.jw.jx> hp() {
        return f22952l;
    }

    public static void hp(com.byazt.jw.jx jxVar) {
        if (jxVar != null) {
            f22952l.add(jxVar);
        }
    }

    public static boolean hp(String str) {
        l lVar = hp.get(str);
        return lVar == null || lVar.l() == null || lVar.jx() == null || lVar.j() == null;
    }

    public static void hp(String str, boolean z2) {
        hp(false, str);
        l(str).hp(z2);
    }

    public static void hp(String str, String str2) {
        l(str).hp(str2);
    }

    public static void hp(String str, String str2, List<String> list, boolean z2, Map<String, String> map, JSONObject jSONObject) {
        l(str).hp(str2, list, z2, map, jSONObject);
    }

    public static void hp(com.byazt.jw.l lVar, String str) {
        l(str).hp(lVar);
    }
}
