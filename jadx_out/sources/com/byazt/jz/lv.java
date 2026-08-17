package com.byazt.jz;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.byazt.nc.hp;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT})
/* loaded from: classes.dex */
public class lv {
    public static boolean hp(mp mpVar, String str, boolean z2) {
        if (mpVar == null) {
            return false;
        }
        String strS = mpVar.s();
        if (TextUtils.isEmpty(strS)) {
            return false;
        }
        return hp(strS, mpVar, str, z2);
    }

    public static boolean hp(String str, mp mpVar, String str2, boolean z2) {
        return hp(sz.getContext(), str, mpVar, ky.j(str2), str2, z2);
    }

    public static boolean hp(Context context, String str, mp mpVar, String str2, boolean z2) {
        return hp(context, str, mpVar, ky.j(str2), str2, z2);
    }

    public static boolean hp(Context context, String str, mp mpVar, int i2, String str2, boolean z2) {
        try {
            Intent intentHp = hp(context, str, mpVar, i2, null, str2, false);
            intentHp.putExtra("web_dl_factors", z2);
            return com.byazt.ymw.l.hp(context, intentHp, null);
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean hp(Object obj) {
        if (obj == null || !(obj instanceof hp.InterfaceC0317hp)) {
            return false;
        }
        try {
            return ((hp.InterfaceC0317hp) obj).getHasUseCustomizeVideo();
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Intent hp(Context context, String str, mp mpVar, int i2, Object obj, String str2, boolean z2) throws JSONException {
        Class cls;
        boolean z3 = false;
        if (com.byazt.xci.ec.w(mpVar)) {
            cls = TTSevenScreenWebPageActivity.class;
        } else if (com.byazt.xci.ec.a(mpVar) && mpVar != null && !mpVar.lv()) {
            cls = TTVideoWebPageActivity.class;
        } else if (com.byazt.la.e.a(mpVar)) {
            cls = TTNativePageActivity.class;
        } else if ((obj instanceof com.byazt.qt.q) || !mp.jx(mpVar) || hp(obj) || !ky.s(mpVar) || (mpVar != null && mpVar.lv())) {
            cls = TTWebPageActivity.class;
        } else {
            z3 = true;
            cls = TTVideoWebPageActivity.class;
        }
        Intent intent = new Intent(context, (Class<?>) cls);
        if (z3) {
            hp(context, mpVar, obj, z2, intent);
        }
        hp(context, str, mpVar, i2, str2, intent);
        return intent;
    }

    private static void hp(Context context, mp mpVar, Object obj, boolean z2, Intent intent) throws JSONException {
        int i2;
        if (obj != null) {
            videoModel = obj instanceof hp.InterfaceC0317hp ? ((hp.InterfaceC0317hp) obj).getVideoModel() : null;
            if (videoModel != null) {
                intent.putExtra("multi_process_data", videoModel.hp().toString());
            }
        }
        if ((obj instanceof com.byazt.qk.l) && (videoModel = ((com.byazt.qk.l) obj).getVideoModel()) != null) {
            intent.putExtra("multi_process_data", videoModel.hp().toString());
        }
        if (videoModel != null) {
            intent.putExtra("video_is_auto_play", videoModel.f23531j);
            videoModel.hp();
        }
        if (videoModel != null || z2) {
            try {
                if (videoModel != null) {
                    i2 = (int) ((videoModel.eb / videoModel.f23534w) * 100.0f);
                } else {
                    com.byazt.nc.hp hpVar = new com.byazt.nc.hp();
                    hpVar.eb = 100L;
                    hpVar.hp = true;
                    hpVar.f23531j = ky.di(mpVar);
                    intent.putExtra("multi_process_data", hpVar.hp().toString());
                    i2 = 100;
                }
                if (mpVar.og() == 0) {
                    intent.setComponent(new ComponentName(context, (Class<?>) TTVideoScrollWebPageActivity.class));
                } else {
                    if (mpVar.og() <= 0 || i2 <= mpVar.og() || !ky.di(mpVar)) {
                        return;
                    }
                    intent.setComponent(new ComponentName(context, (Class<?>) TTVideoScrollWebPageActivity.class));
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static void hp(Context context, String str, mp mpVar, int i2, String str2, Intent intent) {
        if (!new com.byazt.zbc.jx(context, mpVar).j(false)) {
            mpVar.jx(true);
        }
        intent.putExtra("url", str);
        intent.putExtra("gecko_id", mpVar.jx());
        intent.putExtra(g.a.f3271h, mpVar.v_());
        intent.putExtra("sdk_version", d.f21856j);
        intent.putExtra("ad_id", mpVar.j());
        intent.putExtra("log_extra", mpVar.w_());
        intent.putExtra(g.a.f3279p, mpVar.nq() == null ? null : mpVar.nq().hp());
        intent.putExtra("event_tag", str2);
        intent.putExtra("landing_page_source", i2);
        intent.putExtra("is_outer_click", true);
        intent.putExtra("get_phone_num_status", mpVar.eb());
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        ky.hp(intent, mpVar);
    }

    public static boolean hp(Context context, mp mpVar, int i2, String str, String str2) {
        try {
            Intent intent = new Intent(context, (Class<?>) TTNativePageActivity.class);
            intent.putExtra("is_replace_dialog", true);
            hp(context, (String) null, mpVar, i2, str, intent);
            if (mp.jx(mpVar) && !TextUtils.isEmpty(str2)) {
                intent.putExtra("multi_process_data", str2);
            }
            return com.byazt.ymw.l.hp(context, intent, null);
        } catch (Throwable unused) {
            return false;
        }
    }
}
