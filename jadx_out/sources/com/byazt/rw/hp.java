package com.byazt.rw;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.core.api.ATAdConst;
import com.byazt.kw.e;
import com.byazt.kw.k;
import com.bytedance.pangle.provider.ContentProviderManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1658, 28})
/* loaded from: classes3.dex */
public class hp {
    public JSONObject hp;

    public hp() {
        this.hp = new JSONObject();
    }

    public static hp hp(long j2, Context context, @Nullable Thread thread, @NonNull Throwable th) throws JSONException {
        if (j2 == 0) {
            j2 = System.currentTimeMillis();
        }
        hp hpVar = new hp();
        hpVar.hp("isJava", (Object) 1);
        hpVar.hp("event_type", "java_crash");
        hpVar.hp("timestamp", Long.valueOf(System.currentTimeMillis()));
        hpVar.hp("data", k.hp(th));
        hpVar.hp("isOOM", Boolean.valueOf(k.l(th)));
        hpVar.hp("crash_time", Long.valueOf(j2));
        hpVar.hp(ContentProviderManager.PLUGIN_PROCESS_NAME, com.byazt.kw.hp.j(context));
        if (!com.byazt.kw.hp.l(context)) {
            hpVar.hp("remote_process", (Object) 1);
        }
        com.byazt.kw.hp.hp(context, hpVar.hp());
        String name = thread == null ? null : thread.getName();
        if (name != null) {
            hpVar.hp("crash_thread_name", name);
        }
        hpVar.hp("all_thread_stacks", k.hp(name));
        return hpVar;
    }

    public hp jx(Map<? extends String, ? extends String> map) throws JSONException {
        if (map != null) {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                try {
                    jSONObject.put(str, map.get(str));
                } catch (JSONException unused) {
                }
            }
            hp("filters", jSONObject);
        }
        return this;
    }

    public hp l(Map<Integer, String> map) throws JSONException {
        if (map != null && map.size() > 0) {
            JSONObject jSONObject = new JSONObject();
            for (Integer num : map.keySet()) {
                try {
                    jSONObject.put(String.valueOf(num), map.get(num));
                } catch (JSONException e2) {
                    e.l(e2);
                }
            }
            try {
                this.hp.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.SDK_INFO, jSONObject);
            } catch (JSONException unused) {
            }
        }
        return this;
    }

    public hp(JSONObject jSONObject) {
        this.hp = jSONObject;
    }

    public hp l(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        hp("logcat", jSONArray);
        return this;
    }

    public JSONObject hp() {
        return this.hp;
    }

    public hp hp(l lVar) throws JSONException {
        hp("header", lVar.hp());
        return this;
    }

    public hp hp(long j2) {
        try {
            hp("start_time", Long.valueOf(j2));
            hp("app_start_time_readable", new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.getDefault()).format(new Date(j2)));
        } catch (Exception unused) {
        }
        return this;
    }

    public hp hp(@NonNull String str) throws JSONException {
        if (!TextUtils.isEmpty(str)) {
            hp("session_id", str);
        }
        return this;
    }

    public hp hp(com.byazt.hc.l lVar) throws JSONException {
        hp("activity_trace", lVar.hp());
        hp("running_tasks", lVar.l());
        return this;
    }

    public hp hp(Map<String, Integer> map) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        if (map == null) {
            this.hp.put("plugin_info", jSONArray);
            return this;
        }
        for (String str : map.keySet()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("package_name", str);
            jSONObject.put("version_code", map.get(str));
            jSONArray.put(jSONObject);
        }
        this.hp.put("plugin_info", jSONArray);
        return this;
    }

    public hp hp(int i2, String str) throws JSONException {
        try {
            this.hp.put("miniapp_id", i2);
            this.hp.put("miniapp_version", str);
        } catch (JSONException unused) {
        }
        return this;
    }

    public hp hp(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            hp("patch_info", jSONArray);
            return this;
        }
        hp("patch_info", jSONArray);
        return this;
    }

    public hp hp(JSONObject jSONObject) throws JSONException {
        hp("storage", jSONObject);
        return this;
    }

    public void hp(@NonNull String str, @Nullable Object obj) throws JSONException {
        try {
            this.hp.put(str, obj);
        } catch (Exception e2) {
            e.l(e2);
        }
    }
}
