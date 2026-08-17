package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1", f = "DataStoreImpl.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class DataStoreImpl$transformAndWrite$2$newData$1 extends SuspendLambda implements Function2<M, e, Object> {
    final /* synthetic */ Data<T> $curData;
    final /* synthetic */ Function2<T, e, Object> $transform;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreImpl$transformAndWrite$2$newData$1(Function2<? super T, ? super e, ? extends Object> function2, Data<T> data, e eVar) {
        super(2, eVar);
        this.$transform = function2;
        this.$curData = data;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final e create(@Nullable Object obj, @NotNull e eVar) {
        return new DataStoreImpl$transformAndWrite$2$newData$1(this.$transform, this.$curData, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
            return obj;
        }
        kotlin.e.b(obj);
        Function2<T, e, Object> function2 = this.$transform;
        Object value = this.$curData.getValue();
        this.label = 1;
        Object objInvoke = function2.invoke(value, this);
        return objInvoke == objE ? objE : objInvoke;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull M m2, @Nullable e eVar) {
        return ((DataStoreImpl$transformAndWrite$2$newData$1) create(m2, eVar)).invokeSuspend(j.f51397a);
    }
}
