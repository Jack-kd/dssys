package com.varbto.utils.crash;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.lang.Thread;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import k1.h;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public class CrashHandler implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final CrashAttributionService f50592a;

    /* renamed from: b, reason: collision with root package name */
    public final CrashRecorder f50593b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f50594c = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f50595d;

    public CrashHandler(Context context, CrashAttributionService crashAttributionService, CrashRecorder crashRecorder) {
        context.getApplicationContext();
        this.f50592a = crashAttributionService;
        this.f50593b = crashRecorder;
    }

    public int getCrashCountWithinDays(int i2) {
        return this.f50593b.getCrashCountWithinDays(i2);
    }

    public int getCrashFileCount() {
        return this.f50593b.getCrashFileCount();
    }

    public List<File> getCrashFileList() {
        return this.f50593b.getCrashFileList();
    }

    public JSONArray getCrashTimestampsWithinDays(int i2) {
        return this.f50593b.getCrashTimestampsWithinDays(i2);
    }

    public void install() {
        if (this.f50594c.getAndSet(true)) {
            return;
        }
        this.f50595d = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void markFileSent(String str, String str2) {
        this.f50593b.markFileSent(str, str2);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        try {
            if (h.f51286a) {
                thread.getName();
            }
            CrashAttributionService crashAttributionService = this.f50592a;
            this.f50593b.recordCrash(crashAttributionService != null ? crashAttributionService.process(th) : null, th);
            uncaughtExceptionHandler = this.f50595d;
            if (uncaughtExceptionHandler == null) {
                throw new RuntimeException(th);
            }
        } catch (Throwable th2) {
            try {
                if (h.f51286a) {
                    Log.e("CrashHandler", "Crash recording failed: " + th2.getMessage(), th2);
                }
                uncaughtExceptionHandler = this.f50595d;
                if (uncaughtExceptionHandler == null) {
                    throw new RuntimeException(th);
                }
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f50595d;
                if (uncaughtExceptionHandler2 == null) {
                    throw new RuntimeException(th);
                }
                uncaughtExceptionHandler2.uncaughtException(thread, th);
                throw th3;
            }
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }

    public void uninstall() {
        if (this.f50594c.getAndSet(false)) {
            Thread.setDefaultUncaughtExceptionHandler(this.f50595d);
        }
    }

    public int getCrashCountWithinDays(String str, int i2) {
        return this.f50593b.getCrashCountWithinDays(str, i2);
    }

    public List<File> getCrashFileList(String str) {
        return this.f50593b.getCrashFileList(str);
    }

    public JSONArray getCrashTimestampsWithinDays(String str, int i2) {
        return this.f50593b.getCrashTimestampsWithinDays(str, i2);
    }

    public List<File> getCrashFileList(String str, String str2) {
        return this.f50593b.getCrashFileList(str, str2);
    }
}
