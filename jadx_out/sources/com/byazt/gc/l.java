package com.byazt.gc;

import android.util.ArrayMap;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 524, 34})
@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public class l {

    @com.byazt.kj.hp(hp = {0, 1, 524, 123})
    public static class hp {
        public final X509Certificate[][] hp;

        /* renamed from: l, reason: collision with root package name */
        public final byte[] f20380l;

        public hp(X509Certificate[][] x509CertificateArr, byte[] bArr) {
            this.hp = x509CertificateArr;
            this.f20380l = bArr;
        }
    }

    private static boolean hp(int i2) {
        if (i2 == 513 || i2 == 514 || i2 == 769 || i2 == 1057 || i2 == 1059 || i2 == 1061) {
            return true;
        }
        switch (i2) {
            case 257:
            case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return true;
            default:
                return false;
        }
    }

    public static X509Certificate[][] hp(RandomAccessFile randomAccessFile, String str) throws SecurityException, IOException, k {
        zy zyVar = a.hp.get(str).get(1896449818);
        if (zyVar != null) {
            return hp(randomAccessFile, zyVar, true).hp;
        }
        throw new k("findVerifiedSigner, No APK Signature Scheme v2 signature in package");
    }

    private static hp hp(RandomAccessFile randomAccessFile, zy zyVar, boolean z2) throws SecurityException, IOException, CertificateException {
        ArrayMap arrayMap = new ArrayMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer byteBufferHp = a.hp(zyVar.hp);
                int i2 = 0;
                while (byteBufferHp.hasRemaining()) {
                    i2++;
                    try {
                        arrayList.add(hp(a.hp(byteBufferHp), arrayMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e2) {
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e2);
                    }
                }
                if (i2 > 0) {
                    if (!arrayMap.isEmpty()) {
                        if (z2) {
                            a.hp(arrayMap, randomAccessFile, zyVar);
                        }
                        return new hp((X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]), arrayMap.containsKey(3) ? a.hp((byte[]) arrayMap.get(3), randomAccessFile.length(), zyVar) : null);
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("No signers found");
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
        }
    }

    private static X509Certificate[] hp(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) throws InvalidKeySpecException, NoSuchAlgorithmException, SignatureException, IOException, InvalidKeyException, SecurityException, InvalidAlgorithmParameterException {
        ByteBuffer byteBufferHp = a.hp(byteBuffer);
        ByteBuffer byteBufferHp2 = a.hp(byteBuffer);
        byte[] bArrL = a.l(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArrL2 = null;
        int i2 = 0;
        int i3 = -1;
        byte[] bArrL3 = null;
        while (byteBufferHp2.hasRemaining()) {
            i2++;
            try {
                ByteBuffer byteBufferHp3 = a.hp(byteBufferHp2);
                if (byteBufferHp3.remaining() >= 8) {
                    int i4 = byteBufferHp3.getInt();
                    arrayList.add(Integer.valueOf(i4));
                    if (hp(i4) && (i3 == -1 || a.hp(i4, i3) > 0)) {
                        bArrL3 = a.l(byteBufferHp3);
                        i3 = i4;
                    }
                } else {
                    throw new SecurityException("Signature record too short");
                }
            } catch (IOException e2) {
                e = e2;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i2)), e);
            } catch (BufferUnderflowException e3) {
                e = e3;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i2)), e);
            }
        }
        if (i3 == -1) {
            if (i2 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        String strJx = a.jx(i3);
        Pair<String, ? extends AlgorithmParameterSpec> pairJ = a.j(i3);
        String str = (String) pairJ.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) pairJ.second;
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(strJx).generatePublic(new X509EncodedKeySpec(bArrL));
            Signature signature = Signature.getInstance(str);
            signature.initVerify(publicKeyGeneratePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(byteBufferHp);
            if (signature.verify(bArrL3)) {
                byteBufferHp.clear();
                ByteBuffer byteBufferHp4 = a.hp(byteBufferHp);
                ArrayList arrayList2 = new ArrayList();
                int i5 = 0;
                while (byteBufferHp4.hasRemaining()) {
                    i5++;
                    try {
                        ByteBuffer byteBufferHp5 = a.hp(byteBufferHp4);
                        if (byteBufferHp5.remaining() >= 8) {
                            int i6 = byteBufferHp5.getInt();
                            arrayList2.add(Integer.valueOf(i6));
                            if (i6 == i3) {
                                bArrL2 = a.l(byteBufferHp5);
                            }
                        } else {
                            throw new IOException("Record too short");
                        }
                    } catch (IOException e4) {
                        e = e4;
                        throw new IOException("Failed to parse digest record #".concat(String.valueOf(i5)), e);
                    } catch (BufferUnderflowException e5) {
                        e = e5;
                        throw new IOException("Failed to parse digest record #".concat(String.valueOf(i5)), e);
                    }
                }
                if (arrayList.equals(arrayList2)) {
                    int iHp = a.hp(i3);
                    byte[] bArrPut = map.put(Integer.valueOf(iHp), bArrL2);
                    if (bArrPut != null && !MessageDigest.isEqual(bArrPut, bArrL2)) {
                        throw new SecurityException(a.l(iHp) + " contents digest does not match the digest specified by a preceding signer");
                    }
                    ByteBuffer byteBufferHp6 = a.hp(byteBufferHp);
                    ArrayList arrayList3 = new ArrayList();
                    int i7 = 0;
                    while (byteBufferHp6.hasRemaining()) {
                        i7++;
                        byte[] bArrL4 = a.l(byteBufferHp6);
                        try {
                            arrayList3.add(new u((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArrL4)), bArrL4));
                        } catch (CertificateException e6) {
                            throw new SecurityException("Failed to decode certificate #".concat(String.valueOf(i7)), e6);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        if (Arrays.equals(bArrL, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                            hp(a.hp(byteBufferHp));
                            return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
                        }
                        throw new SecurityException("Public key mismatch between certificate and signature record");
                    }
                    throw new SecurityException("No certificates listed");
                }
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            throw new SecurityException(str + " signature did not verify");
        } catch (InvalidAlgorithmParameterException e7) {
            e = e7;
            throw new SecurityException("Failed to verify " + str + " signature", e);
        } catch (InvalidKeyException e8) {
            e = e8;
            throw new SecurityException("Failed to verify " + str + " signature", e);
        } catch (NoSuchAlgorithmException e9) {
            e = e9;
            throw new SecurityException("Failed to verify " + str + " signature", e);
        } catch (SignatureException e10) {
            e = e10;
            throw new SecurityException("Failed to verify " + str + " signature", e);
        } catch (InvalidKeySpecException e11) {
            e = e11;
            throw new SecurityException("Failed to verify " + str + " signature", e);
        }
    }

    private static void hp(ByteBuffer byteBuffer) throws IOException, SecurityException {
        while (byteBuffer.hasRemaining()) {
            ByteBuffer byteBufferHp = a.hp(byteBuffer);
            if (byteBufferHp.remaining() >= 4) {
                if (byteBufferHp.getInt() == -1091571699) {
                    if (byteBufferHp.remaining() >= 4) {
                        if (byteBufferHp.getInt() == 3) {
                            throw new SecurityException("V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?");
                        }
                    } else {
                        throw new IOException("V2 Signature Scheme Stripping Protection Attribute  value too small. Expected 4 bytes, but found " + byteBufferHp.remaining());
                    }
                }
            } else {
                throw new IOException("Remaining buffer too short to contain additional attribute ID. Remaining: " + byteBufferHp.remaining());
            }
        }
    }
}
