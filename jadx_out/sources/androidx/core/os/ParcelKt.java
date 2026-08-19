package androidx.core.os;

import android.os.Parcel;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a9\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u00010\u0004H\u0086\b\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"use", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/os/Parcel;", "block", "Lkotlin/Function1;", "(Landroid/os/Parcel;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "core-ktx"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nParcel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Parcel.kt\nandroidx/core/os/ParcelKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"})
/* loaded from: classes.dex */
public final class ParcelKt {
    public static final <T> T use(@NotNull Parcel parcel, @NotNull Function1<? super Parcel, ? extends T> function1) {
        T tInvoke = function1.invoke(parcel);
        parcel.recycle();
        return tInvoke;
    }
}
