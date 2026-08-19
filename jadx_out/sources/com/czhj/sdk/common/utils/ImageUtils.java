package com.czhj.sdk.common.utils;

import android.graphics.Bitmap;
import com.anythink.core.bridge.b;
import com.anythink.core.common.m.f;
import com.kuaishou.weapon.p0.t;
import java.io.FileInputStream;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ImageUtils {

    /* renamed from: a, reason: collision with root package name */
    private static final HashMap<String, String> f29497a;

    static {
        HashMap<String, String> map = new HashMap<>();
        f29497a = map;
        map.put("FFD8FF", "jpg");
        map.put("89504E47", "png");
        map.put("47494638", "gif");
        map.put("49492A00", "tif");
        map.put("424D", "bmp");
        map.put("41433130", "dwg");
        map.put("38425053", "psd");
        map.put("7B5C727466", "rtf");
        map.put("3C3F786D6C", "xml");
        map.put("68746D6C3E", com.baidu.mobads.sdk.internal.a.f10882f);
        map.put("44656C69766572792D646174653A", "eml");
        map.put("D0CF11E0", "doc");
        map.put("5374616E64617264204A", "mdb");
        map.put("252150532D41646F6265", f.bf);
        map.put("255044462D312E", b.f1768b);
        map.put("504B0304", "docx");
        map.put("52617221", "rar");
        map.put("57415645", "wav");
        map.put("41564920", "avi");
        map.put("2E524D46", t.f31281w);
        map.put("000001BA", "mpg");
        map.put("000001B3", "mpg");
        map.put("6D6F6F76", "mov");
        map.put("3026B2758E66CF11", "asf");
        map.put("4D546864", "mid");
        map.put("1F8B08", "gz");
        map.put("4D5A9000", "exe/dll");
        map.put("75736167", "txt");
    }

    private static String a(String str) {
        FileInputStream fileInputStream;
        String strA = null;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable unused) {
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[4];
            fileInputStream.read(bArr, 0, 4);
            strA = a(bArr);
        } catch (Throwable unused2) {
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return strA;
        }
        try {
            fileInputStream.close();
        } catch (Throwable unused3) {
        }
        return strA;
    }

    public static String getFileType(String str) {
        return f29497a.get(a(str));
    }

    public static void recycleBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    private static String a(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            String upperCase = Integer.toHexString(b3 & 255).toUpperCase();
            if (upperCase.length() < 2) {
                sb.append(0);
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }
}
