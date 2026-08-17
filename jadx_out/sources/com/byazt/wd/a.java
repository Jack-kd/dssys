package com.byazt.wd;

import com.anythink.core.common.m.f;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.kuaishou.weapon.p0.t;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2141, 54})
/* loaded from: classes3.dex */
public class a {
    @DungeonFlag
    private static String hp(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                sb.append(":");
            }
            return sb.substring(0, sb.length() - 1);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static JSONObject l(List<hp> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        JSONObject jSONObject = new JSONObject();
        for (hp hpVar : list) {
            if (hpVar != null) {
                arrayList.add(hp(hpVar.l()));
                arrayList2.add(String.valueOf(hpVar.hp()));
            }
        }
        hp(jSONObject, f.f5775Y, arrayList, false);
        hp(jSONObject, "subject", arrayList2, false);
        return jSONObject;
    }

    public static void hp(JSONObject jSONObject, String str, List<String> list, boolean z2) {
        if (jSONObject == null || list == null || list.isEmpty()) {
            return;
        }
        if (z2) {
            try {
                jSONObject.put(str + "Size", list.size());
            } catch (JSONException unused) {
                return;
            }
        }
        jSONObject.put(str, w.hp(list));
    }

    private static JSONObject hp(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (String str : list) {
            if (str.endsWith(".png")) {
                arrayList2.add(str.substring(0, str.lastIndexOf(".png")));
            } else if (str.endsWith(".xml")) {
                arrayList.add(str.substring(0, str.lastIndexOf(".xml")));
            } else {
                arrayList3.add(str);
            }
        }
        hp(jSONObject, "xml", arrayList, true);
        hp(jSONObject, "png", arrayList2, true);
        hp(jSONObject, "other", arrayList3, true);
        return jSONObject;
    }

    public static long hp(long j2, InputStream inputStream) throws IOException {
        if (j2 != -1) {
            return j2;
        }
        byte[] bArr = new byte[8192];
        long j3 = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return j3;
            }
            j3 += i2;
        }
    }

    private static void hp(File file, List<hp> list) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, t.f31269k);
            try {
                l lVarHp = jx.hp(randomAccessFile, 0L, randomAccessFile.length());
                list.addAll(com.byazt.gtz.hp.hp(lVarHp, com.byazt.xk.hp.hp(lVarHp)));
                randomAccessFile.close();
            } finally {
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005c  */
    @com.bytedance.component.sdk.annotation.DungeonFlag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject hp(java.io.File r23) {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wd.a.hp(java.io.File):org.json.JSONObject");
    }
}
