package com.byazt.ctq;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2136, 34})
@ATSKeep
/* loaded from: classes2.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f19003l;

    public l(hp hpVar) {
        this.f19003l = hpVar;
    }

    @Override // com.byazt.ctq.hp
    public void apply() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public void applySync() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public void clear() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public boolean contains(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        sparseArray.put(1, str);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        return (SharedPreferences.Editor) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public float get(String str, float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f2));
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public Map getAll() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z2));
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f2));
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j2));
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public String getString(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public Set getStringSet(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        return (Set) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        sparseArray.put(1, onSharedPreferenceChangeListener);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public void remove(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        sparseArray.put(1, onSharedPreferenceChangeListener);
        this.hp.apply(sparseArray);
    }

    public l(Function function) {
        this.hp = function;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                this.f19003l.put((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
                return null;
            case 2:
                this.f19003l.put((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue());
                return null;
            case 3:
                this.f19003l.put((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue());
                return null;
            case 4:
                this.f19003l.put((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue());
                return null;
            case 5:
                this.f19003l.put((String) sparseArray.get(1), (String) sparseArray.get(2));
                return null;
            case 6:
                this.f19003l.put((String) sparseArray.get(1), (Set<String>) sparseArray.get(2));
                return null;
            case 7:
                this.f19003l.remove((String) sparseArray.get(1));
                return null;
            case 8:
                this.f19003l.clear();
                return null;
            case 9:
                this.f19003l.apply();
                return null;
            case 10:
                this.f19003l.applySync();
                return null;
            case 11:
                return Integer.valueOf(this.f19003l.get((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue()));
            case 12:
                return Long.valueOf(this.f19003l.get((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue()));
            case 13:
                return Float.valueOf(this.f19003l.get((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue()));
            case 14:
                return Boolean.valueOf(this.f19003l.get((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue()));
            case 15:
                return this.f19003l.get((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 16:
                return this.f19003l.get((String) sparseArray.get(1), (Set<String>) sparseArray.get(2));
            case 17:
                return this.f19003l.getAll();
            case 18:
                return this.f19003l.getString((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 19:
                return this.f19003l.getStringSet((String) sparseArray.get(1), (Set) sparseArray.get(2));
            case 20:
                return Integer.valueOf(this.f19003l.getInt((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue()));
            case 21:
                return Long.valueOf(this.f19003l.getLong((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue()));
            case 22:
                return Float.valueOf(this.f19003l.getFloat((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue()));
            case 23:
                return Boolean.valueOf(this.f19003l.getBoolean((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue()));
            case 24:
                return Boolean.valueOf(this.f19003l.contains((String) sparseArray.get(1)));
            case 25:
                return this.f19003l.edit();
            case 26:
                this.f19003l.registerOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) sparseArray.get(1));
                return null;
            case 27:
                this.f19003l.unregisterOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) sparseArray.get(1));
                return null;
            default:
                return null;
        }
    }

    @Override // com.byazt.ctq.hp
    public int get(String str, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public long get(String str, long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j2));
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public String get(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public Set get(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        return (Set) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ctq.hp
    public boolean get(String str, boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z2));
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }
}
