package h1;

import android.database.Cursor;
import android.os.Build;
import i1.AbstractC1448a;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* renamed from: h1.F, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1433F {
    public static List a(Cursor cursor, int i2) {
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            Object objB = b(cursor, i3);
            if (AbstractC1448a.f50818c) {
                String strC = c(objB);
                cursor.getType(i3);
                Objects.toString(objB);
                if (strC != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(" (");
                    sb.append(strC);
                    sb.append(")");
                }
            }
            arrayList.add(objB);
        }
        return arrayList;
    }

    public static Object b(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            return null;
        }
        return cursor.getBlob(i2);
    }

    public static String c(Object obj) {
        if (obj == null) {
            return null;
        }
        if (!obj.getClass().isArray()) {
            return obj.getClass().getName();
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("array(");
            Class<?> componentType = obj.getClass().getComponentType();
            Objects.requireNonNull(componentType);
            sb.append(componentType.getName());
            sb.append(")");
            return sb.toString();
        } catch (Exception unused) {
            return "array";
        }
    }

    public static long d(Thread thread) {
        return Build.VERSION.SDK_INT >= 36 ? thread.threadId() : thread.getId();
    }

    public static Locale e(String str) {
        return f(str);
    }

    public static Locale f(String str) {
        return Locale.forLanguageTag(str);
    }
}
