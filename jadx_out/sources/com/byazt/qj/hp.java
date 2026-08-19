package com.byazt.qj;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;

@com.byazt.kj.hp(hp = {0, 1, 1558, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: j, reason: collision with root package name */
    public static volatile ScheduledExecutorService f24724j;
    public static volatile ThreadPoolExecutor jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile ThreadPoolExecutor f24725l;

    /* renamed from: w, reason: collision with root package name */
    public static final ConcurrentHashMap<String, jx> f24726w = new ConcurrentHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap<String, jx> f24723a = new ConcurrentHashMap<>();

    private hp() {
        f24725l = w.hp();
        jx = w.l();
        f24724j = w.jx();
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(jx jxVar) {
        if (jxVar != null) {
            if (f24725l != null) {
                f24725l.execute(jxVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("param is not be null");
    }
}
