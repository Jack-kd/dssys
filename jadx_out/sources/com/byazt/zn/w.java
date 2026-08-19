package com.byazt.zn;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.byazt.jdb.hp;
import com.byazt.jz.k;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static final Map<String, hp> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.jz.k f28565l;

    public interface hp {
        void hp();

        void jx();

        void l();
    }

    public static void j(mp mpVar, Context context, String str) {
        int iV = com.byazt.xci.sz.v(mpVar);
        if (mpVar == null || context == null) {
            return;
        }
        if (mpVar.q() == 4 || iV != 0) {
            com.byazt.fy.hp hpVarHp = com.byazt.ff.s.hp(context, mpVar, str);
            if (hpVarHp != null) {
                hpVarHp.s().hp(false);
            }
            hpVarHp.hp(mpVar, false);
        }
    }

    public static void jx(final mp mpVar, String str, final Context context, final String str2) {
        if (mpVar == null || context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = mpVar.mt();
        }
        hp(context, mpVar.j(), str, new hp() { // from class: com.byazt.zn.w.5
            @Override // com.byazt.zn.w.hp
            public void hp() {
                w.j(mpVar, context, str2);
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
            }
        });
    }

    public static hp w(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return hp.remove(str);
    }

    public static void hp(Context context, String str, String str2, String str3, hp hpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        hp(str, hpVar);
        TTDelegateActivity.hp(context, str, str2, str3);
    }

    public static void l(final mp mpVar, String str, final Context context, final String str2) {
        if (mpVar == null || context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = mpVar.mt();
        }
        hp(context, mpVar.j(), new hp() { // from class: com.byazt.zn.w.4
            @Override // com.byazt.zn.w.hp
            public void hp() {
                w.j(mpVar, context, str2);
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
            }
        }, str);
    }

    public static void hp(final Context context, final String str, final String str2, final String str3, final hp hpVar, final com.byazt.dy.eb ebVar, final mp mpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
            return;
        }
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.zn.w.1
            @Override // java.lang.Runnable
            public void run() {
                boolean zHp = com.byazt.jz.s.u().hp(true);
                if (!com.byazt.ton.l.hp()) {
                    if (w.hp.containsKey(str)) {
                        return;
                    }
                    if (!ky.j() && !zHp) {
                        return;
                    }
                }
                w.hp(str, hpVar);
                TTDelegateActivity.hp(context, str, str2, str3, ebVar, mpVar);
            }
        });
    }

    public static void jx(mp mpVar, Context context, String str) {
        jx(mpVar, null, context, str);
    }

    public static void j(String str) {
        hp(str, 3);
    }

    public static void jx(String str) {
        hp(str, 2);
    }

    public static void l(mp mpVar, Context context, String str) {
        l(mpVar, (String) null, context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.jz.k jx() {
        if (f28565l == null) {
            f28565l = k.hp.hp(com.byazt.pjz.hp.hp(com.byazt.jz.sz.getContext()).hp(2));
        }
        return f28565l;
    }

    public static void l(Context context, String str, String str2, hp hpVar) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        hp(str2, hpVar);
        TTDelegateActivity.jx(context, str2, str);
    }

    public static void hp(final Context context, final String str, final String str2, final String str3, final hp hpVar, final mp mpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
            return;
        }
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.zn.w.2
            @Override // java.lang.Runnable
            public void run() {
                boolean zHp = com.byazt.jz.s.u().hp(true);
                if (!com.byazt.ton.l.hp()) {
                    if (w.hp.containsKey(str)) {
                        return;
                    }
                    if (!ky.j() && !zHp) {
                        return;
                    }
                }
                w.hp(str, hpVar);
                TTDelegateActivity.hp(context, str, str2, str3, mpVar);
            }
        });
    }

    public static void l(String str) {
        hp(str, 1);
    }

    public static void hp(String str) {
        Map<String, hp> map = hp;
        if (map != null) {
            map.remove(str);
        }
    }

    private static void hp(Context context, String str, hp hpVar, String str2, mp mpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        hp(str, hpVar);
        TTDelegateActivity.hp(context, str, str2, mpVar);
    }

    public static void hp(final mp mpVar, String str, final Context context, final String str2) {
        if (mpVar == null || context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = mpVar.mt();
        }
        hp(context, mpVar.j(), new hp() { // from class: com.byazt.zn.w.3
            @Override // com.byazt.zn.w.hp
            public void hp() {
                w.j(mpVar, context, str2);
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
            }
        }, str, mpVar);
    }

    public static void hp(mp mpVar, Context context, String str) {
        hp(mpVar, (String) null, context, str);
    }

    public static void hp(Context context, String str, hp hpVar, String str2) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        hp(str, hpVar);
        TTDelegateActivity.l(context, str, str2);
    }

    public static void hp(Context context, String str, String str2, hp hpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        hp(str, hpVar);
        TTDelegateActivity.hp(context, str, str2);
    }

    public static void hp(Context context, mp mpVar, String str) {
        hp(context, (String) null, mpVar, str);
    }

    public static void hp(final Context context, String str, final mp mpVar, final String str2) {
        if (mpVar == null) {
            return;
        }
        String strJ = mpVar.j();
        if (TextUtils.isEmpty(strJ)) {
            return;
        }
        hp(strJ, new hp() { // from class: com.byazt.zn.w.6
            @Override // com.byazt.zn.w.hp
            public void hp() {
                w.j(mpVar, context, str2);
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
            }
        });
        com.byazt.xci.a aVarVv = mpVar.vv();
        if (aVarVv == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = aVarVv.q();
        }
        TTDelegateActivity.jx(context, strJ, str);
    }

    public static void hp(Context context, String str) {
        TTDelegateActivity.hp(context, str);
        com.byazt.lf.k.hp().hp(str);
    }

    public static void hp(Context context, String str, String str2, String str3, String str4, String str5, hp hpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        hp(str, hpVar);
        TTDelegateActivity.hp(context, str, str2, str3, str4, str5);
    }

    public static void hp(Context context, String str, boolean z2, hp hpVar) {
        if (z2) {
            TTDelegateActivity.hp(context, str, z2);
        } else {
            if (TextUtils.isEmpty(str) || hpVar == null) {
                return;
            }
            hp(str, hpVar);
            TTDelegateActivity.hp(context, str, z2);
        }
    }

    public static void hp(final String str, final hp hpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        if (com.byazt.ton.l.hp()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("addDialogListener") { // from class: com.byazt.zn.w.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        w.jx().hp(str, new com.byazt.gd.hp(hpVar));
                    } catch (Throwable unused) {
                    }
                }
            }, 5);
        } else {
            hp.put(str, hpVar);
        }
    }

    private static void hp(final String str, final int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.byazt.ton.l.hp()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("doHandler") { // from class: com.byazt.zn.w.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        w.jx().hp(str, i2);
                    } catch (Throwable unused) {
                    }
                }
            }, 5);
            return;
        }
        hp hpVarW = w(str);
        if (hpVarW == null) {
            return;
        }
        if (i2 == 1) {
            hpVarW.hp();
            return;
        }
        if (i2 == 2) {
            hpVarW.l();
        } else if (i2 != 3) {
            hpVarW.jx();
        } else {
            hpVarW.jx();
        }
    }

    public static void hp(Context context, String str, mp mpVar) {
        TTDelegateActivity.hp(context, str, mpVar);
    }

    public static void hp(Context context, final mp mpVar) {
        if (mpVar == null) {
            return;
        }
        new hp.C0281hp().w(mpVar.j()).hp("pangle_logo").l("open_policy").j(mpVar.w_()).hp(new com.byazt.dhy.hp() { // from class: com.byazt.zn.w.9
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ad_info", mpVar.hb());
                jSONObject2.put("ad_slot_type", ky.jl(mpVar));
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
        TTDelegateActivity.l(context, mpVar.hb());
    }

    public static boolean hp(mp mpVar) {
        if (mpVar == null || mpVar.x_() || mpVar.u_() == null || com.byazt.xci.sz.zy(mpVar) == 1 || mpVar.q() != 4 || com.byazt.xci.sz.jl(mpVar) == 0) {
            return false;
        }
        int iHd = mpVar.hd();
        return iHd == 4 || iHd == 5;
    }
}
