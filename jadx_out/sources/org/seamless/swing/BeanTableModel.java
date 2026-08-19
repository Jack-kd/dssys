package org.seamless.swing;

import java.beans.PropertyDescriptor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/* loaded from: classes5.dex */
public class BeanTableModel<T> extends AbstractTableModel {
    private Class<T> beanClass;
    private List<PropertyDescriptor> properties = new ArrayList();
    private List<T> rows;

    public BeanTableModel(Class<T> cls, Collection<T> collection) {
        this.beanClass = cls;
        this.rows = new ArrayList(collection);
    }

    public void addColumn(String str, String str2) {
        try {
            PropertyDescriptor propertyDescriptor = new PropertyDescriptor(str2, this.beanClass, str2, (String) null);
            propertyDescriptor.setDisplayName(str);
            this.properties.add(propertyDescriptor);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public void addRow(T t2) {
        this.rows.add(t2);
        fireTableRowsInserted(getRowCount() - 1, getRowCount() - 1);
    }

    public int getColumnCount() {
        return this.properties.size();
    }

    public String getColumnName(int i2) {
        return this.properties.get(i2).getDisplayName();
    }

    public int getRowCount() {
        return this.rows.size();
    }

    public List<T> getRows() {
        return this.rows;
    }

    public Object getValueAt(int i2, int i3) {
        T t2 = this.rows.get(i2);
        if (t2 == null) {
            return null;
        }
        try {
            return this.properties.get(i3).getReadMethod().invoke(t2, null);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public void removeRow(int i2) {
        if (this.rows.size() <= i2 || i2 == -1) {
            return;
        }
        this.rows.remove(i2);
        fireTableRowsDeleted(i2, i2);
    }

    public void resetColumns() {
        this.properties = new ArrayList();
    }

    public void setRow(int i2, T t2) {
        this.rows.remove(i2);
        this.rows.add(i2, t2);
        fireTableDataChanged();
    }

    public void setRows(Collection<T> collection) {
        this.rows = new ArrayList(collection);
        fireTableDataChanged();
    }
}
