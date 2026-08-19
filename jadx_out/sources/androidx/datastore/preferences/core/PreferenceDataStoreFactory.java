package androidx.datastore.preferences.core;

import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.FileStorage;
import androidx.datastore.core.Storage;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.q;
import kotlin.io.f;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.L0;
import kotlinx.coroutines.M;
import kotlinx.coroutines.N;
import kotlinx.coroutines.X;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JU\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f2\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0014\b\u0002\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u00072\b\b\u0002\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011JU\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0014\b\u0002\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u00072\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0010\u0010\u0014JU\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f2\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0014\b\u0002\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u00072\b\b\u0002\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00150\fH\u0007¢\u0006\u0004\b\u0016\u0010\u0011¨\u0006\u0017"}, d2 = {"Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;", "", "<init>", "()V", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "Landroidx/datastore/preferences/core/Preferences;", "corruptionHandler", "", "Landroidx/datastore/core/DataMigration;", "migrations", "Lkotlinx/coroutines/M;", "scope", "Lkotlin/Function0;", "Ljava/io/File;", "produceFile", "Landroidx/datastore/core/DataStore;", "create", "(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/M;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;", "Landroidx/datastore/core/Storage;", "storage", "(Landroidx/datastore/core/Storage;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/M;)Landroidx/datastore/core/DataStore;", "Lokio/Path;", "createWithPath", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PreferenceDataStoreFactory {

    @NotNull
    public static final PreferenceDataStoreFactory INSTANCE = new PreferenceDataStoreFactory();

    private PreferenceDataStoreFactory() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, M m2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i2 & 4) != 0) {
            list = q.l();
        }
        if ((i2 & 8) != 0) {
            m2 = N.a(Actual_jvmAndroidKt.ioDispatcher().plus(L0.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.create((Storage<Preferences>) storage, (ReplaceFileCorruptionHandler<Preferences>) replaceFileCorruptionHandler, (List<? extends DataMigration<Preferences>>) list, m2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore createWithPath$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, M m2, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i2 & 2) != 0) {
            list = q.l();
        }
        if ((i2 & 4) != 0) {
            m2 = N.a(Actual_jvmAndroidKt.ioDispatcher().plus(L0.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.createWithPath(replaceFileCorruptionHandler, list, m2, function0);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage) {
        j.e(storage, "storage");
        return create$default(this, storage, (ReplaceFileCorruptionHandler) null, (List) null, (M) null, 14, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> createWithPath(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull Function0<Path> produceFile) {
        j.e(migrations, "migrations");
        j.e(produceFile, "produceFile");
        return createWithPath$default(this, replaceFileCorruptionHandler, migrations, null, produceFile, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler) {
        j.e(storage, "storage");
        return create$default(this, storage, replaceFileCorruptionHandler, (List) null, (M) null, 12, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> createWithPath(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull Function0<Path> produceFile) {
        j.e(produceFile, "produceFile");
        return createWithPath$default(this, replaceFileCorruptionHandler, null, null, produceFile, 6, null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations) {
        j.e(storage, "storage");
        j.e(migrations, "migrations");
        return create$default(this, storage, replaceFileCorruptionHandler, migrations, (M) null, 8, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> createWithPath(@NotNull Function0<Path> produceFile) {
        j.e(produceFile, "produceFile");
        return createWithPath$default(this, null, null, null, produceFile, 7, null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull Function0<? extends File> produceFile) {
        j.e(migrations, "migrations");
        j.e(produceFile, "produceFile");
        return create$default(this, replaceFileCorruptionHandler, migrations, (M) null, produceFile, 4, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> createWithPath(@Nullable ReplaceFileCorruptionHandler<Preferences> corruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull M scope, @NotNull final Function0<Path> produceFile) {
        j.e(migrations, "migrations");
        j.e(scope, "scope");
        j.e(produceFile, "produceFile");
        return create(corruptionHandler, migrations, scope, new Function0<File>() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory.createWithPath.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return produceFile.invoke().toFile();
            }
        });
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull Function0<? extends File> produceFile) {
        j.e(produceFile, "produceFile");
        return create$default(this, replaceFileCorruptionHandler, (List) null, (M) null, produceFile, 6, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@NotNull Function0<? extends File> produceFile) {
        j.e(produceFile, "produceFile");
        return create$default(this, (ReplaceFileCorruptionHandler) null, (List) null, (M) null, produceFile, 7, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, M m2, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i2 & 2) != 0) {
            list = q.l();
        }
        if ((i2 & 4) != 0) {
            m2 = N.a(X.b().plus(L0.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.create((ReplaceFileCorruptionHandler<Preferences>) replaceFileCorruptionHandler, (List<? extends DataMigration<Preferences>>) list, m2, (Function0<? extends File>) function0);
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@Nullable ReplaceFileCorruptionHandler<Preferences> corruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull M scope, @NotNull final Function0<? extends File> produceFile) {
        j.e(migrations, "migrations");
        j.e(scope, "scope");
        j.e(produceFile, "produceFile");
        return new PreferenceDataStore(create(new FileStorage(PreferencesFileSerializer.INSTANCE, null, new Function0<File>() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$create$delegate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                File fileInvoke = produceFile.invoke();
                if (j.a(f.a(fileInvoke), "preferences_pb")) {
                    File absoluteFile = fileInvoke.getAbsoluteFile();
                    j.d(absoluteFile, "file.absoluteFile");
                    return absoluteFile;
                }
                throw new IllegalStateException(("File extension for file: " + fileInvoke + " does not match required extension for Preferences file: preferences_pb").toString());
            }
        }, 2, null), corruptionHandler, migrations, scope));
    }

    @JvmOverloads
    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage, @Nullable ReplaceFileCorruptionHandler<Preferences> corruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull M scope) {
        j.e(storage, "storage");
        j.e(migrations, "migrations");
        j.e(scope, "scope");
        return new PreferenceDataStore(DataStoreFactory.INSTANCE.create(storage, corruptionHandler, migrations, scope));
    }
}
