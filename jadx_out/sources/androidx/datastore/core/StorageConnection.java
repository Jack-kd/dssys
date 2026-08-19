package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import com.sigmob.sdk.base.mta.PointCategory;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002JZ\u0010\u000e\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00032B\u0010\r\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004¢\u0006\u0002\b\fH¦@¢\u0006\u0004\b\u000e\u0010\u000fJ?\u0010\u0013\u001a\u00020\u00122-\u0010\r\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0010¢\u0006\u0002\b\fH¦@¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0019À\u0006\u0001"}, d2 = {"Landroidx/datastore/core/StorageConnection;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/Closeable;", "R", "Lkotlin/Function3;", "Landroidx/datastore/core/ReadScope;", "", "Lkotlin/ParameterName;", "name", PointCategory.LOCKED, "Lkotlin/coroutines/e;", "", "Lkotlin/ExtensionFunctionType;", "block", "readScope", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Lkotlin/Function2;", "Landroidx/datastore/core/WriteScope;", "Lkotlin/j;", "writeScope", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Landroidx/datastore/core/InterProcessCoordinator;", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "coordinator", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface StorageConnection<T> extends Closeable {
    @NotNull
    InterProcessCoordinator getCoordinator();

    @Nullable
    <R> Object readScope(@NotNull Function3<? super ReadScope<T>, ? super Boolean, ? super e, ? extends Object> function3, @NotNull e eVar);

    @Nullable
    Object writeScope(@NotNull Function2<? super WriteScope<T>, ? super e, ? extends Object> function2, @NotNull e eVar);
}
