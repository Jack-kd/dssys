package com.beizi.fusion;

import android.util.Pair;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class m6 {
    public static List a(List list) {
        if (list == null || list.size() == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdSpacesBean.DpLinkUrlListBean dpLinkUrlListBean = (AdSpacesBean.DpLinkUrlListBean) it.next();
            arrayList.add(new Pair(dpLinkUrlListBean.getDpLinkUrL(), Integer.valueOf(dpLinkUrlListBean.getOptimizePercent())));
        }
        return arrayList;
    }
}
