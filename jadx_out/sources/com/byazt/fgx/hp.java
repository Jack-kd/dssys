package com.byazt.fgx;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1762, 28})
/* loaded from: classes2.dex */
public class hp implements com.byazt.ow.w {

    /* renamed from: l, reason: collision with root package name */
    public static final Map<String, com.byazt.ow.w> f19735l = new ConcurrentHashMap();
    public String hp;

    private hp(String str) {
        this.hp = str;
    }

    public static com.byazt.ow.w hp(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_sdk_multi_sp";
        }
        Map<String, com.byazt.ow.w> map = f19735l;
        com.byazt.ow.w wVar = map.get(str);
        if (wVar != null) {
            return wVar;
        }
        hp hpVar = new hp(str);
        map.put(str, hpVar);
        return hpVar;
    }

    @Override // com.byazt.ow.w
    public void apply() {
    }

    @Override // com.byazt.ow.w
    public void applySync() {
    }

    @Override // com.byazt.ow.w
    public void clear() {
        l.hp(this.hp);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean contains(String str) {
        return l.hp(this.hp, str);
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
        return l.l(this.hp);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        return l.hp(this.hp, str, z2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        return l.hp(this.hp, str, f2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        return l.hp(this.hp, str, i2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        return l.hp(this.hp, str, j2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return l.l(this.hp, str, str2);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return l.l(this.hp, str, set);
    }

    @Override // com.byazt.ow.w
    public void put(String str, int i2) {
        l.hp(this.hp, str, Integer.valueOf(i2));
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.ow.w
    public void remove(String str) {
        l.l(this.hp, str);
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
        l.hp(this.hp, str, Long.valueOf(j2));
    }

    @Override // com.byazt.ow.w
    public float get(String str, float f2) {
        return getFloat(str, f2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, float f2) {
        l.hp(this.hp, str, Float.valueOf(f2));
    }

    @Override // com.byazt.ow.w
    public boolean get(String str, boolean z2) {
        return getBoolean(str, z2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, boolean z2) {
        l.hp(this.hp, str, Boolean.valueOf(z2));
    }

    @Override // com.byazt.ow.w
    public String get(String str, String str2) {
        return getString(str, str2);
    }

    @Override // com.byazt.ow.w
    public void put(String str, String str2) {
        l.hp(this.hp, str, str2);
    }

    @Override // com.byazt.ow.w
    public Set<String> get(String str, Set<String> set) {
        return getStringSet(str, set);
    }

    @Override // com.byazt.ow.w
    public void put(String str, Set<String> set) {
        l.hp(this.hp, str, set);
    }
}
