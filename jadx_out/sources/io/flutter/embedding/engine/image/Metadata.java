package io.flutter.embedding.engine.image;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import io.flutter.embedding.engine.image.FlutterImageDecoder;
import java.nio.ByteBuffer;

@RequiresApi(28)
/* loaded from: classes5.dex */
class Metadata {
    int height;

    @Nullable
    String mimeType;
    int orientation;
    int originalHeight;
    int originalWidth;
    int rotation;
    int width;

    @VisibleForTesting
    public Metadata() {
    }

    public static Metadata create(@NonNull ByteBuffer byteBuffer, @NonNull FlutterImageDecoder.HeaderListener headerListener) {
        Metadata metadata = new Metadata();
        byte[] bytes = ImageUtils.getBytes(byteBuffer);
        BitmapMetadataReader.read(bytes, metadata);
        if (metadata.isHeif()) {
            MediaMetadataReader.read(bytes, metadata);
            headerListener.onImageHeader(metadata.width, metadata.height);
            ExifMetadataReader.read(bytes, metadata);
        }
        return metadata;
    }

    public boolean isHeif() {
        return "image/heif".equals(this.mimeType);
    }
}
