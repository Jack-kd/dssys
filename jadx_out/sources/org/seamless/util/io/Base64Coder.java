package org.seamless.util.io;

import androidx.core.view.MotionEventCompat;
import com.sigmob.sdk.archives.tar.e;
import com.umeng.analytics.pro.ek;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes5.dex */
public class Base64Coder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "US-ASCII";
    public static final int URL_SAFE = 16;
    private static final byte[] _STANDARD_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, e.f35450P, 77, 78, 79, 80, 81, 82, e.f35451Q, 84, 85, 86, 87, e.f35453S, 89, 90, 97, 98, 99, 100, 101, 102, e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, e.f35452R, 121, 122, e.f35442H, e.f35443I, e.f35444J, e.f35445K, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 43, 47};
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    private static final byte[] _STANDARD_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 58, 59, 60, EQUALS_SIGN, -9, -9, -9, EQUALS_SIGN_ENC, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, e.f35442H, e.f35443I, e.f35444J, e.f35445K, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _URL_SAFE_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, e.f35450P, 77, 78, 79, 80, 81, 82, e.f35451Q, 84, 85, 86, 87, e.f35453S, 89, 90, 97, 98, 99, 100, 101, 102, e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, e.f35452R, 121, 122, e.f35442H, e.f35443I, e.f35444J, e.f35445K, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 45, 95};
    private static final byte[] _URL_SAFE_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 58, 59, 60, EQUALS_SIGN, -9, -9, -9, EQUALS_SIGN_ENC, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, e.f35442H, e.f35443I, e.f35444J, e.f35445K, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _ORDERED_ALPHABET = {45, e.f35442H, e.f35443I, e.f35444J, e.f35445K, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, e.f35450P, 77, 78, 79, 80, 81, 82, e.f35451Q, 84, 85, 86, 87, e.f35453S, 89, 90, 95, 97, 98, 99, 100, 101, 102, e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, e.f35452R, 121, 122};
    private static final byte[] _ORDERED_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, EQUALS_SIGN_ENC, -9, -9, -9, 11, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, e.f35442H, e.f35443I, e.f35444J, e.f35445K, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 58, 59, 60, EQUALS_SIGN, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    public static class InputStream extends FilterInputStream {
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public InputStream(java.io.InputStream inputStream) {
            this(inputStream, 0);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i2;
            if (this.position < 0) {
                if (this.encode) {
                    byte[] bArr = new byte[3];
                    int i3 = 0;
                    for (int i4 = 0; i4 < 3; i4++) {
                        int i5 = ((FilterInputStream) this).in.read();
                        if (i5 < 0) {
                            break;
                        }
                        bArr[i4] = (byte) i5;
                        i3++;
                    }
                    if (i3 <= 0) {
                        return -1;
                    }
                    Base64Coder.encode3to4(bArr, 0, i3, this.buffer, 0, this.options);
                    this.position = 0;
                    this.numSigBytes = 4;
                } else {
                    byte[] bArr2 = new byte[4];
                    int i6 = 0;
                    while (i6 < 4) {
                        do {
                            i2 = ((FilterInputStream) this).in.read();
                            if (i2 < 0) {
                                break;
                            }
                        } while (this.decodabet[i2 & 127] <= -5);
                        if (i2 < 0) {
                            break;
                        }
                        bArr2[i6] = (byte) i2;
                        i6++;
                    }
                    if (i6 != 4) {
                        if (i6 == 0) {
                            return -1;
                        }
                        throw new IOException("Improperly padded Base64 input.");
                    }
                    this.numSigBytes = Base64Coder.decode4to3(bArr2, 0, this.buffer, 0, this.options);
                    this.position = 0;
                }
            }
            int i7 = this.position;
            if (i7 < 0) {
                throw new IOException("Error in Base64 code reading stream.");
            }
            if (i7 >= this.numSigBytes) {
                return -1;
            }
            if (this.encode && this.breakLines && this.lineLength >= 76) {
                this.lineLength = 0;
                return 10;
            }
            this.lineLength++;
            byte[] bArr3 = this.buffer;
            int i8 = i7 + 1;
            this.position = i8;
            byte b3 = bArr3[i7];
            if (i8 >= this.bufferLength) {
                this.position = -1;
            }
            return b3 & Base64Coder.EQUALS_SIGN_ENC;
        }

        public InputStream(java.io.InputStream inputStream, int i2) {
            super(inputStream);
            this.options = i2;
            this.breakLines = (i2 & 8) > 0;
            boolean z2 = (i2 & 1) > 0;
            this.encode = z2;
            int i3 = z2 ? 4 : 3;
            this.bufferLength = i3;
            this.buffer = new byte[i3];
            this.position = -1;
            this.lineLength = 0;
            this.decodabet = Base64Coder.getDecodabet(i2);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    break;
                }
                int i5 = read();
                if (i5 >= 0) {
                    bArr[i2 + i4] = (byte) i5;
                    i4++;
                } else if (i4 == 0) {
                    return -1;
                }
            }
            return i4;
        }
    }

    public static class OutputStream extends FilterOutputStream {
        private byte[] b4;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public OutputStream(java.io.OutputStream outputStream) {
            this(outputStream, 1);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            flushBase64();
            super.close();
            this.buffer = null;
            ((FilterOutputStream) this).out = null;
        }

        public void flushBase64() throws IOException {
            int i2 = this.position;
            if (i2 > 0) {
                if (!this.encode) {
                    throw new IOException("Base64 input not properly padded.");
                }
                ((FilterOutputStream) this).out.write(Base64Coder.encode3to4(this.b4, this.buffer, i2, this.options));
                this.position = 0;
            }
        }

        public void resumeEncoding() {
            this.suspendEncoding = false;
        }

        public void suspendEncoding() throws IOException {
            flushBase64();
            this.suspendEncoding = true;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i2) throws IOException {
            if (this.suspendEncoding) {
                ((FilterOutputStream) this).out.write(i2);
                return;
            }
            if (!this.encode) {
                byte b3 = this.decodabet[i2 & 127];
                if (b3 <= -5) {
                    if (b3 != -5) {
                        throw new IOException("Invalid character in Base64 data.");
                    }
                    return;
                }
                byte[] bArr = this.buffer;
                int i3 = this.position;
                int i4 = i3 + 1;
                this.position = i4;
                bArr[i3] = (byte) i2;
                if (i4 >= this.bufferLength) {
                    ((FilterOutputStream) this).out.write(this.b4, 0, Base64Coder.decode4to3(bArr, 0, this.b4, 0, this.options));
                    this.position = 0;
                    return;
                }
                return;
            }
            byte[] bArr2 = this.buffer;
            int i5 = this.position;
            int i6 = i5 + 1;
            this.position = i6;
            bArr2[i5] = (byte) i2;
            int i7 = this.bufferLength;
            if (i6 >= i7) {
                ((FilterOutputStream) this).out.write(Base64Coder.encode3to4(this.b4, bArr2, i7, this.options));
                int i8 = this.lineLength + 4;
                this.lineLength = i8;
                if (this.breakLines && i8 >= 76) {
                    ((FilterOutputStream) this).out.write(10);
                    this.lineLength = 0;
                }
                this.position = 0;
            }
        }

        public OutputStream(java.io.OutputStream outputStream, int i2) {
            super(outputStream);
            this.breakLines = (i2 & 8) != 0;
            boolean z2 = (i2 & 1) != 0;
            this.encode = z2;
            int i3 = z2 ? 3 : 4;
            this.bufferLength = i3;
            this.buffer = new byte[i3];
            this.position = 0;
            this.lineLength = 0;
            this.suspendEncoding = false;
            this.b4 = new byte[4];
            this.options = i2;
            this.decodabet = Base64Coder.getDecodabet(i2);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) throws IOException {
            if (this.suspendEncoding) {
                ((FilterOutputStream) this).out.write(bArr, i2, i3);
                return;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                write(bArr[i2 + i4]);
            }
        }
    }

    private Base64Coder() {
    }

    public static byte[] decode(byte[] bArr) throws IOException {
        return decode(bArr, 0, bArr.length, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int decode4to3(byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        int i5;
        int i6;
        if (bArr == null) {
            throw new NullPointerException("Source array was null.");
        }
        if (bArr2 == null) {
            throw new NullPointerException("Destination array was null.");
        }
        if (i2 < 0 || (i5 = i2 + 3) >= bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i2)));
        }
        if (i3 < 0 || (i6 = i3 + 2) >= bArr2.length) {
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i3)));
        }
        byte[] decodabet = getDecodabet(i4);
        byte b3 = bArr[i2 + 2];
        if (b3 == 61) {
            bArr2[i3] = (byte) ((((decodabet[bArr[i2 + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i2]] & EQUALS_SIGN_ENC) << 18)) >>> 16);
            return 1;
        }
        byte b4 = bArr[i5];
        if (b4 == 61) {
            int i7 = ((decodabet[bArr[i2 + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i2]] & EQUALS_SIGN_ENC) << 18) | ((decodabet[b3] & EQUALS_SIGN_ENC) << 6);
            bArr2[i3] = (byte) (i7 >>> 16);
            bArr2[i3 + 1] = (byte) (i7 >>> 8);
            return 2;
        }
        int i8 = ((decodabet[bArr[i2 + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i2]] & EQUALS_SIGN_ENC) << 18) | ((decodabet[b3] & EQUALS_SIGN_ENC) << 6) | (decodabet[b4] & EQUALS_SIGN_ENC);
        bArr2[i3] = (byte) (i8 >> 16);
        bArr2[i3 + 1] = (byte) (i8 >> 8);
        bArr2[i6] = (byte) i8;
        return 3;
    }

    public static void decodeFileToFile(String str, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        byte[] bArrDecodeFromFile = decodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedOutputStream.write(bArrDecodeFromFile);
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused) {
                }
            } catch (IOException e2) {
                bufferedOutputStream2 = bufferedOutputStream;
                throw e2;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e3) {
        }
    }

    public static byte[] decodeFromFile(String str) throws Throwable {
        InputStream inputStream = null;
        try {
            try {
                File file = new File(str);
                if (file.length() > 2147483647L) {
                    throw new IOException("File is too big for this convenience method (" + file.length() + " bytes).");
                }
                byte[] bArr = new byte[(int) file.length()];
                InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
                int i2 = 0;
                while (true) {
                    try {
                        int i3 = inputStream2.read(bArr, i2, 4096);
                        if (i3 < 0) {
                            break;
                        }
                        i2 += i3;
                    } catch (IOException e2) {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                }
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                try {
                    inputStream2.close();
                } catch (Exception unused2) {
                }
                return bArr2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            throw e3;
        }
    }

    public static String decodeString(String str) {
        try {
            return new String(decode(str));
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void decodeToFile(String str, String str2) throws Throwable {
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        try {
            try {
                outputStream = new OutputStream(new FileOutputStream(str2), 0);
            } catch (IOException e2) {
                throw e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            outputStream.write(str.getBytes(PREFERRED_ENCODING));
            try {
                outputStream.close();
            } catch (Exception unused) {
            }
        } catch (IOException e3) {
        } catch (Throwable th2) {
            th = th2;
            outputStream2 = outputStream;
            try {
                outputStream2.close();
            } catch (Exception unused2) {
            }
            throw th;
        }
    }

    public static Object decodeToObject(String str) throws IOException, ClassNotFoundException {
        return decodeToObject(str, 0, null);
    }

    public static void encode(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int iMin = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, iMin);
            encode3to4(bArr2, bArr, iMin, 0);
            byteBuffer2.put(bArr2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, byte[] bArr2, int i2, int i3) {
        encode3to4(bArr2, 0, i2, bArr, 0, i3);
        return bArr;
    }

    public static String encodeBytes(byte[] bArr) {
        try {
            return encodeBytes(bArr, 0, bArr.length, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static byte[] encodeBytesToBytes(byte[] bArr) {
        try {
            return encodeBytesToBytes(bArr, 0, bArr.length, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static void encodeFileToFile(String str, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        String strEncodeFromFile = encodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedOutputStream.write(strEncodeFromFile.getBytes(PREFERRED_ENCODING));
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused) {
                }
            } catch (IOException e2) {
                bufferedOutputStream2 = bufferedOutputStream;
                throw e2;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e3) {
        }
    }

    public static String encodeFromFile(String str) throws Throwable {
        InputStream inputStream = null;
        try {
            try {
                File file = new File(str);
                byte[] bArr = new byte[Math.max((int) ((file.length() * 1.4d) + 1.0d), 40)];
                InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
                int i2 = 0;
                while (true) {
                    try {
                        int i3 = inputStream2.read(bArr, i2, 4096);
                        if (i3 < 0) {
                            break;
                        }
                        i2 += i3;
                    } catch (IOException e2) {
                        inputStream = inputStream2;
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                }
                String str2 = new String(bArr, 0, i2, PREFERRED_ENCODING);
                try {
                    inputStream2.close();
                } catch (Exception unused2) {
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            throw e3;
        }
    }

    public static String encodeObject(Serializable serializable) throws IOException {
        return encodeObject(serializable, 0);
    }

    public static String encodeString(String str) {
        return encodeBytes(str.getBytes());
    }

    public static void encodeToFile(byte[] bArr, String str) throws Throwable {
        OutputStream outputStream;
        if (bArr == null) {
            throw new NullPointerException("Data to encode was null.");
        }
        OutputStream outputStream2 = null;
        try {
            try {
                outputStream = new OutputStream(new FileOutputStream(str), 1);
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStream.write(bArr);
                try {
                    outputStream.close();
                } catch (Exception unused) {
                }
            } catch (IOException e2) {
                outputStream2 = outputStream;
                throw e2;
            } catch (Throwable th2) {
                th = th2;
                outputStream2 = outputStream;
                try {
                    outputStream2.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e3) {
        }
    }

    private static final byte[] getAlphabet(int i2) {
        return (i2 & 16) == 16 ? _URL_SAFE_ALPHABET : (i2 & 32) == 32 ? _ORDERED_ALPHABET : _STANDARD_ALPHABET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] getDecodabet(int i2) {
        return (i2 & 16) == 16 ? _URL_SAFE_DECODABET : (i2 & 32) == 32 ? _ORDERED_DECODABET : _STANDARD_DECODABET;
    }

    public static byte[] decode(byte[] bArr, int i2, int i3, int i4) throws IOException {
        int i5;
        if (bArr == null) {
            throw new NullPointerException("Cannot decode null source array.");
        }
        if (i2 < 0 || (i5 = i2 + i3) > bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        if (i3 == 0) {
            return new byte[0];
        }
        if (i3 < 4) {
            throw new IllegalArgumentException("Base64-encoded string must have at least four characters, but length specified was " + i3);
        }
        byte[] decodabet = getDecodabet(i4);
        byte[] bArr2 = new byte[(i3 * 3) / 4];
        byte[] bArr3 = new byte[4];
        int i6 = 0;
        int iDecode4to3 = 0;
        while (i2 < i5) {
            byte b3 = bArr[i2];
            byte b4 = decodabet[b3 & EQUALS_SIGN_ENC];
            if (b4 < -5) {
                throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", Integer.valueOf(bArr[i2] & EQUALS_SIGN_ENC), Integer.valueOf(i2)));
            }
            if (b4 >= -1) {
                int i7 = i6 + 1;
                bArr3[i6] = b3;
                if (i7 > 3) {
                    iDecode4to3 += decode4to3(bArr3, 0, bArr2, iDecode4to3, i4);
                    if (bArr[i2] == 61) {
                        break;
                    }
                    i6 = 0;
                } else {
                    i6 = i7;
                }
            }
            i2++;
        }
        byte[] bArr4 = new byte[iDecode4to3];
        System.arraycopy(bArr2, 0, bArr4, 0, iDecode4to3);
        return bArr4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static Object decodeToObject(String str, int i2, final ClassLoader classLoader) throws Throwable {
        ?? r3;
        ByteArrayInputStream byteArrayInputStream;
        byte[] bArrDecode = decode(str, i2);
        ByteArrayInputStream byteArrayInputStream2 = null;
        objectInputStream = null;
        objectInputStream = null;
        ObjectInputStream objectInputStream = null;
        byteArrayInputStream2 = null;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArrDecode);
            } catch (Throwable th) {
                th = th;
                r3 = classLoader;
            }
        } catch (IOException e2) {
            throw e2;
        } catch (ClassNotFoundException e3) {
            throw e3;
        } catch (Throwable th2) {
            th = th2;
            r3 = 0;
        }
        try {
            objectInputStream = classLoader == null ? new ObjectInputStream(byteArrayInputStream) : new ObjectInputStream(byteArrayInputStream) { // from class: org.seamless.util.io.Base64Coder.1
                @Override // java.io.ObjectInputStream
                public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException, IOException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, classLoader);
                    return cls == null ? super.resolveClass(objectStreamClass) : cls;
                }
            };
            Object object = objectInputStream.readObject();
            try {
                byteArrayInputStream.close();
            } catch (Exception unused) {
            }
            try {
                objectInputStream.close();
            } catch (Exception unused2) {
            }
            return object;
        } catch (IOException e4) {
            throw e4;
        } catch (ClassNotFoundException e5) {
            throw e5;
        } catch (Throwable th3) {
            th = th3;
            r3 = objectInputStream;
            byteArrayInputStream2 = byteArrayInputStream;
            try {
                byteArrayInputStream2.close();
            } catch (Exception unused3) {
            }
            try {
                r3.close();
                throw th;
            } catch (Exception unused4) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5) {
        byte[] alphabet = getAlphabet(i5);
        int i6 = (i3 > 0 ? (bArr[i2] << 24) >>> 8 : 0) | (i3 > 1 ? (bArr[i2 + 1] << 24) >>> 16 : 0) | (i3 > 2 ? (bArr[i2 + 2] << 24) >>> 24 : 0);
        if (i3 == 1) {
            bArr2[i4] = alphabet[i6 >>> 18];
            bArr2[i4 + 1] = alphabet[(i6 >>> 12) & 63];
            bArr2[i4 + 2] = EQUALS_SIGN;
            bArr2[i4 + 3] = EQUALS_SIGN;
            return bArr2;
        }
        if (i3 == 2) {
            bArr2[i4] = alphabet[i6 >>> 18];
            bArr2[i4 + 1] = alphabet[(i6 >>> 12) & 63];
            bArr2[i4 + 2] = alphabet[(i6 >>> 6) & 63];
            bArr2[i4 + 3] = EQUALS_SIGN;
            return bArr2;
        }
        if (i3 != 3) {
            return bArr2;
        }
        bArr2[i4] = alphabet[i6 >>> 18];
        bArr2[i4 + 1] = alphabet[(i6 >>> 12) & 63];
        bArr2[i4 + 2] = alphabet[(i6 >>> 6) & 63];
        bArr2[i4 + 3] = alphabet[i6 & 63];
        return bArr2;
    }

    public static String encodeBytes(byte[] bArr, int i2) throws IOException {
        return encodeBytes(bArr, 0, bArr.length, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.io.OutputStream, java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public static byte[] encodeBytesToBytes(byte[] bArr, int i2, int i3, int i4) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        OutputStream outputStream;
        ?? gZIPOutputStream;
        byte[] bArr2 = bArr;
        if (bArr2 == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + i2);
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("Cannot have length offset: " + i3);
        }
        if (i2 + i3 > bArr2.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(bArr2.length)));
        }
        if ((i4 & 2) == 0) {
            boolean z2 = (i4 & 8) != 0;
            int i5 = ((i3 / 3) * 4) + (i3 % 3 > 0 ? 4 : 0);
            if (z2) {
                i5 += i5 / 76;
            }
            int i6 = i5;
            byte[] bArr3 = new byte[i6];
            int i7 = i3 - 2;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i9 < i7) {
                encode3to4(bArr2, i9 + i2, 3, bArr3, i8, i4);
                i10 += 4;
                if (z2 && i10 >= 76) {
                    bArr3[i8 + 4] = 10;
                    i8++;
                    i10 = 0;
                }
                i9 += 3;
                i8 += 4;
                bArr2 = bArr;
            }
            if (i9 < i3) {
                encode3to4(bArr, i9 + i2, i3 - i9, bArr3, i8, i4);
                i8 += 4;
            }
            if (i8 > i6 - 1) {
                return bArr3;
            }
            byte[] bArr4 = new byte[i8];
            System.arraycopy(bArr3, 0, bArr4, 0, i8);
            return bArr4;
        }
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                outputStream = new OutputStream(byteArrayOutputStream, i4 | 1);
                try {
                    gZIPOutputStream = new GZIPOutputStream(outputStream);
                } catch (IOException e2) {
                    e = e2;
                    gZIPOutputStream = 0;
                } catch (Throwable th) {
                    th = th;
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Exception unused) {
                    }
                    try {
                        outputStream.close();
                    } catch (Exception unused2) {
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (Exception unused3) {
                        throw th;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                outputStream = null;
                gZIPOutputStream = 0;
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
            }
        } catch (IOException e4) {
            e = e4;
            outputStream = null;
            gZIPOutputStream = 0;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
            outputStream = null;
        }
        try {
            gZIPOutputStream.write(bArr2, i2, i3);
            gZIPOutputStream.close();
            try {
                gZIPOutputStream.close();
            } catch (Exception unused4) {
            }
            try {
                outputStream.close();
            } catch (Exception unused5) {
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception unused6) {
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e5) {
            e = e5;
            byteArrayOutputStream2 = byteArrayOutputStream;
            gZIPOutputStream = gZIPOutputStream;
            try {
                throw e;
            } catch (Throwable th4) {
                th = th4;
                byteArrayOutputStream = byteArrayOutputStream2;
                byteArrayOutputStream2 = gZIPOutputStream;
                byteArrayOutputStream2.close();
                outputStream.close();
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            byteArrayOutputStream2 = gZIPOutputStream;
            byteArrayOutputStream2.close();
            outputStream.close();
            byteArrayOutputStream.close();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String encodeObject(Serializable serializable, int i2) throws Throwable {
        java.io.OutputStream gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        OutputStream outputStream;
        ObjectOutputStream objectOutputStream;
        if (serializable == null) {
            throw new NullPointerException("Cannot serialize a null object.");
        }
        ObjectOutputStream objectOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                outputStream = new OutputStream(byteArrayOutputStream, i2 | 1);
                try {
                    if ((i2 & 2) != 0) {
                        gZIPOutputStream = new GZIPOutputStream(outputStream);
                        try {
                            objectOutputStream2 = new ObjectOutputStream(gZIPOutputStream);
                            gZIPOutputStream = gZIPOutputStream;
                        } catch (IOException e2) {
                            e = e2;
                            objectOutputStream = objectOutputStream2;
                            objectOutputStream2 = byteArrayOutputStream;
                            gZIPOutputStream = gZIPOutputStream;
                            try {
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                ObjectOutputStream objectOutputStream3 = objectOutputStream;
                                byteArrayOutputStream = objectOutputStream2;
                                objectOutputStream2 = objectOutputStream3;
                                try {
                                    objectOutputStream2.close();
                                } catch (Exception unused) {
                                }
                                try {
                                    gZIPOutputStream.close();
                                } catch (Exception unused2) {
                                }
                                try {
                                    outputStream.close();
                                } catch (Exception unused3) {
                                }
                                try {
                                    byteArrayOutputStream.close();
                                    throw th;
                                } catch (Exception unused4) {
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            objectOutputStream2.close();
                            gZIPOutputStream.close();
                            outputStream.close();
                            byteArrayOutputStream.close();
                            throw th;
                        }
                    } else {
                        objectOutputStream2 = new ObjectOutputStream(outputStream);
                        gZIPOutputStream = null;
                    }
                    objectOutputStream2.writeObject(serializable);
                    try {
                        objectOutputStream2.close();
                    } catch (Exception unused5) {
                    }
                    try {
                        gZIPOutputStream.close();
                    } catch (Exception unused6) {
                    }
                    try {
                        outputStream.close();
                    } catch (Exception unused7) {
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception unused8) {
                    }
                    try {
                        return new String(byteArrayOutputStream.toByteArray(), PREFERRED_ENCODING);
                    } catch (UnsupportedEncodingException unused9) {
                        return new String(byteArrayOutputStream.toByteArray());
                    }
                } catch (IOException e3) {
                    e = e3;
                    ObjectOutputStream objectOutputStream4 = objectOutputStream2;
                    objectOutputStream2 = byteArrayOutputStream;
                    objectOutputStream = objectOutputStream4;
                    gZIPOutputStream = objectOutputStream4;
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream = objectOutputStream2;
                }
            } catch (IOException e4) {
                e = e4;
                gZIPOutputStream = null;
                outputStream = null;
                objectOutputStream2 = byteArrayOutputStream;
                objectOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                gZIPOutputStream = null;
                outputStream = null;
            }
        } catch (IOException e5) {
            e = e5;
            gZIPOutputStream = null;
            objectOutputStream = null;
            outputStream = null;
        } catch (Throwable th5) {
            th = th5;
            gZIPOutputStream = null;
            byteArrayOutputStream = 0;
            outputStream = null;
        }
    }

    public static String encodeBytes(byte[] bArr, int i2, int i3) {
        try {
            return encodeBytes(bArr, i2, i3, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String encodeBytes(byte[] bArr, int i2, int i3, int i4) throws Throwable {
        byte[] bArrEncodeBytesToBytes = encodeBytesToBytes(bArr, i2, i3, i4);
        try {
            return new String(bArrEncodeBytesToBytes, PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArrEncodeBytesToBytes);
        }
    }

    public static void encode(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int iMin = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, iMin);
            encode3to4(bArr2, bArr, iMin, 0);
            for (int i2 = 0; i2 < 4; i2++) {
                charBuffer.put((char) (bArr2[i2] & EQUALS_SIGN_ENC));
            }
        }
    }

    public static byte[] encode(byte[] bArr) {
        return encodeBytes(bArr).getBytes();
    }

    public static byte[] decode(String str) throws IOException {
        return decode(str, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v7 */
    public static byte[] decode(String str, int i2) throws Throwable {
        byte[] bytes;
        ByteArrayInputStream length;
        ByteArrayInputStream byteArrayInputStream;
        GZIPInputStream gZIPInputStream;
        if (str != null) {
            try {
                bytes = str.getBytes(PREFERRED_ENCODING);
            } catch (UnsupportedEncodingException unused) {
                bytes = str.getBytes();
            }
            byte[] bArrDecode = decode(bytes, 0, bytes.length, i2);
            boolean z2 = (i2 & 4) != 0;
            if (bArrDecode != null && (length = bArrDecode.length) >= 4 && !z2 && 35615 == ((bArrDecode[0] & EQUALS_SIGN_ENC) | ((bArrDecode[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK))) {
                byte[] bArr = new byte[2048];
                ByteArrayOutputStream byteArrayOutputStream = null;
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                        try {
                            byteArrayInputStream = new ByteArrayInputStream(bArrDecode);
                            try {
                                gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                                while (true) {
                                    try {
                                        int i3 = gZIPInputStream.read(bArr);
                                        if (i3 < 0) {
                                            break;
                                        }
                                        byteArrayOutputStream2.write(bArr, 0, i3);
                                    } catch (IOException e2) {
                                        e = e2;
                                        byteArrayOutputStream = byteArrayOutputStream2;
                                        byteArrayInputStream = byteArrayInputStream;
                                        try {
                                            e.printStackTrace();
                                            byteArrayOutputStream.close();
                                            length = byteArrayInputStream;
                                            gZIPInputStream.close();
                                            length.close();
                                            return bArrDecode;
                                        } catch (Throwable th) {
                                            th = th;
                                            try {
                                                byteArrayOutputStream.close();
                                            } catch (Exception unused2) {
                                            }
                                            try {
                                                gZIPInputStream.close();
                                            } catch (Exception unused3) {
                                            }
                                            try {
                                                byteArrayInputStream.close();
                                                throw th;
                                            } catch (Exception unused4) {
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        byteArrayOutputStream = byteArrayOutputStream2;
                                        byteArrayOutputStream.close();
                                        gZIPInputStream.close();
                                        byteArrayInputStream.close();
                                        throw th;
                                    }
                                }
                                bArrDecode = byteArrayOutputStream2.toByteArray();
                                byteArrayOutputStream2.close();
                                length = byteArrayInputStream;
                            } catch (IOException e3) {
                                e = e3;
                                gZIPInputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                gZIPInputStream = null;
                            }
                        } catch (IOException e4) {
                            e = e4;
                            byteArrayInputStream = null;
                            gZIPInputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            byteArrayInputStream = null;
                            gZIPInputStream = null;
                        }
                    } catch (Exception unused5) {
                    }
                } catch (IOException e5) {
                    e = e5;
                    byteArrayInputStream = null;
                    gZIPInputStream = null;
                } catch (Throwable th5) {
                    th = th5;
                    byteArrayInputStream = null;
                    gZIPInputStream = null;
                }
                try {
                    gZIPInputStream.close();
                } catch (Exception unused6) {
                }
                try {
                    length.close();
                } catch (Exception unused7) {
                }
            }
            return bArrDecode;
        }
        throw new NullPointerException("Input string was null.");
    }
}
