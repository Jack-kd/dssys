package com.meishu.sdk.core.safe;

import java.util.TimerTask;

/* loaded from: classes4.dex */
public class n extends TimerTask {
    public void a() {
        throw null;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }
}
