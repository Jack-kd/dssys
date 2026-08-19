package com.sigmob.sdk.videoplayer;

import java.util.HashMap;
import java.util.LinkedHashMap;

/* loaded from: classes5.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String f39090a = "URL_KEY_DEFAULT";

    /* renamed from: b, reason: collision with root package name */
    public int f39091b;

    /* renamed from: c, reason: collision with root package name */
    public LinkedHashMap f39092c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap<String, String> f39093d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f39094e;
    public String title;

    public g(Object obj) {
        this.f39092c = new LinkedHashMap();
        this.title = "";
        this.f39093d = new HashMap<>();
        this.f39094e = false;
        this.f39092c.put(f39090a, obj);
        this.f39091b = 0;
    }

    public Object a() {
        return b(this.f39091b);
    }

    public Object b() {
        return a(this.f39091b);
    }

    public g c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(this.f39092c);
        return new g(linkedHashMap, this.title);
    }

    public g(String str) {
        this.f39092c = new LinkedHashMap();
        this.title = "";
        this.f39093d = new HashMap<>();
        this.f39094e = false;
        this.f39092c.put(f39090a, str);
        this.f39091b = 0;
    }

    public String a(int i2) {
        int i3 = 0;
        for (Object obj : this.f39092c.keySet()) {
            if (i3 == i2) {
                return obj.toString();
            }
            i3++;
        }
        return null;
    }

    public Object b(int i2) {
        int i3 = 0;
        for (Object obj : this.f39092c.keySet()) {
            if (i3 == i2) {
                return this.f39092c.get(obj);
            }
            i3++;
        }
        return null;
    }

    public g(String str, String str2) {
        this.f39092c = new LinkedHashMap();
        this.title = "";
        this.f39093d = new HashMap<>();
        this.f39094e = false;
        this.f39092c.put(f39090a, str);
        this.title = str2;
        this.f39091b = 0;
    }

    public boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        return this.f39092c.containsValue(obj);
    }

    public g(LinkedHashMap linkedHashMap) {
        this.f39092c = new LinkedHashMap();
        this.title = "";
        this.f39093d = new HashMap<>();
        this.f39094e = false;
        this.f39092c.clear();
        this.f39092c.putAll(linkedHashMap);
        this.f39091b = 0;
    }

    public g(LinkedHashMap linkedHashMap, String str) {
        this.f39092c = new LinkedHashMap();
        this.title = "";
        this.f39093d = new HashMap<>();
        this.f39094e = false;
        this.f39092c.clear();
        this.f39092c.putAll(linkedHashMap);
        this.title = str;
        this.f39091b = 0;
    }
}
