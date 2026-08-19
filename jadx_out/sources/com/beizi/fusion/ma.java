package com.beizi.fusion;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class ma implements ub {
    private String[] columns;
    protected long primaryID;

    private String[] a() throws SecurityException {
        Field[] declaredFields = getClass().getDeclaredFields();
        if (declaredFields.length <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if (field.isAnnotationPresent(l6.class)) {
                field.setAccessible(true);
                l6 l6Var = (l6) field.getAnnotation(l6.class);
                if (l6Var != null) {
                    arrayList.add(l6Var.column());
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // com.beizi.fusion.ub
    public String[] getColumns() {
        String[] strArr = this.columns;
        if (strArr == null || strArr.length == 0) {
            this.columns = a();
        }
        return this.columns;
    }

    @Override // com.beizi.fusion.ub
    public ContentValues getContentValuesStruct() throws IllegalAccessException, SecurityException, IllegalArgumentException {
        Map<String, String> mapStruct = getMapStruct();
        if (mapStruct == null || mapStruct.isEmpty()) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        for (Map.Entry<String, String> entry : mapStruct.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value != null) {
                contentValues.put(key, value);
            }
        }
        return contentValues;
    }

    public Map<String, String> getMapStruct() throws IllegalAccessException, SecurityException, IllegalArgumentException {
        HashMap map = new HashMap();
        List<Field> listB = sl.b(getClass());
        if (!listB.isEmpty()) {
            for (Field field : listB) {
                l6 l6Var = (l6) field.getAnnotation(l6.class);
                if (l6Var != null) {
                    field.setAccessible(true);
                    String strColumn = l6Var.column();
                    try {
                        Object obj = field.get(this);
                        if (obj != null) {
                            if (l6Var.encode()) {
                                map.put(strColumn, g3.c(obj.toString()));
                            } else {
                                map.put(strColumn, obj.toString());
                            }
                        }
                    } catch (IllegalAccessException e2) {
                        rm.a(e2);
                    }
                }
            }
        }
        return map;
    }

    public long getPrimaryID() {
        return this.primaryID;
    }

    @Override // com.beizi.fusion.ub
    public void parseFromDb(Cursor cursor) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        int columnIndex;
        if (cursor != null) {
            int columnIndex2 = cursor.getColumnIndex("id");
            if (columnIndex2 != -1) {
                setPrimaryID(cursor.getLong(columnIndex2));
            }
            for (Field field : getClass().getDeclaredFields()) {
                if (field.isAnnotationPresent(l6.class)) {
                    field.setAccessible(true);
                    l6 l6Var = (l6) field.getAnnotation(l6.class);
                    if (l6Var != null && (columnIndex = cursor.getColumnIndex(l6Var.column())) != -1) {
                        try {
                            String string = cursor.getString(columnIndex);
                            if (l6Var.encode()) {
                                field.set(this, g3.b(string));
                            } else {
                                field.set(this, string);
                            }
                        } catch (IllegalAccessException e2) {
                            rm.a(e2);
                        }
                    }
                }
            }
        }
    }

    public void setPrimaryID(long j2) {
        this.primaryID = j2;
    }
}
