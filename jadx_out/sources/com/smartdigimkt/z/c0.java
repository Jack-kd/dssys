package com.smartdigimkt.z;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class c0 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra;
        String stringExtra2;
        String action = intent.getAction();
        if (action != null) {
            stringExtra = intent.getStringExtra("receiver_extra_offer_id");
            stringExtra2 = intent.getStringExtra("receiver_extra_click_id");
            switch (action) {
                case "at_offer_action_1":
                    com.smartdigimkt.m3.c cVar = (com.smartdigimkt.m3.c) d0.a(context.getApplicationContext()).f45277b.get(stringExtra);
                    if (cVar != null) {
                        com.smartdigimkt.i0.l lVar = new com.smartdigimkt.i0.l();
                        com.smartdigimkt.i0.b bVar = new com.smartdigimkt.i0.b();
                        lVar.f40673i = bVar;
                        bVar.f40633a = stringExtra2;
                        p.a(18, cVar, lVar);
                        break;
                    }
                    break;
                case "at_offer_action_2":
                    com.smartdigimkt.m3.c cVar2 = (com.smartdigimkt.m3.c) d0.a(context.getApplicationContext()).f45277b.get(stringExtra);
                    if (cVar2 != null) {
                        com.smartdigimkt.i0.l lVar2 = new com.smartdigimkt.i0.l();
                        com.smartdigimkt.i0.b bVar2 = new com.smartdigimkt.i0.b();
                        lVar2.f40673i = bVar2;
                        bVar2.f40633a = stringExtra2;
                        p.a(19, cVar2, lVar2);
                        break;
                    }
                    break;
                case "at_offer_action_3":
                    com.smartdigimkt.m3.c cVar3 = (com.smartdigimkt.m3.c) d0.a(context.getApplicationContext()).f45277b.get(stringExtra);
                    if (cVar3 != null) {
                        com.smartdigimkt.i0.l lVar3 = new com.smartdigimkt.i0.l();
                        com.smartdigimkt.i0.b bVar3 = new com.smartdigimkt.i0.b();
                        lVar3.f40673i = bVar3;
                        bVar3.f40633a = stringExtra2;
                        p.a(20, cVar3, lVar3);
                        break;
                    }
                    break;
                case "at_offer_action_4":
                    d0 d0VarA = d0.a(context.getApplicationContext());
                    com.smartdigimkt.m3.c cVar4 = (com.smartdigimkt.m3.c) d0VarA.f45277b.remove(stringExtra);
                    if (cVar4 != null) {
                        com.smartdigimkt.i0.l lVar4 = new com.smartdigimkt.i0.l();
                        com.smartdigimkt.i0.b bVar4 = new com.smartdigimkt.i0.b();
                        lVar4.f40673i = bVar4;
                        bVar4.f40633a = stringExtra2;
                        p.a(21, cVar4, lVar4);
                        d0.a(cVar4, lVar4);
                    }
                    if (d0VarA.f45277b.size() == 0) {
                        d0VarA.b();
                        break;
                    }
                    break;
                case "at_offer_action_5":
                    d0 d0VarA2 = d0.a(context.getApplicationContext());
                    com.smartdigimkt.m3.c cVar5 = (com.smartdigimkt.m3.c) d0VarA2.f45277b.remove(stringExtra);
                    d0VarA2.f45277b.size();
                    if (cVar5 != null) {
                        d0.a(cVar5, new com.smartdigimkt.i0.l());
                    }
                    if (d0VarA2.f45277b.size() == 0) {
                        d0VarA2.b();
                        break;
                    }
                    break;
            }
        }
    }
}
