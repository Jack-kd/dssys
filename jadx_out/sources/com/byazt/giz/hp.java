package com.byazt.giz;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byazt.jw.j;
import com.byazt.jw.w;
import com.byazt.rx.BaseConstants;
import com.byazt.rz.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 596, 28})
/* loaded from: classes2.dex */
public class hp {
    public static final LinkedList<String> hp = new LinkedList<>();

    /* renamed from: l, reason: collision with root package name */
    public static final LinkedList<String> f20458l = new LinkedList<>();
    public static final LinkedList<String> jx = new LinkedList<>();

    /* renamed from: j, reason: collision with root package name */
    public static final LinkedList<String> f20457j = new LinkedList<>();

    /* renamed from: w, reason: collision with root package name */
    public static final Map<String, Integer> f20461w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public static String f20455a = "upload_init";
    public static int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public static int f20460s = 0;

    /* renamed from: q, reason: collision with root package name */
    public static AtomicLong f20459q = new AtomicLong();

    /* renamed from: e, reason: collision with root package name */
    public static AtomicLong f20456e = new AtomicLong();

    private static synchronized void a(String str) {
        LinkedList<String> linkedList = f20457j;
        if (linkedList.size() < 10) {
            linkedList.add(str);
        } else {
            linkedList.removeFirst();
            linkedList.add(str);
        }
    }

    public static void eb(com.byazt.jw.l lVar, w wVar) throws JSONException {
        try {
            if (lVar.j() == 0 && wVar.j() != null && wVar.j().k()) {
                JSONObject jSONObjectEb = lVar.eb();
                String strHp = hp(lVar, wVar);
                if (jx(strHp)) {
                    return;
                }
                String strOptString = jSONObjectEb.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                if (TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("will_send_labels", w(strHp));
                    jSONObject.put("send_success_valid_labels", l());
                    jSONObjectEb.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(strOptString);
                if (TextUtils.isEmpty(jSONObject2.optString("will_send_labels"))) {
                    jSONObject2.put("will_send_labels", w(strHp));
                    jSONObject2.put("send_success_valid_labels", l());
                }
                jSONObjectEb.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
    }

    public static boolean hp(int i2) {
        return i2 == 72 || i2 == 71;
    }

    private static synchronized String j(String str) {
        StringBuilder sb;
        try {
            LinkedList<String> linkedList = f20458l;
            if (linkedList.size() >= 10) {
                linkedList.removeFirst();
                linkedList.add(str);
            } else {
                linkedList.add(str);
            }
            sb = new StringBuilder();
            Iterator<String> it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(",");
            }
        } catch (Throwable th) {
            throw th;
        }
        return sb.toString();
    }

    public static boolean jx(String str) {
        return false;
    }

    public static synchronized String l(String str) {
        StringBuilder sb;
        try {
            LinkedList<String> linkedList = hp;
            if (linkedList.size() >= 10) {
                linkedList.removeFirst();
                linkedList.add(str);
            } else {
                linkedList.add(str);
            }
            sb = new StringBuilder();
            Iterator<String> it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(",");
            }
        } catch (Throwable th) {
            throw th;
        }
        return sb.toString();
    }

    public static boolean q(com.byazt.jw.l lVar, w wVar) {
        return lVar != null && lVar.j() == 0 && hp(wVar);
    }

    public static void s(com.byazt.jw.l lVar, w wVar) throws JSONException {
        if (wVar == null || wVar.j() == null || !wVar.j().jx()) {
            return;
        }
        try {
            com.byazt.fxy.l.hp.hp(System.currentTimeMillis() - lVar.s(), lVar);
            lVar.l(System.currentTimeMillis());
            if (lVar.j() == 0 && wVar.j() != null && wVar.j().k()) {
                String strHp = hp(lVar, wVar);
                if (jx(strHp)) {
                    return;
                }
                JSONObject jSONObjectEb = lVar.eb();
                String strOptString = lVar.eb().optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                if (TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("save_success_labels", j(strHp));
                    jSONObjectEb.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                } else {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    if (TextUtils.isEmpty(jSONObject2.optString("save_success_labels"))) {
                        jSONObject2.put("save_success_labels", j(strHp));
                    }
                    jSONObjectEb.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            }
        } catch (Exception unused) {
        }
    }

    private static synchronized String w(String str) {
        StringBuilder sb;
        try {
            LinkedList<String> linkedList = jx;
            if (linkedList.size() >= 10) {
                linkedList.removeFirst();
                linkedList.add(str);
            } else {
                linkedList.add(str);
            }
            sb = new StringBuilder();
            Iterator<String> it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(",");
            }
        } catch (Throwable th) {
            throw th;
        }
        return sb.toString();
    }

    public static synchronized int hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        Map<String, Integer> map = f20461w;
        Integer num = map.get(str);
        if (num == null) {
            map.put(str, 1);
            return 1;
        }
        int iIntValue = num.intValue() + 1;
        map.put(str, Integer.valueOf(iIntValue));
        return iIntValue;
    }

    public static String jx(com.byazt.jw.l lVar, w wVar) {
        if (wVar == null || wVar.j() == null || !wVar.j().hp()) {
            return "";
        }
        String strHp = hp(lVar, wVar);
        if (!TextUtils.isEmpty(strHp)) {
            return "label:" + strHp;
        }
        if (TextUtils.isEmpty(l(lVar, wVar))) {
            return null;
        }
        return "type:" + l(lVar, wVar);
    }

    public static String a(com.byazt.jw.l lVar, w wVar) {
        if (lVar != null && lVar.eb() != null && !l(wVar) && !j(wVar)) {
            String strOptString = lVar.eb().optString("log_extra");
            if (!TextUtils.isEmpty(strOptString)) {
                try {
                    return new JSONObject(strOptString).optString("req_id");
                } catch (JSONException unused) {
                }
            }
        }
        return null;
    }

    public static String j(com.byazt.jw.l lVar, w wVar) {
        if (lVar != null && lVar.eb() != null && lVar.j() == 1) {
            JSONObject jSONObjectEb = lVar.eb();
            String strOptString = jSONObjectEb.optString("event_extra");
            String strOptString2 = jSONObjectEb.optString(PluginConstants.KEY_PLUGIN_VERSION);
            try {
                return new JSONObject(strOptString).optInt("stats_index") + "_" + strOptString2;
            } catch (JSONException unused) {
            }
        }
        return "-1";
    }

    private static synchronized String l() {
        StringBuilder sb;
        try {
            sb = new StringBuilder();
            Iterator<String> it = f20457j.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(",");
            }
        } catch (Throwable th) {
            throw th;
        }
        return sb.toString();
    }

    public static synchronized int w(com.byazt.jw.l lVar, w wVar) {
        if (lVar != null) {
            if (lVar.eb() != null) {
                try {
                    return new JSONObject(lVar.eb().optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA)).optInt("sdk_event_self_count");
                } catch (Exception unused) {
                    return 0;
                }
            }
        }
        return 0;
    }

    public static String hp(com.byazt.jw.l lVar, w wVar) {
        if (lVar == null || lVar.eb() == null || l(wVar) || j(wVar)) {
            return null;
        }
        if (lVar.l() == 3) {
            return lVar.eb().optString(NotificationCompat.CATEGORY_EVENT);
        }
        return lVar.eb().optString("label");
    }

    public static boolean jx(w wVar) {
        return wVar != null && TextUtils.equals(wVar.w(), MediationConstant.ADN_PANGLE);
    }

    public static boolean jx(com.byazt.jw.l lVar) {
        return lVar != null && lVar.j() == 0 && lVar.w() == 1;
    }

    public static boolean a(com.byazt.jw.l lVar) {
        return lVar != null && lVar.j() == 1 && lVar.w() == 2;
    }

    public static int jx(List<com.byazt.jw.l> list, w wVar) {
        JSONObject jSONObjectEb;
        String strOptString;
        if (list != null && list.size() == 1) {
            try {
                com.byazt.jw.l lVar = list.get(0);
                if (lVar != null && lVar.w() == 1 && (jSONObjectEb = lVar.eb()) != null && lVar.j() == 0) {
                    JSONObject jSONObjectOptJSONObject = jSONObjectEb.optJSONObject("params");
                    if (jSONObjectOptJSONObject == null) {
                        strOptString = jSONObjectEb.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                    } else {
                        strOptString = jSONObjectOptJSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                    }
                    JSONObject jSONObject = new JSONObject(strOptString);
                    int iOptInt = jSONObject.optInt("inner_appid", 0);
                    if (iOptInt != 0) {
                        jSONObject.remove("inner_appid");
                        if (jSONObjectOptJSONObject == null) {
                            jSONObjectEb.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                            return iOptInt;
                        }
                        jSONObjectOptJSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                        jSONObjectEb.put("params", jSONObjectOptJSONObject);
                        return iOptInt;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static String l(com.byazt.jw.l lVar, w wVar) {
        if (lVar == null || lVar.eb() == null || l(wVar) || j(wVar)) {
            return null;
        }
        return lVar.eb().optString("type");
    }

    public static void hp(List<com.byazt.jw.l> list, String str) {
        com.byazt.jw.l lVar;
        JSONObject jSONObjectEb;
        JSONObject jSONObjectEb2;
        if (list != null) {
            try {
                if (!list.isEmpty() && (lVar = list.get(0)) != null) {
                    byte bJ = lVar.j();
                    if (bJ == 0) {
                        long jIncrementAndGet = f20459q.incrementAndGet();
                        for (com.byazt.jw.l lVar2 : list) {
                            if (lVar2 != null && (jSONObjectEb = lVar2.eb()) != null) {
                                String strOptString = jSONObjectEb.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                                if (!TextUtils.isEmpty(strOptString)) {
                                    jSONObjectEb.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, hp(strOptString, jIncrementAndGet));
                                }
                            }
                        }
                        return;
                    }
                    if (bJ != 1) {
                        return;
                    }
                    long jIncrementAndGet2 = f20456e.incrementAndGet();
                    for (com.byazt.jw.l lVar3 : list) {
                        if (lVar3 != null && (jSONObjectEb2 = lVar3.eb()) != null) {
                            String strOptString2 = jSONObjectEb2.optString("event_extra");
                            if (!TextUtils.isEmpty(strOptString2)) {
                                jSONObjectEb2.put("event_extra", hp(strOptString2, jIncrementAndGet2));
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean j(w wVar) {
        return wVar != null && TextUtils.equals(wVar.w(), "pgl_mediation");
    }

    private static int l(List<com.byazt.jw.l> list, boolean z2) {
        int i2 = 0;
        if (list != null && !list.isEmpty()) {
            for (com.byazt.jw.l lVar : list) {
                if (lVar != null && (!z2 || lVar.e() <= 1)) {
                    if (l(lVar)) {
                        i2++;
                    }
                }
            }
        }
        return i2;
    }

    public static boolean w(w wVar) {
        return hp(wVar) || jx(wVar);
    }

    public static boolean j(com.byazt.jw.l lVar) {
        return lVar != null && lVar.j() == 3 && lVar.w() == 2;
    }

    public static boolean w(com.byazt.jw.l lVar) {
        return lVar != null && lVar.j() == 0 && lVar.w() == 2;
    }

    public static boolean eb(com.byazt.jw.l lVar) {
        return lVar != null && lVar.j() == 1 && lVar.w() == 3;
    }

    public static boolean s(com.byazt.jw.l lVar) {
        return lVar != null && lVar.j() == 2 && lVar.w() == 3;
    }

    public static boolean l(com.byazt.jw.l lVar) {
        if (lVar == null) {
            return false;
        }
        try {
            if (lVar.j() == 0 && lVar.eb() != null) {
                if ("click".equals(lVar.eb().optString("label"))) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean l(w wVar) {
        return wVar != null && TextUtils.equals(wVar.w(), "csj_mediation");
    }

    public static boolean l(List<com.byazt.jw.l> list, w wVar) {
        com.byazt.jw.l lVar;
        return (list == null || list.size() == 0 || (lVar = list.get(0)) == null || lVar.j() != 0 || !hp(wVar)) ? false : true;
    }

    public static String l(int i2) {
        switch (i2) {
            case 71:
                return "flush once";
            case 72:
                return "flush memory db";
            case 73:
                return "flush memory";
            case 74:
                return "new event";
            case 75:
            default:
                return "default";
            case 76:
                return "empty message";
            case 77:
                return "net error";
            case 78:
                return "direct upload";
        }
    }

    private static String hp(String str, long j2) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.put("upload_count", j2);
            jSONObject.put("upload_ts", System.currentTimeMillis());
            return jSONObject.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String hp(JSONObject jSONObject, w wVar) {
        if (jSONObject != null && !l(wVar) && !j(wVar)) {
            String strOptString = jSONObject.optString("log_extra");
            if (!TextUtils.isEmpty(strOptString)) {
                try {
                    return new JSONObject(strOptString).optString("rit");
                } catch (JSONException unused) {
                }
            }
        }
        return "";
    }

    public static void hp(List<com.byazt.jw.l> list, w wVar) {
        try {
            if (wVar.j().jx()) {
                for (com.byazt.jw.l lVar : list) {
                    if (lVar != null && lVar.q() != 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - lVar.q();
                        com.byazt.xe.hp hpVar = com.byazt.fxy.l.hp;
                        hpVar.s().incrementAndGet();
                        hpVar.zy().getAndAdd(jCurrentTimeMillis);
                        lVar.jx(System.currentTimeMillis());
                    }
                    if (lVar != null) {
                        eb(lVar, wVar);
                    }
                }
                com.byazt.xe.hp hpVar2 = com.byazt.fxy.l.hp;
                hpVar2.e().getAndAdd(list.size());
                hpVar2.cx().getAndAdd(hp(list));
                hpVar2.b().getAndAdd(hp(list, false));
                hpVar2.di().getAndAdd(hp(list, true));
                hpVar2.d().getAndAdd(l(list, false));
                hpVar2.wv().getAndAdd(l(list, true));
            }
        } catch (Exception unused) {
        }
    }

    private static int hp(List<com.byazt.jw.l> list) {
        int i2 = 0;
        if (list != null && !list.isEmpty()) {
            for (com.byazt.jw.l lVar : list) {
                if (lVar != null && lVar.e() <= 1) {
                    i2++;
                }
            }
        }
        return i2;
    }

    private static int hp(List<com.byazt.jw.l> list, boolean z2) {
        int i2 = 0;
        if (list != null && !list.isEmpty()) {
            for (com.byazt.jw.l lVar : list) {
                if (lVar != null && (!z2 || lVar.e() <= 1)) {
                    if (hp(lVar)) {
                        i2++;
                    }
                }
            }
        }
        return i2;
    }

    public static boolean hp(com.byazt.jw.l lVar) {
        if (lVar == null) {
            return false;
        }
        try {
            if (lVar.j() == 0 && lVar.eb() != null) {
                if ("show".equals(lVar.eb().optString("label"))) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean hp(w wVar) {
        return wVar != null && TextUtils.equals(wVar.w(), "csj");
    }

    public static void hp(JSONObject jSONObject, com.byazt.ai.hp hpVar, w wVar, int i2) {
        j jVarJ;
        if (wVar != null && (jVarJ = wVar.j()) != null && jVarJ.hp() && w(wVar)) {
            jSONObject.optString("label");
        }
    }

    public static void hp(List<com.byazt.jw.l> list, int i2, String str, w wVar) {
        j jVarJ;
        if (wVar == null || (jVarJ = wVar.j()) == null || !jVarJ.hp() || list == null || l(wVar) || j(wVar)) {
            return;
        }
        boolean z2 = false;
        for (com.byazt.jw.l lVar : list) {
            if (lVar.j() == 0) {
                JSONObject jSONObjectEb = lVar.eb();
                hp(lVar, wVar);
                if (lVar.l() != 3) {
                    hp(wVar, lVar);
                    w(lVar, wVar);
                } else if (jSONObjectEb != null) {
                    jSONObjectEb.optString(NotificationCompat.CATEGORY_EVENT);
                }
                z2 = true;
            } else if (lVar.j() == 1) {
                l(lVar, wVar);
                j(lVar, wVar);
            }
        }
        if (z2) {
            l(i2);
            list.size();
        } else {
            l(i2);
            list.size();
        }
    }

    private static void hp(com.byazt.jw.l lVar, String str, j jVar, w wVar) {
        String strHp = hp(lVar, wVar);
        if (jx(strHp)) {
            return;
        }
        String strA = a(lVar, wVar);
        if (lVar.j() == 0 && jVar.k()) {
            a(strHp + "_" + strA + "_" + str);
        }
    }

    public static long hp(w wVar, com.byazt.jw.l lVar) {
        if (lVar != null && lVar.eb() != null) {
            try {
                return new JSONObject(lVar.eb().optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA)).optLong("sdk_event_index");
            } catch (Exception e2) {
                jx.hp(e2.getMessage(), wVar);
            }
        }
        return 0L;
    }

    public static void hp(boolean z2, int i2, String str, String str2, int i3, String str3) throws JSONException {
        eb++;
        if (z2) {
            f20460s++;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("suc", z2);
            jSONObject.put("scnt", f20460s);
            jSONObject.put("acnt", eb);
            jSONObject.put("code", i2);
            jSONObject.put("reqid", str2);
            jSONObject.put("len:", i3);
            jSONObject.put("rit", str3);
            jSONObject.put("msg", str);
            j jVarJ = com.byazt.mdk.hp.l("csj").j();
            if (jVarJ != null) {
                jSONObject.put("url", jVarJ.jl().a());
            } else {
                jSONObject.put("url", "emptyurl");
            }
            f20455a = jSONObject.toString();
        } catch (Exception unused) {
            f20455a = "unknown_json";
        }
    }

    public static String hp() {
        return f20455a;
    }

    public static void hp(com.byazt.jw.l lVar, w wVar, String str) {
        j jVarJ;
        if (l(wVar) || wVar == null || j(wVar) || (jVarJ = com.byazt.mdk.hp.l(wVar.w()).j()) == null || !jVarJ.hp()) {
            return;
        }
        if (!TextUtils.isEmpty(l(lVar, wVar))) {
            j(lVar, wVar);
        }
        if (TextUtils.isEmpty(hp(lVar, wVar))) {
            return;
        }
        hp(wVar, lVar);
    }

    public static void hp(List<com.byazt.jw.l> list, w wVar, String str) {
        if (wVar == null) {
            return;
        }
        try {
            j jVarJ = wVar.j();
            if (jVarJ == null || !jVarJ.hp()) {
                return;
            }
            for (com.byazt.jw.l lVar : list) {
                if (lVar.j() == 1) {
                    l(lVar, wVar);
                    j(lVar, wVar);
                } else if (lVar.j() == 0) {
                    if (lVar.l() == 3) {
                        if (lVar.eb() != null) {
                            lVar.eb().optString(NotificationCompat.CATEGORY_EVENT);
                            hp(wVar, lVar);
                        }
                    } else {
                        hp(lVar, wVar);
                        hp(wVar, lVar);
                    }
                }
            }
            list.size();
        } catch (Exception e2) {
            jx.hp("_delete error", e2.getMessage(), wVar);
        }
    }

    public static void hp(int i2, List<com.byazt.jw.l> list, long j2, w wVar, com.byazt.jds.l lVar, com.byazt.cmm.l lVar2) {
        com.byazt.jw.l lVar3;
        if (wVar != null) {
            try {
                if (wVar.j().jx()) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - j2;
                    if (i2 == 200) {
                        com.byazt.xe.hp hpVar = com.byazt.fxy.l.hp;
                        hpVar.ky().getAndAdd(jCurrentTimeMillis);
                        hpVar.r().incrementAndGet();
                        hpVar.ns().getAndAdd(list.size());
                        hpVar.o().getAndAdd(hp(list, false));
                        hpVar.hq().getAndAdd(l(list, false));
                        hpVar.w().getAndAdd(list.size());
                        return;
                    }
                    jx.hp("-------AdThread code is " + i2 + " error  ------------", wVar);
                    byte bJ = -1;
                    if (i2 == -1) {
                        com.byazt.xe.hp hpVar2 = com.byazt.fxy.l.hp;
                        hpVar2.dy().getAndAdd(list.size());
                        hpVar2.ud().getAndAdd(hp(list, false));
                        hpVar2.nu().getAndAdd(l(list, false));
                    } else {
                        com.byazt.fxy.l.hp.eb().getAndAdd(list.size());
                    }
                    com.byazt.xe.hp hpVar3 = com.byazt.fxy.l.hp;
                    hpVar3.xh().getAndAdd(jCurrentTimeMillis);
                    hpVar3.pu().incrementAndGet();
                    if (!list.isEmpty() && (lVar3 = list.get(0)) != null) {
                        bJ = lVar3.j();
                    }
                    if (lVar != null) {
                        String str = lVar.f21464j;
                        int i3 = lVar.f21465l;
                        String str2 = lVar.jx;
                        StringBuffer stringBufferMs = hpVar3.ms();
                        stringBufferMs.append((int) bJ);
                        stringBufferMs.append("_");
                        stringBufferMs.append(str);
                        stringBufferMs.append("_");
                        stringBufferMs.append(i3);
                        stringBufferMs.append("_");
                        stringBufferMs.append(str2);
                        stringBufferMs.append(" ");
                    } else {
                        StringBuffer stringBufferMs2 = hpVar3.ms();
                        stringBufferMs2.append((int) bJ);
                        stringBufferMs2.append("_");
                        stringBufferMs2.append(i2);
                        stringBufferMs2.append(" ");
                    }
                    if (lVar2 != null) {
                        String strL = lVar2.l();
                        boolean zHp = lVar2.hp();
                        StringBuffer stringBufferAs = hpVar3.as();
                        stringBufferAs.append((int) bJ);
                        stringBufferAs.append("_");
                        stringBufferAs.append(zHp);
                        stringBufferAs.append("_");
                        stringBufferAs.append(strL);
                        return;
                    }
                    StringBuffer stringBufferAs2 = hpVar3.as();
                    stringBufferAs2.append((int) bJ);
                    stringBufferAs2.append("_ok");
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void hp(List<com.byazt.jw.l> list, String str, w wVar) {
        try {
            j jVarJ = wVar.j();
            if (jVarJ != null && jVarJ.jx() && list != null && jVarJ.k()) {
                for (com.byazt.jw.l lVar : list) {
                    if (lVar != null) {
                        hp(lVar, str, jVarJ, wVar);
                    }
                }
            }
        } catch (Exception e2) {
            jx.hp(e2.getMessage(), wVar);
        }
    }
}
