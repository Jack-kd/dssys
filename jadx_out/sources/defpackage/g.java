package defpackage;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public class g extends StandardMessageCodec {
    @Override // io.flutter.plugin.common.StandardMessageCodec
    public Object readValueOfType(byte b3, ByteBuffer buffer) {
        j.e(buffer, "buffer");
        if (b3 == -127) {
            Object value = readValue(buffer);
            List list = value instanceof List ? (List) value : null;
            if (list != null) {
                return b.f1167b.a(list);
            }
            return null;
        }
        if (b3 != -126) {
            return super.readValueOfType(b3, buffer);
        }
        Object value2 = readValue(buffer);
        List list2 = value2 instanceof List ? (List) value2 : null;
        if (list2 != null) {
            return a.f748b.a(list2);
        }
        return null;
    }

    @Override // io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(ByteArrayOutputStream stream, Object obj) {
        j.e(stream, "stream");
        if (obj instanceof b) {
            stream.write(129);
            writeValue(stream, ((b) obj).b());
        } else if (!(obj instanceof a)) {
            super.writeValue(stream, obj);
        } else {
            stream.write(MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE);
            writeValue(stream, ((a) obj).a());
        }
    }
}
