package io.flutter.plugins.webviewflutter;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lio/flutter/plugins/webviewflutter/FileChooserMode;", "", "raw", "", "<init>", "(Ljava/lang/String;II)V", "getRaw", "()I", "OPEN", "OPEN_MULTIPLE", "SAVE", "UNKNOWN", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FileChooserMode {
    private static final /* synthetic */ kotlin.enums.a $ENTRIES;
    private static final /* synthetic */ FileChooserMode[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final FileChooserMode OPEN = new FileChooserMode("OPEN", 0, 0);
    public static final FileChooserMode OPEN_MULTIPLE = new FileChooserMode("OPEN_MULTIPLE", 1, 1);
    public static final FileChooserMode SAVE = new FileChooserMode("SAVE", 2, 2);
    public static final FileChooserMode UNKNOWN = new FileChooserMode("UNKNOWN", 3, 3);
    private final int raw;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lio/flutter/plugins/webviewflutter/FileChooserMode$Companion;", "", "<init>", "()V", "ofRaw", "Lio/flutter/plugins/webviewflutter/FileChooserMode;", "raw", "", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/FileChooserMode$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,6974:1\n1400#2,2:6975\n*S KotlinDebug\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/FileChooserMode$Companion\n*L\n967#1:6975,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @Nullable
        public final FileChooserMode ofRaw(int raw) {
            for (FileChooserMode fileChooserMode : FileChooserMode.values()) {
                if (fileChooserMode.getRaw() == raw) {
                    return fileChooserMode;
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ FileChooserMode[] $values() {
        return new FileChooserMode[]{OPEN, OPEN_MULTIPLE, SAVE, UNKNOWN};
    }

    static {
        FileChooserMode[] fileChooserModeArr$values = $values();
        $VALUES = fileChooserModeArr$values;
        $ENTRIES = kotlin.enums.b.a(fileChooserModeArr$values);
        INSTANCE = new Companion(null);
    }

    private FileChooserMode(String str, int i2, int i3) {
        this.raw = i3;
    }

    @NotNull
    public static kotlin.enums.a getEntries() {
        return $ENTRIES;
    }

    public static FileChooserMode valueOf(String str) {
        return (FileChooserMode) Enum.valueOf(FileChooserMode.class, str);
    }

    public static FileChooserMode[] values() {
        return (FileChooserMode[]) $VALUES.clone();
    }

    public final int getRaw() {
        return this.raw;
    }
}
