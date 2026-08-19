package com.czhj.sdk.common.exceptions;

import android.os.Process;
import android.text.TextUtils;
import com.czhj.sdk.common.mta.PointEntityCrash;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class CrashHandler implements Thread.UncaughtExceptionHandler {
    private static final String CRASH = "crash";
    private static CrashHandler gInstance;
    private PointEntityCrash entityCrash = null;
    private final Set<CrashHandlerListener> crashHandlerListenerSet = new HashSet();
    private Thread.UncaughtExceptionHandler mDefaultCrashHandler = Thread.getDefaultUncaughtExceptionHandler();

    public interface CrashHandlerListener {
        void reportCrash(String str);
    }

    private CrashHandler() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static synchronized CrashHandler getInstance() {
        try {
            if (gInstance == null) {
                synchronized (CrashHandler.class) {
                    gInstance = new CrashHandler();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return gInstance;
    }

    private boolean handleException(final Throwable th) throws InterruptedException {
        if (th == null) {
            return false;
        }
        new Thread(new Runnable() { // from class: com.czhj.sdk.common.exceptions.CrashHandler.1
            @Override // java.lang.Runnable
            public void run() {
                CrashHandler.this.writeCrash(th);
            }
        }).start();
        try {
            Thread.sleep(1000L);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeCrash(Throwable th) {
        try {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            while (true) {
                th = th.getCause();
                if (th == null) {
                    break;
                } else {
                    th.printStackTrace(printWriter);
                }
            }
            printWriter.close();
            String string = stringWriter.toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            for (CrashHandlerListener crashHandlerListener : this.crashHandlerListenerSet) {
                if (crashHandlerListener != null) {
                    crashHandlerListener.reportCrash(string);
                }
            }
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
        } catch (Throwable th2) {
            e = th2;
            e.printStackTrace();
        }
    }

    public void add(CrashHandlerListener crashHandlerListener) {
        if (crashHandlerListener != null) {
            this.crashHandlerListenerSet.add(crashHandlerListener);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            handleException(th);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mDefaultCrashHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
        }
    }
}
