package org.seamless.swing.logging;

import java.awt.Component;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/* loaded from: classes5.dex */
public abstract class LogTableCellRenderer extends DefaultTableCellRenderer {
    protected SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss:SSS");

    public abstract ImageIcon getDebugIcon();

    public abstract ImageIcon getInfoIcon();

    public Component getTableCellRendererComponent(JTable jTable, Object obj, boolean z2, boolean z3, int i2, int i3) {
        LogMessage logMessage = (LogMessage) obj;
        if (i3 == 0) {
            return (logMessage.getLevel().equals(Level.SEVERE) || logMessage.getLevel().equals(Level.WARNING)) ? new JLabel(getWarnErrorIcon()) : logMessage.getLevel().equals(Level.FINE) ? new JLabel(getDebugIcon()) : (logMessage.getLevel().equals(Level.FINER) || logMessage.getLevel().equals(Level.FINEST)) ? new JLabel(getTraceIcon()) : new JLabel(getInfoIcon());
        }
        if (i3 != 1) {
            return i3 != 2 ? i3 != 3 ? super.getTableCellRendererComponent(jTable, logMessage.getMessage().replaceAll("\n", "<NL>").replaceAll("\r", "<CR>"), z2, z3, i2, i3) : super.getTableCellRendererComponent(jTable, logMessage.getSource(), z2, z3, i2, i3) : super.getTableCellRendererComponent(jTable, logMessage.getThread(), z2, z3, i2, i3);
        }
        return super.getTableCellRendererComponent(jTable, this.dateFormat.format(new Date(logMessage.getCreatedOn().longValue())), z2, z3, i2, i3);
    }

    public abstract ImageIcon getTraceIcon();

    public abstract ImageIcon getWarnErrorIcon();
}
