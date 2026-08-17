package com.byazt.ry;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 256, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.ctq.jx {
    public final com.byazt.ow.w hp;

    public hp(com.byazt.ow.w wVar) {
        this.hp = wVar;
    }

    @Override // com.byazt.ctq.hp
    public void apply() {
        this.hp.apply();
    }

    @Override // com.byazt.ctq.hp
    public void applySync() {
        this.hp.applySync();
    }

    @Override // com.byazt.ctq.hp
    public void clear() {
        this.hp.clear();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.hp.contains(str);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this.hp.edit();
    }

    @Override // com.byazt.ctq.hp
    public int get(String str, int i2) {
        return this.hp.getInt(str, i2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return this.hp.getAll();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        return this.hp.getBoolean(str, z2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        return this.hp.getFloat(str, f2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        return this.hp.getInt(str, i2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        return this.hp.getLong(str, j2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return this.hp.getString(str, str2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return this.hp.getStringSet(str, set);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, int i2) {
        this.hp.put(str, i2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.hp.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.ctq.hp
    public void remove(String str) {
        this.hp.remove(str);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.hp.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.ctq.hp
    public long get(String str, long j2) {
        return this.hp.getLong(str, j2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, long j2) {
        this.hp.put(str, j2);
    }

    @Override // com.byazt.ctq.hp
    public float get(String str, float f2) {
        return this.hp.getFloat(str, f2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, float f2) {
        this.hp.put(str, f2);
    }

    @Override // com.byazt.ctq.hp
    public boolean get(String str, boolean z2) {
        return this.hp.getBoolean(str, z2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, boolean z2) {
        this.hp.put(str, z2);
    }

    @Override // com.byazt.ctq.hp
    public String get(String str, String str2) {
        return this.hp.getString(str, str2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, String str2) {
        this.hp.put(str, str2);
    }

    @Override // com.byazt.ctq.hp
    public Set<String> get(String str, Set<String> set) {
        return this.hp.getStringSet(str, set);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, Set<String> set) {
        this.hp.put(str, set);
    }
}
