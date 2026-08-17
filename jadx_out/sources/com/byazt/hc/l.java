package com.byazt.hc;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.byazt.pu.TTDownloadField;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1439, 34})
/* loaded from: classes2.dex */
public class l {
    public static com.byazt.aj.j xs;

    /* renamed from: e, reason: collision with root package name */
    public long f20662e;
    public String eb;
    public String gu;
    public Application hp;
    public long jl;

    /* renamed from: k, reason: collision with root package name */
    public long f20664k;

    /* renamed from: l, reason: collision with root package name */
    public Context f20665l;

    /* renamed from: q, reason: collision with root package name */
    public String f20666q;

    /* renamed from: s, reason: collision with root package name */
    public long f20667s;

    /* renamed from: u, reason: collision with root package name */
    public long f20668u;

    /* renamed from: v, reason: collision with root package name */
    public String f20669v;
    public String zy;
    public List<String> jx = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public List<Long> f20663j = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public List<String> f20670w = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public List<Long> f20661a = new ArrayList();
    public int vv = 0;
    public boolean ec = false;
    public final Application.ActivityLifecycleCallbacks sz = new Application.ActivityLifecycleCallbacks() { // from class: com.byazt.hc.l.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            l.this.eb = l.xs == null ? activity.getClass().getName() : l.xs.hp(activity);
            l.this.f20667s = System.currentTimeMillis();
            l.this.jx.add(l.this.eb);
            l.this.f20663j.add(Long.valueOf(l.this.f20667s));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            String name = l.xs == null ? activity.getClass().getName() : l.xs.hp(activity);
            int iIndexOf = l.this.jx.indexOf(name);
            if (iIndexOf >= 0 && iIndexOf < l.this.jx.size()) {
                l.this.jx.remove(iIndexOf);
                l.this.f20663j.remove(iIndexOf);
            }
            l.this.f20670w.add(name);
            l.this.f20661a.add(Long.valueOf(System.currentTimeMillis()));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            l.this.zy = l.xs == null ? activity.getClass().getName() : l.xs.hp(activity);
            l.this.f20664k = System.currentTimeMillis();
            l.a(l.this);
            if (l.this.vv <= 0) {
                l.this.ec = false;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            l.this.gu = l.xs == null ? activity.getClass().getName() : l.xs.hp(activity);
            l.this.jl = System.currentTimeMillis();
            l.this.ec = true;
            l.w(l.this);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            l.this.f20666q = l.xs == null ? activity.getClass().getName() : l.xs.hp(activity);
            l.this.f20662e = System.currentTimeMillis();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            l.this.f20669v = l.xs == null ? activity.getClass().getName() : l.xs.hp(activity);
            l.this.f20668u = System.currentTimeMillis();
        }
    };

    public l(@NonNull Context context) {
        this.f20665l = context;
        if (context instanceof Application) {
            this.hp = (Application) context;
        }
        w();
    }

    public static /* synthetic */ int a(l lVar) {
        int i2 = lVar.vv;
        lVar.vv = i2 - 1;
        return i2;
    }

    public static /* synthetic */ int w(l lVar) {
        int i2 = lVar.vv;
        lVar.vv = i2 + 1;
        return i2;
    }

    private JSONArray a() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.jx;
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < this.jx.size(); i2++) {
                try {
                    jSONArray.put(hp(this.jx.get(i2), this.f20663j.get(i2).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private JSONArray eb() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f20670w;
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < this.f20670w.size(); i2++) {
                try {
                    jSONArray.put(hp(this.f20670w.get(i2), this.f20661a.get(i2).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private void w() {
        Application application = this.hp;
        if (application != null) {
            application.registerActivityLifecycleCallbacks(this.sz);
        }
    }

    public boolean jx() {
        return this.ec;
    }

    public JSONArray l() throws JSONException {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        JSONArray jSONArray = new JSONArray();
        try {
            ActivityManager activityManager = (ActivityManager) this.f20665l.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(5)) != null) {
                for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
                    if (runningTaskInfo != null && runningTaskInfo.baseActivity != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("id", runningTaskInfo.id);
                            jSONObject.put("package_name", runningTaskInfo.baseActivity.getPackageName());
                            jSONObject.put("description", runningTaskInfo.description);
                            jSONObject.put("number_of_activities", runningTaskInfo.numActivities);
                            jSONObject.put("number_of_running_activities", runningTaskInfo.numRunning);
                            jSONObject.put("topActivity", runningTaskInfo.topActivity.toString());
                            jSONObject.put("baseActivity", runningTaskInfo.baseActivity.toString());
                            jSONArray.put(jSONObject);
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return jSONArray;
    }

    private JSONObject hp(String str, long j2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put("time", j2);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("last_create_activity", hp(this.eb, this.f20667s));
            jSONObject.put("last_start_activity", hp(this.f20666q, this.f20662e));
            jSONObject.put("last_resume_activity", hp(this.gu, this.jl));
            jSONObject.put("last_pause_activity", hp(this.zy, this.f20664k));
            jSONObject.put("last_stop_activity", hp(this.f20669v, this.f20668u));
            jSONObject.put("alive_activities", a());
            jSONObject.put("finish_activities", eb());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
