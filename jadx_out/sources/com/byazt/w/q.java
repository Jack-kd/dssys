package com.byazt.w;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.byazt.t.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 150})
/* loaded from: classes3.dex */
public class q {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 3})
    public static class hp {
        public static q hp = new q();
    }

    private q() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SharedPreferences jx() {
        return com.byazt.ym.a.getKVStore(jl.getContext(), "sp_ad_download_event", 0);
    }

    @NonNull
    public ConcurrentHashMap<Long, com.byazt.zv.l> l() throws NumberFormatException {
        ConcurrentHashMap<Long, com.byazt.zv.l> concurrentHashMap = new ConcurrentHashMap<>();
        Map<String, ?> all = jx().getAll();
        if (all != null) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if (entry.getValue() != null) {
                    try {
                        Long lValueOf = Long.valueOf(entry.getKey());
                        long jLongValue = lValueOf.longValue();
                        com.byazt.zv.l lVarL = com.byazt.zv.l.l(new JSONObject(String.valueOf(entry.getValue())));
                        if (jLongValue > 0 && lVarL != null) {
                            concurrentHashMap.put(lValueOf, lVarL);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return concurrentHashMap;
    }

    public static q hp() {
        return hp.hp;
    }

    public void hp(com.byazt.zv.l lVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(lVar);
        hp((Collection<com.byazt.zv.l>) arrayList);
    }

    public synchronized void hp(final Collection<com.byazt.zv.l> collection) {
        if (collection != null) {
            if (!collection.isEmpty()) {
                com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.w.q.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SharedPreferences.Editor editorEdit = q.this.jx().edit();
                        for (com.byazt.zv.l lVar : collection) {
                            if (lVar != null && lVar.l() != 0) {
                                editorEdit.putString(String.valueOf(lVar.l()), lVar.wt().toString());
                            }
                        }
                        editorEdit.apply();
                    }
                }, true);
            }
        }
    }

    public void hp(final List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.w.q.2
            @Override // java.lang.Runnable
            public void run() {
                SharedPreferences.Editor editorEdit = q.this.jx().edit();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    editorEdit.remove((String) it.next());
                }
                editorEdit.apply();
            }
        }, true);
    }
}
