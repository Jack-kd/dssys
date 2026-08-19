package com.byazt.km;

import android.os.RemoteException;
import com.byazt.ye.gu;
import com.byazt.ye.j;
import com.byazt.ye.jx;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.plugin.PluginManager;
import java.io.File;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1377, 28})
/* loaded from: classes.dex */
public class hp extends jx.hp {
    public static volatile hp hp;

    public static hp l() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.ye.jx
    public boolean hp(String str) {
        return PluginManager.getInstance().checkPluginInstalled(str);
    }

    @Override // com.byazt.ye.jx
    public boolean hp(String str, String str2) {
        GlobalParam.getInstance().getReporter().hp("zeus_stage_plugin_install", "start install pkg:" + str + ", path:" + str2);
        return PluginManager.getInstance().syncInstall(str, new File(str2));
    }

    @Override // com.byazt.ye.jx
    public void hp(int i2, j jVar) throws RemoteException {
        Zeus.registerPluginStateListener(new jx(jVar, i2));
    }

    @Override // com.byazt.ye.jx
    public void hp(int i2) throws RemoteException {
        ZeusPluginStateListener next;
        List<ZeusPluginStateListener> listJx = gu.hp().jx();
        Iterator<ZeusPluginStateListener> it = listJx.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if ((next instanceof jx) && ((jx) next).hp() == i2) {
                break;
            }
        }
        if (next != null) {
            listJx.remove(next);
        }
    }

    @Override // com.byazt.ye.jx
    public int l(String str) {
        return PluginManager.getInstance().getPlugin(str).getVersion();
    }
}
