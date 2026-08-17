package com.byazt.crk;

import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.common.d.i;
import com.byazt.pg.u;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 160, 34})
/* loaded from: classes2.dex */
public class l implements com.byazt.ke.hp, com.byazt.ke.l {
    public com.byazt.ow.jx hp;
    public final boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ow.jx f18970l;

    public l(com.byazt.ow.jx jxVar, boolean z2) {
        this.hp = jxVar;
        this.f18970l = jxVar;
        this.jx = z2;
    }

    private Pair<String, String> getType(String str) {
        if (str.contains(i.f2495E)) {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length >= 2) {
                return new Pair<>(strArrSplit[0], strArrSplit[1]);
            }
        }
        return new Pair<>("s", str);
    }

    private void hp(String str) {
        int i2;
        u uVar;
        com.byazt.ow.jx encrypt;
        if (TextUtils.isEmpty(str)) {
            i2 = 0;
        } else {
            try {
                i2 = Integer.parseInt(str);
            } catch (Throwable unused) {
            }
        }
        if (i2 == 0) {
            this.hp = null;
            return;
        }
        com.byazt.ow.jx jxVar = this.hp;
        if ((jxVar != null && jxVar.type() == i2) || (uVar = (u) com.byazt.ym.j.getService("kv_store_factory")) == null || (encrypt = uVar.getEncrypt(i2)) == null) {
            return;
        }
        this.hp = encrypt;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013d A[Catch: all -> 0x00aa, TRY_LEAVE, TryCatch #5 {all -> 0x00aa, blocks: (B:44:0x00a0, B:70:0x00ea, B:72:0x00f1, B:73:0x0105, B:75:0x010b, B:76:0x0115, B:77:0x0119, B:78:0x0125, B:79:0x0131, B:80:0x013d, B:49:0x00ad, B:52:0x00b7, B:55:0x00c1, B:58:0x00cb, B:61:0x00d5), top: B:116:0x00a0 }] */
    @Override // com.byazt.ke.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Object> hp(java.io.File r18) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.crk.l.hp(java.io.File):java.util.Map");
    }

    @Override // com.byazt.ke.l
    public void hp(Map<String, Object> map, File file) throws Throwable {
        FileWriter fileWriter;
        Throwable th;
        String strValueOf;
        String strConcat;
        if (file == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        Properties properties = new Properties();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (key != null) {
                if (entry.getValue() instanceof Set) {
                    Set set = (Set) entry.getValue();
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        jSONArray.put((String) it.next());
                    }
                    strConcat = "ss.".concat(key);
                    value = jSONArray.toString();
                } else if (entry.getValue() instanceof Boolean) {
                    strConcat = "b.".concat(key);
                } else if (entry.getValue() instanceof Integer) {
                    strConcat = "i.".concat(key);
                } else if (entry.getValue() instanceof Long) {
                    strConcat = "l.".concat(key);
                } else if ((entry.getValue() instanceof Float) || (entry.getValue() instanceof Double)) {
                    strConcat = "f.".concat(key);
                } else {
                    strConcat = "s.".concat(key);
                }
                String strValueOf2 = String.valueOf(value);
                if (this.jx) {
                    strConcat = this.f18970l.encrypt(strConcat);
                }
                com.byazt.ow.jx jxVar = this.f18970l;
                if (jxVar != null) {
                    strValueOf2 = jxVar.encrypt(strValueOf2);
                }
                properties.put(strConcat, strValueOf2);
            }
        }
        try {
            fileWriter = new FileWriter(file);
            try {
                com.byazt.ow.jx jxVar2 = this.f18970l;
                if (jxVar2 != null) {
                    strValueOf = String.valueOf(jxVar2.type());
                } else {
                    strValueOf = "0";
                }
                properties.put(".i.tt_ect", strValueOf);
                properties.store(fileWriter, (String) null);
                fileWriter.flush();
                try {
                    fileWriter.close();
                } catch (Exception unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileWriter != null) {
                    try {
                        fileWriter.close();
                        throw th;
                    } catch (Exception unused3) {
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            fileWriter = null;
            th = th3;
        }
    }
}
