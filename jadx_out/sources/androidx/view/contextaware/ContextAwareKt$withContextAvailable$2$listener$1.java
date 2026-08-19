package androidx.view.contextaware;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.g;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.e;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.InterfaceC1687l;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"androidx/activity/contextaware/ContextAwareKt$withContextAvailable$2$listener$1", "Landroidx/activity/contextaware/OnContextAvailableListener;", "Landroid/content/Context;", g.f49337X, "Lkotlin/j;", "onContextAvailable", "(Landroid/content/Context;)V", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HURRY_THRESHOLD)
@SourceDebugExtension({"SMAP\nContextAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextAware.kt\nandroidx/activity/contextaware/ContextAwareKt$withContextAvailable$2$listener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"})
/* loaded from: classes.dex */
public final class ContextAwareKt$withContextAvailable$2$listener$1 implements OnContextAvailableListener {
    final /* synthetic */ InterfaceC1687l $co;
    final /* synthetic */ Function1<Context, R> $onContextAvailable;

    public ContextAwareKt$withContextAvailable$2$listener$1(InterfaceC1687l interfaceC1687l, Function1<Context, R> function1) {
        this.$co = interfaceC1687l;
        this.$onContextAvailable = function1;
    }

    @Override // androidx.view.contextaware.OnContextAvailableListener
    public void onContextAvailable(@NotNull Context context) {
        Object objM66constructorimpl;
        j.e(context, "context");
        InterfaceC1687l interfaceC1687l = this.$co;
        Function1<Context, R> function1 = this.$onContextAvailable;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM66constructorimpl = Result.m66constructorimpl(function1.invoke(context));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM66constructorimpl = Result.m66constructorimpl(e.a(th));
        }
        interfaceC1687l.resumeWith(objM66constructorimpl);
    }
}
