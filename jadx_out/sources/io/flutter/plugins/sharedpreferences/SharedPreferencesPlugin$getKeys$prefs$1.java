package io.flutter.plugins.sharedpreferences;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/M;", "", "", "", "<anonymous>", "(Lkotlinx/coroutines/M;)Ljava/util/Map;"}, k = 3, mv = {2, 2, 0})
@DebugMetadata(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getKeys$prefs$1", f = "SharedPreferencesPlugin.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_INTERRUPT}, m = "invokeSuspend", n = {}, s = {}, v = 1)
/* loaded from: classes5.dex */
public final class SharedPreferencesPlugin$getKeys$prefs$1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ List<String> $allowList;
    int label;
    final /* synthetic */ SharedPreferencesPlugin this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin$getKeys$prefs$1(SharedPreferencesPlugin sharedPreferencesPlugin, List<String> list, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.this$0 = sharedPreferencesPlugin;
        this.$allowList = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        return new SharedPreferencesPlugin$getKeys$prefs$1(this.this$0, this.$allowList, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
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
        SharedPreferencesPlugin sharedPreferencesPlugin = this.this$0;
        List<String> list = this.$allowList;
        this.label = 1;
        Object prefs = sharedPreferencesPlugin.getPrefs(list, this);
        return prefs == objE ? objE : prefs;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((SharedPreferencesPlugin$getKeys$prefs$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
