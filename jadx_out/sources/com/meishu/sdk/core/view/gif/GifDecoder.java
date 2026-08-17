package com.meishu.sdk.core.view.gif;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.util.Log;
import com.meishu.sdk.activity.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* loaded from: classes4.dex */
class GifDecoder {
    private static final int BYTES_PER_INTEGER = 4;
    private static final int DISPOSAL_BACKGROUND = 2;
    private static final int DISPOSAL_NONE = 1;
    private static final int DISPOSAL_PREVIOUS = 3;
    private static final int DISPOSAL_UNSPECIFIED = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    public static final int LOOP_FOREVER = -1;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    private static final String TAG = "GifDecoder";
    private static final int WORK_BUFFER_SIZE = 16384;
    private int[] act;
    private BitmapProvider bitmapProvider;
    private byte[] block;
    private int downsampledHeight;
    private int downsampledWidth;
    private int framePointer;
    private GifHeader header;
    private boolean isFirstFrameTransparent;
    private int loopIndex;
    private byte[] mainPixels;
    private int[] mainScratch;
    private GifHeaderParser parser;
    private final int[] pct;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private int sampleSize;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;
    private byte[] workBuffer;
    private int workBufferPosition;
    private int workBufferSize;

    public interface BitmapProvider {
        Bitmap obtain(int i2, int i3, Bitmap.Config config);

        byte[] obtainByteArray(int i2);

        int[] obtainIntArray(int i2);

        void release(Bitmap bitmap);

        void release(byte[] bArr);

        void release(int[] iArr);
    }

    public GifDecoder(BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer) {
        this(bitmapProvider, gifHeader, byteBuffer, 1);
    }

    private int averageColorsNear(int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = i2; i10 < this.sampleSize + i2; i10++) {
            byte[] bArr = this.mainPixels;
            if (i10 >= bArr.length || i10 >= i3) {
                break;
            }
            int i11 = this.act[bArr[i10] & 255];
            if (i11 != 0) {
                i8 += (i11 >> 24) & 255;
                i7 += (i11 >> 16) & 255;
                i6 += (i11 >> 8) & 255;
                i5 += i11 & 255;
                i9++;
            }
        }
        int i12 = i2 + i4;
        for (int i13 = i12; i13 < this.sampleSize + i12; i13++) {
            byte[] bArr2 = this.mainPixels;
            if (i13 >= bArr2.length || i13 >= i3) {
                break;
            }
            int i14 = this.act[bArr2[i13] & 255];
            if (i14 != 0) {
                i8 += (i14 >> 24) & 255;
                i7 += (i14 >> 16) & 255;
                i6 += (i14 >> 8) & 255;
                i5 += i14 & 255;
                i9++;
            }
        }
        if (i9 == 0) {
            return 0;
        }
        return ((i8 / i9) << 24) | ((i7 / i9) << 16) | ((i6 / i9) << 8) | (i5 / i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v27, types: [short] */
    /* JADX WARN: Type inference failed for: r2v29 */
    private void decodeBitmapData(GifFrame gifFrame) {
        int i2;
        int i3;
        byte b3;
        int i4;
        short s2;
        byte b4 = 0;
        this.workBufferSize = 0;
        this.workBufferPosition = 0;
        if (gifFrame != null) {
            this.rawData.position(gifFrame.bufferFrameStart);
        }
        if (gifFrame == null) {
            GifHeader gifHeader = this.header;
            i2 = gifHeader.width;
            i3 = gifHeader.height;
        } else {
            i2 = gifFrame.iw;
            i3 = gifFrame.ih;
        }
        int i5 = i2 * i3;
        byte[] bArr = this.mainPixels;
        if (bArr == null || bArr.length < i5) {
            this.mainPixels = this.bitmapProvider.obtainByteArray(i5);
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[4097];
        }
        int i6 = readByte();
        boolean z2 = true;
        int i7 = 1 << i6;
        int i8 = i7 + 1;
        int i9 = i7 + 2;
        int i10 = i6 + 1;
        int i11 = (1 << i10) - 1;
        for (int i12 = 0; i12 < i7; i12++) {
            this.prefix[i12] = 0;
            this.suffix[i12] = (byte) i12;
        }
        int i13 = -1;
        int i14 = i10;
        int i15 = 0;
        int block = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = i9;
        int i23 = i11;
        int i24 = -1;
        while (true) {
            b3 = b4;
            if (i15 >= i5) {
                break;
            }
            if (block == 0) {
                block = readBlock();
                if (block <= 0) {
                    this.status = 3;
                    break;
                }
                i16 = b3;
            }
            boolean z3 = z2;
            i18 += (this.block[i16] & 255) << i17;
            i17 += 8;
            i16++;
            block += i13;
            int i25 = i19;
            int i26 = i24;
            int i27 = i22;
            int i28 = i14;
            while (i17 >= i28) {
                int i29 = i10;
                int i30 = i18 & i23;
                i18 >>= i28;
                i17 -= i28;
                if (i30 != i7) {
                    if (i30 > i27) {
                        i4 = i28;
                        this.status = 3;
                    } else {
                        i4 = i28;
                        if (i30 != i8) {
                            if (i26 == -1) {
                                this.pixelStack[i20] = this.suffix[i30];
                                i26 = i30;
                                i20++;
                                i28 = i4;
                                i25 = i26;
                                i10 = i29;
                            } else {
                                if (i30 >= i27) {
                                    this.pixelStack[i20] = (byte) i25;
                                    s2 = i26;
                                    i20++;
                                } else {
                                    s2 = i30;
                                }
                                while (s2 >= i7) {
                                    this.pixelStack[i20] = this.suffix[s2];
                                    s2 = this.prefix[s2];
                                    i20++;
                                    i30 = i30;
                                }
                                int i31 = i30;
                                byte[] bArr2 = this.suffix;
                                i25 = bArr2[s2] & 255;
                                int i32 = i20 + 1;
                                byte b5 = (byte) i25;
                                this.pixelStack[i20] = b5;
                                if (i27 < 4096) {
                                    this.prefix[i27] = (short) i26;
                                    bArr2[i27] = b5;
                                    i27++;
                                    if ((i27 & i23) == 0 && i27 < 4096) {
                                        i23 += i27;
                                        i4++;
                                    }
                                }
                                i20 = i32;
                                while (i20 > 0) {
                                    i20--;
                                    this.mainPixels[i21] = this.pixelStack[i20];
                                    i15++;
                                    i21++;
                                }
                                i10 = i29;
                                i28 = i4;
                                i26 = i31;
                            }
                        }
                    }
                    i24 = i26;
                    i19 = i25;
                    i22 = i27;
                    i10 = i29;
                    break;
                }
                i27 = i9;
                i23 = i11;
                i10 = i29;
                i28 = i10;
                i26 = -1;
            }
            i4 = i28;
            i24 = i26;
            i19 = i25;
            i22 = i27;
            b4 = b3;
            i14 = i4;
            i13 = -1;
            z2 = z3;
        }
        for (int i33 = i21; i33 < i5; i33++) {
            this.mainPixels[i33] = b3;
        }
    }

    private void fillRect(int[] iArr, GifFrame gifFrame, int i2) {
        int i3 = gifFrame.ih;
        int i4 = this.sampleSize;
        int i5 = i3 / i4;
        int i6 = gifFrame.iy / i4;
        int i7 = gifFrame.iw / i4;
        int i8 = gifFrame.ix / i4;
        int i9 = this.downsampledWidth;
        int i10 = (i6 * i9) + i8;
        int i11 = (i5 * i9) + i10;
        while (i10 < i11) {
            int i12 = i10 + i7;
            for (int i13 = i10; i13 < i12; i13++) {
                iArr[i13] = i2;
            }
            i10 += this.downsampledWidth;
        }
    }

    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    private Bitmap getNextBitmap() {
        Bitmap bitmapObtain = null;
        try {
            bitmapObtain = this.bitmapProvider.obtain(this.downsampledWidth, this.downsampledHeight, Bitmap.Config.ARGB_8888);
            if (bitmapObtain == null) {
                return bitmapObtain;
            }
            setAlpha(bitmapObtain);
            return bitmapObtain;
        } catch (Throwable th) {
            th.printStackTrace();
            return bitmapObtain;
        }
    }

    private int readBlock() {
        int i2 = readByte();
        if (i2 > 0) {
            try {
                if (this.block == null) {
                    this.block = this.bitmapProvider.obtainByteArray(255);
                }
                int i3 = this.workBufferSize;
                int i4 = this.workBufferPosition;
                int i5 = i3 - i4;
                if (i5 >= i2) {
                    System.arraycopy(this.workBuffer, i4, this.block, 0, i2);
                    this.workBufferPosition += i2;
                    return i2;
                }
                if (this.rawData.remaining() + i5 < i2) {
                    this.status = 1;
                    return i2;
                }
                System.arraycopy(this.workBuffer, this.workBufferPosition, this.block, 0, i5);
                this.workBufferPosition = this.workBufferSize;
                readChunkIfNeeded();
                int i6 = i2 - i5;
                System.arraycopy(this.workBuffer, 0, this.block, i5, i6);
                this.workBufferPosition += i6;
                return i2;
            } catch (Exception unused) {
                this.status = 1;
            }
        }
        return i2;
    }

    private int readByte() {
        try {
            readChunkIfNeeded();
            byte[] bArr = this.workBuffer;
            int i2 = this.workBufferPosition;
            this.workBufferPosition = i2 + 1;
            return bArr[i2] & 255;
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }

    private void readChunkIfNeeded() {
        if (this.workBufferSize > this.workBufferPosition) {
            return;
        }
        if (this.workBuffer == null) {
            this.workBuffer = this.bitmapProvider.obtainByteArray(16384);
        }
        this.workBufferPosition = 0;
        int iMin = Math.min(this.rawData.remaining(), 16384);
        this.workBufferSize = iMin;
        this.rawData.get(this.workBuffer, 0, iMin);
    }

    @TargetApi(12)
    private static void setAlpha(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap setPixels(com.meishu.sdk.core.view.gif.GifFrame r19, com.meishu.sdk.core.view.gif.GifFrame r20) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.view.gif.GifDecoder.setPixels(com.meishu.sdk.core.view.gif.GifFrame, com.meishu.sdk.core.view.gif.GifFrame):android.graphics.Bitmap");
    }

    public boolean advance() {
        if (this.header.frameCount <= 0) {
            return false;
        }
        if (this.framePointer == getFrameCount() - 1) {
            this.loopIndex++;
        }
        GifHeader gifHeader = this.header;
        int i2 = gifHeader.loopCount;
        if (i2 != -1 && this.loopIndex > i2) {
            return false;
        }
        this.framePointer = (this.framePointer + 1) % gifHeader.frameCount;
        return true;
    }

    public void clear() {
        this.header = null;
        byte[] bArr = this.mainPixels;
        if (bArr != null) {
            this.bitmapProvider.release(bArr);
        }
        int[] iArr = this.mainScratch;
        if (iArr != null) {
            this.bitmapProvider.release(iArr);
        }
        Bitmap bitmap = this.previousImage;
        if (bitmap != null) {
            this.bitmapProvider.release(bitmap);
        }
        this.previousImage = null;
        this.rawData = null;
        this.isFirstFrameTransparent = false;
        byte[] bArr2 = this.block;
        if (bArr2 != null) {
            this.bitmapProvider.release(bArr2);
        }
        byte[] bArr3 = this.workBuffer;
        if (bArr3 != null) {
            this.bitmapProvider.release(bArr3);
        }
    }

    public int getByteSize() {
        return (this.mainScratch.length * 4) + this.rawData.limit() + this.mainPixels.length;
    }

    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    public ByteBuffer getData() {
        return this.rawData;
    }

    public int getDelay(int i2) {
        if (i2 < 0) {
            return -1;
        }
        GifHeader gifHeader = this.header;
        if (i2 < gifHeader.frameCount) {
            return gifHeader.frames.get(i2).delay;
        }
        return -1;
    }

    public int getFrameCount() {
        return this.header.frameCount;
    }

    public int getHeight() {
        return this.header.height;
    }

    public int getLoopCount() {
        return this.header.loopCount;
    }

    public int getLoopIndex() {
        return this.loopIndex;
    }

    public int getNextDelay() {
        int i2;
        if (this.header.frameCount <= 0 || (i2 = this.framePointer) < 0) {
            return 0;
        }
        return getDelay(i2);
    }

    public synchronized Bitmap getNextFrame() {
        try {
            if (this.header.frameCount <= 0 || this.framePointer < 0) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sbA = a.a("unable to decode frame, frameCount=");
                    sbA.append(this.header.frameCount);
                    sbA.append(" framePointer=");
                    sbA.append(this.framePointer);
                }
                this.status = 1;
            }
            int i2 = this.status;
            if (i2 != 1 && i2 != 2) {
                this.status = 0;
                GifFrame gifFrame = this.header.frames.get(this.framePointer);
                int i3 = this.framePointer - 1;
                GifFrame gifFrame2 = i3 >= 0 ? this.header.frames.get(i3) : null;
                int[] iArr = gifFrame.lct;
                if (iArr == null) {
                    iArr = this.header.gct;
                }
                this.act = iArr;
                if (iArr == null) {
                    if (Log.isLoggable(TAG, 3)) {
                        a.a("No Valid Color Table for frame #").append(this.framePointer);
                    }
                    this.status = 1;
                    return null;
                }
                if (gifFrame.transparency) {
                    System.arraycopy(iArr, 0, this.pct, 0, iArr.length);
                    int[] iArr2 = this.pct;
                    this.act = iArr2;
                    iArr2[gifFrame.transIndex] = 0;
                }
                return setPixels(gifFrame, gifFrame2);
            }
            if (Log.isLoggable(TAG, 3)) {
                a.a("Unable to decode frame, status=").append(this.status);
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public int getStatus() {
        return this.status;
    }

    public int getWidth() {
        return this.header.width;
    }

    public int read(InputStream inputStream, int i2) throws IOException {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2 > 0 ? i2 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i3 = inputStream.read(bArr, 0, 16384);
                    if (i3 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i3);
                }
                byteArrayOutputStream.flush();
                read(2, byteArrayOutputStream.toByteArray());
            } catch (IOException unused) {
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
        }
        return this.status;
    }

    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    public void resetLoopIndex() {
        this.loopIndex = 0;
    }

    public synchronized void setData(GifHeader gifHeader, byte[] bArr) {
        setData(gifHeader, ByteBuffer.wrap(bArr));
    }

    public boolean setFrameIndex(int i2) {
        if (i2 < -1 || i2 >= getFrameCount()) {
            return false;
        }
        this.framePointer = i2;
        return true;
    }

    public GifDecoder(BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i2) {
        this(bitmapProvider);
        setData(gifHeader, byteBuffer, i2);
    }

    public synchronized void setData(GifHeader gifHeader, ByteBuffer byteBuffer) {
        setData(gifHeader, byteBuffer, 2);
    }

    public synchronized void setData(GifHeader gifHeader, ByteBuffer byteBuffer, int i2) {
        try {
            if (i2 > 0) {
                int iHighestOneBit = Integer.highestOneBit(i2);
                this.status = 0;
                this.header = gifHeader;
                this.isFirstFrameTransparent = false;
                this.framePointer = -1;
                resetLoopIndex();
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.rawData = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.rawData.order(ByteOrder.LITTLE_ENDIAN);
                this.savePrevious = false;
                Iterator<GifFrame> it = gifHeader.frames.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next().dispose == 3) {
                        this.savePrevious = true;
                        break;
                    }
                }
                this.sampleSize = iHighestOneBit;
                int i3 = gifHeader.width;
                this.downsampledWidth = i3 / iHighestOneBit;
                int i4 = gifHeader.height;
                this.downsampledHeight = i4 / iHighestOneBit;
                this.mainPixels = this.bitmapProvider.obtainByteArray(i3 * i4);
                this.mainScratch = this.bitmapProvider.obtainIntArray(this.downsampledWidth * this.downsampledHeight);
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public GifDecoder(BitmapProvider bitmapProvider) {
        this.pct = new int[256];
        this.workBufferSize = 0;
        this.workBufferPosition = 0;
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    public GifDecoder() {
        this(new SimpleBitmapProvider());
    }

    public synchronized int read(int i2, byte[] bArr) {
        try {
            GifHeader header = getHeaderParser().setData(bArr).parseHeader();
            this.header = header;
            if (bArr != null) {
                setData(header, ByteBuffer.wrap(bArr), i2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.status;
    }
}
