package com.byazt.zw;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.receiver.PluginBroadcastReceiver;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: l, reason: collision with root package name */
    public static l f28632l;
    public final Map<String, hp> jx = new ConcurrentHashMap();

    /* renamed from: j, reason: collision with root package name */
    public final Map<PluginBroadcastReceiver, BroadcastReceiver> f28633j = new ConcurrentHashMap();
    public final Set<Integer> hp = new CopyOnWriteArraySet();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 123})
    public static class hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public final Set<PluginBroadcastReceiver> f28634l = new CopyOnWriteArraySet();

        public void hp(Context context, Intent intent) {
            Set<PluginBroadcastReceiver> set = this.f28634l;
            if (set == null || set.size() <= 0) {
                return;
            }
            for (PluginBroadcastReceiver pluginBroadcastReceiver : this.f28634l) {
                if (pluginBroadcastReceiver != null) {
                    try {
                        pluginBroadcastReceiver.onReceive(context, intent);
                    } catch (Throwable th) {
                        ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "plugin-receiver->action:" + (intent != null ? intent.getAction() : "") + "[exception]:", th);
                    }
                }
            }
        }

        public void registerReceiver(PluginBroadcastReceiver pluginBroadcastReceiver) {
            if (pluginBroadcastReceiver != null) {
                this.f28634l.add(pluginBroadcastReceiver);
            }
        }

        public void unregisterReceiver(PluginBroadcastReceiver pluginBroadcastReceiver) {
            if (pluginBroadcastReceiver != null) {
                try {
                    if (this.f28634l.size() > 0) {
                        this.f28634l.remove(pluginBroadcastReceiver);
                    }
                } catch (Throwable th) {
                    ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "unregisterReceiver-plugin-receiver->action:" + this.hp + "[exception]:", th);
                }
            }
        }
    }

    private l() {
    }

    public static l hp() {
        if (f28632l == null) {
            synchronized (com.byazt.kx.hp.class) {
                try {
                    if (f28632l == null) {
                        f28632l = new l();
                    }
                } finally {
                }
            }
        }
        return f28632l;
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter) {
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            return (Build.VERSION.SDK_INT < 34 || context.getApplicationInfo().targetSdkVersion < 34) ? context.registerReceiver(null, intentFilter) : context.registerReceiver(null, intentFilter, 2);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        Intent intentRegisterReceiver = (Build.VERSION.SDK_INT < 34 || context.getApplicationInfo().targetSdkVersion < 34) ? context.registerReceiver(broadcastReceiverProxy, intentFilter) : context.registerReceiver(broadcastReceiverProxy, intentFilter, 2);
        this.f28633j.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        hp(intentFilter, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }

    public void unregisterReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver) {
        Iterator<Map.Entry<String, hp>> it = this.jx.entrySet().iterator();
        while (it.hasNext()) {
            hp value = it.next().getValue();
            if (value != null) {
                value.unregisterReceiver(pluginBroadcastReceiver);
            }
            BroadcastReceiver broadcastReceiver = this.f28633j.get(pluginBroadcastReceiver);
            if (broadcastReceiver != null) {
                try {
                    this.hp.remove(Integer.valueOf(broadcastReceiver.hashCode()));
                    this.f28633j.remove(pluginBroadcastReceiver);
                    context.unregisterReceiver(broadcastReceiver);
                } catch (Throwable th) {
                    ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "unregisterReceiver-移除系统注册的广播发生异常:", th);
                }
            }
        }
    }

    public boolean hp(int i2) {
        return this.hp.contains(Integer.valueOf(i2));
    }

    private void hp(IntentFilter intentFilter, PluginBroadcastReceiver pluginBroadcastReceiver) {
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return;
        }
        Iterator<String> itActionsIterator = intentFilter.actionsIterator();
        while (itActionsIterator.hasNext()) {
            String next = itActionsIterator.next();
            if (next != null) {
                hp hpVar = this.jx.get(next);
                if (hpVar != null) {
                    hpVar.registerReceiver(pluginBroadcastReceiver);
                } else {
                    hp hpVar2 = new hp();
                    hpVar2.hp = next;
                    hpVar2.registerReceiver(pluginBroadcastReceiver);
                    this.jx.put(next, hpVar2);
                }
            }
        }
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        IntentFilter intentFilter2;
        Handler handler2;
        Intent intentRegisterReceiver;
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            if (Build.VERSION.SDK_INT >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
                return context.registerReceiver(null, intentFilter, 2);
            }
            return context.registerReceiver(null, intentFilter);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        if (Build.VERSION.SDK_INT >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
            intentFilter2 = intentFilter;
            handler2 = handler;
            intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter2, str, handler2, 2);
        } else {
            intentFilter2 = intentFilter;
            handler2 = handler;
            intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter2, str, handler2);
        }
        this.f28633j.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        if (handler2 != null) {
            this.hp.add(Integer.valueOf(broadcastReceiverProxy.hashCode()));
        }
        hp(intentFilter2, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }

    public void hp(Context context, Intent intent) {
        hp value;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        Map<String, hp> map = this.jx;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, hp> entry : this.jx.entrySet()) {
            if (action.equals(entry.getKey()) && (value = entry.getValue()) != null) {
                value.hp(context, intent);
            }
        }
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, int i2) {
        int i3;
        if (intentFilter == null || intentFilter.actionsIterator() == null || (i3 = Build.VERSION.SDK_INT) < 26) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            if (i3 >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
                return context.registerReceiver(null, intentFilter, 2);
            }
            return context.registerReceiver(null, intentFilter);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        Intent intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter, i2);
        this.f28633j.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        hp(intentFilter, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i2) {
        int i3;
        if (intentFilter == null || intentFilter.actionsIterator() == null || (i3 = Build.VERSION.SDK_INT) < 26) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            if (i3 >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
                return context.registerReceiver(null, intentFilter, 2);
            }
            return context.registerReceiver(null, intentFilter);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        Intent intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter, str, handler, i2);
        this.f28633j.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        if (handler != null) {
            this.hp.add(Integer.valueOf(broadcastReceiverProxy.hashCode()));
        }
        hp(intentFilter, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }
}
