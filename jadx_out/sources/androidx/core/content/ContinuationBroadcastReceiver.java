package androidx.core.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B4\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u001f\u0010\b\u001a\u001b\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000e\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fR-\u0010\b\u001a\u001b\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0010R\u001c\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/core/content/ContinuationBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Lkotlin/coroutines/e;", "continuation", "Lkotlin/Function2;", "Landroid/content/Intent;", "Lkotlin/j;", "Lkotlin/ExtensionFunctionType;", "onReceiveChecked", "<init>", "(Lkotlin/coroutines/e;Lkotlin/jvm/functions/Function2;)V", "Landroid/content/Context;", com.umeng.analytics.pro.g.f49337X, "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Lkotlin/jvm/functions/Function2;", "Lkotlin/coroutines/e;", "core-ktx"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
final class ContinuationBroadcastReceiver extends BroadcastReceiver {

    @Nullable
    private kotlin.coroutines.e continuation;

    @NotNull
    private final Function2<BroadcastReceiver, Intent, kotlin.j> onReceiveChecked;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationBroadcastReceiver(@NotNull kotlin.coroutines.e eVar, @NotNull Function2<? super BroadcastReceiver, ? super Intent, kotlin.j> function2) {
        this.onReceiveChecked = function2;
        this.continuation = eVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        try {
            this.onReceiveChecked.invoke(this, intent);
        } catch (Throwable th) {
            kotlin.coroutines.e eVar = this.continuation;
            if (eVar == null) {
                throw th;
            }
            Result.Companion companion = Result.INSTANCE;
            eVar.resumeWith(Result.m66constructorimpl(kotlin.e.a(th)));
            this.continuation = null;
        }
    }
}
