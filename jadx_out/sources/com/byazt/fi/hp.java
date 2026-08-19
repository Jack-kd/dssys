package com.byazt.fi;

import com.byazt.ju.eb;
import com.byazt.ju.s;
import com.byazt.qa.a;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1569, 28})
/* loaded from: classes2.dex */
public class hp extends a {
    public jx hp;

    public hp(jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.qa.a
    public void destroy() {
        jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.eb();
        }
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.l> getAdLoadInfo() {
        if (this.hp == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i2 = 0; i2 < this.hp.l().size(); i2++) {
            linkedList.add(new s(this.hp.l().get(i2)));
        }
        return linkedList;
    }

    @Override // com.byazt.qa.jx
    public com.byazt.qa.hp getBestEcpm() {
        jx jxVar = this.hp;
        return jxVar != null ? new eb(jxVar.j()) : new eb(null);
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.hp> getCacheList() {
        if (this.hp == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i2 = 0; i2 < this.hp.w().size(); i2++) {
            linkedList.add(new eb(this.hp.w().get(i2)));
        }
        return linkedList;
    }

    @Override // com.byazt.qa.jx
    public List<com.byazt.qa.hp> getMultiBiddingEcpm() {
        if (this.hp == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i2 = 0; i2 < this.hp.jx().size(); i2++) {
            linkedList.add(new eb(this.hp.jx().get(i2)));
        }
        return linkedList;
    }

    @Override // com.byazt.qa.jx
    public com.byazt.qa.hp getShowEcpm() {
        jx jxVar = this.hp;
        return jxVar != null ? new eb(jxVar.a()) : new eb(null);
    }

    @Override // com.byazt.qa.jx
    public boolean isReady() {
        jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.hp();
        }
        return false;
    }
}
