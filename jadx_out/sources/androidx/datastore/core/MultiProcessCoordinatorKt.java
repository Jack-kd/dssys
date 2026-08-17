package androidx.datastore.core;

import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.i;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/coroutines/i;", g.f49337X, "Ljava/io/File;", n.f36463z, "Landroidx/datastore/core/InterProcessCoordinator;", "createMultiProcessCoordinator", "(Lkotlin/coroutines/i;Ljava/io/File;)Landroidx/datastore/core/InterProcessCoordinator;", "datastore-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "MultiProcessCoordinatorKt")
/* loaded from: classes.dex */
public final class MultiProcessCoordinatorKt {
    @NotNull
    public static final InterProcessCoordinator createMultiProcessCoordinator(@NotNull i context, @NotNull File file) {
        j.e(context, "context");
        j.e(file, "file");
        return new MultiProcessCoordinator(context, file);
    }
}
