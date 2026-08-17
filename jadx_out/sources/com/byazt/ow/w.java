package com.byazt.ow;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public interface w extends SharedPreferences {
    void apply();

    void applySync();

    void clear();

    @Override // android.content.SharedPreferences
    boolean contains(String str);

    @Override // android.content.SharedPreferences
    SharedPreferences.Editor edit();

    float get(String str, float f2);

    int get(String str, int i2);

    long get(String str, long j2);

    String get(String str, String str2);

    Set<String> get(String str, Set<String> set);

    boolean get(String str, boolean z2);

    @Override // android.content.SharedPreferences
    Map getAll();

    @Override // android.content.SharedPreferences
    boolean getBoolean(String str, boolean z2);

    @Override // android.content.SharedPreferences
    float getFloat(String str, float f2);

    @Override // android.content.SharedPreferences
    int getInt(String str, int i2);

    @Override // android.content.SharedPreferences
    long getLong(String str, long j2);

    @Override // android.content.SharedPreferences
    String getString(String str, String str2);

    @Override // android.content.SharedPreferences
    Set<String> getStringSet(String str, Set<String> set);

    void put(String str, float f2);

    void put(String str, int i2);

    void put(String str, long j2);

    void put(String str, String str2);

    void put(String str, Set<String> set);

    void put(String str, boolean z2);

    @Override // android.content.SharedPreferences
    void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);

    void remove(String str);

    @Override // android.content.SharedPreferences
    void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);
}
