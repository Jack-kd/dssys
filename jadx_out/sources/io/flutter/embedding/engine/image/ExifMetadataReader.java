package io.flutter.embedding.engine.image;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import io.flutter.Log;
import java.io.ByteArrayInputStream;
import java.io.IOException;

@RequiresApi(28)
/* loaded from: classes5.dex */
class ExifMetadataReader {
    private static final String TAG = "ExifMetadataReader";

    public static void read(byte[] bArr, @NonNull Metadata metadata) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                metadata.orientation = new ExifInterface(byteArrayInputStream).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
                byteArrayInputStream.close();
            } finally {
            }
        } catch (IOException e2) {
            Log.e(TAG, "Failed to read EXIF metadata", e2);
        }
    }
}
