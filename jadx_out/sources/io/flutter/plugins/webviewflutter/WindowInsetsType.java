package io.flutter.plugins.webviewflutter;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lio/flutter/plugins/webviewflutter/WindowInsetsType;", "", "raw", "", "<init>", "(Ljava/lang/String;II)V", "getRaw", "()I", "SYSTEM_BARS", "DISPLAY_CUTOUT", "CAPTION_BAR", "IME", "MANDATORY_SYSTEM_GESTURES", "NAVIGATION_BARS", "STATUS_BARS", "SYSTEM_GESTURES", "TAPPABLE_ELEMENT", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class WindowInsetsType {
    private static final /* synthetic */ kotlin.enums.a $ENTRIES;
    private static final /* synthetic */ WindowInsetsType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    private final int raw;
    public static final WindowInsetsType SYSTEM_BARS = new WindowInsetsType("SYSTEM_BARS", 0, 0);
    public static final WindowInsetsType DISPLAY_CUTOUT = new WindowInsetsType("DISPLAY_CUTOUT", 1, 1);
    public static final WindowInsetsType CAPTION_BAR = new WindowInsetsType("CAPTION_BAR", 2, 2);
    public static final WindowInsetsType IME = new WindowInsetsType("IME", 3, 3);
    public static final WindowInsetsType MANDATORY_SYSTEM_GESTURES = new WindowInsetsType("MANDATORY_SYSTEM_GESTURES", 4, 4);
    public static final WindowInsetsType NAVIGATION_BARS = new WindowInsetsType("NAVIGATION_BARS", 5, 5);
    public static final WindowInsetsType STATUS_BARS = new WindowInsetsType("STATUS_BARS", 6, 6);
    public static final WindowInsetsType SYSTEM_GESTURES = new WindowInsetsType("SYSTEM_GESTURES", 7, 7);
    public static final WindowInsetsType TAPPABLE_ELEMENT = new WindowInsetsType("TAPPABLE_ELEMENT", 8, 8);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lio/flutter/plugins/webviewflutter/WindowInsetsType$Companion;", "", "<init>", "()V", "ofRaw", "Lio/flutter/plugins/webviewflutter/WindowInsetsType;", "raw", "", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/WindowInsetsType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,6974:1\n1400#2,2:6975\n*S KotlinDebug\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/WindowInsetsType$Companion\n*L\n1138#1:6975,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @Nullable
        public final WindowInsetsType ofRaw(int raw) {
            for (WindowInsetsType windowInsetsType : WindowInsetsType.values()) {
                if (windowInsetsType.getRaw() == raw) {
                    return windowInsetsType;
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ WindowInsetsType[] $values() {
        return new WindowInsetsType[]{SYSTEM_BARS, DISPLAY_CUTOUT, CAPTION_BAR, IME, MANDATORY_SYSTEM_GESTURES, NAVIGATION_BARS, STATUS_BARS, SYSTEM_GESTURES, TAPPABLE_ELEMENT};
    }

    static {
        WindowInsetsType[] windowInsetsTypeArr$values = $values();
        $VALUES = windowInsetsTypeArr$values;
        $ENTRIES = kotlin.enums.b.a(windowInsetsTypeArr$values);
        INSTANCE = new Companion(null);
    }

    private WindowInsetsType(String str, int i2, int i3) {
        this.raw = i3;
    }

    @NotNull
    public static kotlin.enums.a getEntries() {
        return $ENTRIES;
    }

    public static WindowInsetsType valueOf(String str) {
        return (WindowInsetsType) Enum.valueOf(WindowInsetsType.class, str);
    }

    public static WindowInsetsType[] values() {
        return (WindowInsetsType[]) $VALUES.clone();
    }

    public final int getRaw() {
        return this.raw;
    }
}
