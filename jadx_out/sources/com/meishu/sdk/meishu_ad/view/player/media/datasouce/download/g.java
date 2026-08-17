package com.meishu.sdk.meishu_ad.view.player.media.datasouce.download;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap<String, a> f32800a = new ConcurrentHashMap<>();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f32801a = -2147483648L;

        /* renamed from: b, reason: collision with root package name */
        public long f32802b = -2147483648L;

        /* renamed from: c, reason: collision with root package name */
        public boolean f32803c = true;

        /* renamed from: d, reason: collision with root package name */
        public int f32804d;
    }

    public boolean a(String str, long j2, long j3, int i2) {
        a aVar;
        if (str == null) {
            str = "";
        }
        if (this.f32800a.containsKey(str)) {
            aVar = this.f32800a.get(str);
        } else {
            a aVar2 = new a();
            this.f32800a.put(str, aVar2);
            aVar = aVar2;
        }
        aVar.getClass();
        try {
            if (aVar.f32804d == 0) {
                aVar.f32804d = i2;
            }
            if (j3 > 0) {
                long j4 = aVar.f32802b;
                int i3 = aVar.f32804d;
                if (i3 == 0) {
                    i3 = 2028;
                }
                if (j2 > i3 + j4 && j2 > (j3 / 4) * 3) {
                    aVar.f32801a = j2;
                    aVar.f32802b = Math.max(j4, j2);
                    return true;
                }
            }
            long j5 = aVar.f32801a;
            if (j5 == 0 && aVar.f32803c) {
                aVar.f32803c = false;
                aVar.f32801a = j2;
                aVar.f32802b = Math.max(aVar.f32802b, j2);
                return false;
            }
            boolean z2 = j5 == 0 && j2 > aVar.f32802b;
            aVar.f32801a = j2;
            aVar.f32802b = Math.max(aVar.f32802b, j2);
            return z2;
        } catch (Throwable th) {
            aVar.f32801a = j2;
            aVar.f32802b = Math.max(aVar.f32802b, j2);
            throw th;
        }
    }
}
