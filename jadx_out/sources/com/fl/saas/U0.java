package com.fl.saas;

import com.fl.saas.adx.base.widget.ShakeView;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public class U0 {

    /* renamed from: b, reason: collision with root package name */
    private static U0 f30067b;

    /* renamed from: a, reason: collision with root package name */
    private final List f30068a = new CopyOnWriteArrayList();

    private U0() {
    }

    public void a(ShakeView shakeView) {
        try {
            Iterator it = this.f30068a.iterator();
            while (it.hasNext()) {
                ((ShakeView) it.next()).unRegisterAccelerometer(false);
            }
            if (this.f30068a.contains(shakeView)) {
                return;
            }
            this.f30068a.add(shakeView);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void b(ShakeView shakeView) {
        try {
            this.f30068a.remove(shakeView);
            if (this.f30068a.isEmpty()) {
                return;
            }
            ((ShakeView) this.f30068a.get(r2.size() - 1)).registerAccelerometer(false);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static U0 a() {
        if (f30067b == null) {
            synchronized (U0.class) {
                f30067b = new U0();
            }
        }
        return f30067b;
    }
}
