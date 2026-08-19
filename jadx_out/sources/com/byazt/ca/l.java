package com.byazt.ca;

import android.text.TextUtils;
import com.byazt.ap.j;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.xci.jd;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_TCP_FAST_OPEN_SUCCESS, 34})
/* loaded from: classes2.dex */
public class l {
    public static volatile l hp;

    public interface hp {
    }

    private void l(String str, String str2, String str3, String str4, String str5) {
        com.byazt.ca.hp hpVar = new com.byazt.ca.hp();
        hpVar.jx(str).w(str3).j(str4).l(str2).hp(str5).hp(Long.valueOf(System.currentTimeMillis()));
        jx.hp().hp(hpVar, false);
        l();
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(jd jdVar, String str, String str2) {
        if (jdVar == null) {
            return;
        }
        if (TextUtils.isEmpty(jdVar.hp())) {
            u.l("UGTemplateManager", "save ugen template error : tmpId is empty");
            return;
        }
        final String str3 = str2 + "_" + jdVar.hp();
        final String strJx = jdVar.jx();
        final String strL = jdVar.l();
        final String strJ = jdVar.j();
        if (TextUtils.isEmpty(str) && str2.equals("ad")) {
            str = s.u().ns();
        }
        final String str4 = str;
        w.hp(new eb("saveUGenTemplate") { // from class: com.byazt.ca.l.1
            @Override // java.lang.Runnable
            public void run() {
                l.this.hp(str3, strJx, strL, strJ, str4);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        int iLu = sz.l().lu();
        if (iLu <= 0) {
            iLu = 100;
        }
        List<com.byazt.ca.hp> listL = jx.hp().l();
        if (listL == null || listL.isEmpty() || iLu >= listL.size()) {
            if (listL != null) {
                listL.size();
                return;
            }
            return;
        }
        int size = (int) (listL.size() - (iLu * 0.75f));
        if (size <= 0) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.byazt.ca.hp hpVar : listL) {
            treeMap.put(hpVar.j(), hpVar);
        }
        HashSet hashSet = new HashSet();
        int i2 = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i2 < size) {
                i2++;
                com.byazt.ca.hp hpVar2 = (com.byazt.ca.hp) entry.getValue();
                if (hpVar2 != null) {
                    hashSet.add(hpVar2.hp());
                }
            }
        }
        hp(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, String str2, String str3, String str4, String str5) {
        if (hp(str, str3) != null) {
            if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                return;
            }
            l(str2, str3, str5, str4, str);
            return;
        }
        if (TextUtils.isEmpty(str4)) {
            hp(str2, str, str3, str5, (hp) null);
        } else {
            l(str2, str3, str5, str4, str);
        }
    }

    private void hp(final String str, final String str2, final String str3, final String str4, final hp hpVar) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        com.byazt.ap.jx jxVarJx = com.byazt.cm.w.hp().l().jx();
        jxVarJx.hp(str);
        jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.ca.l.2
            @Override // com.byazt.mnb.hp
            public void hp(j jVar, com.byazt.oyr.l lVar) {
                if (lVar != null && lVar.q()) {
                    String strW = lVar.w();
                    if (TextUtils.isEmpty(strW)) {
                        return;
                    }
                    jx.hp().hp(new com.byazt.ca.hp().hp(str2).l(str3).jx(str).w(str4).j(strW).hp(Long.valueOf(System.currentTimeMillis())), false);
                    l.this.l();
                    if (hpVar != null) {
                        try {
                            new JSONObject(strW);
                        } catch (JSONException unused) {
                        }
                    }
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(j jVar, IOException iOException) {
                if (hpVar != null) {
                    iOException.getMessage();
                }
            }
        });
    }

    public Set<com.byazt.ca.hp> hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return jx.hp().hp(str);
    }

    public String hp(String str, String str2, String str3) {
        com.byazt.ca.hp hpVarHp = hp(str + "_" + str2, str3);
        if (hpVarHp == null) {
            return null;
        }
        hp(hpVarHp);
        return hpVarHp.w();
    }

    private com.byazt.ca.hp hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return jx.hp().hp(str, str2);
    }

    private void hp(final com.byazt.ca.hp hpVar) {
        hpVar.hp(Long.valueOf(System.currentTimeMillis()));
        w.hp(new eb("updateTmplTime") { // from class: com.byazt.ca.l.3
            @Override // java.lang.Runnable
            public void run() {
                jx.hp().hp(hpVar, true);
            }
        }, 10);
    }

    public void hp(Set<String> set) {
        try {
            jx.hp().hp(set);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
