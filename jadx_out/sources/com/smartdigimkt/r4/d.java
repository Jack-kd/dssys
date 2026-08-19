package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class d {
    public static byte[] a(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes("utf-8"));
            gZIPOutputStream.close();
        } catch (Throwable unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public JSONObject b() {
        return com.smartdigimkt.l4.a.a(c());
    }

    public int c() {
        return 0;
    }

    public List d() {
        return null;
    }

    public Map e() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    public HttpReqEntity f() {
        return null;
    }

    public JSONObject g() {
        return com.smartdigimkt.l4.a.a(c(), d());
    }

    public byte[] h() throws JSONException {
        String strI = i();
        if (TextUtils.isEmpty(strI)) {
            return new byte[0];
        }
        try {
            return strI.getBytes("utf-8");
        } catch (Throwable unused) {
            return strI.getBytes();
        }
    }

    public String i() throws JSONException {
        try {
            HashMap map = new HashMap();
            String strB = com.smartdigimkt.c5.d.b(b().toString());
            String strB2 = com.smartdigimkt.c5.d.b(g().toString());
            map.put(com.anythink.core.common.m.f.f5766P, "1.0");
            map.put("p", strB);
            map.put(com.anythink.core.common.m.f.f5774X, strB2);
            ArrayList arrayList = new ArrayList(map.size());
            arrayList.addAll(map.keySet());
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                String str = (String) obj;
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(str);
                sb.append("=");
                sb.append(map.get(str));
            }
            map.put(com.anythink.core.common.m.f.f5775Y, com.smartdigimkt.c5.i.a(a() + sb.toString()));
            Set<String> setKeySet = map.keySet();
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str2 : setKeySet) {
                    jSONObject.put(str2, String.valueOf(map.get(str2)));
                }
                return jSONObject.toString();
            } catch (OutOfMemoryError unused) {
                System.gc();
                return "";
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    public abstract int j();

    public abstract String k();

    public String a() {
        return SDKContext.getInstance().b();
    }
}
