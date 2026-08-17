package com.byazt.ir;

import android.text.TextUtils;
import com.byazt.ymw.u;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.cl;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 402, 94})
/* loaded from: classes.dex */
public class eb {
    public static volatile eb hp;

    /* renamed from: l, reason: collision with root package name */
    public AtomicBoolean f21196l = new AtomicBoolean(false);

    public interface hp {
        void hp();

        void l();
    }

    private eb() {
    }

    private JSONObject jx(String str) {
        com.byazt.ui.jx jxVarJx = com.byazt.ui.hp.hp().jx();
        if (jxVarJx == null) {
            return null;
        }
        com.byazt.ap.jx jxVarW = jxVarJx.w();
        jxVarW.hp(str);
        com.byazt.oyr.l lVarHp = jxVarW.hp();
        if (lVarHp != null) {
            try {
                if (lVarHp.q() && lVarHp.w() != null) {
                    return new JSONObject(lVarHp.w());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public Set<com.byazt.gr.l> l(String str) {
        return a.hp().l(str);
    }

    public static eb hp() {
        if (hp == null) {
            synchronized (eb.class) {
                try {
                    if (hp == null) {
                        hp = new eb();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void l() {
        if (com.byazt.ui.hp.hp().jx() == null) {
            return;
        }
        int iHp = com.byazt.ui.hp.hp().jx().hp();
        if (iHp <= 0) {
            iHp = 100;
        }
        List<com.byazt.gr.l> listL = a.hp().l();
        if (listL == null || listL.isEmpty() || iHp >= listL.size()) {
            if (listL != null) {
                listL.size();
                return;
            }
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.byazt.gr.l lVar : listL) {
            treeMap.put(lVar.eb(), lVar);
        }
        HashSet hashSet = new HashSet();
        int size = (int) (listL.size() - (iHp * 0.75f));
        int i2 = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i2 < size) {
                i2++;
                ((Long) entry.getKey()).getClass();
                com.byazt.gr.l lVar2 = (com.byazt.gr.l) entry.getValue();
                if (lVar2 != null) {
                    hashSet.add(lVar2.l());
                }
            }
        }
        hp(hashSet);
        this.f21196l.set(false);
    }

    public com.byazt.gr.l hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return a.hp().hp(str);
    }

    private JSONObject hp(String str, hp hpVar) {
        if (com.byazt.ui.hp.hp().jx() == null) {
            hpVar.l();
            return null;
        }
        com.byazt.ap.jx jxVarW = com.byazt.ui.hp.hp().jx().w();
        jxVarW.hp(str);
        com.byazt.oyr.l lVarHp = jxVarW.hp();
        if (lVarHp != null) {
            try {
                if (lVarHp.q() && lVarHp.w() != null) {
                    return new JSONObject(lVarHp.w());
                }
            } catch (Exception unused) {
            }
        }
        hpVar.l();
        return null;
    }

    private void l(String str, String str2, String str3, String str4, String str5, String str6) {
        a.hp().hp(new com.byazt.gr.l().hp(str).l(str2).jx(str3).j(str4).w(str5).a(str6).hp(Long.valueOf(System.currentTimeMillis())), false);
        l();
    }

    public void hp(com.byazt.gr.j jVar, String str) {
        String strA;
        if (jVar == null) {
            u.l("TmplDiffManager", "saveTemplate error: tplInfo == null");
            return;
        }
        final String str2 = jVar.hp;
        final String str3 = jVar.jx;
        final String str4 = jVar.f20567l;
        final String str5 = jVar.f20566j;
        final String str6 = jVar.f20568w;
        if (com.byazt.ui.hp.hp().jx() != null) {
            strA = com.byazt.ui.hp.hp().jx().a();
        } else {
            strA = "";
        }
        final String str7 = TextUtils.isEmpty(str) ? strA : str;
        if (TextUtils.isEmpty(str2)) {
            u.l("TmplDiffManager", "saveTemplate error:tmpId is empty");
        } else {
            com.byazt.sq.w.hp(new com.byazt.uid.eb("saveTemplate") { // from class: com.byazt.ir.eb.1
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    eb.this.hp(str2, str3, str4, str5, str6, str7);
                }
            }, 10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp(String str, String str2, String str3, String str4, String str5, String str6) throws Throwable {
        String str7;
        try {
            try {
                if (hp(str) != null) {
                    if (!TextUtils.isEmpty(str4)) {
                        if (!TextUtils.isEmpty(str3)) {
                            str7 = str5;
                            l(str6, str, str3, str2, str4, str7);
                        }
                    }
                    return;
                }
                str7 = str5;
                if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                    hp(str2, str6, str);
                } else {
                    l(str6, str, str3, str2, str4, str7);
                }
                boolean zHp = s.hp(str7);
                if (!l.w() || zHp) {
                    w.l().hp(true);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    private void hp(String str, String str2, String str3) {
        JSONObject jSONObjectJx;
        if (TextUtils.isEmpty(str) || (jSONObjectJx = jx(str)) == null) {
            return;
        }
        String strOptString = jSONObjectJx.optString(TKDownloadReason.KSAD_TK_MD5);
        String strOptString2 = jSONObjectJx.optString(cl.f49059n);
        String strOptString3 = jSONObjectJx.optString("data");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || TextUtils.isEmpty(strOptString3)) {
            return;
        }
        com.byazt.gr.l lVarHp = new com.byazt.gr.l().hp(str2).l(str3).jx(strOptString).j(str).w(strOptString3).a(strOptString2).hp(Long.valueOf(System.currentTimeMillis()));
        a.hp().hp(lVarHp, false);
        l();
        if (s.hp(strOptString2)) {
            lVarHp.a(strOptString2);
            w.l().hp(true);
        }
    }

    public void hp(com.byazt.gr.j jVar, hp hpVar) {
        hp(jVar, jVar.l(), hpVar);
    }

    public void hp(com.byazt.gr.j jVar, String str, final hp hpVar) {
        String strA;
        if (hpVar == null) {
            return;
        }
        if (jVar == null) {
            u.l("TmplDiffManager", "saveTemplate error: tplInfo == null");
            hpVar.l();
            return;
        }
        final String str2 = jVar.hp;
        final String str3 = jVar.jx;
        final String str4 = jVar.f20567l;
        final String str5 = jVar.f20566j;
        final String str6 = jVar.f20568w;
        if (com.byazt.ui.hp.hp().jx() != null) {
            strA = com.byazt.ui.hp.hp().jx().a();
        } else {
            strA = "";
        }
        final String str7 = TextUtils.isEmpty(str) ? strA : str;
        if (TextUtils.isEmpty(str2)) {
            u.l("TmplDiffManager", "saveTemplate error:tmpId is empty");
            hpVar.l();
        } else {
            com.byazt.sq.w.hp(new com.byazt.uid.eb("saveTemplate") { // from class: com.byazt.ir.eb.2
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    eb.this.hp(str2, str3, str4, str5, str6, str7, hpVar);
                }
            }, 10);
        }
    }

    public synchronized void hp(String str, String str2, String str3, String str4, String str5, String str6, hp hpVar) throws Throwable {
        String str7;
        try {
            try {
                if (hp(str) != null) {
                    if (!TextUtils.isEmpty(str4)) {
                        if (!TextUtils.isEmpty(str3)) {
                            str7 = str5;
                            l(str6, str, str3, str2, str4, str7);
                            hpVar.hp();
                        }
                    }
                    hpVar.hp();
                    return;
                }
                str7 = str5;
                if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                    hp(str2, str6, str, hpVar);
                } else {
                    l(str6, str, str3, str2, str4, str7);
                    hpVar.hp();
                }
                boolean zHp = s.hp(str7);
                if (!l.w() || zHp) {
                    w.l().hp(true);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    private void hp(String str, String str2, String str3, hp hpVar) {
        if (TextUtils.isEmpty(str)) {
            hpVar.l();
            return;
        }
        JSONObject jSONObjectHp = hp(str, hpVar);
        if (jSONObjectHp != null) {
            String strOptString = jSONObjectHp.optString(TKDownloadReason.KSAD_TK_MD5);
            String strOptString2 = jSONObjectHp.optString(cl.f49059n);
            String strOptString3 = jSONObjectHp.optString("data");
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString3)) {
                com.byazt.gr.l lVarHp = new com.byazt.gr.l().hp(str2).l(str3).jx(strOptString).j(str).w(strOptString3).a(strOptString2).hp(Long.valueOf(System.currentTimeMillis()));
                if (lVarHp != null && com.byazt.ui.hp.hp().l() != null) {
                    if (TextUtils.isEmpty(lVarHp.l())) {
                        hpVar.l();
                        return;
                    }
                    a.hp().hp(lVarHp, false);
                    l();
                    if (s.hp(strOptString2)) {
                        lVarHp.a(strOptString2);
                        w.l().hp(true);
                    }
                    hpVar.hp();
                    return;
                }
                hpVar.l();
                return;
            }
            hpVar.l();
        }
    }

    public void hp(Set<String> set) {
        try {
            a.hp().hp(set);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
