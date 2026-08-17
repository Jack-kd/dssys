package com.beizi.fusion;

import android.util.Base64;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public class g2 implements oa {

    /* renamed from: a, reason: collision with root package name */
    private final a f13922a;

    public interface a {
        String a();

        String b();
    }

    public g2(a aVar) {
        this.f13922a = aVar;
    }

    public static byte[] a(byte[] bArr, a aVar) {
        if (aVar != null) {
            return a(aVar.b(), aVar.a(), bArr);
        }
        rm.b("AesUtil", "configGenerate is null");
        return null;
    }

    public static byte[] b(byte[] bArr, a aVar) {
        if (aVar != null) {
            return b(aVar.b(), aVar.a(), bArr);
        }
        rm.b("AesUtil", "configGenerate is null");
        return null;
    }

    private static byte[] a(String str, String str2, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes("UTF-8"));
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes("UTF-8"), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            rm.a(e2);
            return null;
        }
    }

    private static byte[] b(String str, String str2, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes("UTF-8"));
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes("UTF-8"), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            rm.a(e2);
            return null;
        }
    }

    @Override // com.beizi.fusion.oa
    public byte[] a(byte[] bArr) {
        return a(bArr, this.f13922a);
    }

    @Override // com.beizi.fusion.oa
    public byte[] b(byte[] bArr) {
        return b(bArr, this.f13922a);
    }

    public static String a(String str) {
        try {
            Charset charset = StandardCharsets.UTF_8;
            return Base64.encodeToString(a("666f430a0400462dbf62eb4e175186db".getBytes(charset), Base64.encode(str.getBytes(charset), 10)), 10);
        } catch (Exception unused) {
            return "";
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CFB/NoPadding");
        int blockSize = cipher.getBlockSize();
        byte[] bArr3 = new byte[blockSize];
        new SecureRandom().nextBytes(bArr3);
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        byte[] bArr4 = new byte[bArrDoFinal.length + blockSize];
        System.arraycopy(bArr3, 0, bArr4, 0, blockSize);
        System.arraycopy(bArrDoFinal, 0, bArr4, blockSize, bArrDoFinal.length);
        return bArr4;
    }
}
