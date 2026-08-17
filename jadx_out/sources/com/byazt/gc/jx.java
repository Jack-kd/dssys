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
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 524, 30})
@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public class jx {

    @com.byazt.kj.hp(hp = {0, 1, 524, 219})
    public static class hp extends Exception {
    }

    @com.byazt.kj.hp(hp = {0, 1, 524, 1055})
    /* renamed from: com.byazt.gc.jx$jx, reason: collision with other inner class name */
    public static class C0255jx {
        public final X509Certificate[] hp;
        public byte[] jx;

        /* renamed from: l, reason: collision with root package name */
        public final l f20378l;

        public C0255jx(X509Certificate[] x509CertificateArr, l lVar) {
            this.hp = x509CertificateArr;
            this.f20378l = lVar;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 524, 224})
    public static class l {
        public final List<X509Certificate> hp;

        /* renamed from: l, reason: collision with root package name */
        public final List<Integer> f20379l;

        public l(List<X509Certificate> list, List<Integer> list2) {
            this.hp = list;
            this.f20379l = list2;
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

    public static C0255jx hp(RandomAccessFile randomAccessFile, String str) throws IOException, k {
        zy zyVar = a.hp.get(str).get(-262969152);
        if (zyVar != null) {
            return hp(randomAccessFile, zyVar, true);
        }
        throw new k("findVerifiedSigner, No APK Signature Scheme v3 signature in package");
    }

    private static C0255jx hp(RandomAccessFile randomAccessFile, zy zyVar, boolean z2) throws InvalidKeySpecException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, SecurityException, IOException, CertificateException, InvalidAlgorithmParameterException {
        ArrayMap arrayMap = new ArrayMap();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer byteBufferHp = a.hp(zyVar.hp);
                int i2 = 0;
                C0255jx c0255jxHp = null;
                while (byteBufferHp.hasRemaining()) {
                    try {
                        c0255jxHp = hp(a.hp(byteBufferHp), arrayMap, certificateFactory);
                        i2++;
                    } catch (hp unused) {
                    } catch (IOException e2) {
                        e = e2;
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e);
                    } catch (SecurityException e3) {
                        e = e3;
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e);
                    } catch (BufferUnderflowException e4) {
                        e = e4;
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e);
                    }
                }
                if (i2 <= 0 || c0255jxHp == null) {
                    throw new SecurityException("No signers found");
                }
                if (i2 == 1) {
                    if (!arrayMap.isEmpty()) {
                        if (z2) {
                            a.hp(arrayMap, randomAccessFile, zyVar);
                        }
                        if (arrayMap.containsKey(3)) {
                            c0255jxHp.jx = a.hp((byte[]) arrayMap.get(3), randomAccessFile.length(), zyVar);
                        }
                        return c0255jxHp;
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("APK Signature Scheme V3 only supports one signer: multiple signers found.");
            } catch (IOException e5) {
                throw new SecurityException("Failed to read list of signers", e5);
            }
        } catch (CertificateException e6) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e6);
        }
    }

    private static C0255jx hp(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) throws InvalidKeySpecException, NoSuchAlgorithmException, SignatureException, IOException, InvalidKeyException, SecurityException, hp, InvalidAlgorithmParameterException {
        ByteBuffer byteBufferHp = a.hp(byteBuffer);
        int i2 = byteBuffer.getInt();
        int i3 = byteBuffer.getInt();
        ByteBuffer byteBufferHp2 = a.hp(byteBuffer);
        byte[] bArrL = a.l(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArrL2 = null;
        int i4 = 0;
        int i5 = -1;
        byte[] bArrL3 = null;
        while (byteBufferHp2.hasRemaining()) {
            i4++;
            try {
                ByteBuffer byteBufferHp3 = a.hp(byteBufferHp2);
                if (byteBufferHp3.remaining() >= 8) {
                    int i6 = byteBufferHp3.getInt();
                    arrayList.add(Integer.valueOf(i6));
                    if (hp(i6) && (i5 == -1 || a.hp(i6, i5) > 0)) {
                        bArrL3 = a.l(byteBufferHp3);
                        i5 = i6;
                    }
                } else {
                    throw new SecurityException("Signature record too short");
                }
            } catch (IOException e2) {
                e = e2;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i4)), e);
            } catch (BufferUnderflowException e3) {
                e = e3;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i4)), e);
            }
        }
        if (i5 == -1) {
            if (i4 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        String strJx = a.jx(i5);
        Pair<String, ? extends AlgorithmParameterSpec> pairJ = a.j(i5);
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
                int i7 = 0;
                while (byteBufferHp4.hasRemaining()) {
                    i7++;
                    try {
                        ByteBuffer byteBufferHp5 = a.hp(byteBufferHp4);
                        if (byteBufferHp5.remaining() >= 8) {
                            int i8 = byteBufferHp5.getInt();
                            arrayList2.add(Integer.valueOf(i8));
                            if (i8 == i5) {
                                bArrL2 = a.l(byteBufferHp5);
                            }
                        } else {
                            throw new IOException("Record too short");
                        }
                    } catch (IOException e4) {
                        e = e4;
                        throw new IOException("Failed to parse digest record #".concat(String.valueOf(i7)), e);
                    } catch (BufferUnderflowException e5) {
                        e = e5;
                        throw new IOException("Failed to parse digest record #".concat(String.valueOf(i7)), e);
                    }
                }
                if (arrayList.equals(arrayList2)) {
                    int iHp = a.hp(i5);
                    byte[] bArrPut = map.put(Integer.valueOf(iHp), bArrL2);
                    if (bArrPut != null && !MessageDigest.isEqual(bArrPut, bArrL2)) {
                        throw new SecurityException(a.l(iHp) + " contents digest does not match the digest specified by a preceding signer");
                    }
                    ByteBuffer byteBufferHp6 = a.hp(byteBufferHp);
                    ArrayList arrayList3 = new ArrayList();
                    int i9 = 0;
                    while (byteBufferHp6.hasRemaining()) {
                        i9++;
                        byte[] bArrL4 = a.l(byteBufferHp6);
                        try {
                            arrayList3.add(new u((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArrL4)), bArrL4));
                        } catch (CertificateException e6) {
                            throw new SecurityException("Failed to decode certificate #".concat(String.valueOf(i9)), e6);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        if (Arrays.equals(bArrL, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                            if (byteBufferHp.getInt() == i2) {
                                if (byteBufferHp.getInt() == i3) {
                                    return hp(a.hp(byteBufferHp), arrayList3, certificateFactory);
                                }
                                throw new SecurityException("maxSdkVersion mismatch between signed and unsigned in v3 signer block.");
                            }
                            throw new SecurityException("minSdkVersion mismatch between signed and unsigned in v3 signer block.");
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

    private static C0255jx hp(ByteBuffer byteBuffer, List<X509Certificate> list, CertificateFactory certificateFactory) throws NoSuchAlgorithmException, SignatureException, IOException, InvalidKeyException, SecurityException, InvalidAlgorithmParameterException {
        X509Certificate[] x509CertificateArr = (X509Certificate[]) list.toArray(new X509Certificate[list.size()]);
        l lVarHp = null;
        while (byteBuffer.hasRemaining()) {
            ByteBuffer byteBufferHp = a.hp(byteBuffer);
            if (byteBufferHp.remaining() >= 4) {
                if (byteBufferHp.getInt() == 1000370060) {
                    if (lVarHp == null) {
                        lVarHp = hp(byteBufferHp, certificateFactory);
                        try {
                            if (lVarHp.hp.size() > 0) {
                                if (!Arrays.equals(lVarHp.hp.get(r1.size() - 1).getEncoded(), x509CertificateArr[0].getEncoded())) {
                                    throw new SecurityException("Terminal certificate in Proof-of-rotation record does not match APK signing certificate");
                                }
                            } else {
                                continue;
                            }
                        } catch (CertificateEncodingException e2) {
                            throw new SecurityException("Failed to encode certificate when comparing Proof-of-rotation record and signing certificate", e2);
                        }
                    } else {
                        throw new SecurityException("Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature");
                    }
                }
            } else {
                throw new IOException("Remaining buffer too short to contain additional attribute ID. Remaining: " + byteBufferHp.remaining());
            }
        }
        return new C0255jx(x509CertificateArr, lVarHp);
    }

    private static l hp(ByteBuffer byteBuffer, CertificateFactory certificateFactory) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, IOException, SecurityException, InvalidAlgorithmParameterException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        try {
            byteBuffer.getInt();
            HashSet hashSet = new HashSet();
            int i3 = -1;
            u uVar = null;
            while (byteBuffer.hasRemaining()) {
                i2++;
                ByteBuffer byteBufferHp = a.hp(byteBuffer);
                ByteBuffer byteBufferHp2 = a.hp(byteBufferHp);
                int i4 = byteBufferHp.getInt();
                int i5 = byteBufferHp.getInt();
                byte[] bArrL = a.l(byteBufferHp);
                if (uVar != null) {
                    Pair<String, ? extends AlgorithmParameterSpec> pairJ = a.j(i3);
                    PublicKey publicKey = uVar.getPublicKey();
                    Signature signature = Signature.getInstance((String) pairJ.first);
                    signature.initVerify(publicKey);
                    Object obj = pairJ.second;
                    if (obj != null) {
                        signature.setParameter((AlgorithmParameterSpec) obj);
                    }
                    signature.update(byteBufferHp2);
                    if (!signature.verify(bArrL)) {
                        throw new SecurityException("Unable to verify signature of certificate #" + i2 + " using " + ((String) pairJ.first) + " when verifying Proof-of-rotation record");
                    }
                }
                byteBufferHp2.rewind();
                byte[] bArrL2 = a.l(byteBufferHp2);
                int i6 = byteBufferHp2.getInt();
                if (uVar != null && i3 != i6) {
                    throw new SecurityException("Signing algorithm ID mismatch for certificate #" + i2 + " when verifying Proof-of-rotation record");
                }
                uVar = new u((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArrL2)), bArrL2);
                if (!hashSet.contains(uVar)) {
                    hashSet.add(uVar);
                    arrayList.add(uVar);
                    arrayList2.add(Integer.valueOf(i4));
                    i3 = i5;
                } else {
                    throw new SecurityException("Encountered duplicate entries in Proof-of-rotation record at certificate #" + i2 + ".  All signing certificates should be unique");
                }
            }
            return new l(arrayList, arrayList2);
        } catch (IOException | BufferUnderflowException e2) {
            throw new IOException("Failed to parse Proof-of-rotation record", e2);
        } catch (InvalidAlgorithmParameterException e3) {
            e = e3;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (InvalidKeyException e4) {
            e = e4;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (NoSuchAlgorithmException e5) {
            e = e5;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (SignatureException e6) {
            e = e6;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (CertificateException e7) {
            throw new SecurityException("Failed to decode certificate #0 when verifying Proof-of-rotation record", e7);
        }
    }
}
