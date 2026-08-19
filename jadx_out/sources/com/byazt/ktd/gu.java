package com.byazt.ktd;

import android.app.Activity;
import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.pangle.wrapper.PluginActivityWrapper;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes.dex */
public final class gu {
    public static Object hp(Context context) {
        if (context != null) {
            try {
                Object obj = context.getClass() == PluginActivityWrapper.class ? ((PluginActivityWrapper) context).mOriginActivity : context.getClass() == PluginApplicationWrapper.class ? ((PluginApplicationWrapper) context).mOriginApplication : null;
                if (obj != null) {
                    return obj;
                }
            } catch (Throwable unused) {
            }
        }
        return context;
    }

    public static void hp(JSONObject jSONObject, Activity activity) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (activity == null) {
                com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
                WeakReference<Activity> weakReferenceHp = hpVarJx != null ? hpVarJx.hp() : null;
                Activity activity2 = weakReferenceHp != null ? weakReferenceHp.get() : null;
                if (activity2 == null) {
                    return;
                }
                hp(activity2, jSONObject);
                return;
            }
            hp(activity, jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void hp(Activity activity, JSONObject jSONObject) {
        try {
            hp(activity);
            String strA = j.a();
            if (strA == null || strA.isEmpty()) {
                strA = " ";
            }
            jSONObject.put("t_name", strA);
            CharSequence title = activity.getTitle();
            jSONObject.put("top_page_title", title != null ? title.toString() : " ");
            jSONObject.put("has_window_focus", activity.hasWindowFocus());
            jSONObject.put("top_page_name", activity.getClass().getName());
        } catch (Throwable unused) {
        }
    }
}
