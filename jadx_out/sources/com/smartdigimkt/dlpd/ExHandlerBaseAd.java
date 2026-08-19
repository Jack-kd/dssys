package com.smartdigimkt.dlpd;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c5.j;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.j.h;
import com.smartdigimkt.j.u;
import com.smartdigimkt.k.a0;
import com.smartdigimkt.k.b0;
import com.smartdigimkt.k.c;
import com.smartdigimkt.k.l;
import com.smartdigimkt.k.n;
import com.smartdigimkt.k.o;
import com.smartdigimkt.k.r;
import com.smartdigimkt.n.b;
import com.smartdigimkt.p.a;
import com.smartdigimkt.sdk.api.IExHandlerBaseAd;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public class ExHandlerBaseAd implements IExHandlerBaseAd {
    private static final String TAG = "ExHandlerBaseAd";
    private final b0 apkManager;
    private volatile boolean haveRecoverDownload = false;
    private CopyOnWriteArrayList<IExHandlerBaseAd.DataFetchListener> uniqueIdDownloadListenerList = new CopyOnWriteArrayList<>();

    /* renamed from: com.smartdigimkt.dlpd.ExHandlerBaseAd$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status;

        static {
            int[] iArr = new int[c.values().length];
            $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status = iArr;
            try {
                iArr[5] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status[1] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public ExHandlerBaseAd(b0 b0Var) {
        this.apkManager = b0Var;
        if (b0Var != null) {
            ((u) b0Var).f40837r = new a0() { // from class: com.smartdigimkt.dlpd.ExHandlerBaseAd.1
                @Override // com.smartdigimkt.k.a0
                public void onStatusChanged(r rVar) {
                    if (rVar == null) {
                        return;
                    }
                    final c cVar = rVar.f41196s;
                    final String str = rVar.f41192o;
                    if (ExHandlerBaseAd.this.uniqueIdDownloadListenerList != null) {
                        final List listFindDataFetchListener = ExHandlerBaseAd.this.findDataFetchListener(rVar.f41187j);
                        e.a().a(new Runnable() { // from class: com.smartdigimkt.dlpd.ExHandlerBaseAd.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (listFindDataFetchListener.size() > 0) {
                                    for (int i2 = 0; i2 < listFindDataFetchListener.size(); i2++) {
                                        IExHandlerBaseAd.DataFetchListener dataFetchListener = (IExHandlerBaseAd.DataFetchListener) listFindDataFetchListener.get(i2);
                                        if (dataFetchListener != null) {
                                            com.smartdigimkt.m3.c baseAdContent = dataFetchListener.getBaseAdContent();
                                            if (baseAdContent != null) {
                                                baseAdContent.f41787H = ExHandlerBaseAd.this.convertToApkDownloadStatus(cVar);
                                            }
                                            String strA = b.a(SDKContext.getInstance().d(), cVar);
                                            if (!TextUtils.isEmpty(strA)) {
                                                if (baseAdContent != null) {
                                                    baseAdContent.f41817h = strA;
                                                }
                                                dataFetchListener.onStatusChanged(ExHandlerBaseAd.this.convertToApkDownloadStatus(cVar), strA);
                                            }
                                        }
                                    }
                                }
                            }
                        });
                    }
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int convertToApkDownloadStatus(c cVar) {
        switch (AnonymousClass4.$SwitchMap$com$smartdigimkt$dlopt$common$download$ApkDownloadConst$Status[cVar.ordinal()]) {
            case 1:
                return 6;
            case 2:
                return 1;
            case 3:
            case 4:
                return 7;
            case 5:
                return 5;
            case 6:
                return 4;
            case 7:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<IExHandlerBaseAd.DataFetchListener> findDataFetchListener(com.smartdigimkt.m3.c cVar) {
        ArrayList arrayList = new ArrayList();
        if (this.uniqueIdDownloadListenerList != null && cVar != null) {
            String strA = j.a(cVar);
            Iterator<IExHandlerBaseAd.DataFetchListener> it = this.uniqueIdDownloadListenerList.iterator();
            while (it.hasNext()) {
                IExHandlerBaseAd.DataFetchListener next = it.next();
                if (next.getBaseAdContent() != null && TextUtils.equals(j.a(next.getBaseAdContent()), strA)) {
                    String str = next.getBaseAdContent().f41833x;
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    private String getListenerKey(com.smartdigimkt.m3.c cVar) {
        return a.a(j.a(cVar), cVar.f41833x);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public void addDataFetchListener(final IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        e.a().b(new Runnable() { // from class: com.smartdigimkt.dlpd.ExHandlerBaseAd.2
            @Override // java.lang.Runnable
            public void run() {
                ConcurrentHashMap concurrentHashMap;
                IExHandlerBaseAd.DataFetchListener dataFetchListener2 = dataFetchListener;
                if (dataFetchListener2 == null || dataFetchListener2.getBaseAdContent() == null) {
                    return;
                }
                com.smartdigimkt.m3.c baseAdContent = dataFetchListener.getBaseAdContent();
                if (ExHandlerBaseAd.this.uniqueIdDownloadListenerList != null) {
                    ExHandlerBaseAd.this.uniqueIdDownloadListenerList.add(dataFetchListener);
                }
                if (baseAdContent != null) {
                    ExHandlerBaseAd exHandlerBaseAd = ExHandlerBaseAd.this;
                    u uVar = (u) exHandlerBaseAd.apkManager;
                    uVar.getClass();
                    String strA = j.a(baseAdContent);
                    if (!TextUtils.isEmpty(strA)) {
                        int i2 = 0;
                        while (true) {
                            if (i2 < uVar.f40821b.size()) {
                                r rVar = (r) uVar.f40821b.get(i2);
                                if (rVar != null && rVar.f41192o.equals(strA)) {
                                    rVar = rVar;
                                    break;
                                }
                                i2++;
                            } else {
                                ConcurrentHashMap concurrentHashMap2 = uVar.f40822c;
                                rVar = concurrentHashMap2 != null ? (r) concurrentHashMap2.get(strA) : null;
                                if (rVar == null) {
                                    ConcurrentHashMap concurrentHashMap3 = uVar.f40823d;
                                    if (concurrentHashMap3 != null) {
                                        rVar = (r) concurrentHashMap3.get(strA);
                                    }
                                    if (rVar == null) {
                                        ConcurrentHashMap concurrentHashMap4 = uVar.f40825f;
                                        if (concurrentHashMap4 != null) {
                                            rVar = (r) concurrentHashMap4.get(strA);
                                        }
                                        if (rVar == null) {
                                            ConcurrentHashMap concurrentHashMap5 = uVar.f40826g;
                                            if (concurrentHashMap5 != null) {
                                                rVar = (r) concurrentHashMap5.get(strA);
                                            }
                                            if (rVar == null) {
                                                ConcurrentHashMap concurrentHashMap6 = uVar.f40827h;
                                                if (concurrentHashMap6 != null) {
                                                    rVar = (r) concurrentHashMap6.get(strA);
                                                }
                                                if (rVar == null && (concurrentHashMap = uVar.f40828i) != null) {
                                                    rVar = (r) concurrentHashMap.get(strA);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    baseAdContent.f41787H = exHandlerBaseAd.convertToApkDownloadStatus(rVar != null ? rVar.f41196s : c.IDLE);
                }
            }
        });
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public void addDataFetchListenerV2(IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        b0 b0Var = this.apkManager;
        if (b0Var == null || (copyOnWriteArrayList = ((u) b0Var).f40830k) == null || dataFetchListener == null) {
            return;
        }
        copyOnWriteArrayList.add(dataFetchListener);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public void onAdxAdDestroy(Context context) {
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public void pause(com.smartdigimkt.m3.c cVar) {
        Context contextD = SDKContext.getInstance().d();
        if (contextD == null || cVar == null) {
            return;
        }
        u.a(contextD).a(j.a(cVar), "LOADING", -1, false);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public void removeDataFetchListener(IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        CopyOnWriteArrayList<IExHandlerBaseAd.DataFetchListener> copyOnWriteArrayList;
        if (dataFetchListener == null || dataFetchListener.getBaseAdContent() == null || (copyOnWriteArrayList = this.uniqueIdDownloadListenerList) == null) {
            return;
        }
        copyOnWriteArrayList.remove(dataFetchListener);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public void removeDataFetchListenerV2(IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        b0 b0Var = this.apkManager;
        if (b0Var == null || (copyOnWriteArrayList = ((u) b0Var).f40830k) == null || dataFetchListener == null) {
            return;
        }
        copyOnWriteArrayList.remove(dataFetchListener);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public void updateOfferInfoWithDataInfo(final com.smartdigimkt.m3.c cVar) {
        Context contextD = SDKContext.getInstance().d();
        if (this.apkManager == null || cVar == null || contextD == null) {
            return;
        }
        if (b.b(contextD, cVar.f41822m)) {
            cVar.f41817h = contextD.getResources().getString(k.a(contextD, "cta_download_installed", "string"));
            return;
        }
        final String strA = j.a(cVar);
        b0 b0Var = this.apkManager;
        n nVar = new n() { // from class: com.smartdigimkt.dlpd.ExHandlerBaseAd.3
            @Override // com.smartdigimkt.k.n
            public void onCallback(r rVar) {
                if (rVar == null) {
                    return;
                }
                String strA2 = b.a(SDKContext.getInstance().d(), rVar.f41196s);
                if (TextUtils.isEmpty(strA2)) {
                    return;
                }
                cVar.f41817h = strA2;
            }
        };
        u uVar = (u) b0Var;
        o oVar = uVar.f40834o;
        if (oVar != null) {
            oVar.f41163c.b(new l(oVar, strA, new h(uVar, nVar)));
        }
    }
}
