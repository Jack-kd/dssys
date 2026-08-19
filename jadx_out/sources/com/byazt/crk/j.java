package com.byazt.crk;

import android.content.SharedPreferences;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 160, 38})
/* loaded from: classes2.dex */
public class j implements com.byazt.ow.w {
    public SharedPreferences hp;

    public j(SharedPreferences sharedPreferences) {
        this.hp = sharedPreferences;
    }

    @Override // com.byazt.ow.w
    public void apply() {
    }

    @Override // com.byazt.ow.w
    public void applySync() {
    }

    @Override // com.byazt.ow.w
    public void clear() {
        try {
            this.hp.edit().clear().apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.hp.contains(str);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this.hp.edit();
    }

    @Override // com.byazt.ow.w
    public int get(String str, int i2) {
        try {
            return this.hp.getInt(str, i2);
        } catch (Exception unused) {
            return i2;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        try {
            return this.hp.getAll();
        } catch (Exception unused) {
            return Collections.EMPTY_MAP;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        try {
            return this.hp.getBoolean(str, z2);
        } catch (Exception unused) {
            return z2;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        try {
            return this.hp.getFloat(str, f2);
        } catch (Exception unused) {
            return f2;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        try {
            return this.hp.getInt(str, i2);
        } catch (Exception unused) {
            return i2;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        try {
            return this.hp.getLong(str, j2);
        } catch (Exception unused) {
            return j2;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public String getString(String str, String str2) {
        try {
            return this.hp.getString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        try {
            return this.hp.getStringSet(str, set);
        } catch (Exception unused) {
            return set;
        }
    }

    @Override // com.byazt.ow.w
    public void put(String str, int i2) {
        try {
            this.hp.edit().putInt(str, i2).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.hp.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.ow.w
    public void remove(String str) {
        try {
            this.hp.edit().remove(str).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.hp.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.ow.w
    public long get(String str, long j2) {
        try {
            return this.hp.getLong(str, j2);
        } catch (Exception unused) {
            return j2;
        }
    }

    @Override // com.byazt.ow.w
    public void put(String str, long j2) {
        try {
            this.hp.edit().putLong(str, j2).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ow.w
    public float get(String str, float f2) {
        try {
            return this.hp.getFloat(str, f2);
        } catch (Exception unused) {
            return f2;
        }
    }

    @Override // com.byazt.ow.w
    public void put(String str, float f2) {
        try {
            this.hp.edit().putFloat(str, f2).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ow.w
    public boolean get(String str, boolean z2) {
        try {
            return this.hp.getBoolean(str, z2);
        } catch (Exception unused) {
            return z2;
        }
    }

    @Override // com.byazt.ow.w
    public void put(String str, boolean z2) {
        try {
            this.hp.edit().putBoolean(str, z2).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ow.w
    public String get(String str, String str2) {
        try {
            return this.hp.getString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    @Override // com.byazt.ow.w
    public void put(String str, String str2) {
        try {
            this.hp.edit().putString(str, str2).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ow.w
    public Set<String> get(String str, Set<String> set) {
        try {
            return this.hp.getStringSet(str, set);
        } catch (Exception unused) {
            return set;
        }
    }

    @Override // com.byazt.ow.w
    public void put(String str, Set<String> set) {
        try {
            this.hp.edit().putStringSet(str, set).apply();
        } catch (Throwable unused) {
        }
    }
}
