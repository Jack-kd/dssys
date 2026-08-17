package org.seamless.swing.logging;

import com.anythink.core.common.d.i;
import java.util.Arrays;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

/* loaded from: classes5.dex */
public abstract class LoggingHandler extends Handler {
    public int sourcePathElements;

    public LoggingHandler() {
        this.sourcePathElements = 3;
    }

    @Override // java.util.logging.Handler
    public void close() throws SecurityException {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    public String getSource(LogRecord logRecord) {
        StringBuilder sb = new StringBuilder(180);
        String[] strArrSplit = logRecord.getSourceClassName().split("\\.");
        int length = strArrSplit.length;
        int i2 = this.sourcePathElements;
        if (length > i2) {
            strArrSplit = (String[]) Arrays.copyOfRange(strArrSplit, strArrSplit.length - i2, strArrSplit.length);
        }
        for (String str : strArrSplit) {
            sb.append(str);
            sb.append(i.f2495E);
        }
        sb.append(logRecord.getSourceMethodName());
        return sb.toString();
    }

    public abstract void log(LogMessage logMessage);

    @Override // java.util.logging.Handler
    public void publish(LogRecord logRecord) {
        log(new LogMessage(logRecord.getLevel(), getSource(logRecord), logRecord.getMessage()));
    }

    public LoggingHandler(int i2) {
        this.sourcePathElements = i2;
    }
}
