package com.byazt.crk;

import android.content.SharedPreferences;
import androidx.core.app.NotificationCompat;
import com.byazt.pg.k;
import com.byazt.uid.s;
import com.sigmob.sdk.base.n;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import org.seamless.xhtml.XHTML;

@com.byazt.kj.hp(hp = {0, 1, 160, 30})
/* loaded from: classes2.dex */
public class jx implements com.byazt.ow.w {
    public static ThreadPoolExecutor hp = null;

    /* renamed from: l, reason: collision with root package name */
    public static int f18961l = 3;
    public long gu;

    /* renamed from: j, reason: collision with root package name */
    public final File f18964j;
    public final com.byazt.ke.l jl;
    public final File jx;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f18965k;

    /* renamed from: q, reason: collision with root package name */
    public long f18966q;

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f18967s;

    /* renamed from: w, reason: collision with root package name */
    public final Object f18968w = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f18962a = new ConcurrentHashMap();
    public Map<String, Object> eb = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final List<Runnable> f18963e = new ArrayList();
    public AtomicBoolean zy = new AtomicBoolean(false);

    @com.byazt.kj.hp(hp = {0, 1, 160, 219})
    public final class hp implements SharedPreferences.Editor {
        public hp() {
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            jx.this.apply();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            try {
                jx.jx(jx.this);
                jx.this.eb.clear();
            } catch (Exception unused) {
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return true;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z2) {
            jx.this.hp(str, (String) Boolean.valueOf(z2));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f2) {
            jx.this.hp(str, (String) Float.valueOf(f2));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i2) {
            jx.this.hp(str, (String) Integer.valueOf(i2));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j2) {
            jx.this.hp(str, (String) Long.valueOf(j2));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            jx.this.hp(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            jx.this.hp(str, (String) set);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            jx.this.remove(str);
            return this;
        }
    }

    public jx(File file, com.byazt.ke.hp hpVar, com.byazt.ke.l lVar, boolean z2) {
        this.f18967s = false;
        this.f18965k = z2;
        File file2 = new File(file.getParent(), file.getName() + ".prop");
        if (file2.exists() && file2.length() > 0) {
            hpVar = new com.byazt.crk.hp(null);
            file = file2;
        }
        this.jx = file;
        this.f18964j = new File(file.getPath() + ".bak");
        this.f18967s = false;
        hpVar = hpVar == null ? new com.byazt.crk.hp(null) : hpVar;
        if (lVar == null) {
            this.jl = new com.byazt.crk.hp(null);
        } else {
            this.jl = lVar;
        }
        hp(hpVar);
    }

    public static /* synthetic */ long jx(jx jxVar) {
        long j2 = jxVar.f18966q;
        jxVar.f18966q = 1 + j2;
        return j2;
    }

    @Override // com.byazt.ow.w
    public void apply() {
        if (!this.f18967s) {
            if (this.zy.compareAndSet(false, true)) {
                hp(new Runnable() { // from class: com.byazt.crk.jx.3
                    @Override // java.lang.Runnable
                    public void run() {
                        jx.this.zy.set(false);
                        jx.this.apply();
                    }
                });
            }
        } else if (this.gu != this.f18966q && this.zy.compareAndSet(false, true)) {
            jx().execute(new Runnable() { // from class: com.byazt.crk.jx.4
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    try {
                        Map<String, Object> mapW = jx.this.w();
                        if (mapW != null) {
                            jx.this.jl.hp(mapW, jx.this.jx);
                        }
                        jx.this.zy.set(false);
                    } catch (Exception e2) {
                        jx.this.hp("apply write error", (Throwable) e2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.ow.w
    public void applySync() throws JSONException {
        if (!this.f18967s) {
            if (this.zy.compareAndSet(false, true)) {
                hp(new Runnable() { // from class: com.byazt.crk.jx.5
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        jx.this.zy.set(false);
                        jx.this.applySync();
                    }
                });
            }
        } else if (this.zy.compareAndSet(false, true)) {
            try {
                Map<String, Object> mapW = w();
                if (mapW != null) {
                    this.jl.hp(mapW, this.jx);
                }
                this.zy.set(false);
            } catch (Exception e2) {
                hp("applySync write error", (Throwable) e2);
            }
        }
    }

    @Override // com.byazt.ow.w
    public void clear() {
        if (!this.f18967s) {
            hp(new Runnable() { // from class: com.byazt.crk.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    jx.this.f18962a.clear();
                    synchronized ("SharedPreferencesImpl") {
                        jx.this.eb.clear();
                        jx.jx(jx.this);
                    }
                }
            });
            return;
        }
        this.f18962a.clear();
        synchronized ("SharedPreferencesImpl") {
            this.eb.clear();
            this.f18966q++;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean contains(String str) {
        boolean zContainsKey;
        if (str == null) {
            str = "";
        }
        synchronized (this.f18968w) {
            l();
            zContainsKey = this.f18962a.containsKey(str);
        }
        return zContainsKey;
    }

    @Override // com.byazt.ow.w
    public int get(String str, int i2) {
        return getInt(str, i2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        Map<String, ?> mapJ;
        if (!this.f18965k) {
            return j();
        }
        synchronized (this.f18968w) {
            l();
            mapJ = j();
        }
        return mapJ;
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        boolean zHp;
        if (str == null) {
            str = "";
        }
        if (!this.f18965k) {
            return hp(str, z2);
        }
        synchronized (this.f18968w) {
            l();
            zHp = hp(str, z2);
        }
        return zHp;
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        float fHp;
        if (str == null) {
            str = "";
        }
        if (!this.f18965k) {
            return hp(str, f2);
        }
        synchronized (this.f18968w) {
            l();
            fHp = hp(str, f2);
        }
        return fHp;
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        int iHp;
        if (str == null) {
            str = "";
        }
        if (!this.f18965k) {
            return hp(str, i2);
        }
        synchronized (this.f18968w) {
            l();
            iHp = hp(str, i2);
        }
        return iHp;
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        long jHp;
        if (str == null) {
            str = "";
        }
        if (!this.f18965k) {
            return hp(str, j2);
        }
        synchronized (this.f18968w) {
            l();
            jHp = hp(str, j2);
        }
        return jHp;
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public String getString(String str, String str2) {
        String strHp;
        if (str == null) {
            str = "";
        }
        if (!this.f18965k) {
            return hp(str, str2);
        }
        synchronized (this.f18968w) {
            l();
            strHp = hp(str, str2);
        }
        return strHp;
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> setHp;
        if (str == null) {
            str = "";
        }
        if (!this.f18965k) {
            return hp(str, set);
        }
        synchronized (this.f18968w) {
            l();
            setHp = hp(str, set);
        }
        return setHp;
    }

    @Override // com.byazt.ow.w
    public void put(String str, int i2) {
        hp(str, (String) Integer.valueOf(i2));
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.ow.w
    public void remove(String str) {
        synchronized ("SharedPreferencesImpl") {
            this.eb.put(str, null);
            this.f18966q++;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    private Map<String, ?> j() {
        HashMap map = new HashMap(this.f18962a);
        map.putAll(this.eb);
        return map;
    }

    private static ThreadPoolExecutor jx() {
        ThreadPoolExecutor threadPoolExecutor = hp;
        if (threadPoolExecutor != null) {
            return threadPoolExecutor;
        }
        synchronized (jx.class) {
            try {
                ThreadPoolExecutor threadPoolExecutor2 = hp;
                if (threadPoolExecutor2 != null) {
                    return threadPoolExecutor2;
                }
                int i2 = f18961l;
                com.byazt.shx.j jVar = new com.byazt.shx.j(i2, i2, 1000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new s("SharedPreferencesImpl"));
                hp = jVar;
                return jVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.ke.hp hpVar) throws JSONException {
        Map<String, Object> mapHp;
        synchronized (this.f18968w) {
            try {
                if (this.f18967s) {
                    return;
                }
                if (this.f18964j.exists()) {
                    this.jx.delete();
                    this.f18964j.renameTo(this.jx);
                }
                try {
                    mapHp = hpVar.hp(this.jx);
                } catch (Throwable th) {
                    hp("loadFromDisk error", th);
                    mapHp = null;
                }
                synchronized (this.f18968w) {
                    try {
                        this.f18967s = true;
                        if (mapHp != null) {
                            for (Map.Entry<String, Object> entry : mapHp.entrySet()) {
                                Object value = entry.getValue();
                                if (value != null) {
                                    String key = entry.getKey();
                                    if (key == null) {
                                        key = "";
                                    }
                                    this.f18962a.put(key, value);
                                }
                            }
                        }
                        this.f18968w.notifyAll();
                    } catch (Throwable th2) {
                        this.f18968w.notifyAll();
                        throw th2;
                    } finally {
                    }
                }
                synchronized (this.f18963e) {
                    try {
                        Iterator<Runnable> it = this.f18963e.iterator();
                        while (it.hasNext()) {
                            it.next().run();
                        }
                        this.f18963e.clear();
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> w() {
        HashMap map;
        synchronized ("SharedPreferencesImpl") {
            map = new HashMap(this.eb);
            this.eb = new HashMap();
        }
        HashMap map2 = new HashMap(this.f18962a);
        if (!map.isEmpty() || !map2.isEmpty()) {
            int i2 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                Object obj = map2.get(str);
                if (value == null) {
                    if (obj != null) {
                        map2.remove(str);
                        i2++;
                    }
                } else if (!value.equals(obj)) {
                    map2.put(str, value);
                    i2++;
                }
            }
            if (i2 <= 0) {
                return null;
            }
        }
        return map2;
    }

    @Override // com.byazt.ow.w
    public long get(String str, long j2) {
        return getLong(str, j2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, long j2) {
        hp(str, (String) Long.valueOf(j2));
    }

    @Override // com.byazt.ow.w
    public float get(String str, float f2) {
        return getFloat(str, f2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, float f2) {
        hp(str, (String) Float.valueOf(f2));
    }

    @Override // com.byazt.ow.w
    public boolean get(String str, boolean z2) {
        return getBoolean(str, z2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, boolean z2) {
        hp(str, (String) Boolean.valueOf(z2));
    }

    private void hp(final com.byazt.ke.hp hpVar) {
        synchronized (this.f18968w) {
            this.f18967s = false;
        }
        jx().execute(new Runnable() { // from class: com.byazt.crk.jx.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                jx.this.l(hpVar);
            }
        });
    }

    @Override // com.byazt.ow.w
    public String get(String str, String str2) {
        return getString(str, str2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, String str2) {
        hp(str, str2);
    }

    @Override // com.byazt.ow.w
    public Set<String> get(String str, Set<String> set) {
        return getStringSet(str, set);
    }

    @Override // com.byazt.ow.w
    public void put(String str, Set<String> set) {
        hp(str, (String) set);
    }

    private String hp(String str, String str2) throws JSONException {
        try {
            Object obj = this.eb.get(str);
            if (obj == null) {
                obj = this.f18962a.get(str);
            }
            return obj != null ? String.valueOf(obj) : str2;
        } catch (Exception e2) {
            hp("getValue error key =".concat(String.valueOf(str)), (Throwable) e2);
            return str2;
        }
    }

    private Set<String> hp(String str, Set<String> set) throws JSONException {
        try {
            Set<String> set2 = (Set) this.eb.get(str);
            if (set2 == null) {
                set2 = (Set) this.f18962a.get(str);
            }
            return set2 != null ? set2 : set;
        } catch (Exception e2) {
            hp("getValue error key =".concat(String.valueOf(str)), (Throwable) e2);
            return set;
        }
    }

    private int hp(String str, int i2) throws JSONException {
        try {
            Object obj = this.eb.get(str);
            if (obj == null) {
                obj = this.f18962a.get(str);
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            if (obj instanceof Float) {
                return ((Float) obj).intValue();
            }
            return obj != null ? ((Integer) obj).intValue() : i2;
        } catch (Exception e2) {
            hp("getValue error key =".concat(String.valueOf(str)), (Throwable) e2);
            return i2;
        }
    }

    private long hp(String str, long j2) throws JSONException {
        try {
            Long l2 = (Long) this.eb.get(str);
            if (l2 == null) {
                l2 = (Long) this.f18962a.get(str);
            }
            return l2 != null ? l2.longValue() : j2;
        } catch (Exception e2) {
            hp("getValue error key =".concat(String.valueOf(str)), (Throwable) e2);
            return j2;
        }
    }

    private void l() throws InterruptedException {
        while (!this.f18967s) {
            try {
                this.f18968w.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    private float hp(String str, float f2) throws JSONException {
        try {
            Object obj = this.eb.get(str);
            if (obj == null) {
                obj = this.f18962a.get(str);
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).floatValue();
            }
            if (obj instanceof Float) {
                return ((Float) obj).floatValue();
            }
            return obj != null ? ((Float) obj).floatValue() : f2;
        } catch (Exception e2) {
            hp("getValue error key =".concat(String.valueOf(str)), (Throwable) e2);
            return f2;
        }
    }

    private boolean hp(String str, boolean z2) throws JSONException {
        try {
            Boolean bool = (Boolean) this.eb.get(str);
            if (bool == null) {
                bool = (Boolean) this.f18962a.get(str);
            }
            return bool != null ? bool.booleanValue() : z2;
        } catch (Exception e2) {
            hp("getValue error key =".concat(String.valueOf(str)), (Throwable) e2);
            return z2;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public hp edit() {
        synchronized (this.f18968w) {
            l();
        }
        return new hp();
    }

    private void hp(Runnable runnable) {
        synchronized (this.f18963e) {
            try {
                if (this.f18967s) {
                    runnable.run();
                } else {
                    this.f18963e.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void hp(String str, T t2) {
        if (str == null) {
            str = "";
        }
        synchronized ("SharedPreferencesImpl") {
            this.eb.put(str, t2);
            this.f18966q++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, Throwable th) throws JSONException {
        k kVar = (k) com.byazt.ym.j.getService(NotificationCompat.CATEGORY_EVENT);
        if (kVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(n.f36463z, this.jx.getAbsolutePath());
                jSONObject.put("msg", str);
                jSONObject.put(XHTML.ATTR.CLASS, "SharedPreferencesImpl");
            } catch (JSONException unused) {
            }
            kVar.onExceptionEvent("kv", jSONObject, th);
        }
    }
}
