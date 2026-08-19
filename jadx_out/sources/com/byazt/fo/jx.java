package com.byazt.fo;

import android.R;
import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatViewInflater;
import com.byazt.ik.a;
import com.bytedance.pangle.ComponentManager;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.activity.IPluginActivity;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.pangle.transform.ZeusTransformUtils;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 49, 30})
/* loaded from: classes2.dex */
public class jx {
    /* JADX WARN: Multi-variable type inference failed */
    public static void hp(l lVar, Bundle bundle) {
        List<String> list;
        if (!Zeus.hasInit()) {
            a.w(ZeusLogger.TAG_INIT, "ProxyActivityUtils.onCreate finish. AppApplication == null.");
            lVar.zeusSuperOnCreate(null);
            lVar.finish();
            return;
        }
        Intent intent = lVar.getIntent();
        String pluginPkgName = lVar.getPluginPkgName();
        Plugin plugin = lVar.getPlugin();
        if (plugin == null) {
            a.w(ZeusLogger.TAG_INIT, "ProxyActivityUtils.onCreate finish. plugin == null");
            lVar.zeusSuperOnCreate(null);
            lVar.finish();
            return;
        }
        intent.setExtrasClassLoader(plugin.mClassLoader);
        IntentUtils.hp(intent);
        String stringExtra = intent.getStringExtra("targetPlugin");
        if (TextUtils.isEmpty(stringExtra) && (list = ComponentManager.stubActivity2TargetActivities.get(lVar.getClass().getName())) != null && list.size() == 1) {
            stringExtra = list.get(0);
            intent.putExtra("targetPlugin", stringExtra);
        }
        if (!plugin.isLoaded() || TextUtils.isEmpty(stringExtra)) {
            try {
                lVar.zeusSuperOnCreate(null);
                ZeusLogger.w(ZeusLogger.TAG_ACTIVITY, "Cant start pluginActivity, plugin load failed! pluginPkgName: " + pluginPkgName + " targetActivity: " + stringExtra);
                lVar.finish();
                return;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        ActivityInfo activityInfo = plugin.pluginActivities.get(stringExtra);
        if (activityInfo == null) {
            ZeusLogger.w(ZeusLogger.TAG_ACTIVITY, "Have you declared " + stringExtra + " in plugin's AndroidManifest.xml!");
            lVar.zeusSuperOnCreate(null);
            lVar.finish();
            hp(stringExtra, "activityInfo null", plugin);
            return;
        }
        try {
            IPluginActivity iPluginActivity = (IPluginActivity) plugin.mClassLoader.loadClass(stringExtra).newInstance();
            FieldUtils.writeField(iPluginActivity, "mApplication", lVar.getApplication());
            lVar.setTargetActivity(iPluginActivity);
            iPluginActivity.setPluginProxyActivity(lVar, plugin);
            lVar.zeusSuperSetTheme(activityInfo.theme);
            TypedArray typedArrayObtainStyledAttributes = ((Activity) lVar).getTheme().obtainStyledAttributes(new int[]{R.attr.windowIsTranslucent});
            if (typedArrayObtainStyledAttributes.getBoolean(typedArrayObtainStyledAttributes.getIndex(0), false)) {
                hp((Activity) lVar);
            }
            typedArrayObtainStyledAttributes.recycle();
            iPluginActivity.attachBaseContext(lVar.getBaseContext());
            try {
                int requestedOrientation = ((Activity) lVar).getRequestedOrientation();
                int i2 = activityInfo.screenOrientation;
                if (requestedOrientation != i2) {
                    ((Activity) lVar).setRequestedOrientation(i2);
                }
            } catch (IllegalStateException unused) {
            }
            iPluginActivity.onCreate(bundle);
        } catch (Exception e3) {
            hp(stringExtra, Log.getStackTraceString(e3), plugin);
        }
    }

    private static void hp(String str, String str2, Plugin plugin) {
        try {
            com.byazt.qva.hp reporter = GlobalParam.getInstance().getReporter();
            if (reporter == null || plugin == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("t_act", str);
            jSONObject.putOpt("p_pkg", plugin.mPkgName);
            jSONObject.putOpt("p_vc", Integer.valueOf(plugin.getVersion()));
            jSONObject.putOpt("p_avc", Integer.valueOf(plugin.getApiVersionCode()));
            jSONObject.putOpt("msg", str2);
            reporter.hp(com.byazt.ll.l.gu, jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void hp(l lVar, Context context) {
        if (!Zeus.hasInit()) {
            a.w(ZeusLogger.TAG_INIT, "ProxyActivityUtils.attachBaseContext. AppApplication == null.");
            lVar.zeusSuperAttachBaseContext(context);
            return;
        }
        String pluginPkgName = lVar.getPluginPkgName();
        boolean zLoadPlugin = PluginManager.getInstance().loadPlugin(pluginPkgName);
        try {
            lVar.setPlugin(PluginManager.getInstance().getPlugin(pluginPkgName));
            if (zLoadPlugin) {
                lVar.zeusSuperAttachBaseContext(ZeusTransformUtils.wrapperContext(context, pluginPkgName));
                FieldUtils.writeField(lVar, "mResources", (Object) null);
            } else {
                lVar.zeusSuperAttachBaseContext(context);
            }
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void hp(Activity activity, View view) {
        Object field;
        if (view == null) {
            return;
        }
        try {
            Object field2 = FieldUtils.readField(view, "mListenerInfo");
            if (field2 != null && (field = FieldUtils.readField(field2, "mOnClickListener")) != null) {
                String name = field.getClass().getName();
                if (name.startsWith(AppCompatViewInflater.class.getName()) || name.startsWith(View.class.getName())) {
                    view.setOnClickListener(new hp(activity, view.getId(), (String) FieldUtils.readField(field, "mMethodName")));
                }
            }
        } catch (Exception e2) {
            ZeusLogger.errReport(ZeusLogger.TAG_ACTIVITY, "checkOnClickListener failed!".concat(String.valueOf(view)));
            a.hp(e2);
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i2 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i2 >= viewGroup.getChildCount()) {
                return;
            }
            hp(activity, viewGroup.getChildAt(i2));
            i2++;
        }
    }

    private static Class hp() {
        Class<?> cls = null;
        for (Class<?> cls2 : Activity.class.getDeclaredClasses()) {
            if (cls2.getSimpleName().contains("TranslucentConversionListener")) {
                cls = cls2;
            }
        }
        return cls;
    }

    private static void hp(Activity activity) {
        try {
            MethodUtils.getAccessibleMethod(Activity.class, "convertToTranslucent", hp(), ActivityOptions.class).invoke(activity, null, MethodUtils.getAccessibleMethod(Activity.class, "getActivityOptions", new Class[0]).invoke(activity, null));
        } catch (Throwable unused) {
        }
    }
}
