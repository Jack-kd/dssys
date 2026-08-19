package com.byazt.gk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.ow.w;
import com.bytedance.keva.Keva;
import com.bytedance.keva.KevaBuilder;
import com.bytedance.keva.KevaMonitor;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 2020, 28})
/* loaded from: classes2.dex */
public class hp implements w {
    public Keva hp;

    /* renamed from: l, reason: collision with root package name */
    public static final Map<String, w> f20490l = new HashMap();
    public static volatile boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public static volatile boolean f20489j = true;

    private hp(String str, boolean z2, int i2) {
        if (i2 != 1) {
            l(str, z2);
        } else {
            hp(str, z2);
        }
    }

    public static w hp(Context context, String str, boolean z2, int i2) {
        if (!f20489j) {
            return null;
        }
        try {
            if (!jx) {
                jx = hp(context);
            }
            if (TextUtils.isEmpty(str)) {
                str = "tt_ad_sdk_keva";
            }
            if (!f20489j) {
                return null;
            }
            Map<String, w> map = f20490l;
            w hpVar = map.get(str);
            if (hpVar == null) {
                hpVar = new hp(str, z2, i2);
                if (f20489j) {
                    map.put(str, hpVar);
                }
            }
            if (f20489j) {
                return hpVar;
            }
            return null;
        } catch (Throwable unused) {
            f20489j = false;
            return null;
        }
    }

    private void l(String str, boolean z2) {
        if (z2) {
            this.hp = Keva.getRepoSync(str, 1);
        } else {
            this.hp = Keva.getRepoSync(str, 0);
        }
    }

    @Override // com.byazt.ow.w
    public void apply() {
    }

    @Override // com.byazt.ow.w
    public void applySync() {
    }

    @Override // com.byazt.ow.w
    public void clear() {
        this.hp.clear();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.hp.contains(str);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return null;
    }

    @Override // com.byazt.ow.w
    public int get(String str, int i2) {
        return getInt(str, i2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return this.hp.getAll();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        return this.hp.getBoolean(str, z2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        return this.hp.getFloat(str, f2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        return this.hp.getInt(str, i2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        return this.hp.getLong(str, j2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return this.hp.getString(str, str2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return this.hp.getStringSet(str, set);
    }

    @Override // com.byazt.ow.w
    public void put(String str, int i2) {
        this.hp.storeInt(str, i2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.ow.w
    public void remove(String str) {
        this.hp.erase(str);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.ow.w
    public long get(String str, long j2) {
        return getLong(str, j2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, long j2) {
        this.hp.storeLong(str, j2);
    }

    @Override // com.byazt.ow.w
    public float get(String str, float f2) {
        return getFloat(str, f2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, float f2) {
        this.hp.storeFloat(str, f2);
    }

    @Override // com.byazt.ow.w
    public boolean get(String str, boolean z2) {
        return getBoolean(str, z2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, boolean z2) {
        this.hp.storeBoolean(str, z2);
    }

    @Override // com.byazt.ow.w
    public String get(String str, String str2) {
        return getString(str, str2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, String str2) {
        this.hp.storeString(str, str2);
    }

    @Override // com.byazt.ow.w
    public Set<String> get(String str, Set<String> set) {
        return getStringSet(str, set);
    }

    @Override // com.byazt.ow.w
    public void put(String str, Set<String> set) {
        this.hp.getStringSet(str, set);
    }

    private static boolean hp(Context context) {
        if (context == null) {
            return false;
        }
        KevaBuilder kevaBuilder = KevaBuilder.getInstance();
        kevaBuilder.setMonitor(new KevaMonitor() { // from class: com.byazt.gk.hp.1
        });
        kevaBuilder.setContext(context);
        return true;
    }

    private void hp(String str, boolean z2) {
        if (z2) {
            this.hp = Keva.getRepo(str, 1);
        } else {
            this.hp = Keva.getRepo(str, 0);
        }
    }
}
