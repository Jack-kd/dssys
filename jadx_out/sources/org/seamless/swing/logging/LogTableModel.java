package org.seamless.swing.logging;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/* loaded from: classes5.dex */
public class LogTableModel extends AbstractTableModel {
    protected int maxAgeSeconds;
    protected boolean paused = false;
    protected List<LogMessage> messages = new ArrayList();

    public LogTableModel(int i2) {
        this.maxAgeSeconds = i2;
    }

    public void clearMessages() {
        this.messages.clear();
        fireTableDataChanged();
    }

    public Class<?> getColumnClass(int i2) {
        return LogMessage.class;
    }

    public int getColumnCount() {
        return 5;
    }

    public String getColumnName(int i2) {
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? "Message" : "Source" : "Thread" : "Time" : "";
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int getRowCount() {
        return this.messages.size();
    }

    public Object getValueAt(int i2, int i3) {
        return this.messages.get(i2);
    }

    public boolean isPaused() {
        return this.paused;
    }

    public synchronized void pushMessage(LogMessage logMessage) {
        try {
            if (this.paused) {
                return;
            }
            if (this.maxAgeSeconds != Integer.MAX_VALUE) {
                Iterator<LogMessage> it = this.messages.iterator();
                long time = new Date().getTime();
                while (it.hasNext()) {
                    if (it.next().getCreatedOn().longValue() + (this.maxAgeSeconds * 1000) < time) {
                        it.remove();
                    }
                }
            }
            this.messages.add(logMessage);
            fireTableDataChanged();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setMaxAgeSeconds(int i2) {
        this.maxAgeSeconds = i2;
    }

    public void setPaused(boolean z2) {
        this.paused = z2;
    }
}
