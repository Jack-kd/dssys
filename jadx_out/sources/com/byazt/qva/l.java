package com.byazt.qva;

import com.bytedance.pangle.log.ZeusLogger;

@com.byazt.kj.hp(hp = {0, 1, 1809, 34})
/* loaded from: classes3.dex */
public class l {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public long f25056j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25057l;

    /* renamed from: w, reason: collision with root package name */
    public long f25058w;

    private l(String str, String str2, String str3) {
        this.hp = str;
        this.f25057l = str2;
        this.jx = str3;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f25058w = jCurrentTimeMillis;
        this.f25056j = jCurrentTimeMillis;
        ZeusLogger.i(this.hp, this.f25057l + String.format(" watcher[%s]-start", str3));
    }

    public static l hp(String str, String str2, String str3) {
        return new l(str, str2, str3);
    }

    public long hp(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f25058w;
        long jCurrentTimeMillis2 = System.currentTimeMillis() - this.f25056j;
        ZeusLogger.i(this.hp, this.f25057l + String.format(" watcher[%s]-%s cost=%s, total=%s", this.jx, str, Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis2)));
        return jCurrentTimeMillis2;
    }

    public long hp() {
        return System.currentTimeMillis() - this.f25056j;
    }
}
