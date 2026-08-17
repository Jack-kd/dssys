package com.byazt.gjx;

import android.app.Activity;
import android.app.Application;
import android.util.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.byazt.pu.TTDownloadField;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 737, 30})
/* loaded from: classes2.dex */
public class jx {
    public static volatile jx hp;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList<String> f20483l = new ArrayList<>();
    public final AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public long f20482j = System.currentTimeMillis();

    /* renamed from: w, reason: collision with root package name */
    public long f20486w = 0;

    /* renamed from: a, reason: collision with root package name */
    public long f20480a = 0;
    public String eb = "";

    /* renamed from: s, reason: collision with root package name */
    public String f20485s = "";

    /* renamed from: q, reason: collision with root package name */
    public String f20484q = "";

    /* renamed from: e, reason: collision with root package name */
    public boolean f20481e = false;
    public boolean gu = false;

    public static jx hp(Application application) {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        jx jxVar = new jx();
                        hp = jxVar;
                        jxVar.f20481e = e.hp(application);
                        hp.gu = e.hp(application.getApplicationContext(), "android.permission.SYSTEM_ALERT_WINDOW") == 0;
                        hp.hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void l(@ForbidWrapParam Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.f20483l.contains(localClassName)) {
            this.f20483l.remove(localClassName);
        }
        if (this.f20483l.size() == 0) {
            this.f20482j = System.currentTimeMillis();
            this.jx.set(true);
            this.f20485s = localClassName;
        }
    }

    public void hp(@ForbidWrapParam Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.f20483l.size() == 0) {
            this.eb = localClassName;
            this.f20486w = System.currentTimeMillis();
            this.f20480a = System.currentTimeMillis() - this.f20482j;
            this.jx.set(false);
        }
        if (!this.f20483l.contains(localClassName)) {
            this.f20483l.add(localClassName);
        }
        this.f20484q = localClassName;
    }

    private void hp() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int size;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
            boolean z2 = true;
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            ArrayMap arrayMap = (ArrayMap) declaredField.get(objInvoke);
            if (arrayMap != null && (size = arrayMap.size()) > 0) {
                Class<?> cls2 = Class.forName("android.app.ActivityThread$ActivityClientRecord");
                Field declaredField2 = cls2.getDeclaredField("stopped");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                declaredField3.setAccessible(true);
                for (int i2 = 0; i2 < size; i2++) {
                    Object objValueAt = arrayMap.valueAt(i2);
                    if (!((Boolean) declaredField2.get(objValueAt)).booleanValue()) {
                        String localClassName = ((Activity) declaredField3.get(objValueAt)).getLocalClassName();
                        if (!this.f20483l.contains(localClassName)) {
                            this.f20483l.add(localClassName);
                        }
                    }
                }
                AtomicBoolean atomicBoolean = this.jx;
                if (this.f20483l.size() > 0) {
                    z2 = false;
                }
                atomicBoolean.set(z2);
            }
        } catch (Exception unused) {
        }
    }

    public String hp(String str, long j2, int i2, boolean z2) {
        String string;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = jCurrentTimeMillis - this.f20486w;
        long j4 = jCurrentTimeMillis - j2;
        int i3 = j4 < 500 ? 1 : 0;
        if (this.jx.get() && this.gu) {
            i3 |= 2;
        }
        if (!this.jx.get() && this.f20480a >= 5000 && j3 < 1000) {
            i3 = this.f20485s.equals(this.f20484q) ? i3 | 4 : i3 | 8;
        }
        try {
            string = new JSONObject().put("rst", i3).put("bakdur", this.f20480a).put("popt", j3).put("uct", j4).put("isbak", this.jx).put("alert", this.gu).put("rit", i2).put("tag", str).put(NotificationCompat.CATEGORY_SYSTEM, this.f20481e).put("size", this.f20483l.size()).put("mutipro", z2).toString();
        } catch (JSONException unused) {
            string = "";
        }
        this.eb = "";
        this.f20480a = 0L;
        this.f20486w = 0L;
        this.f20482j = System.currentTimeMillis();
        return string;
    }
}
