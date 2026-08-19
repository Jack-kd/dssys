package io.flutter.plugins.webviewflutter;

import android.util.Log;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t2\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonUtils;", "", "<init>", "()V", "createConnectionError", "Lio/flutter/plugins/webviewflutter/AndroidWebKitError;", "channelName", "", "wrapResult", "", "result", "wrapError", "exception", "", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
final class AndroidWebkitLibraryPigeonUtils {

    @NotNull
    public static final AndroidWebkitLibraryPigeonUtils INSTANCE = new AndroidWebkitLibraryPigeonUtils();

    private AndroidWebkitLibraryPigeonUtils() {
    }

    @NotNull
    public final AndroidWebKitError createConnectionError(@NotNull String channelName) {
        kotlin.jvm.internal.j.e(channelName, "channelName");
        return new AndroidWebKitError("channel-error", "Unable to establish connection on channel: '" + channelName + "'.", "");
    }

    @NotNull
    public final List<Object> wrapError(@NotNull Throwable exception) {
        kotlin.jvm.internal.j.e(exception, "exception");
        if (exception instanceof AndroidWebKitError) {
            AndroidWebKitError androidWebKitError = (AndroidWebKitError) exception;
            return kotlin.collections.q.o(androidWebKitError.getCode(), androidWebKitError.getMessage(), androidWebKitError.getDetails());
        }
        return kotlin.collections.q.o(exception.getClass().getSimpleName(), exception.toString(), "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    }

    @NotNull
    public final List<Object> wrapResult(@Nullable Object result) {
        return kotlin.collections.p.e(result);
    }
}
