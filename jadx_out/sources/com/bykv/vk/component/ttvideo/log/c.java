package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import com.kuaishou.weapon.p0.t;
import java.util.Map;

/* loaded from: classes3.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public a f28778a;

    /* renamed from: b, reason: collision with root package name */
    public String f28779b;

    /* renamed from: g, reason: collision with root package name */
    public String f28784g;

    /* renamed from: c, reason: collision with root package name */
    public String f28780c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f28781d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f28782e = "";

    /* renamed from: h, reason: collision with root package name */
    public int f28785h = Integer.MIN_VALUE;

    /* renamed from: f, reason: collision with root package name */
    public String f28783f = com.bykv.vk.component.ttvideo.utils.b.a(null);

    public c(a aVar, Context context) {
        this.f28778a = aVar;
    }

    public void a() {
        b();
    }

    public void b() {
        Map mapVersionInfo;
        a aVar = this.f28778a;
        if (aVar == null || (mapVersionInfo = aVar.versionInfo()) == null) {
            return;
        }
        this.f28780c = (String) mapVersionInfo.get(t.f31282x);
        this.f28781d = (String) mapVersionInfo.get("sv");
        this.f28782e = (String) mapVersionInfo.get("sdk_version");
    }

    public void a(String str) {
        this.f28779b = str;
        this.f28783f = com.bykv.vk.component.ttvideo.utils.b.b(str);
    }

    public void b(String str) {
    }
}
