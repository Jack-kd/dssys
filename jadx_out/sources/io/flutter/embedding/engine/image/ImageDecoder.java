package io.flutter.embedding.engine.image;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
interface ImageDecoder {
    Bitmap decodeImage(ByteBuffer byteBuffer, Metadata metadata);
}
