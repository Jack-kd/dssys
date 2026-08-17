package com.byazt.zf;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.browser.trusted.sharing.ShareTarget;
import com.anythink.core.common.d.i;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.cm.w;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.uhg.e;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.uhg.v;
import com.byazt.ymw.a;
import com.byazt.zf.hp;
import com.sigmob.sdk.base.n;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 582, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: s, reason: collision with root package name */
    public static final ConcurrentLinkedDeque<String> f28406s = new ConcurrentLinkedDeque<>();

    /* renamed from: e, reason: collision with root package name */
    public final String f28407e;
    public String gu;

    /* renamed from: q, reason: collision with root package name */
    public long f28408q;

    public l(com.byazt.qg.hp hpVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        super(hpVar, str, str2, jSONObject, str3, str4);
        this.f28407e = "index_censorship.json";
    }

    private boolean l(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            com.byazt.bo.l.hp(str, str2);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.byazt.zf.hp
    public void hp(String str) {
    }

    public boolean j() {
        return false;
    }

    @Override // com.byazt.zf.hp
    public void jx() {
        if (f28406s.contains(this.f28402l)) {
            this.hp.hp(new Runnable() { // from class: com.byazt.zf.l.3
                @Override // java.lang.Runnable
                public void run() {
                    l.this.hp(null, com.byazt.qg.j.l(sz.getContext()), sz.getContext(), -1L, -1L);
                }
            });
        } else if (this.f28401j.compareAndSet(false, true)) {
            this.hp.hp(new Runnable() { // from class: com.byazt.zf.l.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        l.this.f28403w.set(true);
                        l.this.w();
                        l.this.f28401j.set(false);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x0194 A[Catch: Exception -> 0x018e, LOOP:0: B:81:0x0194->B:83:0x019c, LOOP_START, TryCatch #0 {Exception -> 0x018e, blocks: (B:79:0x0190, B:81:0x0194, B:83:0x019c, B:84:0x01a0, B:86:0x01a8), top: B:92:0x0190 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void w() throws java.io.IOException, com.byazt.zf.j {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zf.l.w():void");
    }

    @Override // com.byazt.zf.hp
    public void hp(final String str, final String str2) {
        k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zf.l.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cid", str);
                    jSONObject.put("req_id", str2);
                } catch (Exception unused) {
                }
                return com.byazt.jlb.l.l().hp("web_upload_start").l(jSONObject.toString());
            }
        }, "web_upload_start");
    }

    @Override // com.byazt.zf.hp
    public void l(Context context, String str, com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, Map<String, Object> map) throws IOException {
        try {
            if (com.byazt.qg.j.jx()) {
                String strHp = hp(context);
                String string = lVar.hp().toString();
                String strL = eVar.l();
                if (TextUtils.equals(strL.toLowerCase(), "javascript")) {
                    strL = "js";
                }
                File file = new File(strHp);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String str2 = a.l(string) + i.f2495E + strL;
                File file2 = new File(strHp, str2);
                if (file2.exists()) {
                    file2.delete();
                    file2.createNewFile();
                }
                file2.getAbsolutePath();
                sz.l().rk();
                if (com.byazt.bo.hp.hp(webResourceResponse.getData(), strHp, str2, sz.l().rk())) {
                    hp(this.f28400a, str, eVar, str2, string, lVar.jx(), map);
                }
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public void hp(final String str, final String str2, final long j2, final String str3, final long j3, final long j4) {
        k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zf.l.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cid", str);
                    jSONObject.put("req_id", str2);
                    jSONObject.put("duration", System.currentTimeMillis() - j2);
                    jSONObject.put("weburl", str3);
                    jSONObject.put("size", j3);
                    jSONObject.put("avail_mem", j4);
                } catch (Exception unused) {
                }
                return com.byazt.jlb.l.l().hp("web_upload_finish").l(jSONObject.toString());
            }
        }, "web_upload_finish");
    }

    @Override // com.byazt.zf.hp
    public boolean hp(WebView webView) {
        if (webView == null || f28406s.contains(this.f28402l)) {
            return true;
        }
        AtomicBoolean atomicBoolean = this.f28403w;
        return (atomicBoolean != null && atomicBoolean.get()) || this.hp.l().get() > 0;
    }

    @Override // com.byazt.zf.hp
    public void hp(Context context, String str, com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, Map<String, Object> map) throws IOException {
        int i2;
        if (com.byazt.qg.j.jx()) {
            String string = lVar.hp().toString();
            String strL = eVar.l();
            if (TextUtils.equals(strL.toLowerCase(), "javascript")) {
                strL = "js";
            }
            String str2 = a.l(string) + i.f2495E + strL;
            if (TextUtils.isEmpty(strL)) {
                return;
            }
            HashMap<String, byte[]> map2 = this.hp.hp().get(strL);
            if (map2 == null) {
                map2 = new HashMap<>();
                this.hp.hp().put(strL, map2);
            }
            ArrayList arrayList = new ArrayList();
            byte[] bArr = new byte[1024];
            InputStream data = webResourceResponse.getData();
            while (true) {
                try {
                    i2 = 0;
                    if (data.read(bArr) == -1) {
                        break;
                    }
                    while (i2 < 1024) {
                        arrayList.add(Byte.valueOf(bArr[i2]));
                        i2++;
                    }
                } catch (Exception unused) {
                    if (data != null) {
                        try {
                            data.close();
                            return;
                        } catch (IOException unused2) {
                            return;
                        }
                    }
                    return;
                } catch (Throwable th) {
                    if (data != null) {
                        try {
                            data.close();
                            throw th;
                        } catch (IOException unused3) {
                            throw th;
                        }
                    }
                    throw th;
                }
            }
            byte[] bArr2 = new byte[arrayList.size()];
            while (i2 < arrayList.size()) {
                bArr2[i2] = ((Byte) arrayList.get(i2)).byteValue();
                i2++;
            }
            if (arrayList.size() <= sz.l().rk() * 1048576) {
                map2.put(str2, bArr2);
                hp(this.f28400a, str, eVar, str2, string, lVar.jx(), map);
            }
            try {
                data.close();
            } catch (IOException unused4) {
            }
        }
    }

    private int l(byte[] bArr, int i2, File file) {
        if (i2 <= 0) {
            return -1;
        }
        return hp(bArr, i2 - 1, file);
    }

    @Override // com.byazt.zf.hp
    public void hp(JSONObject jSONObject, String str, e eVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("name", str2);
            jSONObject2.putOpt("url", str3);
            if (map != null) {
                jSONObject2.putOpt("request_headers", new JSONObject(map));
            }
            if (eVar != null) {
                String lowerCase = eVar.toString().toLowerCase();
                if (lowerCase.contains("image")) {
                    hp(jSONObject2, jSONObject, "sub_pic");
                    return;
                }
                if (!lowerCase.contains("js") && !lowerCase.contains("javascript")) {
                    if (lowerCase.contains("css")) {
                        hp(jSONObject2, jSONObject, "css");
                        return;
                    } else {
                        if (lowerCase.contains(com.baidu.mobads.sdk.internal.a.f10882f)) {
                            hp(jSONObject2, jSONObject, com.baidu.mobads.sdk.internal.a.f10882f);
                            return;
                        }
                        return;
                    }
                }
                hp(jSONObject2, jSONObject, "js");
                return;
            }
            hp(jSONObject2, jSONObject, "other");
        } catch (JSONException unused) {
        }
    }

    private void hp(JSONObject jSONObject, JSONObject jSONObject2, String str) throws JSONException {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(str);
            if (jSONArrayOptJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                this.f28400a.putOpt(str, jSONArray);
            } else {
                jSONArrayOptJSONArray.put(jSONObject);
                this.f28400a.putOpt(str, jSONArrayOptJSONArray);
            }
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.zf.hp
    public void hp() throws JSONException {
        try {
            this.f28400a.putOpt(com.baidu.mobads.sdk.internal.a.f10882f, new JSONArray());
            this.f28400a.putOpt("js", new JSONArray());
            this.f28400a.putOpt("css", new JSONArray());
            this.f28400a.putOpt("sub_pic", new JSONArray());
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.zf.hp
    public boolean hp(e eVar) {
        try {
            Set<String> setFi = sz.l().fi();
            String str = eVar.hp().trim().toLowerCase() + ServiceReference.DELIMITER + eVar.l().trim().toLowerCase();
            Objects.toString(setFi);
            return setFi.contains(str);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.zf.hp
    public void hp(com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, hp.InterfaceC0435hp interfaceC0435hp) {
        interfaceC0435hp.hp(true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(File file, String str, Context context, long j2, long j3) {
        try {
            com.byazt.bo.hp.l(str);
            if (file != null && file.exists()) {
                file.delete();
            }
            AtomicInteger atomicInteger = com.byazt.qg.j.hp;
            int i2 = atomicInteger.get();
            if (i2 > 0) {
                atomicInteger.decrementAndGet();
            }
            if (i2 == 0) {
                com.byazt.bo.hp.l(com.byazt.qg.j.l(context));
            }
            hp(this.f28402l, this.jx, this.f28408q, this.eb, j2, j3);
        } catch (Exception unused) {
        }
    }

    private byte[] hp(byte[] bArr, int i2) {
        return com.byazt.dnb.jx.hp(bArr, i2);
    }

    private String hp(Context context) {
        String str = this.gu;
        if (str != null) {
            return str;
        }
        try {
            String str2 = com.byazt.qg.j.l(context) + File.separator + this.f28402l;
            this.gu = str2;
            return str2;
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            String str3 = File.separator;
            sb.append(str3);
            sb.append(".lp_cache");
            sb.append(str3);
            sb.append(this.f28402l);
            return sb.toString();
        }
    }

    private int hp(byte[] bArr, int i2, File file) {
        try {
            jl jlVarA = w.hp().l().a();
            v vVarHp = v.hp(e.hp(ShareTarget.ENCODING_TYPE_MULTIPART), bArr, n.f36463z, file.getName());
            String strYj = sz.l().yj();
            String str = "?aid=" + s.u().ns() + "&device_platform=android&device_type=android&source_type=union";
            u uVarL = jlVarA.hp(new k.hp().hp(strYj + str).hp(vVarHp).l()).l();
            if (uVarL.jx() == 200) {
                JSONObject jSONObject = new JSONObject(uVarL.a().l());
                int iOptInt = jSONObject.optInt("code");
                String strOptString = jSONObject.optString("msg");
                if (iOptInt == 0 && TextUtils.equals(cb.f11292o, strOptString)) {
                    return 200;
                }
                return l(bArr, i2, file);
            }
            return l(bArr, i2, file);
        } catch (Throwable th) {
            th.getMessage();
            return l(bArr, i2, file);
        }
    }
}
