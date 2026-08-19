package io.flutter.plugins.webviewflutter;

import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.internal.cb;
import io.flutter.plugins.webviewflutter.ResultCompat;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u0013*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0013B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0011\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\bJ\b\u0010\u0012\u001a\u0004\u0018\u00010\fR\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\n\u001a\u0004\u0018\u00018\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u0014"}, d2 = {"Lio/flutter/plugins/webviewflutter/ResultCompat;", ExifInterface.GPS_DIRECTION_TRUE, "", "result", "Lkotlin/Result;", "<init>", "(Ljava/lang/Object;)V", "getResult-d1pmJ48", "()Ljava/lang/Object;", "Ljava/lang/Object;", f.a.f3244d, "exception", "", "isSuccess", "", "()Z", "isFailure", "getOrNull", "exceptionOrNull", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ResultCompat<T> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private final Throwable exception;
    private final boolean isFailure;
    private final boolean isSuccess;

    @NotNull
    private final Object result;

    @Nullable
    private final T value;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\b\u001a\u00020\u0007\"\u0004\b\u0001\u0010\u00042\u0006\u0010\u0005\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\b\u0010\tJA\u0010\u000e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0004\u0012\u00020\u00070\n\"\u0004\b\u0001\u0010\u00042\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000b\u0012\u0004\u0012\u00020\u00070\nH\u0007¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;", "", "<init>", "()V", ExifInterface.GPS_DIRECTION_TRUE, f.a.f3244d, "callback", "Lkotlin/j;", cb.f11292o, "(Ljava/lang/Object;Ljava/lang/Object;)V", "Lkotlin/Function1;", "Lio/flutter/plugins/webviewflutter/ResultCompat;", "result", "Lkotlin/Result;", "asCompatCallback", "(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final kotlin.j asCompatCallback$lambda$0(Function1 function1, Result result) {
            function1.invoke(new ResultCompat(result.getValue()));
            return kotlin.j.f51397a;
        }

        @JvmStatic
        @NotNull
        public final <T> Function1<Result<? extends T>, kotlin.j> asCompatCallback(@NotNull final Function1<? super ResultCompat<T>, kotlin.j> result) {
            kotlin.jvm.internal.j.e(result, "result");
            return new Function1() { // from class: io.flutter.plugins.webviewflutter.R2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ResultCompat.Companion.asCompatCallback$lambda$0(result, (Result) obj);
                }
            };
        }

        @JvmStatic
        public final <T> void success(T value, @NotNull Object callback) {
            kotlin.jvm.internal.j.e(callback, "callback");
            ((Function1) kotlin.jvm.internal.p.c(callback, 1)).invoke(Result.m65boximpl(Result.m66constructorimpl(value)));
        }

        private Companion() {
        }
    }

    public ResultCompat(@NotNull Object obj) {
        this.result = obj;
        this.value = Result.m72isFailureimpl(obj) ? null : (T) obj;
        this.exception = Result.m69exceptionOrNullimpl(obj);
        this.isSuccess = Result.m73isSuccessimpl(obj);
        this.isFailure = Result.m72isFailureimpl(obj);
    }

    @JvmStatic
    @NotNull
    public static final <T> Function1<Result<? extends T>, kotlin.j> asCompatCallback(@NotNull Function1<? super ResultCompat<T>, kotlin.j> function1) {
        return INSTANCE.asCompatCallback(function1);
    }

    @JvmStatic
    public static final <T> void success(T t2, @NotNull Object obj) {
        INSTANCE.success(t2, obj);
    }

    @Nullable
    /* renamed from: exceptionOrNull, reason: from getter */
    public final Throwable getException() {
        return this.exception;
    }

    @Nullable
    public final T getOrNull() {
        return this.value;
    }

    @NotNull
    /* renamed from: getResult-d1pmJ48, reason: not valid java name and from getter */
    public final Object getResult() {
        return this.result;
    }

    /* renamed from: isFailure, reason: from getter */
    public final boolean getIsFailure() {
        return this.isFailure;
    }

    /* renamed from: isSuccess, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }
}
