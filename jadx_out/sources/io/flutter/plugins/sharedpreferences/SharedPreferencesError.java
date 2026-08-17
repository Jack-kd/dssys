package io.flutter.plugins.sharedpreferences;

import com.byazt.rx.BaseConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;", "", "code", "", "message", BaseConstants.MARKET_URI_AUTHORITY_DETAIL, "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getCode", "()Ljava/lang/String;", "getMessage", "getDetails", "()Ljava/lang/Object;", "shared_preferences_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class SharedPreferencesError extends Throwable {

    @NotNull
    private final String code;

    @Nullable
    private final Object details;

    @Nullable
    private final String message;

    public SharedPreferencesError(@NotNull String code, @Nullable String str, @Nullable Object obj) {
        kotlin.jvm.internal.j.e(code, "code");
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

    public /* synthetic */ SharedPreferencesError(String str, String str2, Object obj, int i2, kotlin.jvm.internal.f fVar) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : obj);
    }
}
