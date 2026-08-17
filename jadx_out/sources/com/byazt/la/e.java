package com.byazt.la;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.core.common.f.g;
import com.byazt.jz.sz;
import com.byazt.xci.di;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.zn.nu;
import com.byazt.zn.xh;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 31, 45})
/* loaded from: classes3.dex */
public class e {
    public static boolean a(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        return eb(mpVar) || s(mpVar);
    }

    public static boolean eb(mp mpVar) {
        return (mpVar == null || mpVar.an() != 1 || ec.hp(mpVar)) ? false : true;
    }

    public static boolean j(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        int iAn = mpVar.an();
        com.byazt.nqo.hp hpVarPc = mpVar.pc();
        return hpVarPc != null && iAn == 1 && hpVarPc.j() == 3;
    }

    public static boolean jx(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        int iAn = mpVar.an();
        com.byazt.nqo.hp hpVarPc = mpVar.pc();
        return hpVarPc != null && iAn == 1 && hpVarPc.j() == 4;
    }

    public static boolean l(mp mpVar) {
        com.byazt.qb.hp hpVarFi;
        JSONObject jSONObjectJx;
        return (mpVar == null || (hpVarFi = mpVar.fi()) == null || (jSONObjectJx = hpVarFi.jx()) == null || jSONObjectJx.optInt("reward_slide_type", 0) != 1) ? false : true;
    }

    public static boolean q(mp mpVar) {
        return (mpVar == null || mpVar.rl() == null) ? false : true;
    }

    public static boolean s(mp mpVar) {
        return mpVar != null && mpVar.hd() > 0;
    }

    public static boolean w(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        int iAn = mpVar.an();
        com.byazt.nqo.hp hpVarPc = mpVar.pc();
        return hpVarPc != null && iAn == 1 && hpVarPc.j() == 2;
    }

    public static int hp(mp mpVar) {
        com.byazt.qb.hp hpVarFi;
        JSONObject jSONObjectJx;
        int iOptInt;
        if (mpVar == null || (hpVarFi = mpVar.fi()) == null || (jSONObjectJx = hpVarFi.jx()) == null || (iOptInt = jSONObjectJx.optInt("pre_request_ad_num", 4)) <= 0) {
            return 4;
        }
        return iOptInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final boolean z2, final String str, final jx jxVar) {
        if (jxVar != null) {
            com.byazt.ymw.e.l().post(new com.byazt.uid.eb("tt_ugen_tpl") { // from class: com.byazt.la.e.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z2) {
                        jxVar.hp(str);
                    } else {
                        jxVar.hp();
                    }
                }
            });
        }
    }

    public static JSONObject hp(mp mpVar, View view, boolean z2) throws JSONException {
        JSONObject jSONObjectIj = mpVar.ij();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            boolean z3 = false;
            jSONObject.put("voice_control", mpVar.dh() == 1);
            Context context = sz.getContext();
            jSONObject3.put("width", xh.j(context, xh.j(context)));
            jSONObject3.put("height", xh.j(context, xh.w(context)));
            if (view != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("width", xh.j(context, width) * 1.0f);
                jSONObject4.put("height", xh.j(context, height) * 1.0f);
                jSONObject2.put("content_size", jSONObject4);
            }
            jSONObject2.put("screen_size", jSONObject3);
            jSONObjectIj.put("env_info", jSONObject2);
            jSONObjectIj.put("setting", jSONObject);
            jSONObjectIj.put("meta_hashcode", mpVar.nu());
            if (z2 && sz.l().nl()) {
                z3 = true;
            }
            jSONObjectIj.put("gesture_through_enable", z3);
            jSONObjectIj.put("is_adapt_two_finger", sz.l().oh());
        } catch (JSONException unused) {
        }
        return jSONObjectIj;
    }

    private static void l(String str, final String str2, final jx jxVar) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            l(false, (String) null, jxVar);
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = str;
        }
        com.byazt.ap.jx jxVarJx = com.byazt.cm.w.hp().l().jx();
        if (jxVarJx == null) {
            l(false, (String) null, jxVar);
        } else {
            jxVarJx.hp(str);
            jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.la.e.2
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                    if (lVar != null) {
                        try {
                            if (lVar.q() && lVar.w() != null) {
                                com.byazt.ow.w wVarHp = nu.hp("ugeno_template_kv");
                                String strW = lVar.w();
                                wVarHp.put(str2, strW);
                                e.l(true, strW, jxVar);
                                return;
                            }
                        } catch (Exception unused) {
                            e.l(false, (String) null, jxVar);
                            return;
                        }
                    }
                    e.l(false, (String) null, jxVar);
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    e.l(false, (String) null, jxVar);
                }
            });
        }
    }

    public static int l(Context context, mp mpVar, String str) {
        if (mpVar == null) {
            return -1;
        }
        di diVarRl = mpVar.rl();
        if (diVarRl == null) {
            return -2;
        }
        if (TextUtils.isEmpty(str)) {
            return -3;
        }
        if (str.length() > 15) {
            return 4;
        }
        if (context != null && context.getResources().getConfiguration().orientation != 1) {
            return 9;
        }
        String strL = diVarRl.l();
        if (hp(strL, diVarRl.jx(), (jx) null) == null) {
            return TextUtils.isEmpty(strL) ? 2 : 3;
        }
        return 1;
    }

    public static boolean hp(Context context, mp mpVar, String str) {
        return l(context, mpVar, str) == 1;
    }

    public static String hp(Context context, String str, mp mpVar, String str2) throws JSONException {
        di diVarRl = mpVar.rl();
        JSONObject jSONObjectPj = mpVar.pj();
        if (str == null) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put(g.a.f3279p, str2);
            }
            String strCu = mpVar.cu();
            if (!TextUtils.isEmpty(strCu)) {
                jSONObject.put("description", strCu);
            }
            if (jSONObjectPj != null) {
                jSONObject.put("easy_pl_material", jSONObjectPj.toString());
            }
            if (diVarRl != null) {
                jSONObject.put("ugen_dialog_url", diVarRl.l());
                jSONObject.put("ugen_dialog_md5", diVarRl.jx());
            }
            if (context != null) {
                if (context.getResources().getConfiguration().orientation == 1) {
                    jSONObject.put("vertical", "true");
                } else {
                    jSONObject.put("vertical", "false");
                }
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static JSONObject hp(String str, String str2, jx jxVar) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            if (jxVar != null) {
                jxVar.hp();
            }
            return null;
        }
        com.byazt.ow.w wVarHp = nu.hp("ugeno_template_kv");
        if (wVarHp == null) {
            if (jxVar != null) {
                jxVar.hp();
            }
            return null;
        }
        try {
            str3 = wVarHp.get(str2, "");
        } catch (Exception unused) {
            if (jxVar != null) {
                jxVar.hp();
            }
        }
        if (!TextUtils.isEmpty(str3)) {
            if (jxVar != null) {
                jxVar.hp(str3);
            }
            return new JSONObject(str3);
        }
        if (!TextUtils.isEmpty(str)) {
            l(str, str2, jxVar);
            return null;
        }
        if (jxVar != null) {
            jxVar.hp();
        }
        return null;
    }
}
