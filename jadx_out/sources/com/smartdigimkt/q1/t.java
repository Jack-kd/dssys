package com.smartdigimkt.q1;

import android.text.TextUtils;
import android.util.Log;
import com.smartdigimkt.z.z;
import com.umeng.analytics.pro.bv;
import java.io.File;
import java.io.FileOutputStream;

/* loaded from: classes5.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f42709a = 0;

    public static String a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        String string;
        byte[] bytes;
        FileOutputStream fileOutputStream;
        com.smartdigimkt.m3.c cVar2;
        string = "";
        if (!TextUtils.isEmpty(cVar.f41781B)) {
            if (!com.smartdigimkt.u1.d.a().b() || TextUtils.isEmpty(cVar.f41809b0) || z.h(cVar, aVar) || !cVar.j()) {
                cVar2 = cVar;
            } else {
                com.smartdigimkt.u1.d dVarA = com.smartdigimkt.u1.d.a();
                cVar2 = cVar;
                com.smartdigimkt.y3.h.a(aVar, cVar2, dVarA.b() ? dVarA.f44391a.getOmsdkVersion() : "", "1", "1", "can not inject omsdk js into offer_url");
            }
            return cVar2.f41781B;
        }
        if (!TextUtils.isEmpty(cVar.f41780A)) {
            com.smartdigimkt.t3.n nVarA = com.smartdigimkt.t3.n.a();
            nVarA.getClass();
            StringBuilder sb = new StringBuilder();
            sb.append(aVar.f41632f);
            sb.append("_");
            File file = new File(new File(nVarA.f44327b, "sdm_internal_html_resouce"), com.smartdigimkt.f.i.a(sb, cVar.f41806a, ".html"));
            FileOutputStream fileOutputStream2 = null;
            if (!file.exists()) {
                file = null;
            }
            if (file != null) {
                Log.e(bv.aI, "loadMraidResource: html exists: " + file.toURI().toString());
                return file.toURI().toString();
            }
            Log.e(bv.aI, "loadMraidResource: html no exists: ");
            String strInjectScriptContentIntoHtml = cVar.f41780A;
            com.smartdigimkt.u1.d dVarA2 = com.smartdigimkt.u1.d.a();
            if (dVarA2.b() && !z.h(cVar, aVar) && cVar.j()) {
                strInjectScriptContentIntoHtml = dVarA2.f44391a.injectScriptContentIntoHtml(strInjectScriptContentIntoHtml, cVar, aVar);
            }
            com.smartdigimkt.t3.n nVarA2 = com.smartdigimkt.t3.n.a();
            nVarA2.getClass();
            File file2 = new File(nVarA2.f44327b, "sdm_internal_html_resouce");
            if (!file2.exists()) {
                file2.mkdirs();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aVar.f41632f);
            sb2.append("_");
            File file3 = new File(file2, com.smartdigimkt.f.i.a(sb2, cVar.f41806a, ".html"));
            try {
                try {
                    bytes = strInjectScriptContentIntoHtml.getBytes("utf-8");
                    fileOutputStream = new FileOutputStream(file3);
                } catch (Throwable unused) {
                }
                try {
                    fileOutputStream.write(bytes, 0, bytes.length);
                    string = file3.toURI().toString();
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                    return string;
                }
            } catch (Throwable unused3) {
            }
        }
        return string;
    }
}
