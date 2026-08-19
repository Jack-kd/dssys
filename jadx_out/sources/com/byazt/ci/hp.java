package com.byazt.ci;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.ar.j;
import com.byazt.gg.a;
import com.byazt.jz.n;
import com.byazt.jz.sz;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.ql.u;
import com.byazt.xci.mp;
import com.byazt.xci.x;
import com.byazt.zn.ky;
import com.byazt.zn.w;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1925, 28})
/* loaded from: classes2.dex */
public class hp {
    public static volatile hp hp;

    private hp() {
    }

    private void a(mp mpVar, Context context) {
        if (mpVar == null || context == null) {
            return;
        }
        w.hp(mpVar, context, ky.l(mpVar));
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void j(mp mpVar, Context context) {
        if (mpVar == null || context == null) {
            return;
        }
        w.jx(mpVar, context, ky.l(mpVar));
    }

    private void jx(mp mpVar, Context context) {
        if (mpVar == null || context == null) {
            return;
        }
        w.l(mpVar, context, ky.l(mpVar));
    }

    private void l(mp mpVar, Context context) {
        if (mpVar == null || context == null) {
            return;
        }
        w.hp(context, mpVar);
    }

    private void w(mp mpVar, Context context) {
        if (mpVar == null || context == null) {
            return;
        }
        w.hp(context, mpVar, ky.l(mpVar));
    }

    private void l(com.byazt.xs.jx jxVar) {
        j.hp(jxVar.q(), "fullscreen_tag");
    }

    private void l(jx jxVar, mp mpVar, Context context) throws JSONException {
        HashMap map = new HashMap();
        map.put("material_meta", mpVar);
        map.put(g.f49337X, context);
        map.put("event_tag", ky.l(mpVar));
        com.byazt.rj.jx.hp(mpVar, (HashMap<String, Object>) map, jxVar);
    }

    public boolean hp(u uVar, mp mpVar, Context context, com.byazt.xs.jx jxVar, JSONObject jSONObject, l lVar, Map<String, Object> map) {
        jx jxVarHp = jx.hp(uVar, jSONObject, map);
        if (lVar == null || !lVar.hp(jxVarHp.hp(), jxVar, jxVarHp)) {
            return hp(jxVarHp, mpVar, context, jxVar, lVar);
        }
        return true;
    }

    public boolean hp(a.hp hpVar, mp mpVar, Context context, com.byazt.xs.jx jxVar, JSONObject jSONObject, l lVar, Map<String, Object> map) {
        jx jxVarHp = jx.hp(hpVar, jSONObject, map);
        jxVarHp.hp("v3_trigger_name");
        if (lVar == null || !lVar.hp(jxVarHp.hp(), jxVar, jxVarHp)) {
            return hp(jxVarHp, mpVar, context, jxVar, lVar);
        }
        return true;
    }

    private boolean hp(jx jxVar, mp mpVar, Context context, com.byazt.xs.jx jxVar2, l lVar) throws JSONException {
        String strHp;
        boolean z2;
        strHp = jxVar != null ? jxVar.hp() : "";
        strHp.getClass();
        z2 = false;
        switch (strHp) {
            case "openAppPermission":
                j(mpVar, context);
                break;
            case "stopHaptic":
                hp(context);
                break;
            case "openCommonUrl":
                hp(jxVar, context);
                break;
            case "renderScene":
                hp(jxVar, jxVar2, mpVar);
                break;
            case "openAppRegistration":
                a(mpVar, context);
                break;
            case "openNewAdPage":
                hp(jxVar, mpVar, context);
                break;
            case "haptic":
            case "playHaptic":
                hp(jxVar, context, mpVar);
                break;
            case "uchain":
                l(jxVar, mpVar, context);
                break;
            case "execEffect":
                hp(jxVar, jxVar2);
                break;
            case "clickEvent":
            case "convert":
                hp(jxVar2, mpVar, context);
                break;
            case "openPrivacy":
            case "openPolicy":
                l(mpVar, context);
                break;
            case "openAppFunctionDesc":
            case "openAppFunction":
                w(mpVar, context);
                break;
            case "ugen_view_visibility_tracker":
                hp(jxVar, mpVar);
                break;
            case "dismissScene":
                l(jxVar2);
                break;
            case "muteVideo":
                hp(mpVar);
                break;
            case "openAppPolicy":
                jx(mpVar, context);
                break;
            case "dislike":
                hp(mpVar, context);
                break;
            case "dismiss":
                hp(jxVar2);
                break;
            default:
                if (z2 && lVar != null) {
                    lVar.hp(strHp);
                }
                return z2;
        }
        z2 = true;
        if (z2) {
            lVar.hp(strHp);
        }
        return z2;
    }

    private void hp(com.byazt.xs.jx jxVar, mp mpVar, Context context) {
        com.byazt.dn.hp.hp(jxVar != null ? jxVar.q() : null, mpVar, context);
    }

    private void hp(mp mpVar) {
        NativeVideoTsView nativeVideoTsView;
        if (mpVar == null || (nativeVideoTsView = (NativeVideoTsView) n.jx(mpVar.jm(), NativeVideoTsView.class)) == null) {
            return;
        }
        boolean z2 = !nativeVideoTsView.u();
        nativeVideoTsView.l(z2, true);
        nativeVideoTsView.setIsQuiet(z2);
    }

    private void hp(mp mpVar, Context context) {
        if (mpVar == null) {
            return;
        }
        Dialog dialog = (Dialog) n.jx(mpVar.jm(), Dialog.class);
        com.byazt.ih.l lVar = (com.byazt.ih.l) n.jx(mpVar.jm(), com.byazt.ih.l.class);
        if (dialog != null) {
            dialog.show();
        } else if (lVar != null) {
            lVar.showDislikeDialog();
        } else {
            TTDelegateActivity.hp(context, mpVar);
        }
    }

    private void hp(com.byazt.xs.jx jxVar) {
        if (jxVar == null) {
            return;
        }
        j.j(jxVar.q());
    }

    private void hp(jx jxVar, Context context) {
        if (jxVar == null) {
            return;
        }
        String strHp = jxVar.hp("webUrl");
        String strHp2 = jxVar.hp("webTitle");
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        TTDelegateActivity.j(context, strHp, strHp2);
    }

    private void hp(jx jxVar, Context context, mp mpVar) {
        if (jxVar == null) {
            return;
        }
        JSONObject jSONObjectL = jxVar.l("params");
        String strHp = jxVar.hp("id");
        JSONArray jSONArrayJx = jxVar.jx("pattern");
        if (jSONObjectL != null) {
            com.byazt.bi.jx.hp(jSONObjectL, context, mpVar);
        } else {
            com.byazt.bi.jx.hp(strHp, jSONArrayJx, context, mpVar);
        }
    }

    private void hp(Context context) {
        if (context == null) {
            context = sz.getContext();
        }
        if (context == null) {
            return;
        }
        com.byazt.bi.jx.l(context);
    }

    private void hp(jx jxVar, com.byazt.xs.jx jxVar2) {
        com.byazt.xs.jx jxVarL;
        if (jxVar == null || jxVar2 == null) {
            return;
        }
        String strHp = jxVar.hp("id");
        int iHp = jxVar.hp("col", 4);
        int iHp2 = jxVar.hp("row", 3);
        int iHp3 = jxVar.hp("duration", 600);
        if (TextUtils.isEmpty(strHp) || (jxVarL = jxVar2.l(jxVar2)) == null) {
            return;
        }
        com.byazt.xs.jx jxVarJ = jxVarL.j(strHp);
        if (jxVarJ instanceof com.byazt.tz.hp) {
            ((com.byazt.tz.hp) jxVarJ).hp(iHp, iHp2, iHp3);
        }
    }

    private void hp(jx jxVar, com.byazt.xs.jx jxVar2, mp mpVar) {
        View viewQ;
        x xVarHp;
        if (jxVar == null || jxVar2 == null) {
            return;
        }
        String strHp = jxVar.hp(com.umeng.ccg.a.f49756j);
        String strHp2 = jxVar.hp("ugen_id");
        String strHp3 = jxVar.hp("ugen_md5");
        String strHp4 = jxVar.hp("ugen_url");
        int iHp = jxVar.hp("displayAreaAndroid", 0);
        int iHp2 = jxVar.hp("render_sequence", 2);
        if (!TextUtils.equals("scene1", strHp) || !j.hp(iHp) || (viewQ = jxVar2.q()) == null || mpVar == null || (xVarHp = j.hp(strHp2, strHp3, strHp4, iHp, iHp2, 5)) == null || !xVarHp.jl()) {
            return;
        }
        new com.byazt.ib.w(mpVar, null, xVarHp).hp(viewQ);
    }

    private void hp(jx jxVar, mp mpVar, Context context) {
        if (jxVar == null || mpVar == null) {
            return;
        }
        new com.byazt.vv.hp(mpVar, context).hp(jxVar.hp("second_page_type", 0), mpVar.db());
    }

    private void hp(jx jxVar, mp mpVar) throws JSONException {
        if (jxVar == null || mpVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : jxVar.l().keySet()) {
                jSONObject.put(str, jxVar.hp(str));
            }
        } catch (JSONException unused) {
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put("material_meta", mpVar);
        HashMap map3 = new HashMap();
        map3.put("ugen_event_params", jSONObject);
        String strL = ky.l(mpVar);
        ky.wv();
        com.byazt.rj.jx.hp(mpVar, map, "ugen_view_visibility_tracker", map2, strL, map3, -1L);
    }
}
