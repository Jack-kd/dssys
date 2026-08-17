package com.byazt.ir;

import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import com.byazt.gr.hp;
import com.byazt.sq.e;
import com.byazt.ymw.u;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 402, 34})
/* loaded from: classes.dex */
public class l {
    public static Object hp = new Object();

    @Deprecated
    private static String a() {
        com.byazt.gr.hp hpVarJ = j();
        if (hpVarJ == null) {
            return null;
        }
        return hpVarJ.j();
    }

    public static com.byazt.gr.hp j() {
        return w.l().w();
    }

    public static String jx() {
        return a.jx();
    }

    public static void l() {
        try {
            s.j();
            File fileEb = w.eb();
            if (fileEb == null || !fileEb.exists()) {
                return;
            }
            if (fileEb.getParentFile() != null) {
                com.byazt.ymw.s.jx(fileEb.getParentFile());
            } else {
                com.byazt.ymw.s.jx(fileEb);
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean w() {
        return w.l().j();
    }

    public static void hp() {
        w.l();
    }

    private static File j(String str) throws IOException {
        if (w()) {
            Iterator<hp.C0258hp> it = j().getResources().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                hp.C0258hp next = it.next();
                if (next.hp() != null && next.hp().equals(str)) {
                    File file = new File(w.eb(), com.byazt.ymw.a.l(next.hp()));
                    String strHp = com.byazt.ymw.a.hp(file);
                    if (next.l() == null || !next.l().equals(strHp)) {
                        break;
                    }
                    return file;
                }
            }
        }
        return null;
    }

    private static boolean jx(String str) {
        com.byazt.gr.hp hpVarJ;
        List<hp.C0258hp> resources;
        if (!w() || (hpVarJ = j()) == null || (resources = hpVarJ.getResources()) == null) {
            return false;
        }
        for (hp.C0258hp c0258hp : resources) {
            if (c0258hp != null && TextUtils.equals(str, c0258hp.hp())) {
                return true;
            }
        }
        return false;
    }

    private static File w(String str) {
        List<Pair<String, String>> listL;
        hp.l lVarW = j().w();
        if (lVarW != null && (listL = lVarW.l()) != null && listL.size() > 0) {
            for (Pair<String, String> pair : listL) {
                Object obj = pair.second;
                if (obj != null && ((String) obj).equals(str)) {
                    return new File(w.eb(), (String) pair.first);
                }
            }
        }
        return null;
    }

    public static void hp(com.byazt.gr.j jVar) {
        eb.hp().hp(jVar, jVar.f20565a);
    }

    public static Set<com.byazt.gr.l> hp(String str, boolean z2) {
        final Set<com.byazt.gr.l> setL = eb.hp().l(str);
        if (setL != null && setL.size() > 0) {
            if (z2) {
                com.byazt.sq.w.hp(new com.byazt.uid.eb("updateTmplTime") { // from class: com.byazt.ir.l.1
                    @Override // java.lang.Runnable
                    public void run() {
                        l.l((Set<com.byazt.gr.l>) setL);
                    }
                }, 5);
                return setL;
            }
            l(setL);
        }
        return setL;
    }

    public static boolean jx(JSONObject jSONObject) {
        Object objOpt;
        if (jSONObject == null) {
            return false;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject == null || (objOpt = jSONObjectOptJSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(objOpt.toString())) {
                        return false;
                    }
                }
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Set<com.byazt.gr.l> set) {
        try {
            for (com.byazt.gr.l lVar : set) {
                lVar.hp(Long.valueOf(System.currentTimeMillis()));
                a.hp().hp(lVar, true);
            }
        } catch (Throwable unused) {
        }
    }

    public static com.byazt.gr.l hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.byazt.gr.l lVarHp = eb.hp().hp(str);
        if (lVarHp != null) {
            lVarHp.hp(Long.valueOf(System.currentTimeMillis()));
            hp(lVarHp);
        }
        return lVarHp;
    }

    public static String l(String str) {
        com.byazt.gr.hp hpVar;
        com.byazt.gr.hp hpVarJ = j();
        if (hpVarJ == null) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            Map<String, com.byazt.gr.hp> mapHp = hpVarJ.hp();
            if (mapHp == null || mapHp.size() <= 0 || (hpVar = mapHp.get(str)) == null) {
                return null;
            }
            return hpVar.j();
        }
        return a();
    }

    private static void hp(final com.byazt.gr.l lVar) {
        com.byazt.sq.w.hp(new com.byazt.uid.eb("updateTmplTime") { // from class: com.byazt.ir.l.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (l.hp) {
                    a.hp().hp(lVar, true);
                }
            }
        }, 10);
    }

    public static hp hp(String str, e.hp hpVar, String str2, String str3) throws IOException {
        File fileJ;
        hp hpVar2 = new hp();
        if (TextUtils.isEmpty(str3)) {
            fileJ = null;
        } else {
            fileJ = l(str3, str);
            if (fileJ != null) {
                hpVar2.hp(1);
            }
        }
        if (fileJ == null && (fileJ = w(str)) != null) {
            hpVar2.hp(3);
        }
        if (fileJ == null && (fileJ = j(str)) != null) {
            hpVar2.hp(2);
        }
        if (!TextUtils.isEmpty(str3)) {
            if (!hp(str, str3)) {
                hpVar2.hp(4);
            }
        } else if (!jx(str)) {
            hpVar2.hp(6);
        }
        hpVar2.getType();
        if (fileJ != null) {
            try {
                hpVar2.hp(new WebResourceResponse(hpVar.getType(), "utf-8", new FileInputStream(fileJ)));
                return hpVar2;
            } catch (Throwable th) {
                u.hp("TTDynamic", "get html WebResourceResponse error", th);
            }
        }
        return hpVar2;
    }

    private static File l(String str, String str2) throws IOException {
        com.byazt.gr.hp hpVar;
        com.byazt.gr.hp hpVarJ = j();
        if (hpVarJ != null && w()) {
            Map<String, com.byazt.gr.hp> mapHp = hpVarJ.hp();
            if (mapHp.size() != 0 && (hpVar = mapHp.get(str)) != null) {
                Iterator<hp.C0258hp> it = hpVar.getResources().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    hp.C0258hp next = it.next();
                    if (next.hp() != null && next.hp().equals(str2)) {
                        File file = new File(w.eb(), com.byazt.ymw.a.l(next.hp()));
                        String strHp = com.byazt.ymw.a.hp(file);
                        if (next.l() == null || !next.l().equals(strHp)) {
                            break;
                        }
                        return file;
                    }
                }
            }
        }
        return null;
    }

    public static boolean l(JSONObject jSONObject) {
        Object objOpt;
        return (jSONObject == null || (objOpt = jSONObject.opt("xTemplate")) == null || TextUtils.isEmpty(objOpt.toString())) ? false : true;
    }

    private static boolean hp(String str, String str2) {
        com.byazt.gr.hp hpVarJ;
        com.byazt.gr.hp hpVar;
        if (!w() || (hpVarJ = j()) == null) {
            return false;
        }
        Map<String, com.byazt.gr.hp> mapHp = hpVarJ.hp();
        if (mapHp.size() == 0 || (hpVar = mapHp.get(str2)) == null) {
            return false;
        }
        for (hp.C0258hp c0258hp : hpVar.getResources()) {
            if (c0258hp != null && TextUtils.equals(str, c0258hp.hp())) {
                return true;
            }
        }
        return false;
    }

    public static boolean hp(JSONObject jSONObject) {
        Object objOpt;
        return (jSONObject == null || (objOpt = jSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(objOpt.toString())) ? false : true;
    }
}
