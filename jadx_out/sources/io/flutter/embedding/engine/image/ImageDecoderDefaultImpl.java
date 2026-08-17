package io.flutter.embedding.engine.image;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.util.Size;
import androidx.annotation.RequiresApi;
import io.flutter.Log;
import io.flutter.embedding.engine.image.FlutterImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;

@RequiresApi(28)
/* loaded from: classes5.dex */
class ImageDecoderDefaultImpl implements ImageDecoder {
    private static final String TAG = "FlutterImageDecoderImplDefault";
    private final FlutterImageDecoder.HeaderListener listener;

    public ImageDecoderDefaultImpl(FlutterImageDecoder.HeaderListener headerListener) {
        this.listener = headerListener;
    }

    public static /* synthetic */ void a(ImageDecoderDefaultImpl imageDecoderDefaultImpl, android.graphics.ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        imageDecoderDefaultImpl.getClass();
        imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
        imageDecoder.setAllocator(1);
        if (imageDecoderDefaultImpl.listener != null) {
            Size size = imageInfo.getSize();
            imageDecoderDefaultImpl.listener.onImageHeader(size.getWidth(), size.getHeight());
        }
    }

    @Override // io.flutter.embedding.engine.image.ImageDecoder
    public Bitmap decodeImage(ByteBuffer byteBuffer, Metadata metadata) {
        try {
            return android.graphics.ImageDecoder.decodeBitmap(android.graphics.ImageDecoder.createSource(byteBuffer), new ImageDecoder$OnHeaderDecodedListener() { // from class: io.flutter.embedding.engine.image.d
                public final void onHeaderDecoded(android.graphics.ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    ImageDecoderDefaultImpl.a(this.f50848a, imageDecoder, imageInfo, source);
                }
            });
        } catch (IOException e2) {
            Log.e(TAG, "Failed to decode image", e2);
            return null;
        }
    }
}
