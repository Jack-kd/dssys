package com.byazt.px;

import com.byazt.shx.j;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 549, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final TimeUnit hp = TimeUnit.SECONDS;

    public static ExecutorService hp() {
        j jVar = new j(1, 2, 30L, hp, new LinkedBlockingQueue(), new hp("default"));
        jVar.allowCoreThreadTimeOut(true);
        return jVar;
    }
}
