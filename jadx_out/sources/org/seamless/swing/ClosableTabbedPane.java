package org.seamless.swing;

import com.baidu.mobads.sdk.internal.a;
import java.awt.Color;
import java.awt.Component;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JTabbedPane;
import javax.swing.JViewport;
import javax.swing.SwingUtilities;
import javax.swing.event.EventListenerList;
import javax.swing.plaf.basic.BasicTabbedPaneUI;
import javax.swing.plaf.metal.MetalTabbedPaneUI;
import javax.swing.text.View;

/* loaded from: classes5.dex */
public class ClosableTabbedPane extends JTabbedPane implements MouseListener, MouseMotionListener {
    private EventListenerList listenerList = null;
    private JViewport headerViewport = null;
    private Icon normalCloseIcon = null;
    private Icon hooverCloseIcon = null;
    private Icon pressedCloseIcon = null;

    public class CloseTabIcon implements Icon {
        private Icon fileIcon;
        private int x_pos;
        private int y_pos;
        private boolean mouseover = false;
        private boolean mousepressed = false;
        private int width = 16;
        private int height = 16;

        public CloseTabIcon(Icon icon) {
            this.fileIcon = icon;
        }

        public Rectangle getBounds() {
            return new Rectangle(this.x_pos, this.y_pos, this.width, this.height);
        }

        public int getIconHeight() {
            return this.height;
        }

        public int getIconWidth() {
            int i2 = this.width;
            Icon icon = this.fileIcon;
            return i2 + (icon != null ? icon.getIconWidth() : 0);
        }

        public void paintIcon(Component component, Graphics graphics, int i2, int i3) {
            boolean zBooleanValue = true;
            try {
                JTabbedPane jTabbedPane = (JTabbedPane) component;
                Object clientProperty = jTabbedPane.getComponentAt(jTabbedPane.getUI().tabForCoordinate(jTabbedPane, i2, i3)).getClientProperty("isClosable");
                if (clientProperty != null) {
                    zBooleanValue = ((Boolean) clientProperty).booleanValue();
                }
            } catch (Exception unused) {
            }
            if (zBooleanValue) {
                this.x_pos = i2;
                this.y_pos = i3;
                int i4 = i3 + 1;
                if (ClosableTabbedPane.this.normalCloseIcon != null && !this.mouseover) {
                    ClosableTabbedPane.this.normalCloseIcon.paintIcon(component, graphics, i2, i4);
                    return;
                }
                if (ClosableTabbedPane.this.hooverCloseIcon != null && this.mouseover && !this.mousepressed) {
                    ClosableTabbedPane.this.hooverCloseIcon.paintIcon(component, graphics, i2, i4);
                    return;
                }
                if (ClosableTabbedPane.this.pressedCloseIcon != null && this.mousepressed) {
                    ClosableTabbedPane.this.pressedCloseIcon.paintIcon(component, graphics, i2, i4);
                    return;
                }
                int i5 = i3 + 2;
                Color color = graphics.getColor();
                if (this.mousepressed && this.mouseover) {
                    graphics.setColor(Color.WHITE);
                    graphics.fillRect(i2 + 1, i5, 12, 13);
                }
                graphics.setColor(Color.black);
                int i6 = i2 + 1;
                int i7 = i2 + 12;
                graphics.drawLine(i6, i5, i7, i5);
                int i8 = i3 + 15;
                graphics.drawLine(i6, i8, i7, i8);
                int i9 = i3 + 3;
                int i10 = i3 + 14;
                graphics.drawLine(i2, i9, i2, i10);
                int i11 = i2 + 13;
                graphics.drawLine(i11, i9, i11, i10);
                int i12 = i2 + 3;
                int i13 = i3 + 5;
                int i14 = i2 + 10;
                int i15 = i3 + 12;
                graphics.drawLine(i12, i13, i14, i15);
                if (this.mouseover) {
                    graphics.setColor(Color.GRAY);
                }
                int i16 = i3 + 6;
                int i17 = i2 + 9;
                graphics.drawLine(i12, i16, i17, i15);
                int i18 = i2 + 4;
                int i19 = i3 + 11;
                graphics.drawLine(i18, i13, i14, i19);
                graphics.drawLine(i14, i13, i12, i15);
                graphics.drawLine(i14, i16, i18, i15);
                graphics.drawLine(i17, i13, i12, i19);
                graphics.setColor(color);
                Icon icon = this.fileIcon;
                if (icon != null) {
                    icon.paintIcon(component, graphics, i2 + this.width, i5);
                }
            }
        }
    }

    public ClosableTabbedPane() {
        init(2);
    }

    private void init(int i2) {
        this.listenerList = new EventListenerList();
        addMouseListener(this);
        addMouseMotionListener(this);
        if (getUI() instanceof MetalTabbedPaneUI) {
            setUI(new CloseableMetalTabbedPaneUI(i2));
        } else {
            setUI(new CloseableTabbedPaneUI(i2));
        }
    }

    private void processMouseEvents(MouseEvent mouseEvent) {
        CloseTabIcon closeTabIcon;
        int iTabForCoordinate = getUI().tabForCoordinate(this, mouseEvent.getX(), mouseEvent.getY());
        if (iTabForCoordinate >= 0 && (closeTabIcon = (CloseTabIcon) getIconAt(iTabForCoordinate)) != null) {
            Rectangle bounds = closeTabIcon.getBounds();
            JViewport jViewport = this.headerViewport;
            Point point = jViewport == null ? new Point() : jViewport.getViewPosition();
            Rectangle rectangle = new Rectangle(bounds.x - point.x, bounds.y - point.y, bounds.width, bounds.height);
            if (mouseEvent.getID() == 501) {
                closeTabIcon.mousepressed = mouseEvent.getModifiers() == 16;
                repaint(rectangle);
                return;
            }
            if (mouseEvent.getID() == 503 || mouseEvent.getID() == 506 || mouseEvent.getID() == 500) {
                point.x += mouseEvent.getX();
                point.y += mouseEvent.getY();
                if (!bounds.contains(point)) {
                    closeTabIcon.mouseover = false;
                } else if (mouseEvent.getID() == 500) {
                    int selectedIndex = getSelectedIndex();
                    if (fireCloseTab(selectedIndex)) {
                        if (selectedIndex > 0) {
                            Rectangle tabBounds = getUI().getTabBounds(this, selectedIndex - 1);
                            dispatchEvent(new MouseEvent((Component) mouseEvent.getSource(), mouseEvent.getID() + 1, System.currentTimeMillis(), mouseEvent.getModifiers(), tabBounds.x, tabBounds.y, mouseEvent.getClickCount(), mouseEvent.isPopupTrigger(), mouseEvent.getButton()));
                        }
                        remove(selectedIndex);
                    } else {
                        closeTabIcon.mouseover = false;
                        closeTabIcon.mousepressed = false;
                        repaint(rectangle);
                    }
                } else {
                    closeTabIcon.mouseover = true;
                    closeTabIcon.mousepressed = mouseEvent.getModifiers() == 16;
                }
                repaint(rectangle);
            }
        }
    }

    public void addCloseableTabbedPaneListener(ClosableTabbedPaneListener closableTabbedPaneListener) {
        this.listenerList.add(ClosableTabbedPaneListener.class, closableTabbedPaneListener);
    }

    public void addTab(String str, Component component) {
        addTab(str, component, null);
    }

    public boolean fireCloseTab(int i2) {
        for (Object obj : this.listenerList.getListenerList()) {
            if ((obj instanceof ClosableTabbedPaneListener) && !((ClosableTabbedPaneListener) obj).closeTab(i2)) {
                return false;
            }
        }
        return true;
    }

    public ClosableTabbedPaneListener[] getCloseableTabbedPaneListener() {
        return (ClosableTabbedPaneListener[]) this.listenerList.getListeners(ClosableTabbedPaneListener.class);
    }

    public void mouseClicked(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseDragged(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseEntered(MouseEvent mouseEvent) {
    }

    public void mouseExited(MouseEvent mouseEvent) {
        for (int i2 = 0; i2 < getTabCount(); i2++) {
            CloseTabIcon closeTabIcon = (CloseTabIcon) getIconAt(i2);
            if (closeTabIcon != null) {
                closeTabIcon.mouseover = false;
            }
        }
        repaint();
    }

    public void mouseMoved(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mousePressed(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseReleased(MouseEvent mouseEvent) {
    }

    public void removeCloseableTabbedPaneListener(ClosableTabbedPaneListener closableTabbedPaneListener) {
        this.listenerList.remove(ClosableTabbedPaneListener.class, closableTabbedPaneListener);
    }

    public void setCloseIcons(Icon icon, Icon icon2, Icon icon3) {
        this.normalCloseIcon = icon;
        this.hooverCloseIcon = icon2;
        this.pressedCloseIcon = icon3;
    }

    public class CloseableMetalTabbedPaneUI extends MetalTabbedPaneUI {
        private int horizontalTextPosition;

        public CloseableMetalTabbedPaneUI() {
            this.horizontalTextPosition = 2;
        }

        public void layoutLabel(int i2, FontMetrics fontMetrics, int i3, String str, Icon icon, Rectangle rectangle, Rectangle rectangle2, Rectangle rectangle3, boolean z2) {
            rectangle2.y = 0;
            rectangle2.x = 0;
            rectangle3.y = 0;
            rectangle3.x = 0;
            View textViewForTab = getTextViewForTab(i3);
            if (textViewForTab != null) {
                this.tabPane.putClientProperty(a.f10882f, textViewForTab);
            }
            SwingUtilities.layoutCompoundLabel(this.tabPane, fontMetrics, str, icon, 0, 0, 0, this.horizontalTextPosition, rectangle, rectangle2, rectangle3, this.textIconGap + 2);
            this.tabPane.putClientProperty(a.f10882f, (Object) null);
            int tabLabelShiftX = getTabLabelShiftX(i2, i3, z2);
            int tabLabelShiftY = getTabLabelShiftY(i2, i3, z2);
            rectangle2.x += tabLabelShiftX;
            rectangle2.y += tabLabelShiftY;
            rectangle3.x += tabLabelShiftX;
            rectangle3.y += tabLabelShiftY;
        }

        public CloseableMetalTabbedPaneUI(int i2) {
            this.horizontalTextPosition = i2;
        }
    }

    public class CloseableTabbedPaneUI extends BasicTabbedPaneUI {
        private int horizontalTextPosition;

        public CloseableTabbedPaneUI() {
            this.horizontalTextPosition = 2;
        }

        public void layoutLabel(int i2, FontMetrics fontMetrics, int i3, String str, Icon icon, Rectangle rectangle, Rectangle rectangle2, Rectangle rectangle3, boolean z2) {
            rectangle2.y = 0;
            rectangle2.x = 0;
            rectangle3.y = 0;
            rectangle3.x = 0;
            View textViewForTab = getTextViewForTab(i3);
            if (textViewForTab != null) {
                this.tabPane.putClientProperty(a.f10882f, textViewForTab);
            }
            SwingUtilities.layoutCompoundLabel(this.tabPane, fontMetrics, str, icon, 0, 0, 0, this.horizontalTextPosition, rectangle, rectangle2, rectangle3, this.textIconGap + 2);
            this.tabPane.putClientProperty(a.f10882f, (Object) null);
            int tabLabelShiftX = getTabLabelShiftX(i2, i3, z2);
            int tabLabelShiftY = getTabLabelShiftY(i2, i3, z2);
            rectangle2.x += tabLabelShiftX;
            rectangle2.y += tabLabelShiftY;
            rectangle3.x += tabLabelShiftX;
            rectangle3.y += tabLabelShiftY;
        }

        public CloseableTabbedPaneUI(int i2) {
            this.horizontalTextPosition = i2;
        }
    }

    public void addTab(String str, Component component, Icon icon) {
        boolean zBooleanValue = true;
        try {
            Object clientProperty = ((JComponent) component).getClientProperty("isClosable");
            if (clientProperty != null) {
                zBooleanValue = ((Boolean) clientProperty).booleanValue();
            }
        } catch (Exception unused) {
        }
        super.addTab(str, zBooleanValue ? new CloseTabIcon(icon) : null, component);
        if (this.headerViewport == null) {
            for (JViewport jViewport : getComponents()) {
                if ("TabbedPane.scrollableViewport".equals(jViewport.getName())) {
                    this.headerViewport = jViewport;
                }
            }
        }
    }

    public ClosableTabbedPane(int i2) {
        init(i2);
    }
}
