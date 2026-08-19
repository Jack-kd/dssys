package com.byazt.ow;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1736, 54})
@ATSKeep
/* loaded from: classes3.dex */
public class a implements w, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile w f24195l;

    public a(w wVar) {
        this.f24195l = wVar;
    }

    @Override // com.byazt.ow.w
    public void apply() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public void applySync() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public void clear() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean contains(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        sparseArray.put(1, str);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        return (SharedPreferences.Editor) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public float get(String str, float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f2));
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Map getAll() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z2));
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f2));
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j2));
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public String getString(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public Set getStringSet(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        return (Set) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public void put(String str, float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        sparseArray.put(1, onSharedPreferenceChangeListener);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public void remove(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        sparseArray.put(1, onSharedPreferenceChangeListener);
        this.hp.apply(sparseArray);
    }

    public a(Function function) {
        this.hp = function;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                this.f24195l.put((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
                return null;
            case 2:
                this.f24195l.put((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue());
                return null;
            case 3:
                this.f24195l.put((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue());
                return null;
            case 4:
                this.f24195l.put((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue());
                return null;
            case 5:
                this.f24195l.put((String) sparseArray.get(1), (String) sparseArray.get(2));
                return null;
            case 6:
                this.f24195l.put((String) sparseArray.get(1), (Set<String>) sparseArray.get(2));
                return null;
            case 7:
                this.f24195l.remove((String) sparseArray.get(1));
                return null;
            case 8:
                this.f24195l.clear();
                return null;
            case 9:
                this.f24195l.apply();
                return null;
            case 10:
                this.f24195l.applySync();
                return null;
            case 11:
                return Integer.valueOf(this.f24195l.get((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue()));
            case 12:
                return Long.valueOf(this.f24195l.get((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue()));
            case 13:
                return Float.valueOf(this.f24195l.get((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue()));
            case 14:
                return Boolean.valueOf(this.f24195l.get((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue()));
            case 15:
                return this.f24195l.get((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 16:
                return this.f24195l.get((String) sparseArray.get(1), (Set<String>) sparseArray.get(2));
            case 17:
                return this.f24195l.getAll();
            case 18:
                return this.f24195l.getString((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 19:
                return this.f24195l.getStringSet((String) sparseArray.get(1), (Set) sparseArray.get(2));
            case 20:
                return Integer.valueOf(this.f24195l.getInt((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue()));
            case 21:
                return Long.valueOf(this.f24195l.getLong((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue()));
            case 22:
                return Float.valueOf(this.f24195l.getFloat((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue()));
            case 23:
                return Boolean.valueOf(this.f24195l.getBoolean((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue()));
            case 24:
                return Boolean.valueOf(this.f24195l.contains((String) sparseArray.get(1)));
            case 25:
                return this.f24195l.edit();
            case 26:
                this.f24195l.registerOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) sparseArray.get(1));
                return null;
            case 27:
                this.f24195l.unregisterOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) sparseArray.get(1));
                return null;
            default:
                return null;
        }
    }

    @Override // com.byazt.ow.w
    public int get(String str, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.ow.w
    public void put(String str, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public long get(String str, long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j2));
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.ow.w
    public void put(String str, long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public String get(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public void put(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public Set get(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        return (Set) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public void put(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.w
    public boolean get(String str, boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z2));
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.ow.w
    public void put(String str, boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }
}
