package v0;

import android.util.Log;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* renamed from: v0.a, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1786a extends Handler {
    public static int a(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue >= Level.SEVERE.intValue()) {
            return 6;
        }
        if (iIntValue >= Level.WARNING.intValue()) {
            return 5;
        }
        return iIntValue >= Level.INFO.intValue() ? 4 : 3;
    }

    public static void b() throws SecurityException {
        Logger logger = LogManager.getLogManager().getLogger("");
        for (Handler handler : logger.getHandlers()) {
            logger.removeHandler(handler);
        }
        logger.addHandler(new C1786a());
        Logger.getLogger("my.category").setLevel(Level.FINEST);
    }

    @Override // java.util.logging.Handler
    public void publish(LogRecord logRecord) {
        if (super.isLoggable(logRecord)) {
            String loggerName = logRecord.getLoggerName();
            if (loggerName.length() > 30) {
                loggerName = loggerName.substring(loggerName.length() - 30);
            }
            try {
                int iA = a(logRecord.getLevel());
                Log.println(iA, loggerName, logRecord.getMessage());
                if (logRecord.getThrown() != null) {
                    Log.println(iA, loggerName, Log.getStackTraceString(logRecord.getThrown()));
                }
            } catch (RuntimeException e2) {
                Log.e("AndroidLoggingHandler", "Error logging message.", e2);
            }
        }
    }

    @Override // java.util.logging.Handler
    public void close() {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }
}
