package io.flutter.plugins.urllauncher;

import com.byazt.rx.BaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\u0018\u00002\u00060\u0001j\u0002`\u0002B'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lio/flutter/plugins/urllauncher/FlutterError;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "code", "", "message", BaseConstants.MARKET_URI_AUTHORITY_DETAIL, "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getCode", "()Ljava/lang/String;", "getMessage", "getDetails", "()Ljava/lang/Object;", "url_launcher_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FlutterError extends RuntimeException {

    @NotNull
    private final String code;

    @Nullable
    private final Object details;

    @Nullable
    private final String message;

    public FlutterError(@NotNull String code, @Nullable String str, @Nullable Object obj) {
        j.e(code, "code");
        this.code = code;
        this.message = str;
        this.details = obj;
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    @Nullable
    public final Object getDetails() {
        return this.details;
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this.message;
    }

    public /* synthetic */ FlutterError(String str, String str2, Object obj, int i2, kotlin.jvm.internal.f fVar) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : obj);
    }
}
