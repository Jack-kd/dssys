package androidx.sqlite.db;

import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 $2\u00020\u0001:\u0001$B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\n*\u00060\u0006j\u0002`\u00072\u0006\u0010\b\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u000f\u001a\u00020\n*\u00060\u0006j\u0002`\u00072\u000e\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u000e\u001a\u00020\u00002\u0010\u0010\u000e\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u0013J+\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0015\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\r¢\u0006\u0004\b\u0014\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u0018J\r\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001fR\u0016\u0010\u0011\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010!R \u0010\u000e\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\"R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u001fR\"\u0010\u0015\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010#R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u001fR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001fR\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001fR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001f¨\u0006%"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "", "", "table", "<init>", "(Ljava/lang/String;)V", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "name", "clause", "Lkotlin/j;", "appendClause", "(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V", "", "columns", "appendColumns", "(Ljava/lang/StringBuilder;[Ljava/lang/String;)V", "distinct", "()Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "([Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "selection", "bindArgs", "(Ljava/lang/String;[Ljava/lang/Object;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "groupBy", "(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "having", "orderBy", "limit", "Landroidx/sqlite/db/SupportSQLiteQuery;", "create", "()Landroidx/sqlite/db/SupportSQLiteQuery;", "Ljava/lang/String;", "", "Z", "[Ljava/lang/String;", "[Ljava/lang/Object;", "Companion", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SupportSQLiteQueryBuilder {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static final Pattern limitPattern = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");

    @Nullable
    private Object[] bindArgs;

    @Nullable
    private String[] columns;
    private boolean distinct;

    @Nullable
    private String groupBy;

    @Nullable
    private String having;

    @Nullable
    private String limit;

    @Nullable
    private String orderBy;

    @Nullable
    private String selection;

    @NotNull
    private final String table;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteQueryBuilder$Companion;", "", "()V", "limitPattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "builder", "Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "tableName", "", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        @JvmStatic
        @NotNull
        public final SupportSQLiteQueryBuilder builder(@NotNull String tableName) {
            j.e(tableName, "tableName");
            return new SupportSQLiteQueryBuilder(tableName, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ SupportSQLiteQueryBuilder(String str, f fVar) {
        this(str);
    }

    private final void appendClause(StringBuilder sb, String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        sb.append(str);
        sb.append(str2);
    }

    private final void appendColumns(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(' ');
    }

    @JvmStatic
    @NotNull
    public static final SupportSQLiteQueryBuilder builder(@NotNull String str) {
        return INSTANCE.builder(str);
    }

    @NotNull
    public final SupportSQLiteQueryBuilder columns(@Nullable String[] columns) {
        this.columns = columns;
        return this;
    }

    @NotNull
    public final SupportSQLiteQuery create() {
        String str;
        String str2 = this.groupBy;
        if ((str2 == null || str2.length() == 0) && (str = this.having) != null && str.length() != 0) {
            throw new IllegalArgumentException("HAVING clauses are only permitted when using a groupBy clause");
        }
        StringBuilder sb = new StringBuilder(120);
        sb.append("SELECT ");
        if (this.distinct) {
            sb.append("DISTINCT ");
        }
        String[] strArr = this.columns;
        if (strArr == null || strArr.length == 0) {
            sb.append("* ");
        } else {
            j.b(strArr);
            appendColumns(sb, strArr);
        }
        sb.append("FROM ");
        sb.append(this.table);
        appendClause(sb, " WHERE ", this.selection);
        appendClause(sb, " GROUP BY ", this.groupBy);
        appendClause(sb, " HAVING ", this.having);
        appendClause(sb, " ORDER BY ", this.orderBy);
        appendClause(sb, " LIMIT ", this.limit);
        String string = sb.toString();
        j.d(string, "StringBuilder(capacity).…builderAction).toString()");
        return new SimpleSQLiteQuery(string, this.bindArgs);
    }

    @NotNull
    public final SupportSQLiteQueryBuilder distinct() {
        this.distinct = true;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder groupBy(@Nullable String groupBy) {
        this.groupBy = groupBy;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder having(@Nullable String having) {
        this.having = having;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder limit(@NotNull String limit) {
        j.e(limit, "limit");
        boolean zMatches = limitPattern.matcher(limit).matches();
        if (limit.length() == 0 || zMatches) {
            this.limit = limit;
            return this;
        }
        throw new IllegalArgumentException(("invalid LIMIT clauses:" + limit).toString());
    }

    @NotNull
    public final SupportSQLiteQueryBuilder orderBy(@Nullable String orderBy) {
        this.orderBy = orderBy;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder selection(@Nullable String selection, @Nullable Object[] bindArgs) {
        this.selection = selection;
        this.bindArgs = bindArgs;
        return this;
    }

    private SupportSQLiteQueryBuilder(String str) {
        this.table = str;
    }
}
