package com.byazt.ap;

import android.net.Uri;
import android.text.TextUtils;
import com.byazt.uhg.a;
import com.byazt.uhg.eb;
import com.byazt.uhg.hp;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.uhg.xs;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1229, 30})
/* loaded from: classes2.dex */
public class jx extends j {
    public static final com.byazt.uhg.hp hp = new hp.C0386hp().hp().l();

    /* renamed from: l, reason: collision with root package name */
    public static final com.byazt.uhg.hp f18053l = new hp.C0386hp().l();

    /* renamed from: e, reason: collision with root package name */
    public Map<String, String> f18054e;

    /* renamed from: q, reason: collision with root package name */
    public boolean f18055q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.uhg.hp f18056s;

    public jx(jl jlVar) {
        super(jlVar);
        this.f18056s = hp;
        this.f18055q = false;
        this.f18054e = new HashMap();
    }

    public void hp(String str, String str2) {
        if (str == null) {
            return;
        }
        this.f18054e.put(str, str2);
    }

    public void hp(final com.byazt.mnb.hp hpVar) {
        try {
            k.hp hpVar2 = new k.hp();
            if (this.f18055q) {
                hpVar2.hp(this.f18049a);
            } else {
                eb.hp hpVar3 = new eb.hp();
                Uri uri = Uri.parse(this.f18049a);
                hpVar3.hp(uri.getScheme());
                hpVar3.l(uri.getHost());
                String encodedPath = uri.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith(ServiceReference.DELIMITER)) {
                        encodedPath = encodedPath.substring(1);
                    }
                    hpVar3.jx(encodedPath);
                }
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.f18054e.put(str, uri.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.f18054e.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String strEncode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        hpVar3.hp(strEncode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                hpVar2.hp(hpVar3.l());
            }
            hp(hpVar2);
            hpVar2.hp(this.f18056s);
            hpVar2.hp((Object) l());
            this.jx.hp(hpVar2.hp().l()).hp(new com.byazt.uhg.jx() { // from class: com.byazt.ap.jx.1
                @Override // com.byazt.uhg.jx
                public void onFailure(com.byazt.uhg.l lVar, IOException iOException) {
                    com.byazt.mnb.hp hpVar4 = hpVar;
                    if (hpVar4 != null) {
                        hpVar4.hp(jx.this, iOException);
                    }
                }

                @Override // com.byazt.uhg.jx
                public void onResponse(com.byazt.uhg.l lVar, u uVar) throws IOException {
                    if (hpVar != null) {
                        HashMap map = new HashMap();
                        if (uVar != null) {
                            a aVarEb = uVar.eb();
                            if (aVarEb != null) {
                                for (int i2 = 0; i2 < aVarEb.hp(); i2++) {
                                    map.put(aVarEb.hp(i2), aVarEb.l(i2));
                                }
                            }
                            xs xsVarA = uVar.a();
                            hpVar.hp(jx.this, new com.byazt.oyr.l(uVar.j(), uVar.jx(), uVar.w(), map, xsVarA == null ? "" : xsVarA.l(), uVar.l(), uVar.hp()));
                        }
                    }
                }
            });
        } catch (Throwable th) {
            if (hpVar != null) {
                hpVar.hp(this, new IOException(th.getMessage()));
            }
        }
    }

    @Override // com.byazt.ap.j
    public com.byazt.oyr.l hp() {
        try {
            k.hp hpVar = new k.hp();
            if (this.f18055q) {
                hpVar.hp(this.f18049a);
            } else {
                eb.hp hpVar2 = new eb.hp();
                Uri uri = Uri.parse(this.f18049a);
                hpVar2.hp(uri.getScheme());
                hpVar2.l(uri.getHost());
                String encodedPath = uri.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith(ServiceReference.DELIMITER)) {
                        encodedPath = encodedPath.substring(1);
                    }
                    hpVar2.jx(encodedPath);
                }
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.f18054e.put(str, uri.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.f18054e.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String strEncode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        hpVar2.hp(strEncode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                hpVar.hp(hpVar2.l());
            }
            hp(hpVar);
            hpVar.hp(this.f18056s);
            hpVar.hp((Object) l());
            u uVarL = this.jx.hp(hpVar.hp().l()).l();
            if (uVarL == null) {
                return null;
            }
            HashMap map = new HashMap();
            a aVarEb = uVarL.eb();
            if (aVarEb != null) {
                for (int i2 = 0; i2 < aVarEb.hp(); i2++) {
                    map.put(aVarEb.hp(i2), aVarEb.l(i2));
                }
            }
            xs xsVarA = uVarL.a();
            return new com.byazt.oyr.l(uVarL.j(), uVarL.jx(), uVarL.w(), map, xsVarA != null ? xsVarA.l() : "", uVarL.l(), uVarL.hp());
        } catch (Throwable unused) {
            return null;
        }
    }
}
