package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.common.analyse2.db.AnalyseEventDBModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class n2 extends na {
    public n2(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.na
    public List a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(AnalyseEventDBModel.class);
        return arrayList;
    }

    @Override // com.beizi.fusion.na
    public String c() {
        return "Analyse";
    }
}
