package com.czhj.wire.okio;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class HashingSink extends ForwardingSink {

    /* renamed from: a, reason: collision with root package name */
    private final MessageDigest f29797a;

    /* renamed from: b, reason: collision with root package name */
    private final Mac f29798b;

    private HashingSink(Sink sink, ByteString byteString, String str) throws NoSuchAlgorithmException, InvalidKeyException {
        super(sink);
        try {
            Mac mac = Mac.getInstance(str);
            this.f29798b = mac;
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.f29797a = null;
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static HashingSink hmacSha1(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA1");
    }

    public static HashingSink hmacSha256(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA256");
    }

    public static HashingSink hmacSha512(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA512");
    }

    public static HashingSink md5(Sink sink) {
        return new HashingSink(sink, "MD5");
    }

    public static HashingSink sha1(Sink sink) {
        return new HashingSink(sink, "SHA-1");
    }

    public static HashingSink sha256(Sink sink) {
        return new HashingSink(sink, "SHA-256");
    }

    public static HashingSink sha512(Sink sink) {
        return new HashingSink(sink, "SHA-512");
    }

    public final ByteString hash() {
        MessageDigest messageDigest = this.f29797a;
        return ByteString.of(messageDigest != null ? messageDigest.digest() : this.f29798b.doFinal());
    }

    @Override // com.czhj.wire.okio.ForwardingSink, com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j2) throws IllegalStateException, IOException {
        Util.checkOffsetAndCount(buffer.f29765c, 0L, j2);
        Segment segment = buffer.f29764b;
        long j3 = 0;
        while (j3 < j2) {
            int iMin = (int) Math.min(j2 - j3, segment.f29842e - segment.f29841d);
            MessageDigest messageDigest = this.f29797a;
            if (messageDigest != null) {
                messageDigest.update(segment.f29840c, segment.f29841d, iMin);
            } else {
                this.f29798b.update(segment.f29840c, segment.f29841d, iMin);
            }
            j3 += iMin;
            segment = segment.f29845h;
        }
        super.write(buffer, j2);
    }

    private HashingSink(Sink sink, String str) {
        super(sink);
        try {
            this.f29797a = MessageDigest.getInstance(str);
            this.f29798b = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
