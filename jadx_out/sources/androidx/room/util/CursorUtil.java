package androidx.room.util;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.MatrixCursor;
import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.collections.m;
import kotlin.io.a;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.i;
import kotlin.jvm.internal.j;
import kotlin.text.z;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a#\u0010\u0003\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\n\u001a\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007\u001a)\u0010\r\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010\u001a/\u0010\u0011\u001a\u0002H\u0012\"\u0004\b\u0000\u0010\u0012*\u00020\u00012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u00120\u0014H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0015\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"copyAndClose", "Landroid/database/Cursor;", "c", "findColumnIndexBySuffix", "", "cursor", "name", "", "columnNames", "", "([Ljava/lang/String;Ljava/lang/String;)I", "getColumnIndex", "getColumnIndexOrThrow", "wrapMappedColumns", "mapping", "", "(Landroid/database/Cursor;[Ljava/lang/String;[I)Landroid/database/Cursor;", "useCursor", "R", "block", "Lkotlin/Function1;", "(Landroid/database/Cursor;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "room-runtime_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@JvmName(name = "CursorUtil")
/* loaded from: classes.dex */
public final class CursorUtil {
    @NotNull
    public static final Cursor copyAndClose(@NotNull Cursor c2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        j.e(c2, "c");
        Cursor cursor = c2;
        try {
            Cursor cursor2 = cursor;
            MatrixCursor matrixCursor = new MatrixCursor(cursor2.getColumnNames(), cursor2.getCount());
            while (cursor2.moveToNext()) {
                Object[] objArr = new Object[cursor2.getColumnCount()];
                int columnCount = c2.getColumnCount();
                for (int i2 = 0; i2 < columnCount; i2++) {
                    int type = cursor2.getType(i2);
                    if (type == 0) {
                        objArr[i2] = null;
                    } else if (type == 1) {
                        objArr[i2] = Long.valueOf(cursor2.getLong(i2));
                    } else if (type == 2) {
                        objArr[i2] = Double.valueOf(cursor2.getDouble(i2));
                    } else if (type == 3) {
                        objArr[i2] = cursor2.getString(i2);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i2] = cursor2.getBlob(i2);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            a.a(cursor, null);
            return matrixCursor;
        } finally {
        }
    }

    private static final int findColumnIndexBySuffix(Cursor cursor, String str) {
        if (Build.VERSION.SDK_INT > 25 || str.length() == 0) {
            return -1;
        }
        String[] columnNames = cursor.getColumnNames();
        j.d(columnNames, "columnNames");
        return findColumnIndexBySuffix(columnNames, str);
    }

    public static final int getColumnIndex(@NotNull Cursor c2, @NotNull String name) {
        j.e(c2, "c");
        j.e(name, "name");
        int columnIndex = c2.getColumnIndex(name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = c2.getColumnIndex('`' + name + '`');
        return columnIndex2 >= 0 ? columnIndex2 : findColumnIndexBySuffix(c2, name);
    }

    public static final int getColumnIndexOrThrow(@NotNull Cursor c2, @NotNull String name) {
        String strO;
        j.e(c2, "c");
        j.e(name, "name");
        int columnIndex = getColumnIndex(c2, name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames = c2.getColumnNames();
            j.d(columnNames, "c.columnNames");
            strO = m.O(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (Exception unused) {
            strO = "unknown";
        }
        throw new IllegalArgumentException("column '" + name + "' does not exist. Available columns: " + strO);
    }

    public static final <R> R useCursor(@NotNull Cursor cursor, @NotNull Function1<? super Cursor, ? extends R> block) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        j.e(cursor, "<this>");
        j.e(block, "block");
        Cursor cursor2 = cursor;
        try {
            R rInvoke = block.invoke(cursor2);
            i.b(1);
            a.a(cursor2, null);
            i.a(1);
            return rInvoke;
        } finally {
        }
    }

    @NotNull
    public static final Cursor wrapMappedColumns(@NotNull Cursor cursor, @NotNull final String[] columnNames, @NotNull final int[] mapping) {
        j.e(cursor, "cursor");
        j.e(columnNames, "columnNames");
        j.e(mapping, "mapping");
        if (columnNames.length == mapping.length) {
            return new CursorWrapper(cursor) { // from class: androidx.room.util.CursorUtil.wrapMappedColumns.2
                @Override // android.database.CursorWrapper, android.database.Cursor
                public int getColumnIndex(@NotNull String columnName) {
                    j.e(columnName, "columnName");
                    String[] strArr = columnNames;
                    int[] iArr = mapping;
                    int length = strArr.length;
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < length) {
                        int i4 = i3 + 1;
                        if (z.v(strArr[i2], columnName, true)) {
                            return iArr[i3];
                        }
                        i2++;
                        i3 = i4;
                    }
                    return super.getColumnIndex(columnName);
                }
            };
        }
        throw new IllegalStateException("Expected columnNames.length == mapping.length");
    }

    @VisibleForTesting(otherwise = 2)
    public static final int findColumnIndexBySuffix(@NotNull String[] columnNames, @NotNull String name) {
        j.e(columnNames, "columnNames");
        j.e(name, "name");
        String str = '.' + name;
        String str2 = '.' + name + '`';
        int length = columnNames.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            String str3 = columnNames[i2];
            int i4 = i3 + 1;
            if (str3.length() >= name.length() + 2 && (z.u(str3, str, false, 2, null) || (str3.charAt(0) == '`' && z.u(str3, str2, false, 2, null)))) {
                return i3;
            }
            i2++;
            i3 = i4;
        }
        return -1;
    }
}
