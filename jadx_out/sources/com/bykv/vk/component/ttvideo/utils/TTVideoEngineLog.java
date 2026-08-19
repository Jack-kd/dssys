package com.bykv.vk.component.ttvideo.utils;

import android.text.TextUtils;
import com.byazt.ymw.u;

/* loaded from: classes3.dex */
public class TTVideoEngineLog {
    public static final String FORMAT = "<%s>%s";
    public static final int LOG_DEBUG = 1;
    public static final int LOG_ERROR = 6;
    public static final int LOG_INFO = 2;
    public static final int LOG_KILL = 4;
    public static final int LOG_TRACK = 3;
    public static final int LOG_VERBOSE = 0;
    public static final int LOG_WARN = 5;
    public static int LogNotifyLevel = 116;
    public static int LogTurnOn = 112;
    public static TTVideoEngineLogListener mListener;

    private static void a(String str, String str2) {
        if (mListener == null || TextUtils.isEmpty(str2)) {
            return;
        }
        TTVideoEngineLogListener tTVideoEngineLogListener = mListener;
        if (!TextUtils.isEmpty(str)) {
            str2 = "TTVideoEngine: tag = " + str + ";  " + str2 + "\n";
        }
        tTVideoEngineLogListener.consoleLog(str2);
    }

    public static final void d(String str, String str2) {
        if (((LogNotifyLevel >> 1) & 1) == 1) {
            a(str, str2);
        }
        if (((LogTurnOn >> 1) & 1) == 1) {
            String.format("<%s>%s", str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (((LogNotifyLevel >> 6) & 1) == 1) {
            a(str, str2);
        }
        if (((LogTurnOn >> 6) & 1) == 1) {
            u.l("TTVideoEngineLog", String.format("<%s>%s", str, str2));
        }
    }

    public static final void i(String str, String str2) {
        if (((LogNotifyLevel >> 2) & 1) == 1) {
            a(str, str2);
        }
        if (((LogTurnOn >> 2) & 1) == 1) {
            String.format("<%s>%s", str, str2);
        }
    }

    public static final void k(String str, String str2) {
        if (((LogNotifyLevel >> 4) & 1) == 1) {
            a(str, str2);
        }
        if (((LogTurnOn >> 4) & 1) == 1) {
            String.format("<%s>%s", str, str2);
        }
    }

    public static final void setListener(TTVideoEngineLogListener tTVideoEngineLogListener) {
        mListener = tTVideoEngineLogListener;
    }

    public static final void setLogNotifyLevel(int i2, int i3) {
        LogNotifyLevel = (i3 << i2) | ((~(1 << i2)) & LogNotifyLevel);
    }

    public static final void t(String str, String str2) {
        if (((LogNotifyLevel >> 3) & 1) == 1) {
            a(str, str2);
        }
        if (((LogTurnOn >> 3) & 1) == 1) {
            String.format("<%s>%s", str, str2);
        }
    }

    public static final void turnOn(int i2, int i3) {
        int i4 = ((~(1 << i2)) & LogTurnOn) | (i3 << i2);
        LogTurnOn = i4;
        if (i2 == 1 && i3 == 1) {
            LogTurnOn = (i4 & (-5)) | (i3 << 2);
        }
    }

    public static final void w(String str, String str2) {
        if (((LogNotifyLevel >> 5) & 1) == 1) {
            a(str, str2);
        }
        if (((LogTurnOn >> 5) & 1) == 1) {
            String.format("<%s>%s", str, str2);
        }
    }

    public static void d(Throwable th) {
    }
}
