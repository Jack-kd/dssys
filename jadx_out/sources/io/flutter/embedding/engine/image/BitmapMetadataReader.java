package io.flutter.embedding.engine.image;

import android.graphics.BitmapFactory;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import io.flutter.Log;

@RequiresApi(28)
/* loaded from: classes5.dex */
public class BitmapMetadataReader {
    private static final String TAG = "BitmapMetadataReader";

    public static void read(byte[] bArr, @NonNull Metadata metadata) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            metadata.mimeType = options.outMimeType;
            metadata.originalHeight = options.outHeight;
            metadata.originalWidth = options.outWidth;
        } catch (Exception e2) {
            Log.e(TAG, "Failed to decode image for mime type", e2);
        }
    }
}
