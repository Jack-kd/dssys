package com.beizi.fusion;

import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.beizi.fusion.p5;
import com.beizi.fusion.q5;
import com.beizi.fusion.r5;
import com.beizi.fusion.u1;
import com.beizi.fusion.v1;
import com.beizi.fusion.y1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes2.dex */
public class yi {
    private boolean a(int i2) {
        return i2 == 200;
    }

    public String b(x1 x1Var) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        b4 b4VarJ = b4.j();
        w6 w6VarM = w6.m();
        boolean z2 = (x1Var == null || TextUtils.isEmpty(x1Var.c())) ? false : true;
        String strEncode = null;
        if (x1Var != null) {
            try {
                if (x1Var.a() == 2) {
                    strEncode = b4.j().f13046g;
                    if (!TextUtils.isEmpty(strEncode)) {
                        strEncode = Uri.encode(strEncode);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        p5 p5VarA = new p5.a().u(w6VarM.B()).d(w6VarM.h()).l(w6VarM.r()).g(w6VarM.l()).x(w6VarM.p()).h("").o(w6VarM.u()).a(o7.PLATFORM_ANDROID).a(w6VarM.i()).c(w6VarM.g()).k(w6VarM.q()).j(w6VarM.o()).q(w6VarM.w()).t(w6VarM.A()).i(w6VarM.n()).s(w6VarM.y()).a(w6VarM.a()).b(w6VarM.J()).n(w6VarM.t()).m(w6VarM.s()).y(w6VarM.F()).p(w6VarM.v()).e(w6VarM.j()).f(w6VarM.k()).r(w6VarM.x()).a(b4.j().h()).b(w6VarM.b()).v(w6VarM.D()).a(z2).w(strEncode).a();
        up upVarA = up.a();
        upVarA.g();
        r5.a aVar = new r5.a();
        aVar.a(upVarA.e());
        aVar.a(upVarA.c());
        aVar.a(z2);
        aVar.a(upVarA.b());
        if (!TextUtils.isEmpty(upVarA.f16527e) && !TextUtils.isEmpty(upVarA.f16528f)) {
            aVar.a(new q5.a().a(upVarA.f16528f).b(upVarA.f16527e).c(upVarA.f16529g).a(upVarA.f16530h).a());
        }
        v1.a aVarA = new v1.a().d(w6VarM.C()).a(r7.SRC_APP).a(q7.REQ_AD).c(wo.a()).c(b4VarJ.c()).a(p5VarA).a(aVar.a()).b(w6VarM.f()).a(w6VarM.d()).a(w6VarM.c()).b(w6VarM.e()).a(z2);
        u1.a aVar2 = new u1.a();
        if (x1Var != null) {
            aVar2.e(x1Var.g());
            aVar2.d(x1Var.f());
            if (x1Var.h()) {
                aVar2.b(1);
            } else {
                aVar2.b(0);
            }
            aVar2.a(x1Var.e());
            aVar2.a(x1Var.b());
            aVar2.b(x1Var.c());
            aVar2.a(b4.j().f());
            aVar2.c(x1Var.d());
        }
        aVarA.a(aVar2.a());
        v1 v1VarA = aVarA.a();
        String strB = i2.b(ug.a(), v1VarA.toString());
        nh.b("lance", "sdkRequest:" + v1VarA.toString());
        return strB;
    }

    public void a(x1 x1Var, wi wiVar, wh whVar) {
        String strM;
        if (x1Var == null || wiVar == null) {
            return;
        }
        try {
            String strB = b4.j().b();
            if (whVar == wh.REWARDEDVIDEO) {
                strM = b4.j().l();
                if (!TextUtils.isEmpty(strM)) {
                    x1Var.a("5.0.0");
                    strB = strM;
                }
            } else if (whVar == wh.NATIVE) {
                strM = b4.j().m();
                if (!TextUtils.isEmpty(strM)) {
                    x1Var.a("5.0.0");
                    strB = strM;
                }
            }
            nh.b("lance", "getRequestBaseUrl:" + strB);
            HttpURLConnection httpURLConnectionA = a(new URL(strB));
            byte[] bArrA = a(x1Var);
            if (bArrA == null) {
                wiVar.a(4);
                return;
            }
            a(httpURLConnectionA, bArrA);
            httpURLConnectionA.connect();
            if (!a(httpURLConnectionA.getResponseCode())) {
                wiVar.a(2);
                return;
            }
            InputStream inputStream = httpURLConnectionA.getInputStream();
            String strA = y1.i.a(inputStream);
            inputStream.close();
            if (TextUtils.isEmpty(strA)) {
                wiVar.a(3);
            } else {
                wiVar.a(strA);
            }
        } catch (Exception unused) {
        }
    }

    private byte[] a(x1 x1Var) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String strB = b(x1Var);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        return strB.getBytes();
    }

    private HttpURLConnection a(URL url) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(5000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        return httpURLConnection;
    }

    private void a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setRequestProperty("User-Agent", b4.j().f13046g);
        httpURLConnection.setRequestProperty(AbstractC1114b.f5589g, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        String strA = nq.a();
        if (!TextUtils.isEmpty(strA)) {
            httpURLConnection.setRequestProperty(com.sigmob.sdk.base.e.f36239a, strA);
        }
        httpURLConnection.setRequestProperty("Connect-Length", Integer.toString(bArr.length));
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bArr);
        outputStream.flush();
        outputStream.close();
    }

    public String a(String str, boolean z2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        w6 w6VarM = w6.m();
        p5 p5VarA = new p5.a().u(w6VarM.B()).d(w6VarM.h()).l(w6VarM.r()).g(w6VarM.l()).x(w6VarM.p()).h("").o(w6VarM.u()).a(o7.PLATFORM_ANDROID).a(w6VarM.i()).c(w6VarM.g()).k(w6VarM.q()).j(w6VarM.o()).q(w6VarM.w()).t(w6VarM.A()).i(w6VarM.n()).s(w6VarM.y()).a(w6VarM.a()).b(w6VarM.J()).n(w6VarM.t()).m(w6VarM.s()).y(w6VarM.F()).p(w6VarM.v()).e(w6VarM.j()).f(w6VarM.k()).r(w6VarM.x()).a(b4.j().h()).b(w6VarM.b()).v(w6VarM.D()).a();
        up upVarA = up.a();
        upVarA.g();
        r5.a aVar = new r5.a();
        aVar.a(upVarA.e());
        aVar.a(upVarA.c());
        aVar.a(upVarA.b());
        if (!TextUtils.isEmpty(upVarA.f16527e) && !TextUtils.isEmpty(upVarA.f16528f)) {
            aVar.a(new q5.a().a(upVarA.f16528f).b(upVarA.f16527e).c(upVarA.f16529g).a(upVarA.f16530h).a());
        }
        v1.a aVarB = new v1.a().d(w6VarM.C()).a(r7.SRC_APP).a(q7.REQ_AD).c(wo.a()).a(p5VarA).a(aVar.a()).b(w6VarM.f()).a(w6VarM.d()).a(w6VarM.c()).b(w6VarM.e());
        aVarB.a(new u1.a().d(str).b(z2 ? 1 : 0).a(b4.j().f()).a());
        v1 v1VarA = aVarB.a();
        String strB = i2.b(ug.a(), v1VarA.toString());
        nh.b("lance", "sdkRequest:" + v1VarA.toString());
        return strB;
    }
}
