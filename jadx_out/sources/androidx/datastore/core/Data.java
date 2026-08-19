package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import com.umeng.analytics.pro.cl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0003\u001a\u00028\u00008\u0006¢\u0006\f\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/datastore/core/Data;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/State;", f.a.f3244d, "", "hashCode", cl.f49059n, "<init>", "(Ljava/lang/Object;II)V", "Lkotlin/j;", "checkHashCode", "()V", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "I", "getHashCode", "()I", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Data<T> extends State<T> {
    private final int hashCode;
    private final T value;

    public Data(T t2, int i2, int i3) {
        super(i3, null);
        this.value = t2;
        this.hashCode = i2;
    }

    public final void checkHashCode() {
        T t2 = this.value;
        if ((t2 != null ? t2.hashCode() : 0) != this.hashCode) {
            throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
        }
    }

    public final int getHashCode() {
        return this.hashCode;
    }

    public final T getValue() {
        return this.value;
    }
}
