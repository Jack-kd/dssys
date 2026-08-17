package androidx.room;

import android.database.sqlite.SQLiteConstraintException;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.B;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010 \n\u0002\b\t\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u000f\u001a\u00020\u000b2\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0011¢\u0006\u0004\b\u000f\u0010\u0013J\u001b\u0010\u000f\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\u0004\b\u000f\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\u00020\u00192\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0011¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001a\u001a\u00020\u00192\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c¢\u0006\u0004\b\u001a\u0010\u001dJ#\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00160\u001e2\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0011¢\u0006\u0004\b\u001f\u0010 J!\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00160\u001e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c¢\u0006\u0004\b\u001f\u0010!J%\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00160\u00112\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0011¢\u0006\u0004\b\"\u0010#J#\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00160\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c¢\u0006\u0004\b\"\u0010$R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010%R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010&¨\u0006'"}, d2 = {"Landroidx/room/EntityUpsertionAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/room/EntityInsertionAdapter;", "insertionAdapter", "Landroidx/room/EntityDeletionOrUpdateAdapter;", "updateAdapter", "<init>", "(Landroidx/room/EntityInsertionAdapter;Landroidx/room/EntityDeletionOrUpdateAdapter;)V", "Landroid/database/sqlite/SQLiteConstraintException;", "ex", "Lkotlin/j;", "checkUniquenessException", "(Landroid/database/sqlite/SQLiteConstraintException;)V", "entity", "upsert", "(Ljava/lang/Object;)V", "", "entities", "([Ljava/lang/Object;)V", "", "(Ljava/lang/Iterable;)V", "", "upsertAndReturnId", "(Ljava/lang/Object;)J", "", "upsertAndReturnIdsArray", "([Ljava/lang/Object;)[J", "", "(Ljava/util/Collection;)[J", "", "upsertAndReturnIdsList", "([Ljava/lang/Object;)Ljava/util/List;", "(Ljava/util/Collection;)Ljava/util/List;", "upsertAndReturnIdsArrayBox", "([Ljava/lang/Object;)[Ljava/lang/Long;", "(Ljava/util/Collection;)[Ljava/lang/Long;", "Landroidx/room/EntityInsertionAdapter;", "Landroidx/room/EntityDeletionOrUpdateAdapter;", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class EntityUpsertionAdapter<T> {

    @NotNull
    private final EntityInsertionAdapter<T> insertionAdapter;

    @NotNull
    private final EntityDeletionOrUpdateAdapter<T> updateAdapter;

    public EntityUpsertionAdapter(@NotNull EntityInsertionAdapter<T> insertionAdapter, @NotNull EntityDeletionOrUpdateAdapter<T> updateAdapter) {
        kotlin.jvm.internal.j.e(insertionAdapter, "insertionAdapter");
        kotlin.jvm.internal.j.e(updateAdapter, "updateAdapter");
        this.insertionAdapter = insertionAdapter;
        this.updateAdapter = updateAdapter;
    }

    private final void checkUniquenessException(SQLiteConstraintException ex) {
        String message = ex.getMessage();
        if (message == null || !B.K(message, "1555", true)) {
            throw ex;
        }
    }

    public final void upsert(T entity) {
        try {
            this.insertionAdapter.insert((EntityInsertionAdapter<T>) entity);
        } catch (SQLiteConstraintException e2) {
            checkUniquenessException(e2);
            this.updateAdapter.handle(entity);
        }
    }

    public final long upsertAndReturnId(T entity) {
        try {
            return this.insertionAdapter.insertAndReturnId(entity);
        } catch (SQLiteConstraintException e2) {
            checkUniquenessException(e2);
            this.updateAdapter.handle(entity);
            return -1L;
        }
    }

    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull T[] entities) {
        long jInsertAndReturnId;
        kotlin.jvm.internal.j.e(entities, "entities");
        int length = entities.length;
        long[] jArr = new long[length];
        for (int i2 = 0; i2 < length; i2++) {
            try {
                jInsertAndReturnId = this.insertionAdapter.insertAndReturnId(entities[i2]);
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(entities[i2]);
                jInsertAndReturnId = -1;
            }
            jArr[i2] = jInsertAndReturnId;
        }
        return jArr;
    }

    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull T[] entities) {
        long jInsertAndReturnId;
        kotlin.jvm.internal.j.e(entities, "entities");
        int length = entities.length;
        Long[] lArr = new Long[length];
        for (int i2 = 0; i2 < length; i2++) {
            try {
                jInsertAndReturnId = this.insertionAdapter.insertAndReturnId(entities[i2]);
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(entities[i2]);
                jInsertAndReturnId = -1;
            }
            lArr[i2] = Long.valueOf(jInsertAndReturnId);
        }
        return lArr;
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull T[] entities) {
        kotlin.jvm.internal.j.e(entities, "entities");
        List listC = kotlin.collections.p.c();
        for (T t2 : entities) {
            try {
                listC.add(Long.valueOf(this.insertionAdapter.insertAndReturnId(t2)));
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(t2);
                listC.add(-1L);
            }
        }
        return kotlin.collections.p.a(listC);
    }

    public final void upsert(@NotNull T[] entities) {
        kotlin.jvm.internal.j.e(entities, "entities");
        for (T t2 : entities) {
            try {
                this.insertionAdapter.insert((EntityInsertionAdapter<T>) t2);
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(t2);
            }
        }
    }

    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull Collection<? extends T> entities) {
        long jInsertAndReturnId;
        kotlin.jvm.internal.j.e(entities, "entities");
        Iterator<? extends T> it = entities.iterator();
        int size = entities.size();
        long[] jArr = new long[size];
        for (int i2 = 0; i2 < size; i2++) {
            T next = it.next();
            try {
                jInsertAndReturnId = this.insertionAdapter.insertAndReturnId(next);
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(next);
                jInsertAndReturnId = -1;
            }
            jArr[i2] = jInsertAndReturnId;
        }
        return jArr;
    }

    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull Collection<? extends T> entities) {
        long jInsertAndReturnId;
        kotlin.jvm.internal.j.e(entities, "entities");
        Iterator<? extends T> it = entities.iterator();
        int size = entities.size();
        Long[] lArr = new Long[size];
        for (int i2 = 0; i2 < size; i2++) {
            T next = it.next();
            try {
                jInsertAndReturnId = this.insertionAdapter.insertAndReturnId(next);
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(next);
                jInsertAndReturnId = -1;
            }
            lArr[i2] = Long.valueOf(jInsertAndReturnId);
        }
        return lArr;
    }

    public final void upsert(@NotNull Iterable<? extends T> entities) {
        kotlin.jvm.internal.j.e(entities, "entities");
        for (T t2 : entities) {
            try {
                this.insertionAdapter.insert((EntityInsertionAdapter<T>) t2);
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(t2);
            }
        }
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull Collection<? extends T> entities) {
        kotlin.jvm.internal.j.e(entities, "entities");
        List listC = kotlin.collections.p.c();
        for (T t2 : entities) {
            try {
                listC.add(Long.valueOf(this.insertionAdapter.insertAndReturnId(t2)));
            } catch (SQLiteConstraintException e2) {
                checkUniquenessException(e2);
                this.updateAdapter.handle(t2);
                listC.add(-1L);
            }
        }
        return kotlin.collections.p.a(listC);
    }
}
