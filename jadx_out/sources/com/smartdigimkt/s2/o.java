package com.smartdigimkt.s2;

import android.content.DialogInterface;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class o implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43133a;

    public o(WebLandPageActivity webLandPageActivity) {
        this.f43133a = webLandPageActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        WebLandPageActivity webLandPageActivity = this.f43133a;
        com.smartdigimkt.l3.a aVar = webLandPageActivity.f44054t;
        int iE = webLandPageActivity.f44053s.e();
        WebLandPageActivity webLandPageActivity2 = this.f43133a;
        String str = webLandPageActivity2.f44053s.f41806a;
        JSONArray jSONArray = webLandPageActivity2.f44031A;
        String str2 = webLandPageActivity2.f44046l;
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004700";
        cVar.a(aVar);
        cVar.f42828l = str;
        cVar.f42829m = String.valueOf(iE);
        cVar.f42830n = jSONArray != null ? jSONArray.toString() : "";
        cVar.f42831o = str2;
        cVar.f42832p = String.valueOf(0);
        com.smartdigimkt.y3.h.a(cVar);
    }
}
