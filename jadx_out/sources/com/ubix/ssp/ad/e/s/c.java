package com.ubix.ssp.ad.e.s;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ubix.ssp.ad.e.a0.m;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.open.AdError;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class c extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static c f47084a;

    /* renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap<Integer, e> f47085b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    private ConcurrentHashMap<Integer, ArrayList<Integer>> f47086c = new ConcurrentHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private a f47087d = new a(this);

    public static class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        ConcurrentHashMap<Integer, ArrayList<Integer>> f47088a;

        /* renamed from: b, reason: collision with root package name */
        ConcurrentHashMap<Integer, e> f47089b;

        public a(c cVar) {
            super(Looper.getMainLooper());
            this.f47089b = cVar.f47085b;
            this.f47088a = cVar.f47086c;
        }

        private void a(Context context, int i2, com.ubix.ssp.ad.e.s.g.a aVar) {
            if (aVar == null || aVar.c() == null || aVar.c().f47118b == null) {
                return;
            }
            f.a(context, i2, aVar);
        }

        private int b(com.ubix.ssp.ad.e.s.g.a aVar) {
            com.ubix.ssp.ad.e.s.g.b bVarB;
            if (aVar == null || (bVarB = aVar.b()) == null || bVarB.g() == 0) {
                return 0;
            }
            aVar.a((int) ((bVarB.a() * 100) / bVarB.g()));
            return aVar.e();
        }

        private void c(com.ubix.ssp.ad.e.s.g.a aVar) {
            try {
                aVar.b().b(45);
                if (aVar.c() == null || aVar.c().f47118b == null) {
                    return;
                }
                f.b(aVar.c().f47118b, aVar.d());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        private void d(com.ubix.ssp.ad.e.s.g.a aVar) {
            if (aVar != null) {
                try {
                    if (aVar.c() == null || aVar.c().f47118b == null) {
                        return;
                    }
                    f.a(aVar);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        private void e(com.ubix.ssp.ad.e.s.g.a aVar) {
            if (aVar != null) {
                try {
                    if (aVar.c() == null || aVar.c().f47118b == null) {
                        return;
                    }
                    f.a(aVar.c().f47118b, aVar.d(), b(aVar));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Context context = (Context) message.obj;
            Intent intent = (Intent) message.getData().getParcelable("intent");
            if (intent != null) {
                int intExtra = intent.getIntExtra("service_intent_notify_id", -1);
                int intExtra2 = intent.getIntExtra("service_intent_unique_id", -1);
                u.b("intent=" + intent.getAction() + ";" + intExtra);
                com.ubix.ssp.ad.e.s.g.a aVarC = b.c().c(intExtra);
                if (!intent.getAction().equals("ACTION_PREPARE")) {
                    if (intent.getAction().equals("ACTION_LOADING")) {
                        e(aVarC);
                        a(intent.getAction(), intExtra, intExtra2, b(aVarC), null);
                        return;
                    }
                    if (intent.getAction().equals("ACTION_PAUSE")) {
                        c(aVarC);
                        a(intent.getAction(), intExtra, intExtra2, b(aVarC), null);
                        return;
                    }
                    if (!intent.getAction().equals("ACTION_WAIT")) {
                        if (intent.getAction().equals("ACTION_COMPLETE")) {
                            if (aVarC != null) {
                                a("ACTION_LOADING", intExtra, intExtra2, 100, null);
                                a(intent.getAction(), intExtra, intExtra2, b(aVarC), aVarC.a().getPath());
                                e(aVarC);
                                a(context, intExtra, aVarC);
                                b.c().a(context, aVarC.b(), aVarC.d(), intExtra);
                                return;
                            }
                        } else {
                            if (intent.getAction().equals("ACTION_FAIL")) {
                                if (aVarC != null) {
                                    a(intent.getAction(), intExtra, intExtra2, 0, (AdError) intent.getSerializableExtra("error"), aVarC.b().e());
                                }
                                a(aVarC);
                                d(aVarC);
                                return;
                            }
                            if (intent.getAction().equals("ACTION_USER_OPERATION")) {
                                if (aVarC != null) {
                                    if (aVarC.b().b() == 46) {
                                        b.c().a(context, aVarC.b(), aVarC.d(), intExtra);
                                        f.a(aVarC.d());
                                        return;
                                    } else if (aVarC.b().b() != 45) {
                                        b.c().a(context, intExtra);
                                        return;
                                    } else {
                                        b.c().b(context, intExtra);
                                        return;
                                    }
                                }
                                return;
                            }
                            if (intent.getAction().equals("ACTION_RESUME")) {
                                a("ACTION_RESUME", intExtra, intExtra2, b(aVarC), null);
                                return;
                            }
                            if (intent.getAction().equals("ACTION_BIND")) {
                                if (aVarC != null) {
                                    int intExtra3 = intent.getIntExtra("service_intent_notify_id", -1);
                                    int intExtra4 = intent.getIntExtra("service_intent_fellow_notify_ids", -1);
                                    if (intExtra4 != -1 && intExtra4 == intExtra2 && aVarC.d() != intExtra3) {
                                        e eVar = this.f47089b.get(Integer.valueOf(intExtra));
                                        if (eVar != null) {
                                            eVar.a(intExtra);
                                        }
                                        if (this.f47088a.get(Integer.valueOf(intExtra4)) == null) {
                                            ArrayList<Integer> arrayList = new ArrayList<>();
                                            arrayList.add(Integer.valueOf(intExtra));
                                            this.f47088a.put(Integer.valueOf(intExtra2), arrayList);
                                        } else {
                                            this.f47088a.get(Integer.valueOf(intExtra4)).add(Integer.valueOf(intExtra));
                                        }
                                    }
                                }
                                f.a(intExtra);
                                return;
                            }
                            if (!intent.getAction().equals("ACTION_DUPLICATE")) {
                                if (intent.getAction().equals("ACTION_NEW_NAME")) {
                                    a(aVarC, intent.getStringExtra(com.sigmob.sdk.downloader.core.breakpoint.f.f37327e));
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
                a(intent.getAction(), intExtra, intExtra2);
            }
        }

        private void a(com.ubix.ssp.ad.e.s.g.a aVar) {
            try {
                if (aVar.c() == null || aVar.c().f47118b == null) {
                    return;
                }
                f.a(aVar.c().f47118b, aVar.d());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        private void a(com.ubix.ssp.ad.e.s.g.a aVar, String str) {
            try {
                if (aVar.c() == null || aVar.c().f47118b == null) {
                    return;
                }
                f.a(aVar.c().f47118b, str, aVar.d());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        private void a(String str, int i2, int i3) {
            a(str, i2, i3, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x008f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(java.lang.String r10, int r11, int r12, int r13, com.ubix.ssp.open.AdError r14, java.lang.String r15) {
            /*
                r9 = this;
                java.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.ubix.ssp.ad.e.s.e> r0 = r9.f47089b
                java.lang.Integer r1 = java.lang.Integer.valueOf(r11)
                java.lang.Object r0 = r0.get(r1)
                com.ubix.ssp.ad.e.s.e r0 = (com.ubix.ssp.ad.e.s.e) r0
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "action="
                r1.append(r2)
                r1.append(r10)
                java.lang.String r2 = ";"
                r1.append(r2)
                r1.append(r11)
                r1.append(r2)
                r1.append(r12)
                r1.append(r2)
                r1.append(r0)
                java.lang.String r1 = r1.toString()
                com.ubix.ssp.ad.e.a0.u.e(r1)
                java.lang.String r1 = "ACTION_LOADING"
                boolean r1 = r10.equals(r1)
                if (r1 == 0) goto L42
                if (r0 == 0) goto L92
                r0.c(r11, r13)
                goto L92
            L42:
                java.lang.String r1 = "ACTION_COMPLETE"
                boolean r1 = r10.equals(r1)
                if (r1 == 0) goto L50
                if (r0 == 0) goto L92
                r0.a(r11, r15)
                goto L92
            L50:
                java.lang.String r1 = "ACTION_PREPARE"
                boolean r1 = r10.equals(r1)
                if (r1 == 0) goto L5b
                if (r0 == 0) goto L92
                goto L8f
            L5b:
                java.lang.String r1 = "ACTION_FAIL"
                boolean r1 = r10.equals(r1)
                if (r1 == 0) goto L69
                if (r0 == 0) goto L92
                r0.a(r11, r14, r15)
                goto L92
            L69:
                java.lang.String r1 = "ACTION_PAUSE"
                boolean r1 = r10.equals(r1)
                if (r1 == 0) goto L77
                if (r0 == 0) goto L92
                r0.a(r11, r13)
                goto L92
            L77:
                java.lang.String r1 = "ACTION_RESUME"
                boolean r1 = r10.equals(r1)
                if (r1 == 0) goto L85
                if (r0 == 0) goto L92
                r0.b(r11, r13)
                goto L92
            L85:
                java.lang.String r1 = "ACTION_DUPLICATE"
                boolean r1 = r10.equals(r1)
                if (r1 == 0) goto L92
                if (r0 == 0) goto L92
            L8f:
                r0.a(r11)
            L92:
                java.util.concurrent.ConcurrentHashMap<java.lang.Integer, java.util.ArrayList<java.lang.Integer>> r11 = r9.f47088a
                java.lang.Integer r0 = java.lang.Integer.valueOf(r12)
                java.lang.Object r11 = r11.get(r0)
                if (r11 == 0) goto Lc9
                java.util.concurrent.ConcurrentHashMap<java.lang.Integer, java.util.ArrayList<java.lang.Integer>> r11 = r9.f47088a
                java.lang.Integer r12 = java.lang.Integer.valueOf(r12)
                java.lang.Object r11 = r11.get(r12)
                java.util.ArrayList r11 = (java.util.ArrayList) r11
                int r12 = r11.size()
                r0 = 0
            Laf:
                if (r0 >= r12) goto Lc9
                java.lang.Object r1 = r11.get(r0)
                int r0 = r0 + 1
                java.lang.Integer r1 = (java.lang.Integer) r1
                if (r1 == 0) goto Laf
                int r4 = r1.intValue()
                r5 = 0
                r2 = r9
                r3 = r10
                r6 = r13
                r7 = r14
                r8 = r15
                r2.a(r3, r4, r5, r6, r7, r8)
                goto Laf
            Lc9:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.s.c.a.a(java.lang.String, int, int, int, com.ubix.ssp.open.AdError, java.lang.String):void");
        }

        private void a(String str, int i2, int i3, int i4, String str2) {
            a(str, i2, i3, i4, null, str2);
        }

        private void a(String str, int i2, int i3, AdError adError) {
            a(str, i2, i3, 0, adError, null);
        }
    }

    private c() {
    }

    public static c a() {
        if (f47084a == null) {
            f47084a = new c();
        }
        return f47084a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Message message = new Message();
        message.obj = context;
        Bundle bundle = new Bundle();
        bundle.putParcelable("intent", intent);
        message.setData(bundle);
        this.f47087d.sendMessage(message);
    }

    public boolean b(e eVar) {
        if (eVar != null) {
            return this.f47085b.containsValue(eVar);
        }
        return false;
    }

    public void a(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ACTION_FAIL");
        intentFilter.addAction("ACTION_LOADING");
        intentFilter.addAction("ACTION_PAUSE");
        intentFilter.addAction("ACTION_RESUME");
        intentFilter.addAction("ACTION_WAIT");
        intentFilter.addAction("ACTION_PREPARE");
        intentFilter.addAction("ACTION_COMPLETE");
        intentFilter.addAction("ACTION_USER_OPERATION");
        intentFilter.addAction("ACTION_BIND");
        intentFilter.addAction("ACTION_DUPLICATE");
        intentFilter.addAction("ACTION_NEW_NAME");
        m.a(context.getApplicationContext()).a(this, intentFilter);
    }

    public void a(e eVar) {
        u.e("DownloadStatusListener addListener " + eVar);
        if (eVar == null || this.f47085b.get(Integer.valueOf(eVar.a())) != null) {
            return;
        }
        this.f47085b.put(Integer.valueOf(eVar.a()), eVar);
    }

    public void a(e eVar, String str) {
        try {
            u.e("DownloadStatusListener removeListener " + eVar);
            if (this.f47086c.size() > 0 && this.f47086c.get(Integer.valueOf(eVar.a())) != null) {
                ArrayList<Integer> arrayList = this.f47086c.get(Integer.valueOf(eVar.a()));
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Integer num = arrayList.get(i2);
                    i2++;
                    Integer num2 = num;
                    int iIntValue = num2.intValue();
                    if (this.f47085b.get(num2) != null) {
                        this.f47085b.get(num2).a(iIntValue, str);
                    }
                }
                this.f47086c.remove(Integer.valueOf(eVar.a()));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (eVar != null) {
            this.f47085b.remove(Integer.valueOf(eVar.a()));
        }
    }
}
