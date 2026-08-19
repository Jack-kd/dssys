package com.kwad.sdk.api.loader;

import android.content.Context;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public class f implements Thread.UncaughtExceptionHandler {
    private static f aHX;
    private Thread.UncaughtExceptionHandler aHY;
    private int aHZ;
    private long aIb;
    private Context mContext;
    private boolean DEBUG = false;
    private final AtomicBoolean aIa = new AtomicBoolean();

    private f(Context context) {
        this.mContext = context;
    }

    public static f bn(Context context) {
        if (aHX == null) {
            synchronized (f.class) {
                try {
                    if (aHX == null) {
                        aHX = new f(context);
                    }
                } finally {
                }
            }
        }
        return aHX;
    }

    public final void cancel() {
        this.aIa.set(true);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m56do(int i2) {
        this.aIb = System.currentTimeMillis();
        this.aHZ = i2;
    }

    public final void setDefaultUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler != this) {
            this.aHY = uncaughtExceptionHandler;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            if (this.DEBUG) {
                this.aIa.get();
            }
            if (!this.aIa.get() && this.aIb > 0 && System.currentTimeMillis() - this.aIb <= this.aHZ) {
                Boolean bool = (Boolean) com.kwad.sdk.api.c.g("filterStack", th);
                boolean zBooleanValue = bool != null ? bool.booleanValue() : true;
                Context context = this.mContext;
                if (context != null && zBooleanValue) {
                    b.a(context, i.aIf, true);
                }
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.aHY;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            try {
                th2.printStackTrace();
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.aHY;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
            } catch (Throwable th3) {
                if (this.aHY != null) {
                    this.aHY.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
