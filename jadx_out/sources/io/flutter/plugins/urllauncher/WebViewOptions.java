package io.flutter.plugins.urllauncher;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.q;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010J\u0013\u0010\u0011\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0015\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J3\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lio/flutter/plugins/urllauncher/WebViewOptions;", "", "enableJavaScript", "", "enableDomStorage", "headers", "", "", "<init>", "(ZZLjava/util/Map;)V", "getEnableJavaScript", "()Z", "getEnableDomStorage", "getHeaders", "()Ljava/util/Map;", "toList", "", "equals", "other", "hashCode", "", "component1", "component2", "component3", "copy", "toString", "Companion", "url_launcher_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final /* data */ class WebViewOptions {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private final boolean enableDomStorage;
    private final boolean enableJavaScript;

    @NotNull
    private final Map<String, String> headers;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007¨\u0006\b"}, d2 = {"Lio/flutter/plugins/urllauncher/WebViewOptions$Companion;", "", "<init>", "()V", "fromList", "Lio/flutter/plugins/urllauncher/WebViewOptions;", "pigeonVar_list", "", "url_launcher_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @NotNull
        public final WebViewOptions fromList(@NotNull List<? extends Object> pigeonVar_list) {
            j.e(pigeonVar_list, "pigeonVar_list");
            Object obj = pigeonVar_list.get(0);
            j.c(obj, "null cannot be cast to non-null type kotlin.Boolean");
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            Object obj2 = pigeonVar_list.get(1);
            j.c(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
            Object obj3 = pigeonVar_list.get(2);
            j.c(obj3, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            return new WebViewOptions(zBooleanValue, zBooleanValue2, (Map) obj3);
        }

        private Companion() {
        }
    }

    public WebViewOptions(boolean z2, boolean z3, @NotNull Map<String, String> headers) {
        j.e(headers, "headers");
        this.enableJavaScript = z2;
        this.enableDomStorage = z3;
        this.headers = headers;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WebViewOptions copy$default(WebViewOptions webViewOptions, boolean z2, boolean z3, Map map, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z2 = webViewOptions.enableJavaScript;
        }
        if ((i2 & 2) != 0) {
            z3 = webViewOptions.enableDomStorage;
        }
        if ((i2 & 4) != 0) {
            map = webViewOptions.headers;
        }
        return webViewOptions.copy(z2, z3, map);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getEnableJavaScript() {
        return this.enableJavaScript;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getEnableDomStorage() {
        return this.enableDomStorage;
    }

    @NotNull
    public final Map<String, String> component3() {
        return this.headers;
    }

    @NotNull
    public final WebViewOptions copy(boolean enableJavaScript, boolean enableDomStorage, @NotNull Map<String, String> headers) {
        j.e(headers, "headers");
        return new WebViewOptions(enableJavaScript, enableDomStorage, headers);
    }

    public boolean equals(@Nullable Object other) {
        if (other != null && j.a(other.getClass(), WebViewOptions.class)) {
            if (this == other) {
                return true;
            }
            WebViewOptions webViewOptions = (WebViewOptions) other;
            MessagesPigeonUtils messagesPigeonUtils = MessagesPigeonUtils.INSTANCE;
            if (messagesPigeonUtils.deepEquals(Boolean.valueOf(this.enableJavaScript), Boolean.valueOf(webViewOptions.enableJavaScript)) && messagesPigeonUtils.deepEquals(Boolean.valueOf(this.enableDomStorage), Boolean.valueOf(webViewOptions.enableDomStorage)) && messagesPigeonUtils.deepEquals(this.headers, webViewOptions.headers)) {
                return true;
            }
        }
        return false;
    }

    public final boolean getEnableDomStorage() {
        return this.enableDomStorage;
    }

    public final boolean getEnableJavaScript() {
        return this.enableJavaScript;
    }

    @NotNull
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public int hashCode() {
        int iHashCode = WebViewOptions.class.hashCode() * 31;
        MessagesPigeonUtils messagesPigeonUtils = MessagesPigeonUtils.INSTANCE;
        return ((((iHashCode + messagesPigeonUtils.deepHash(Boolean.valueOf(this.enableJavaScript))) * 31) + messagesPigeonUtils.deepHash(Boolean.valueOf(this.enableDomStorage))) * 31) + messagesPigeonUtils.deepHash(this.headers);
    }

    @NotNull
    public final List<Object> toList() {
        return q.o(Boolean.valueOf(this.enableJavaScript), Boolean.valueOf(this.enableDomStorage), this.headers);
    }

    @NotNull
    public String toString() {
        return "WebViewOptions(enableJavaScript=" + this.enableJavaScript + ", enableDomStorage=" + this.enableDomStorage + ", headers=" + this.headers + ")";
    }
}
