package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.p;
import kotlin.collections.q;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.L0;
import kotlinx.coroutines.M;
import kotlinx.coroutines.N;
import kotlinx.coroutines.X;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J[\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t2\b\b\u0002\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000f\u0010\u0010Ji\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00112\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t2\b\b\u0002\u0010\r\u001a\u00020\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007¢\u0006\u0004\b\u000f\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/datastore/core/MultiProcessDataStoreFactory;", "", "<init>", "()V", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/Storage;", "storage", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "corruptionHandler", "", "Landroidx/datastore/core/DataMigration;", "migrations", "Lkotlinx/coroutines/M;", "scope", "Landroidx/datastore/core/DataStore;", "create", "(Landroidx/datastore/core/Storage;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/M;)Landroidx/datastore/core/DataStore;", "Landroidx/datastore/core/Serializer;", "serializer", "Lkotlin/Function0;", "Ljava/io/File;", "produceFile", "(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/M;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MultiProcessDataStoreFactory {

    @NotNull
    public static final MultiProcessDataStoreFactory INSTANCE = new MultiProcessDataStoreFactory();

    private MultiProcessDataStoreFactory() {
    }

    public static /* synthetic */ DataStore create$default(MultiProcessDataStoreFactory multiProcessDataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, M m2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i2 & 4) != 0) {
            list = q.l();
        }
        if ((i2 & 8) != 0) {
            m2 = N.a(X.b().plus(L0.b(null, 1, null)));
        }
        return multiProcessDataStoreFactory.create(storage, replaceFileCorruptionHandler, list, m2);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<T>> migrations, @NotNull Function0<? extends File> produceFile) {
        j.e(serializer, "serializer");
        j.e(migrations, "migrations");
        j.e(produceFile, "produceFile");
        return create$default(this, serializer, replaceFileCorruptionHandler, migrations, null, produceFile, 8, null);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull Function0<? extends File> produceFile) {
        j.e(serializer, "serializer");
        j.e(produceFile, "produceFile");
        return create$default(this, serializer, replaceFileCorruptionHandler, null, null, produceFile, 12, null);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @NotNull Function0<? extends File> produceFile) {
        j.e(serializer, "serializer");
        j.e(produceFile, "produceFile");
        return create$default(this, serializer, null, null, null, produceFile, 14, null);
    }

    public static /* synthetic */ DataStore create$default(MultiProcessDataStoreFactory multiProcessDataStoreFactory, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, M m2, Function0 function0, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i2 & 4) != 0) {
            list = q.l();
        }
        if ((i2 & 8) != 0) {
            m2 = N.a(X.b().plus(L0.b(null, 1, null)));
        }
        return multiProcessDataStoreFactory.create(serializer, replaceFileCorruptionHandler, list, m2, function0);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage) {
        j.e(storage, "storage");
        return create$default(this, storage, null, null, null, 14, null);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler) {
        j.e(storage, "storage");
        return create$default(this, storage, replaceFileCorruptionHandler, null, null, 12, null);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<T>> migrations) {
        j.e(storage, "storage");
        j.e(migrations, "migrations");
        return create$default(this, storage, replaceFileCorruptionHandler, migrations, null, 8, null);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage, @Nullable ReplaceFileCorruptionHandler<T> corruptionHandler, @NotNull List<? extends DataMigration<T>> migrations, @NotNull M scope) {
        j.e(storage, "storage");
        j.e(migrations, "migrations");
        j.e(scope, "scope");
        List listE = p.e(DataMigrationInitializer.INSTANCE.getInitializer(migrations));
        if (corruptionHandler == null) {
            corruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(storage, listE, corruptionHandler, scope);
    }

    @JvmOverloads
    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> corruptionHandler, @NotNull List<? extends DataMigration<T>> migrations, @NotNull final M scope, @NotNull Function0<? extends File> produceFile) {
        j.e(serializer, "serializer");
        j.e(migrations, "migrations");
        j.e(scope, "scope");
        j.e(produceFile, "produceFile");
        FileStorage fileStorage = new FileStorage(serializer, new Function1<File, InterProcessCoordinator>() { // from class: androidx.datastore.core.MultiProcessDataStoreFactory.create.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final InterProcessCoordinator invoke(@NotNull File it) {
                j.e(it, "it");
                return new MultiProcessCoordinator(scope.getCoroutineContext(), it);
            }
        }, produceFile);
        List listE = p.e(DataMigrationInitializer.INSTANCE.getInitializer(migrations));
        if (corruptionHandler == null) {
            corruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(fileStorage, listE, corruptionHandler, scope);
    }
}
