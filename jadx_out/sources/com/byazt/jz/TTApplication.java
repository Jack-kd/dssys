package com.byazt.jz;

import android.app.Application;
import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.Keep;
import com.byazt.rz.PluginConstants;
import com.bytedance.pangle.ComponentManager;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 40, 1213})
/* loaded from: classes.dex */
public class TTApplication extends Application {

    @com.byazt.kj.hp(hp = {0, 1, 40, 784})
    public static final class hp {
        public static final String[] hp = {"com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity", "com.bytedance.msdk.api.activity.TTDelegateActivity", "com.bytedance.msdk.api.activity.TTTransparentActivity", "com.bytedance.msdk.core.admanager.reward.rewardagain.GMRewardAgainDialogActivity"};

        /* renamed from: l, reason: collision with root package name */
        public static final String[] f21797l = {"com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity", "com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity"};
        public static final String[] jx = {"com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity"};

        /* renamed from: j, reason: collision with root package name */
        public static final String[] f21796j = {"com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoLandscapeActivity", "com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoLandscapeActivity"};

        /* renamed from: w, reason: collision with root package name */
        public static final String[] f21798w = {"com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity", "com.ss.android.socialbase.appdownloader.view.DownloadHandleNotificationActivity", "com.ss.android.downloadlib.activity.TTDelegateActivity"};
    }

    private String hp(Map map, String str, String str2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? str2 : String.valueOf(obj);
    }

    @Keep
    public Function attach(Function function) {
        if (function != null) {
            s.u().hp((Function<SparseArray<Object>, Object>) function);
        }
        return o.instance();
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(@ForbidWrapParam final Context context) {
        Map map;
        super.attachBaseContext(context);
        Function<SparseArray<Object>, Object> functionY = s.u().y();
        if (functionY != null) {
            try {
                SparseArray<Object> sparseArray = new SparseArray<>();
                sparseArray.put(-99999987, 15);
                map = (Map) functionY.apply(sparseArray);
            } catch (Exception e2) {
                com.byazt.lf.k.hp().hp("init", e2);
            }
        } else {
            map = null;
        }
        ComponentManager.registerActivity("com.byted.pangle", hp(map, "STUB_STANDARD_ACTIVITY_T", PluginConstants.STUB_STANDARD_ACTIVITY_T), hp.hp);
        ComponentManager.registerActivity("com.byted.pangle", hp(map, "STUB_STANDARD_PORTRAIT_ACTIVITY_T", PluginConstants.STUB_STANDARD_PORTRAIT_ACTIVITY_T), hp.f21797l);
        ComponentManager.registerActivity("com.byted.pangle", hp(map, "STUB_STANDARD_ACTIVITY", PluginConstants.STUB_STANDARD_ACTIVITY), hp.jx);
        ComponentManager.registerActivity("com.byted.pangle", hp(map, "STUB_STANDARD_LANDSCAPE_ACTIVITY", PluginConstants.STUB_STANDARD_LANDSCAPE_ACTIVITY), hp.f21796j);
        ComponentManager.registerActivity("com.byted.pangle", hp(map, "STUB_SINGLE_TASK_ACTIVITY_T", PluginConstants.STUB_SINGLE_TASK_ACTIVITY_T), hp.f21798w);
        com.byazt.nnr.hp.hp();
        com.byazt.uid.w.l(new com.byazt.uid.eb("init_init") { // from class: com.byazt.jz.TTApplication.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.uid.q.f26242l.jl();
                com.byazt.ymw.e.hp();
                String strL = com.byazt.ymw.sz.l(context);
                if (strL == null || !strL.endsWith(":downloader")) {
                    return;
                }
                int iJx = com.byazt.dnb.zy.jx("com.byted.pangle", 101);
                if (iJx > 0) {
                    d.f21856j = iJx;
                }
                com.byazt.ff.q.j();
            }
        });
    }

    @Keep
    public Function initMainService(Function function) {
        com.byazt.ym.j jVar = com.byazt.ym.j.getInstance();
        jVar.setListener(com.byazt.ym.e.hp);
        if (function == null) {
            return jVar;
        }
        jVar.apply(function);
        return null;
    }
}
