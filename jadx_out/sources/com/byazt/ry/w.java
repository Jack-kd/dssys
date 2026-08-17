package com.byazt.ry;

import android.content.SharedPreferences;
import com.byazt.ctq.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 256, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements eb {
    public final com.byazt.ow.w hp;

    @com.byazt.kj.hp(hp = {0, 1, 256, 8})
    public static class hp implements SharedPreferences.Editor {
        public final SharedPreferences.Editor hp;

        /* renamed from: l, reason: collision with root package name */
        public final com.byazt.ow.w f25395l;

        public hp(SharedPreferences.Editor editor, com.byazt.ow.w wVar) {
            this.hp = editor;
            this.f25395l = wVar;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            this.hp.apply();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.hp.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return this.hp.commit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z2) throws JSONException {
            com.byazt.pz.l.hp(str, Boolean.valueOf(z2), this.f25395l);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f2) throws JSONException {
            com.byazt.pz.l.hp(str, Float.valueOf(f2), this.f25395l);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i2) throws JSONException {
            com.byazt.pz.l.hp(str, Integer.valueOf(i2), this.f25395l);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j2) throws JSONException {
            com.byazt.pz.l.hp(str, Long.valueOf(j2), this.f25395l);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) throws JSONException {
            com.byazt.pz.l.hp(str, str2, this.f25395l);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) throws JSONException {
            com.byazt.pz.l.hp(str, set, this.f25395l);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            com.byazt.pz.l.l(str, this.f25395l);
            return this;
        }
    }

    public w(com.byazt.ow.w wVar) {
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
        return new hp(this.hp.edit(), this.hp);
    }

    @Override // com.byazt.ctq.hp
    public int get(String str, int i2) {
        return com.byazt.pz.l.hp(str, this.hp, i2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public Map<String, String> getAll() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.hp.getAll().entrySet()) {
            map.put((String) entry.getKey(), com.byazt.pz.l.hp((String) entry.getValue()));
        }
        return map;
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        return com.byazt.pz.l.hp(str, this.hp, z2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        return com.byazt.pz.l.hp(str, this.hp, f2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public int getInt(String str, int i2) {
        return com.byazt.pz.l.hp(str, this.hp, i2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public long getLong(String str, long j2) {
        return com.byazt.pz.l.hp(str, this.hp, j2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return com.byazt.pz.l.hp(str, this.hp, str2);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return com.byazt.pz.l.hp(str, this.hp, set);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, int i2) throws JSONException {
        com.byazt.pz.l.hp(str, Integer.valueOf(i2), this.hp);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.hp.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.ctq.hp
    public void remove(String str) {
        com.byazt.pz.l.l(str, this.hp);
    }

    @Override // com.byazt.ctq.hp, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.hp.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.ctq.hp
    public long get(String str, long j2) {
        return com.byazt.pz.l.hp(str, this.hp, j2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, long j2) throws JSONException {
        com.byazt.pz.l.hp(str, Long.valueOf(j2), this.hp);
    }

    @Override // com.byazt.ctq.hp
    public float get(String str, float f2) {
        return com.byazt.pz.l.hp(str, this.hp, f2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, float f2) throws JSONException {
        com.byazt.pz.l.hp(str, Float.valueOf(f2), this.hp);
    }

    @Override // com.byazt.ctq.hp
    public boolean get(String str, boolean z2) {
        return com.byazt.pz.l.hp(str, this.hp, z2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, boolean z2) throws JSONException {
        com.byazt.pz.l.hp(str, Boolean.valueOf(z2), this.hp);
    }

    @Override // com.byazt.ctq.hp
    public String get(String str, String str2) {
        return com.byazt.pz.l.hp(str, this.hp, str2);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, String str2) throws JSONException {
        com.byazt.pz.l.hp(str, str2, this.hp);
    }

    @Override // com.byazt.ctq.hp
    public Set<String> get(String str, Set<String> set) {
        return com.byazt.pz.l.hp(str, this.hp, set);
    }

    @Override // com.byazt.ctq.hp
    public void put(String str, Set<String> set) throws JSONException {
        com.byazt.pz.l.hp(str, set, this.hp);
    }
}
