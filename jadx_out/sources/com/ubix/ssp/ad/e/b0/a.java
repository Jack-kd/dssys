package com.ubix.ssp.ad.e.b0;

import java.util.HashMap;
import java.util.LinkedHashMap;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public int f46589a;

    /* renamed from: b, reason: collision with root package name */
    public LinkedHashMap f46590b;

    /* renamed from: c, reason: collision with root package name */
    public String f46591c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap<String, String> f46592d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f46593e;

    public a(Object obj) {
        this.f46590b = new LinkedHashMap();
        this.f46591c = "";
        this.f46592d = new HashMap<>();
        this.f46593e = false;
        this.f46590b.put(com.sigmob.sdk.videoplayer.g.f39090a, obj);
        this.f46589a = 0;
    }

    public Object a() {
        return a(this.f46589a);
    }

    public a(String str) {
        this.f46590b = new LinkedHashMap();
        this.f46591c = "";
        this.f46592d = new HashMap<>();
        this.f46593e = false;
        this.f46590b.put(com.sigmob.sdk.videoplayer.g.f39090a, str);
        this.f46589a = 0;
    }

    public Object a(int i2) {
        int i3 = 0;
        for (Object obj : this.f46590b.keySet()) {
            if (i3 == i2) {
                return this.f46590b.get(obj);
            }
            i3++;
        }
        return null;
    }

    public a(String str, String str2) {
        this.f46590b = new LinkedHashMap();
        this.f46591c = "";
        this.f46592d = new HashMap<>();
        this.f46593e = false;
        this.f46590b.put(com.sigmob.sdk.videoplayer.g.f39090a, str);
        this.f46591c = str2;
        this.f46589a = 0;
    }

    public a(LinkedHashMap linkedHashMap) {
        this.f46590b = new LinkedHashMap();
        this.f46591c = "";
        this.f46592d = new HashMap<>();
        this.f46593e = false;
        this.f46590b.clear();
        this.f46590b.putAll(linkedHashMap);
        this.f46589a = 0;
    }

    public a(LinkedHashMap linkedHashMap, String str) {
        this.f46590b = new LinkedHashMap();
        this.f46591c = "";
        this.f46592d = new HashMap<>();
        this.f46593e = false;
        this.f46590b.clear();
        this.f46590b.putAll(linkedHashMap);
        this.f46591c = str;
        this.f46589a = 0;
    }
}
