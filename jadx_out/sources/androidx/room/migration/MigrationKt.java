package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.j;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a1\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"", "startVersion", "endVersion", "Lkotlin/Function1;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "Lkotlin/j;", "migrate", "Landroidx/room/migration/Migration;", "Migration", "(IILkotlin/jvm/functions/Function1;)Landroidx/room/migration/Migration;", "room-ktx_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MigrationKt {
    @NotNull
    public static final Migration Migration(int i2, int i3, @NotNull Function1<? super SupportSQLiteDatabase, j> migrate) {
        kotlin.jvm.internal.j.e(migrate, "migrate");
        return new MigrationImpl(i2, i3, migrate);
    }
}
