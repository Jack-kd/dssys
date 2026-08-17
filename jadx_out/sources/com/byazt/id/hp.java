package com.byazt.id;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.gt.zy;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@com.byazt.kj.hp(hp = {0, 1, 209, 28})
/* loaded from: classes.dex */
public class hp {

    /* renamed from: j, reason: collision with root package name */
    public final SharedPreferences.Editor f21052j;
    public final SharedPreferences jx;
    public final ReentrantReadWriteLock hp = new ReentrantReadWriteLock();

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, String> f21053l = new HashMap();

    public hp(Context context) {
        SharedPreferences sharedPreferencesL = zy.l(context);
        this.jx = sharedPreferencesL;
        this.f21052j = sharedPreferencesL.edit();
    }

    public void hp(String str, String str2) {
        this.hp.writeLock().lock();
        try {
            this.f21053l.put(str, str2);
            com.byazt.fg.hp.hp("__kite", "updateMemoryCacheBySync# update mem success, key: ".concat(String.valueOf(str)));
        } finally {
            this.hp.writeLock().unlock();
        }
    }

    public void l(String str, String str2) {
        try {
            this.f21052j.putString(str, str2);
            this.f21052j.commit();
        } catch (Exception e2) {
            com.byazt.fg.hp.l("__kiteupdateDiskCache# error " + e2.getMessage());
        }
    }

    public String hp(String str) {
        String str2 = this.f21053l.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        this.hp.readLock().lock();
        try {
            String string = this.f21053l.get(str);
            if (TextUtils.isEmpty(string)) {
                string = this.jx.getString(str, "");
                if (!TextUtils.isEmpty(string)) {
                    this.f21053l.put(str, string);
                    if (com.byazt.fg.hp.l()) {
                        com.byazt.fg.hp.hp("__kitegetCacheOrFromDisk# check cache: " + str + " is empty, read from sp and update cache.");
                    }
                }
            }
            return string != null ? string : "";
        } finally {
            this.hp.readLock().unlock();
        }
    }
}
