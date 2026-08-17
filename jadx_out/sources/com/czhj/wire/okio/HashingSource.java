package com.czhj.wire.okio;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class HashingSource extends ForwardingSource {

    /* renamed from: a, reason: collision with root package name */
    private final MessageDigest f29799a;

    /* renamed from: b, reason: collision with root package name */
    private final Mac f29800b;

    private HashingSource(Source source, ByteString byteString, String str) throws NoSuchAlgorithmException, InvalidKeyException {
        super(source);
        try {
            Mac mac = Mac.getInstance(str);
            this.f29800b = mac;
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.f29799a = null;
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static HashingSource hmacSha1(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, "HmacSHA1");
    }

    public static HashingSource hmacSha256(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, "HmacSHA256");
    }

    public static HashingSource md5(Source source) {
        return new HashingSource(source, "MD5");
    }

    public static HashingSource sha1(Source source) {
        return new HashingSource(source, "SHA-1");
    }

    public static HashingSource sha256(Source source) {
        return new HashingSource(source, "SHA-256");
    }

    public final ByteString hash() {
        MessageDigest messageDigest = this.f29799a;
        return ByteString.of(messageDigest != null ? messageDigest.digest() : this.f29800b.doFinal());
    }

    @Override // com.czhj.wire.okio.ForwardingSource, com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j2) throws IllegalStateException, IOException {
        long j3 = super.read(buffer, j2);
        if (j3 != -1) {
            long j4 = buffer.f29765c;
            long j5 = j4 - j3;
            Segment segment = buffer.f29764b;
            while (j4 > j5) {
                segment = segment.f29846i;
                j4 -= segment.f29842e - segment.f29841d;
            }
            while (j4 < buffer.f29765c) {
                int i2 = (int) ((segment.f29841d + j5) - j4);
                MessageDigest messageDigest = this.f29799a;
                if (messageDigest != null) {
                    messageDigest.update(segment.f29840c, i2, segment.f29842e - i2);
                } else {
                    this.f29800b.update(segment.f29840c, i2, segment.f29842e - i2);
                }
                j5 = (segment.f29842e - segment.f29841d) + j4;
                segment = segment.f29845h;
                j4 = j5;
            }
        }
        return j3;
    }

    private HashingSource(Source source, String str) {
        super(source);
        try {
            this.f29799a = MessageDigest.getInstance(str);
            this.f29800b = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
