package com.byazt.xp;

import android.text.TextUtils;
import com.byazt.ctq.jx;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.ymw.eb;
import com.byazt.ymw.s;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.ky;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1733, 34})
/* loaded from: classes3.dex */
public class l {
    private boolean hp(long j2, long j3) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return j3 == 0 ? !ky.hp(j2, jCurrentTimeMillis) : jCurrentTimeMillis - j2 >= j3;
    }

    private byte[] j(String str) {
        byte[] bytes = com.byazt.ymw.hp.l(str).getBytes(StandardCharsets.UTF_8);
        if (bytes == null || bytes.length <= 0) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 1);
        byteBufferAllocate.put((byte) 3);
        byteBufferAllocate.put(bytes);
        return byteBufferAllocate.array();
    }

    private JSONObject jx(String str) {
        byte[] bArrJ = s.j(new File(com.byazt.rz.l.hp(sz.getContext()), new File(str).getName()));
        if (bArrJ == null) {
            return null;
        }
        try {
            String strHp = hp(bArrJ);
            if (strHp != null) {
                return new JSONObject(strHp);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private void l(JSONObject jSONObject, String str) throws IOException {
        FileOutputStream fileOutputStream;
        byte[] bArrJ = j(jSONObject.toString());
        if (bArrJ == null || bArrJ.length <= 0) {
            return;
        }
        try {
            fileOutputStream = new FileOutputStream(new File(com.byazt.rz.l.hp(sz.getContext()), new File(str).getName()));
            try {
                fileOutputStream.write(bArrJ);
                com.byazt.qkc.l.hp(fileOutputStream);
            } catch (Throwable unused) {
                com.byazt.qkc.l.hp(fileOutputStream);
            }
        } catch (Throwable unused2) {
            fileOutputStream = null;
        }
    }

    private boolean w(String str) {
        File[] fileArrListFiles;
        long jLastModified;
        File file = new File(str);
        boolean z2 = true;
        if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (name.startsWith("._tt_")) {
                    try {
                        jLastModified = Long.parseLong(name.substring(5));
                    } catch (Throwable unused) {
                        jLastModified = file2.lastModified();
                    }
                    if (ky.hp(jLastModified, System.currentTimeMillis())) {
                        z2 = false;
                    } else {
                        file2.delete();
                    }
                }
            }
        }
        if (z2) {
            new File(file, "._tt_" + System.currentTimeMillis()).mkdirs();
        }
        return z2;
    }

    public void hp(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectHp;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("id_conf")) == null) {
            return;
        }
        try {
            jx jxVarHp = com.byazt.jz.l.hp();
            long j2 = jxVarHp.getLong("last_gather_id_time", 0L);
            long jOptLong = jSONObjectOptJSONObject.optLong("delt", 0L);
            if (j2 <= 0 || hp(j2, jOptLong)) {
                String strOptString = jSONObjectOptJSONObject.optString("store");
                int iOptInt = jSONObjectOptJSONObject.optInt("state", 0);
                if (iOptInt != 1) {
                    jSONObjectHp = null;
                    if (iOptInt != 2) {
                        if (iOptInt != 4) {
                            return;
                        }
                        File file = new File(strOptString);
                        File file2 = new File(eb.hp(sz.getContext(), false, null), file.getName());
                        if (file2.exists()) {
                            file2.delete();
                        }
                        hp(file);
                    }
                } else {
                    jSONObjectHp = hp(strOptString);
                }
                int iOptInt2 = jSONObjectOptJSONObject.optInt("upload", 0);
                if (iOptInt2 > 0) {
                    jxVarHp.put("last_gather_id_time", System.currentTimeMillis());
                    File file3 = new File(strOptString);
                    jSONObjectHp.put("c_r", file3.canRead());
                    jSONObjectHp.put("c_w", file3.canWrite());
                    jSONObjectHp.put("d", strOptString);
                    hp(strOptString, jSONObjectHp, iOptInt2 == 2);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @DungeonFlag
    private JSONObject l(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        JSONObject jSONObjectJx = jx(str);
        if (file.exists() && file.isDirectory() && file.canRead()) {
            HashMap map = new HashMap();
            hp(file, str, map);
            if (map.size() != 0) {
                if (jSONObjectJx == null) {
                    jSONObjectJx = new JSONObject();
                }
                JSONObject jSONObjectOptJSONObject = jSONObjectJx.optJSONObject("aid");
                try {
                    if (jSONObjectOptJSONObject == null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObjectJx.put("aid", jSONObject);
                        } catch (JSONException unused) {
                        }
                        jSONObjectOptJSONObject = jSONObject;
                    } else {
                        for (Map.Entry<String, Set<String>> entry : map.entrySet()) {
                            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(entry.getKey());
                            if (jSONArrayOptJSONArray != null) {
                                Set<String> value = entry.getValue();
                                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                                    if (!TextUtils.isEmpty(strOptString)) {
                                        value.add(strOptString);
                                    }
                                }
                            }
                        }
                    }
                } catch (JSONException unused2) {
                }
                for (Map.Entry<String, Set<String>> entry2 : map.entrySet()) {
                    String key = entry2.getKey();
                    Set<String> value2 = entry2.getValue();
                    if (!TextUtils.isEmpty(key) && value2 != null && value2.size() != 0) {
                        try {
                            JSONArray jSONArray = new JSONArray();
                            Iterator<String> it = value2.iterator();
                            while (it.hasNext()) {
                                jSONArray.put(it.next());
                            }
                            jSONObjectOptJSONObject.put(key, jSONArray);
                        } catch (JSONException unused3) {
                        }
                    }
                }
            }
        }
        return jSONObjectJx;
    }

    private void hp(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        hp(file2);
                    }
                }
                file.delete();
            }
        } catch (Throwable unused) {
        }
    }

    private JSONObject hp(String str) throws JSONException, IOException {
        String strL = DeviceUtils.l();
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        String str2 = (TextUtils.isEmpty(strL) ? 1 : 0) + strL;
        JSONObject jSONObjectL = l(str);
        if (jSONObjectL == null) {
            jSONObjectL = new JSONObject();
        }
        JSONObject jSONObjectOptJSONObject = jSONObjectL.optJSONObject("aid");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
            jSONObjectL.putOpt("aid", jSONObjectOptJSONObject);
        }
        String packageName = sz.getContext().getPackageName();
        if (packageName == null) {
            packageName = com.byazt.jz.s.u().ns();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(packageName);
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONObjectOptJSONObject.put(packageName, jSONArrayOptJSONArray);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= jSONArrayOptJSONArray.length()) {
                i2 = -1;
                break;
            }
            if (TextUtils.equals(jSONArrayOptJSONArray.optString(i2), str2)) {
                break;
            }
            i2++;
        }
        if (i2 == -1) {
            jSONArrayOptJSONArray.put(str2);
        }
        l(jSONObjectL, str);
        hp(jSONObjectOptJSONObject, str);
        return jSONObjectL;
    }

    @DungeonFlag
    private void hp(JSONObject jSONObject, String str) {
        File file = new File(str);
        if (file.exists()) {
            if (!file.canWrite()) {
                return;
            }
        } else if (!file.mkdirs()) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (!TextUtils.isEmpty(strOptString)) {
                        byte[] bArrJ = j(next + ServiceReference.DELIMITER + strOptString);
                        if (bArrJ != null) {
                            File file2 = new File(str, hp.hp(bArrJ, 20));
                            if (file2.isFile()) {
                                file2.delete();
                            }
                            file2.mkdirs();
                            file2.getAbsolutePath();
                        }
                    }
                }
            }
        }
    }

    private void hp(File file, String str, Map<String, Set<String>> map) {
        if (file == null || !file.exists() || !file.canRead() || file.getName().startsWith("._tt_")) {
            return;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                for (File file2 : fileArrListFiles) {
                    if (!file2.getName().startsWith("._tt_") && file2.isDirectory()) {
                        hp(file2, str, map);
                        file2.delete();
                    }
                }
                return;
            }
            file.delete();
            String absolutePath = file.getAbsolutePath();
            if (absolutePath.length() <= str.length()) {
                return;
            }
            try {
                String strHp = hp(hp.hp(absolutePath.substring(str.length() + 1)));
                if (strHp == null) {
                    return;
                }
                String[] strArrSplit = strHp.split(ServiceReference.DELIMITER);
                if (strArrSplit.length != 2) {
                    return;
                }
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                Set<String> hashSet = map.get(str2);
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                    map.put(str2, hashSet);
                }
                hashSet.add(str3);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        file.delete();
    }

    private String hp(byte[] bArr) throws JSONException {
        byte b3 = bArr[0];
        int length = bArr.length - 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 1, bArr2, 0, length);
        if (b3 == 3) {
            return com.byazt.ymw.hp.jx(new String(bArr2));
        }
        return null;
    }

    private void hp(String str, JSONObject jSONObject, boolean z2) throws JSONException {
        if (z2 || w(str)) {
            hp(str, jSONObject);
        }
    }

    private void hp(String str, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null || jSONObject.length() == 0) {
            jSONObject = l(str);
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("aid");
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            HashSet hashSet = new HashSet();
            int i2 = 0;
            while (itKeys.hasNext()) {
                i2++;
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(itKeys.next());
                if (jSONArrayOptJSONArray != null) {
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i3);
                        if (!TextUtils.isEmpty(strOptString)) {
                            hashSet.add(strOptString);
                        }
                    }
                }
            }
            try {
                jSONObject.put("size", i2);
                if (!hashSet.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        jSONArray.put((String) it.next());
                    }
                    jSONObject.put("all", jSONArray);
                }
            } catch (JSONException unused) {
            }
        }
        k.hp().hp("s_d_i_c", jSONObject);
    }
}
