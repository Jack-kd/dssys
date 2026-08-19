package com.byazt.owd;

import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import com.byazt.bki.zy;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1061, 150})
/* loaded from: classes3.dex */
public class q extends com.byazt.aqw.j {
    @Override // com.byazt.aqw.j
    public Map<String, Object> getMediationExtraInfo() {
        com.byazt.aw.l.l("TMe", "getMediationExtraInfo");
        return com.byazt.bki.e.zy();
    }

    @Override // com.byazt.aqw.j
    public void loadDrawToken(Context context, com.byazt.aqw.hp hpVar, final com.byazt.lg.hp hpVar2, Function<SparseArray<Object>, Object> function) {
        if (context == null || hpVar == null) {
            com.byazt.aw.l.j("TMe", "参数错误");
            return;
        }
        com.byazt.aw.l.l("TMe", "mediationManager loadDrawToken context = " + context + " adSlot = " + hpVar + " pluginIMediationDrawAdTokenCallback = " + hpVar2 + " classLoader = " + function);
        hpVar.hp(com.byazt.el.hp.l());
        com.byazt.iqm.l lVarHp = com.byazt.voc.hp.hp(9, hpVar, function);
        if (lVarHp != null) {
            final com.byazt.toc.eb ebVar = new com.byazt.toc.eb(context);
            ebVar.hp(lVarHp, new com.byazt.voc.jx() { // from class: com.byazt.owd.q.3
                @Override // com.byazt.voc.jx
                public void hp(String str) {
                    com.byazt.lg.hp hpVar3 = hpVar2;
                    if (hpVar3 != null) {
                        hpVar3.hp(str, new com.byazt.wr.j(ebVar));
                    }
                }

                @Override // com.byazt.voc.jx
                public void hp(com.byazt.dq.hp hpVar3) {
                    com.byazt.lg.hp hpVar4;
                    if (hpVar3 == null || (hpVar4 = hpVar2) == null) {
                        return;
                    }
                    hpVar4.hp(hpVar3.hp, hpVar3.f19238l);
                }
            });
        }
    }

    @Override // com.byazt.aqw.j
    public void loadNativeToken(Context context, com.byazt.aqw.hp hpVar, final com.byazt.lg.jx jxVar, Function<SparseArray<Object>, Object> function) {
        if (context == null || hpVar == null) {
            com.byazt.aw.l.j("TMe", "参数错误");
            return;
        }
        com.byazt.aw.l.l("TMe", "mediationManager loadNativeToken context = " + context + " adSlot = " + hpVar + " pluginIMediationNativeAdTokenCallback = " + jxVar + " classLoader = " + function);
        hpVar.hp(com.byazt.el.hp.l());
        com.byazt.iqm.l lVarHp = com.byazt.voc.hp.hp(5, hpVar, function);
        if (lVarHp != null) {
            final com.byazt.toc.q qVar = new com.byazt.toc.q(context);
            qVar.hp(lVarHp, new com.byazt.voc.jx() { // from class: com.byazt.owd.q.2
                @Override // com.byazt.voc.jx
                public void hp(String str) {
                    com.byazt.lg.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(str, new com.byazt.mz.hp(qVar));
                    }
                }

                @Override // com.byazt.voc.jx
                public void hp(com.byazt.dq.hp hpVar2) {
                    com.byazt.lg.jx jxVar2;
                    if (hpVar2 == null || (jxVar2 = jxVar) == null) {
                        return;
                    }
                    jxVar2.hp(hpVar2.hp, hpVar2.f19238l);
                }
            });
        }
    }

    @Override // com.byazt.aqw.j
    public Object mtool(int i2, PluginValueSet pluginValueSet) {
        String networkSdkVersion;
        String adapterVersion;
        if (i2 == 8259) {
            return getMediationExtraInfo();
        }
        if (i2 == 1001) {
            return Boolean.valueOf(com.byazt.bki.e.hp());
        }
        if (i2 == 1002) {
            return Boolean.valueOf(com.byazt.bki.e.hp(pluginValueSet.stringValue(1001), pluginValueSet.stringValue(1002)));
        }
        if (i2 == 1003) {
            return Boolean.valueOf(com.byazt.bki.e.l(pluginValueSet.stringValue(1001), pluginValueSet.stringValue(1003)));
        }
        if (i2 == 1004) {
            return com.byazt.bki.e.j();
        }
        if (i2 == 1005) {
            return com.byazt.bki.e.e();
        }
        if (i2 == 1006) {
            return com.byazt.bki.e.q();
        }
        if (i2 == 1007) {
            return com.byazt.bki.e.gu();
        }
        if (i2 == 1008) {
            com.byazt.bki.e.l(2);
        } else if (i2 == 1009) {
            com.byazt.bki.e.jl();
        } else {
            if (i2 == 1010) {
                return Boolean.valueOf(com.byazt.bki.e.j(pluginValueSet.stringValue(1001)));
            }
            if (i2 == 1011) {
                String strStringValue = pluginValueSet.stringValue(1001);
                com.byazt.qyg.hp hpVarW = com.byazt.bki.e.w(strStringValue);
                com.byazt.gkj.j jVarA = com.byazt.bki.e.a(strStringValue);
                if (hpVarW != null) {
                    networkSdkVersion = hpVarW.getNetworkSdkVersion();
                    adapterVersion = hpVarW.getAdapterSdkVersion();
                } else if (jVarA != null) {
                    String networkSdkVersion2 = jVarA.getNetworkSdkVersion();
                    adapterVersion = jVarA.getAdapterVersion();
                    networkSdkVersion = networkSdkVersion2;
                } else {
                    networkSdkVersion = "";
                    adapterVersion = "";
                }
                HashMap map = new HashMap(2);
                map.put("networdSdkVersion", networkSdkVersion);
                map.put("adapterSdkVersion", adapterVersion);
                return map;
            }
            if (i2 == 2001) {
                if (pluginValueSet == null) {
                    return null;
                }
                com.byazt.yf.hp.init((Function) pluginValueSet.objectValue(2002, Function.class));
                return com.byazt.yf.hp.getInstance();
            }
            if (i2 == 1012) {
                return Boolean.valueOf(com.byazt.di.hp.jl().ns().jx());
            }
        }
        return null;
    }

    @Override // com.byazt.aqw.j
    public void preload(Activity activity, List<com.byazt.aqw.w> list, int i2, int i3, Function<SparseArray<Object>, Object> function) {
        com.byazt.iqm.l lVarHp;
        com.byazt.aw.l.l("TMe", "mediationManager preload activity = " + activity + " list = " + list + " parallelNum = " + i2 + " requestIntervalS = " + i3 + " classLoader = " + function);
        if (list == null || list.size() == 0) {
            com.byazt.aw.l.j("TMe", "参数错误");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.byazt.aqw.w wVar : list) {
            if (wVar != null && (lVarHp = com.byazt.voc.hp.hp(wVar.hp(), wVar.hp(com.byazt.el.hp.l()), function)) != null) {
                arrayList.add(new zy(lVarHp, wVar.l()));
            }
        }
        if (arrayList.size() > 0) {
            com.byazt.bki.e.hp(activity, arrayList, i2, i3);
        } else {
            com.byazt.aw.l.j("TMe", "参数错误");
        }
    }

    @Override // com.byazt.aqw.j
    public void requestPermissionIfNecessary(Context context) {
        com.byazt.aw.l.l("TMe", "mediationManager requestPermissionIfNecessary context = ".concat(String.valueOf(context)));
        com.byazt.bki.e.hp(context);
    }

    @Override // com.byazt.aqw.j
    public void setPulisherDid(String str) {
        com.byazt.aw.l.l("TMe", "mediationManager setPulisherDid configUserInfoForSegment = ".concat(String.valueOf(str)));
        com.byazt.bki.e.hp(str);
    }

    @Override // com.byazt.aqw.j
    public void setThemeStatus(int i2) {
        com.byazt.aw.l.l("TMe", "mediationManager setThemeStatus themeStatus = ".concat(String.valueOf(i2)));
        com.byazt.bki.e.hp(i2);
    }

    @Override // com.byazt.aqw.j
    public void setUserInfoForSegment(com.byazt.bm.jx jxVar) {
        com.byazt.bki.e.hp(jx.hp(jxVar));
    }

    @Override // com.byazt.aqw.j
    public int showOpenOrInstallAppDialog(final com.byazt.lg.j jVar) {
        com.byazt.aw.l.l("TMe", "mediationManager showOpenOrInstallAppDialog");
        return com.byazt.bki.e.hp(new com.byazt.bki.jx() { // from class: com.byazt.owd.q.1
            @Override // com.byazt.bki.jx
            public void hp(int i2) {
                com.byazt.lg.j jVar2 = jVar;
                if (jVar2 != null) {
                    jVar2.hp(i2);
                }
            }
        });
    }

    @Override // com.byazt.aqw.j
    public void updateLocalExtra(Map<String, Object> map) {
        com.byazt.aw.l.l("TMe", "mediationManager updateLocalExtra map = ".concat(String.valueOf(map)) == null ? "null" : map.toString());
        com.byazt.di.hp.jl().l(map);
    }

    @Override // com.byazt.aqw.j
    public void updatePrivacyConfig(com.byazt.jt.j jVar) {
        com.byazt.aw.l.l("TMe", "mediationManager updatePrivacyConfig customController = ".concat(String.valueOf(jVar)));
        com.byazt.bki.e.hp(jVar);
    }

    @Override // com.byazt.aqw.j
    public void requestPermissionIfNecessary(Context context, int[] iArr) {
        com.byazt.aw.l.l("TMe", "mediationManager requestPermissionIfNecessary context = " + context + " permissions = " + iArr);
        com.byazt.bki.e.hp(context, iArr);
    }
}
