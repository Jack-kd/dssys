package com.beizi.fusion;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.beizi.fusion.BeiZiBiddingConstant;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class d2 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static List a(AdSpacesBean.ComponentBean componentBean, List list, String str) throws InterruptedException {
        String content;
        ArrayList arrayList = new ArrayList();
        if (componentBean != null && list != null && list.size() != 0 && (content = componentBean.getContent()) != null) {
            switch (content) {
                case "random":
                    a(componentBean, arrayList);
                    break;
                case "fail":
                    a(componentBean, list, str, arrayList, "280.500");
                    return arrayList;
                case "show":
                    a(componentBean, list, str, arrayList, "280.300");
                    return arrayList;
                case "click":
                    a(componentBean, list, str, arrayList, "290.300");
                    return arrayList;
                case "request":
                    a(componentBean, list, str, arrayList, "200.000");
                    return arrayList;
            }
        }
        return arrayList;
    }

    private static boolean b(List list, int i2) {
        boolean z2;
        if (list == null) {
            return false;
        }
        if (list.size() == 0) {
            mh.b("BeiZis", "enter rulesBeanList.size() == 0");
            z2 = true;
        } else {
            z2 = false;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (a((AdSpacesBean.RulesBean) list.get(i3), i2)) {
                return true;
            }
        }
        return z2;
    }

    public static int c(String str) {
        String strB;
        if (str == null || (strB = b(str)) == null) {
            return -1;
        }
        return Integer.parseInt(strB);
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        if (!ro.b().equalsIgnoreCase(str) && !"BEIZI".equalsIgnoreCase(str)) {
            if (str.equals("ADSCOPE")) {
                return "8888";
            }
            return null;
        }
        return BeiZiBiddingConstant.Adn.ADN_BZ;
    }

    private static void a(AdSpacesBean.ComponentBean componentBean, List list, String str, List list2, String str2) throws InterruptedException {
        mh.b("BeiZis", "enter handleSpaceStrategyByEvent eventCode = " + str2);
        List<AdSpacesBean.ForwardBean> forward = componentBean.getForward();
        if (forward == null || forward.size() <= 0) {
            return;
        }
        int iA = l8.a(str, str2);
        if (!str2.equalsIgnoreCase("200.000")) {
            iA++;
        }
        for (int i2 = 0; i2 < forward.size(); i2++) {
            AdSpacesBean.ForwardBean forwardBean = forward.get(i2);
            for (int i3 = 0; i3 < list.size(); i3++) {
                AdSpacesBean.BuyerBean buyerBean = (AdSpacesBean.BuyerBean) list.get(i3);
                if (buyerBean.getId() != null && buyerBean.getId().equalsIgnoreCase(forwardBean.getBuyerId()) && buyerBean.getBuyerSpaceUuId() != null && buyerBean.getBuyerSpaceUuId().equalsIgnoreCase(forwardBean.getBuyerSpaceUuId())) {
                    mh.b("BeiZis", forwardBean.getBuyerId() + " handleSpaceRequestStrategy buyerBean match");
                    if (b(forwardBean.getRules(), iA)) {
                        mh.b("BeiZis", forwardBean.getBuyerId() + " enter rulesMatch");
                        list2.add(forwardBean);
                    }
                }
            }
        }
    }

    public static void a(AdSpacesBean.ComponentBean componentBean, List list) {
        List<AdSpacesBean.ForwardBean> forward = componentBean.getForward();
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        mh.a("BeiZis", "AdForward random:" + iRandom);
        if (forward == null || forward.size() <= 0) {
            return;
        }
        int size = forward.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdSpacesBean.ForwardBean forwardBean = forward.get(i2);
            List<AdSpacesBean.RulesBean> rules = forwardBean.getRules();
            if (rules != null && rules.size() > 0) {
                int size2 = rules.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Integer[] results = rules.get(i3).getResults();
                    if (results != null && results.length >= 2) {
                        int iIntValue = results[0].intValue();
                        int iIntValue2 = results[1].intValue();
                        if (iIntValue <= iRandom && iRandom <= iIntValue2) {
                            list.add(forwardBean);
                        }
                    }
                }
            }
        }
    }

    private static boolean a(AdSpacesBean.RulesBean rulesBean, int i2) {
        boolean z2 = false;
        if (rulesBean == null) {
            return false;
        }
        try {
            String strReplace = rulesBean.getFormula().replace("x", i2 + "");
            int iA = el.a(strReplace);
            Integer[] results = rulesBean.getResults();
            mh.b("BeiZis", "formulaOrig = " + strReplace + ",isOneRuleMatch holderNum = " + i2);
            if (results != null && results.length >= 2) {
                mh.b("BeiZis", "formulaResult = " + iA + ",results[0] = " + results[0] + ",results[1] = " + results[1]);
                if (iA >= results[0].intValue() && iA <= results[1].intValue()) {
                    z2 = true;
                }
            }
            return rulesBean.getRules() != null ? b(rulesBean.getRules(), i2) & z2 : z2;
        } catch (Exception unused) {
            mh.b("BeiZis", "execute formula error!");
            return z2;
        }
    }

    public static void a(Context context, long j2, AdSpacesBean.FilterBean filterBean, lk lkVar, String str, String str2, String str3, o1 o1Var) {
        boolean z2;
        boolean z3;
        boolean z4;
        if (lkVar != null) {
            mh.a("BeiZis", "channel = " + str2 + ",observer.mPlatformFilterStatus.getStatus() = " + lkVar.f14880d.a() + ",observer.mChannelFilterStatus.getStatus(channelId) = " + lkVar.f14882f.a(str2));
        }
        boolean zIsEmpty = TextUtils.isEmpty(str2);
        if (lkVar != null) {
            boolean zA = true;
            if (lkVar.f14880d.a() == 1 || lkVar.f14882f.a(str2) == 2) {
                if (filterBean != null) {
                    List<String> privilege = filterBean.getPrivilege();
                    boolean zA2 = (privilege == null || privilege.size() <= 0) ? true : a(context, privilege);
                    z4 = false;
                    z3 = j2 > ((long) filterBean.getMinAdLoadTime());
                    try {
                        zA = l8.a(filterBean.getFrequency(), str, a(str2), str3);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    boolean z5 = zA;
                    zA = zA2;
                    z2 = z5;
                } else {
                    if (!zIsEmpty) {
                        lkVar.f14882f.a(str2, 3);
                    } else {
                        lkVar.f14880d.a(2);
                    }
                    z2 = true;
                    z3 = true;
                    z4 = true;
                }
                if (!zA) {
                    if (!zIsEmpty) {
                        lkVar.f14882f.a(str2, 5);
                    } else {
                        lkVar.f14880d.a(4);
                    }
                }
                if (!z3) {
                    if (!zIsEmpty) {
                        lkVar.f14882f.a(str2, 6);
                    } else {
                        lkVar.f14880d.a(5);
                    }
                }
                if (!z2) {
                    if (!zIsEmpty) {
                        lkVar.f14882f.a(str2, 7);
                    } else {
                        lkVar.f14880d.a(6);
                    }
                }
                if (!z4 && zA && z3 && z2) {
                    if (!zIsEmpty) {
                        lkVar.f14882f.a(str2, 3);
                        return;
                    } else {
                        lkVar.f14880d.a(2);
                        return;
                    }
                }
                return;
            }
        }
        if (lkVar != null) {
            if (!zIsEmpty) {
                lkVar.f14882f.a(str2, -2);
                return;
            } else {
                lkVar.f14880d.a(-2);
                return;
            }
        }
        if (o1Var == null || !zIsEmpty) {
            return;
        }
        o1Var.a("status not PlatformFilterStatus.kPlatformFilterStatusBegin");
    }

    private static boolean a(Context context, List list) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (-1 == packageManager.checkPermission((String) it.next(), packageName)) {
                return false;
            }
        }
        return true;
    }

    public static AdSpacesBean.BuyerBean a(String str, List list, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("buyerBeans != null ? ");
        sb.append(list != null);
        mh.b("BeiZis", sb.toString());
        if (list != null) {
            mh.b("BeiZis", "buyerBeans.size() = " + list.size());
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            AdSpacesBean.BuyerBean buyerBean = (AdSpacesBean.BuyerBean) list.get(i2);
            mh.b("BeiZis", "AdBuyer buyerBean.getUuid() = " + buyerBean.getBuyerSpaceUuId());
            if (buyerBean.getId() != null && buyerBean.getId().equals(str) && str2 != null && str2.equalsIgnoreCase(buyerBean.getBuyerSpaceUuId())) {
                return buyerBean;
            }
        }
        return null;
    }

    public static String a(List list, int i2) {
        Integer[] results;
        if (list == null) {
            return null;
        }
        try {
            if (list.size() == 0) {
                return null;
            }
            for (int i3 = 0; i3 < list.size(); i3++) {
                AdSpacesBean.BuyerBean.RenderRulesBean renderRulesBean = (AdSpacesBean.BuyerBean.RenderRulesBean) list.get(i3);
                if (renderRulesBean != null && (results = renderRulesBean.getResults()) != null && results.length >= 2 && i2 >= results[0].intValue() && i2 <= results[1].intValue()) {
                    String type = renderRulesBean.getType();
                    mh.b("BeiZis", "type = " + type + ";holderNum:" + i2);
                    return type;
                }
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static String a(String str) {
        mh.a("BeiZis", "enter convertSelfChannel buyerId = " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ro.b().equals(str) ? "BEIZI" : str;
    }
}
