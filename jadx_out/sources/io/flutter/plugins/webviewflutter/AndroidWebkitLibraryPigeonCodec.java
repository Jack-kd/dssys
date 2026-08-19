package io.flutter.plugins.webviewflutter;

import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;", "Lio/flutter/plugin/common/StandardMessageCodec;", "<init>", "()V", "", "type", "Ljava/nio/ByteBuffer;", "buffer", "", "readValueOfType", "(BLjava/nio/ByteBuffer;)Ljava/lang/Object;", "Ljava/io/ByteArrayOutputStream;", "stream", f.a.f3244d, "Lkotlin/j;", "writeValue", "(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6974:1\n1#2:6975\n*E\n"})
/* loaded from: classes5.dex */
class AndroidWebkitLibraryPigeonCodec extends StandardMessageCodec {
    @Override // io.flutter.plugin.common.StandardMessageCodec
    @Nullable
    public Object readValueOfType(byte type, @NotNull ByteBuffer buffer) {
        kotlin.jvm.internal.j.e(buffer, "buffer");
        if (type == -127) {
            Long l2 = (Long) readValue(buffer);
            if (l2 == null) {
                return null;
            }
            return FileChooserMode.INSTANCE.ofRaw((int) l2.longValue());
        }
        if (type == -126) {
            Long l3 = (Long) readValue(buffer);
            if (l3 == null) {
                return null;
            }
            return ConsoleMessageLevel.INSTANCE.ofRaw((int) l3.longValue());
        }
        if (type == -125) {
            Long l4 = (Long) readValue(buffer);
            if (l4 == null) {
                return null;
            }
            return OverScrollMode.INSTANCE.ofRaw((int) l4.longValue());
        }
        if (type == -124) {
            Long l5 = (Long) readValue(buffer);
            if (l5 == null) {
                return null;
            }
            return SslErrorType.INSTANCE.ofRaw((int) l5.longValue());
        }
        if (type == -123) {
            Long l6 = (Long) readValue(buffer);
            if (l6 == null) {
                return null;
            }
            return MixedContentMode.INSTANCE.ofRaw((int) l6.longValue());
        }
        if (type != -122) {
            return super.readValueOfType(type, buffer);
        }
        Long l7 = (Long) readValue(buffer);
        if (l7 == null) {
            return null;
        }
        return WindowInsetsType.INSTANCE.ofRaw((int) l7.longValue());
    }

    @Override // io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(@NotNull ByteArrayOutputStream stream, @Nullable Object value) {
        kotlin.jvm.internal.j.e(stream, "stream");
        if (value instanceof FileChooserMode) {
            stream.write(129);
            writeValue(stream, Long.valueOf(((FileChooserMode) value).getRaw()));
            return;
        }
        if (value instanceof ConsoleMessageLevel) {
            stream.write(MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE);
            writeValue(stream, Long.valueOf(((ConsoleMessageLevel) value).getRaw()));
            return;
        }
        if (value instanceof OverScrollMode) {
            stream.write(131);
            writeValue(stream, Long.valueOf(((OverScrollMode) value).getRaw()));
            return;
        }
        if (value instanceof SslErrorType) {
            stream.write(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA);
            writeValue(stream, Long.valueOf(((SslErrorType) value).getRaw()));
        } else if (value instanceof MixedContentMode) {
            stream.write(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ACCURATE_START);
            writeValue(stream, Long.valueOf(((MixedContentMode) value).getRaw()));
        } else if (!(value instanceof WindowInsetsType)) {
            super.writeValue(stream, value);
        } else {
            stream.write(MediaPlayer.MEDIA_PLAYER_OPTION_SET_MAX_FPS);
            writeValue(stream, Long.valueOf(((WindowInsetsType) value).getRaw()));
        }
    }
}
