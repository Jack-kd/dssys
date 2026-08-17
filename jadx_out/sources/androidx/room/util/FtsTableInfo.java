package androidx.room.util;

import android.annotation.SuppressLint;
import android.database.Cursor;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.I;
import kotlin.collections.J;
import kotlin.collections.y;
import kotlin.io.a;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlin.text.B;
import kotlin.text.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B%\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\tJ\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/room/util/FtsTableInfo;", "", "name", "", "columns", "", "createSql", "(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V", "options", "(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V", "equals", "", "other", "hashCode", "", "toString", "Companion", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class FtsTableInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    @JvmField
    @NotNull
    public final Set<String> columns;

    @JvmField
    @NotNull
    public final String name;

    @JvmField
    @NotNull
    public final Set<String> options;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0007J\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/room/util/FtsTableInfo$Companion;", "", "()V", "FTS_OPTIONS", "", "", "[Ljava/lang/String;", "parseOptions", "", "createStatement", "read", "Landroidx/room/util/FtsTableInfo;", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "tableName", "readColumns", "readOptions", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        private final Set<String> readColumns(SupportSQLiteDatabase database, String tableName) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
            Set setB = I.b();
            Cursor cursorQuery = database.query("PRAGMA table_info(`" + tableName + "`)");
            try {
                Cursor cursor = cursorQuery;
                if (cursor.getColumnCount() > 0) {
                    int columnIndex = cursor.getColumnIndex("name");
                    while (cursor.moveToNext()) {
                        String string = cursor.getString(columnIndex);
                        j.d(string, "cursor.getString(nameIndex)");
                        setB.add(string);
                    }
                }
                kotlin.j jVar = kotlin.j.f51397a;
                a.a(cursorQuery, null);
                return I.a(setB);
            } finally {
            }
        }

        private final Set<String> readOptions(SupportSQLiteDatabase database, String tableName) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
            Cursor cursorQuery = database.query("SELECT * FROM sqlite_master WHERE `name` = '" + tableName + '\'');
            try {
                Cursor cursor = cursorQuery;
                String sql = cursor.moveToFirst() ? cursor.getString(cursor.getColumnIndexOrThrow("sql")) : "";
                a.a(cursorQuery, null);
                j.d(sql, "sql");
                return parseOptions(sql);
            } finally {
            }
        }

        @JvmStatic
        @VisibleForTesting
        @NotNull
        public final Set<String> parseOptions(@NotNull String createStatement) {
            Character ch;
            j.e(createStatement, "createStatement");
            if (createStatement.length() == 0) {
                return J.e();
            }
            String strSubstring = createStatement.substring(B.U(createStatement, '(', 0, false, 6, null) + 1, B.a0(createStatement, ')', 0, false, 6, null));
            j.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            ArrayList arrayList = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            int i2 = -1;
            int i3 = 0;
            int i4 = 0;
            while (i3 < strSubstring.length()) {
                char cCharAt = strSubstring.charAt(i3);
                int i5 = i4 + 1;
                if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '`') {
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(cCharAt));
                    } else {
                        Character ch2 = (Character) arrayDeque.peek();
                        if (ch2 != null && ch2.charValue() == cCharAt) {
                            arrayDeque.pop();
                        }
                    }
                } else if (cCharAt == '[') {
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(cCharAt));
                    }
                } else if (cCharAt == ']') {
                    if (!arrayDeque.isEmpty() && (ch = (Character) arrayDeque.peek()) != null && ch.charValue() == '[') {
                        arrayDeque.pop();
                    }
                } else if (cCharAt == ',' && arrayDeque.isEmpty()) {
                    String strSubstring2 = strSubstring.substring(i2 + 1, i4);
                    j.d(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    int length = strSubstring2.length() - 1;
                    int i6 = 0;
                    boolean z2 = false;
                    while (i6 <= length) {
                        boolean z3 = j.g(strSubstring2.charAt(!z2 ? i6 : length), 32) <= 0;
                        if (z2) {
                            if (!z3) {
                                break;
                            }
                            length--;
                        } else if (z3) {
                            i6++;
                        } else {
                            z2 = true;
                        }
                    }
                    arrayList.add(strSubstring2.subSequence(i6, length + 1).toString());
                    i2 = i4;
                }
                i3++;
                i4 = i5;
            }
            String strSubstring3 = strSubstring.substring(i2 + 1);
            j.d(strSubstring3, "this as java.lang.String).substring(startIndex)");
            arrayList.add(B.B0(strSubstring3).toString());
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i7 = 0;
            while (i7 < size) {
                Object obj = arrayList.get(i7);
                i7++;
                String str = (String) obj;
                String[] strArr = FtsTableInfo.FTS_OPTIONS;
                int length2 = strArr.length;
                int i8 = 0;
                while (true) {
                    if (i8 >= length2) {
                        break;
                    }
                    if (z.H(str, strArr[i8], false, 2, null)) {
                        arrayList2.add(obj);
                        break;
                    }
                    i8++;
                }
            }
            return y.e0(arrayList2);
        }

        @JvmStatic
        @SuppressLint({"SyntheticAccessor"})
        @NotNull
        public final FtsTableInfo read(@NotNull SupportSQLiteDatabase database, @NotNull String tableName) {
            j.e(database, "database");
            j.e(tableName, "tableName");
            return new FtsTableInfo(tableName, readColumns(database, tableName), readOptions(database, tableName));
        }

        private Companion() {
        }
    }

    public FtsTableInfo(@NotNull String name, @NotNull Set<String> columns, @NotNull Set<String> options) {
        j.e(name, "name");
        j.e(columns, "columns");
        j.e(options, "options");
        this.name = name;
        this.columns = columns;
        this.options = options;
    }

    @JvmStatic
    @VisibleForTesting
    @NotNull
    public static final Set<String> parseOptions(@NotNull String str) {
        return INSTANCE.parseOptions(str);
    }

    @JvmStatic
    @SuppressLint({"SyntheticAccessor"})
    @NotNull
    public static final FtsTableInfo read(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, @NotNull String str) {
        return INSTANCE.read(supportSQLiteDatabase, str);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FtsTableInfo)) {
            return false;
        }
        FtsTableInfo ftsTableInfo = (FtsTableInfo) other;
        if (j.a(this.name, ftsTableInfo.name) && j.a(this.columns, ftsTableInfo.columns)) {
            return j.a(this.options, ftsTableInfo.options);
        }
        return false;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.columns.hashCode()) * 31) + this.options.hashCode();
    }

    @NotNull
    public String toString() {
        return "FtsTableInfo{name='" + this.name + "', columns=" + this.columns + ", options=" + this.options + "'}";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FtsTableInfo(@NotNull String name, @NotNull Set<String> columns, @NotNull String createSql) {
        this(name, columns, INSTANCE.parseOptions(createSql));
        j.e(name, "name");
        j.e(columns, "columns");
        j.e(createSql, "createSql");
    }
}
