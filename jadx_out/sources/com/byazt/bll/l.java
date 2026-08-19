package com.byazt.bll;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.byazt.js.jx;
import com.byazt.js.w;
import com.byazt.jz.s;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 1277, 34})
/* loaded from: classes2.dex */
public class l {
    public static l hp;
    public Handler jx;

    /* renamed from: l, reason: collision with root package name */
    public List<jx> f18615l = new CopyOnWriteArrayList();

    private l() {
        if (com.byazt.dfp.l.hp() != null) {
            this.jx = new Handler(com.byazt.dfp.l.hp().getLooper()) { // from class: com.byazt.bll.l.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 1) {
                        Object obj = message.obj;
                        if (obj instanceof String) {
                            String str = (String) obj;
                            hp.hp().hp(str);
                            jx jxVarHp = l.this.hp(str);
                            if (jxVarHp != null) {
                                l.this.hp(jxVarHp);
                            }
                        }
                    }
                }
            };
        }
    }

    private void jx() {
        this.jx.removeMessages(1);
    }

    public List<jx> l() {
        return this.f18615l;
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void hp(List<jx> list) {
        jx();
        this.f18615l.clear();
        if (list != null) {
            this.f18615l.addAll(list);
            Iterator<jx> it = list.iterator();
            while (it.hasNext()) {
                hp(it.next());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(jx jxVar) {
        w wVarJ;
        if (jxVar == null || this.jx == null || s.u().nu() || (wVarJ = jxVar.j()) == null || !wVarJ.jx() || wVarJ.l() <= 0) {
            return;
        }
        String strHp = jxVar.hp();
        this.jx.removeMessages(1, strHp);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = strHp;
        this.jx.sendMessageDelayed(messageObtain, wVarJ.l() * 1000);
    }

    public void hp(JSONArray jSONArray) {
        hp(com.byazt.dfp.hp.hp(jSONArray));
    }

    public jx hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (jx jxVar : this.f18615l) {
            if (str.equals(jxVar.hp())) {
                return jxVar;
            }
        }
        return null;
    }
}
