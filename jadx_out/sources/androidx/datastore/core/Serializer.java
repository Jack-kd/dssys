package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.bv;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0018\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H¦@¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\bH¦@¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00028\u00008&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0010À\u0006\u0001"}, d2 = {"Landroidx/datastore/core/Serializer;", ExifInterface.GPS_DIRECTION_TRUE, "", "Ljava/io/InputStream;", "input", "readFrom", "(Ljava/io/InputStream;Lkotlin/coroutines/e;)Ljava/lang/Object;", bv.aI, "Ljava/io/OutputStream;", "output", "Lkotlin/j;", "writeTo", "(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/e;)Ljava/lang/Object;", "getDefaultValue", "()Ljava/lang/Object;", "defaultValue", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Serializer<T> {
    T getDefaultValue();

    @Nullable
    Object readFrom(@NotNull InputStream inputStream, @NotNull e eVar);

    @Nullable
    Object writeTo(T t2, @NotNull OutputStream outputStream, @NotNull e eVar);
}
